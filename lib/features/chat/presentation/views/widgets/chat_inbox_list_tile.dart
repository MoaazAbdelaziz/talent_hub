import 'package:flutter/material.dart';
import 'package:talent_hub/core/helpers/extensions.dart';
import 'package:talent_hub/core/models/user_model.dart';
import 'package:talent_hub/core/routes/app_router.dart';
import 'package:talent_hub/core/widgets/user_image_circle_avatar.dart';
import 'package:talent_hub/features/chat/presentation/views/widgets/last_message_stream_builder.dart';
import '../../../../../core/theme/app_text_styles.dart';

class ChatInboxListTile extends StatelessWidget {
  final UserModel user;
  const ChatInboxListTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: UserImageCircleAvatar(image: user.imageUrl),
      title: Text(user.name, style: AppTextStyles.font16DarkW600),
      subtitle: LastMessageStreamBuilder(
        user: user,
        isMessageText: true,
      ),
      trailing: LastMessageStreamBuilder(
        user: user,
        isMessageText: false,
      ),
      onTap: () => context.pushNamed(AppRouter.chatDetails, arguments: user),
    );
  }
}
