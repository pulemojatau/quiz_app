import 'package:flutter/cupertino.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Text(((data['question'] as int) + 1).toString()), // Corrected syntax
          ],
        );
      }).toList(), // Corrected closure and method chain
    );
  }
}
