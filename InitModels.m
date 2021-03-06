function [ models ] = InitModels( responseNum, D_way, dims, rank )
%InitModels Initialize the models by arguments.

models = cell(1, responseNum);

for q = 1:responseNum
    models{q} = cell(1, D_way);
    for d = 1:D_way
        models{q}{d} = ones(dims(d), rank) .* 0.5;
    end
end

end

