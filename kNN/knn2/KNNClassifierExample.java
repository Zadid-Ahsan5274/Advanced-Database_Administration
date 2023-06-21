package knn2;

import java.util.*;

class Instance {
    private double[] features;
    private String label;

    public Instance(double[] features, String label) {
        this.features = features;
        this.label = label;
    }

    public double[] getFeatures() {
        return features;
    }

    public String getLabel() {
        return label;
    }
}

class KNNClassifier {
    private List<Instance> trainingSet;
    private int k;

    public KNNClassifier(List<Instance> trainingSet, int k) {
        this.trainingSet = trainingSet;
        this.k = k;
    }

    public String classify(double[] features) {
        List<Distance> distances = new ArrayList<>();

        // Calculate distances between the new instance and all training instances
        for (Instance instance : trainingSet) {
            double distance = calculateDistance(features, instance.getFeatures());
            distances.add(new Distance(instance, distance));
        }

        // Sort distances in ascending order
        Collections.sort(distances);

        // Count the occurrences of each label among the k nearest neighbors
        Map<String, Integer> labelCount = new HashMap<>();
        for (int i = 0; i < k; i++) {
            Instance instance = distances.get(i).getInstance();
            String label = instance.getLabel();
            labelCount.put(label, labelCount.getOrDefault(label, 0) + 1);
        }

        // Find the label with the maximum count
        String maxLabel = null;
        int maxCount = 0;
        for (Map.Entry<String, Integer> entry : labelCount.entrySet()) {
            if (entry.getValue() > maxCount) {
                maxLabel = entry.getKey();
                maxCount = entry.getValue();
            }
        }

        return maxLabel;
    }

    private double calculateDistance(double[] features1, double[] features2) {
        if (features1.length != features2.length) {
            throw new IllegalArgumentException("Feature vectors must have the same length");
        }

        double sum = 0.0;
        for (int i = 0; i < features1.length; i++) {
            double diff = features1[i] - features2[i];
            sum += diff * diff;
        }

        return Math.sqrt(sum);
    }
}

class Distance implements Comparable<Distance> {
    private Instance instance;
    private double distance;

    public Distance(Instance instance, double distance) {
        this.instance = instance;
        this.distance = distance;
    }

    public Instance getInstance() {
        return instance;
    }

    public double getDistance() {
        return distance;
    }

    @Override
    public int compareTo(Distance other) {
        return Double.compare(this.distance, other.distance);
    }
}

public class KNNClassifierExample {
    public static void main(String[] args) {
        // Create the training set
        List<Instance> trainingSet = new ArrayList<>();
        trainingSet.add(new Instance(new double[]{5.1, 3.5, 1.4, 0.2}, "Iris-setosa"));
        trainingSet.add(new Instance(new double[]{4.9, 3.0, 1.4, 0.2}, "Iris-setosa"));
        trainingSet.add(new Instance(new double[]{6.2, 2.8, 4.8, 1.8}, "Iris-virginica"));
        trainingSet.add(new Instance(new double[]{6.2, 3.4, 5.4, 2.3}, "Iris-virginica"));
        trainingSet.add(new Instance(new double[]{4.2, 2.4, 5.4, 2.9}, "Iris-setosa"));
        // Create the KNN classifier
        int k = 3; // Set the value of k
            KNNClassifier classifier = new KNNClassifier(trainingSet, k);

    // Create a new instance to classify
    double[] features = {5.8, 2.7, 5.1, 1.9};

    // Classify the new instance
    String predictedLabel = classifier.classify(features);

    // Output the predicted label
    System.out.println("Predicted Label: " + predictedLabel);
}
}