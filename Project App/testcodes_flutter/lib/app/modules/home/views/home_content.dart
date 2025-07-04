import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Bar
            Row(
              children: [
                const Icon(Icons.location_on, color: Colors.black),
                const SizedBox(width: 5),
                const Text(
                  "Kecamatan Buahbatu, Kota Bandung",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Spacer(),
                const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 244, 242, 242),
                  child: Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.orangeAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Search Bar
            TextField(
              style: const TextStyle(color: Color.fromARGB(255, 238, 199, 149)),
              decoration: InputDecoration(
                hintText: "cari hafalan",
                hintStyle: const TextStyle(color: Colors.orangeAccent),
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: Color.fromARGB(255, 237, 177, 98),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 251, 250, 250),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    color: Colors.orangeAccent,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    color: Colors.orangeAccent,
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Categories
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildIconCategory(Icons.history_outlined, "Riwayat"),
                _buildIconCategory(Icons.memory_outlined, "Hafalan"),
                _buildIconCategory(Icons.book_outlined, "Bacaan"),
                _buildIconCategory(Icons.done_all, "Selesai"),
              ],
            ),
            const SizedBox(height: 16),
            // Banner
            Container(
              height: screenHeight * 0.17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.orangeAccent,
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Program Maqomat",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "#Makin Betah Baca Alquran\ndengan Irama",
                          style: TextStyle(color: Colors.black),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.orange,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 3,
                            ),
                            minimumSize: const Size(0, 28),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "Daftar Sekarang",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        10,
                      ), // atur radius sesuai keinginan
                      child: Image.asset(
                        'assets/images/quran.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Hanya Untukmu",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.7,
              children: [
                _buildProductCard('assets/images/card3.jpg'),
                _buildProductCard('assets/images/card2.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconCategory(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.grey.shade200,
          child: Icon(icon, color: Colors.orangeAccent, size: 28),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(color: Colors.black)),
      ],
    );
  }

  Widget _buildProductCard(String imagePath) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
