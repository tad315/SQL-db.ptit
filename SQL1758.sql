SELECT DISTINCT a.Title
FROM Artworks a
JOIN Exhibitions e ON a.ArtworkID = e.ArtworkID
WHERE e.ExhibitionID IN (
    SELECT e2.ExhibitionID
    FROM Exhibitions e2
    JOIN Artworks a2 ON e2.ArtworkID = a2.ArtworkID
    WHERE a2.Title = 'Sunflowers'
)
AND a.Title <> 'Sunflowers';
