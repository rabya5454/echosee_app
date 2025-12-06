class StorageService {
  static List<String> conversations = [];

  static void saveConversation(String text) {
    conversations.add(text);
    if (conversations.length > 5) conversations.removeAt(0);
  }

  static List<String> getConversations() => conversations;
}
