def calc_field(total_points)
    if total_points >=7 && total_points <=17
        return "science"
    elsif total_points >=18 && total_points <=28
        return "technology"
    elsif total_points >=29 && total_points <=38
        return "engineering"
    elsif total_points >=39 && total_points <=49
        return "math"
    end
end