% Dummy evaluation for testing classifier
trueLabels = categorical(["auth", "auth", "unauth", "auth", "unauth"]);
predictedLabels = categorical(["auth", "unauth", "unauth", "auth", "auth"]);

confMat = confusionmat(trueLabels, predictedLabels);
confusionchart(confMat);
title("Confusion Matrix");

accuracy = sum(trueLabels == predictedLabels) / numel(trueLabels);
fprintf("Model Accuracy: %.2f%%\n", accuracy * 100);