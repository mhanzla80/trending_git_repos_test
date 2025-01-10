import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoader extends StatelessWidget {
  const ShimmerLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Avatar shimmer
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                const SizedBox(width: 12),
                // Text shimmer
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title shimmer
                      Container(
                        width: double.infinity,
                        height: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 8),
                      // Subtitle shimmer
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 8),
                      // Info chip shimmer
                      Row(
                        children: [
                          _buildShimmerChip(context),
                          const SizedBox(width: 8),
                          _buildShimmerChip(context),
                          const SizedBox(width: 8),
                          _buildShimmerChip(context),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildShimmerChip(BuildContext context) {
    return Container(
      width: 50,
      height: 16,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
