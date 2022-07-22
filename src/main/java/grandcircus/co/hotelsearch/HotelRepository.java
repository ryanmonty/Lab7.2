package grandcircus.co.hotelsearch;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface HotelRepository extends
MongoRepository<Hotel, String>{

	List<Hotel> findByCity(String city);
}
