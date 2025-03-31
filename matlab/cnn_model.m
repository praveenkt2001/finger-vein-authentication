% Simple CNN Model
layers = [
    imageInputLayer([128 128 1])
    convolution2dLayer(3,8,'Padding','same')
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    fullyConnectedLayer(2)
    softmaxLayer
    classificationLayer];

options = trainingOptions('adam', 'MaxEpochs',10);

net = trainNetwork(trainImages, trainLabels, layers, options);