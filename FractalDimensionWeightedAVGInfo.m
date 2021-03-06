function y = FractalDimensionWeightedAVGInfo ...
	(SumOfWeightedFractalDimensions, SumOfFractalDimensionWeights,...
		FractalDimensionWeightedAVGError)
 
    FractalDimensionWeightedAVG = SumOfWeightedFractalDimensions / ...
		SumOfFractalDimensionWeights;
   % FractalDimensionWeightedAVG = round(FractalDimensionWeightedAVG, 5);
   % ^ was trying to force an extra decimal place on the D_f printed out...
    FractalDimensionWeightedAVGError = ...
		ceil(FractalDimensionWeightedAVGError/10^floor ...
			(log10(FractalDimensionWeightedAVGError)))*10^floor ...
				(log10(FractalDimensionWeightedAVGError)); % salt to suit...
    FractalErrorInfoAVG = num2str(FractalDimensionWeightedAVGError);
    FractalErrorInfoAVG = cat(2,'(',FractalErrorInfoAVG,')');
    FractalDimensionWeightedAVG = num2str(FractalDimensionWeightedAVG);
    FractalDimensionWeightedAVG = FractalDimensionWeightedAVG(1:end-2);
    y = 'Fractal Dimension: ';
    y = cat(2, y, FractalDimensionWeightedAVG,' ',FractalErrorInfoAVG);