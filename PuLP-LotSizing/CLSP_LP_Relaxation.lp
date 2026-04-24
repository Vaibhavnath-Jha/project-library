\* CLSP *\
Minimize
Sum_of_Setup_&_Holding_Costs: 16 Inventory_(1,_1) + 16 Inventory_(1,_2)
 + 8 Inventory_(1,_3) + 10 Inventory_(10,_1) + 10 Inventory_(10,_2)
 + 5 Inventory_(10,_3) + 8 Inventory_(11,_1) + 8 Inventory_(11,_2)
 + 4 Inventory_(11,_3) + 14 Inventory_(12,_1) + 14 Inventory_(12,_2)
 + 7 Inventory_(12,_3) + 14 Inventory_(13,_1) + 14 Inventory_(13,_2)
 + 7 Inventory_(13,_3) + 20 Inventory_(14,_1) + 20 Inventory_(14,_2)
 + 10 Inventory_(14,_3) + 20 Inventory_(15,_1) + 20 Inventory_(15,_2)
 + 10 Inventory_(15,_3) + 14 Inventory_(16,_1) + 14 Inventory_(16,_2)
 + 7 Inventory_(16,_3) + 14 Inventory_(17,_1) + 14 Inventory_(17,_2)
 + 7 Inventory_(17,_3) + 16 Inventory_(18,_1) + 16 Inventory_(18,_2)
 + 8 Inventory_(18,_3) + 16 Inventory_(19,_1) + 16 Inventory_(19,_2)
 + 8 Inventory_(19,_3) + 16 Inventory_(2,_1) + 16 Inventory_(2,_2)
 + 8 Inventory_(2,_3) + 10 Inventory_(20,_1) + 10 Inventory_(20,_2)
 + 5 Inventory_(20,_3) + 12 Inventory_(21,_1) + 12 Inventory_(21,_2)
 + 6 Inventory_(21,_3) + 78 Inventory_(22,_1) + 78 Inventory_(22,_2)
 + 39 Inventory_(22,_3) + 8 Inventory_(3,_1) + 8 Inventory_(3,_2)
 + 4 Inventory_(3,_3) + 8 Inventory_(4,_1) + 8 Inventory_(4,_2)
 + 4 Inventory_(4,_3) + 14 Inventory_(5,_1) + 14 Inventory_(5,_2)
 + 7 Inventory_(5,_3) + 12 Inventory_(6,_1) + 12 Inventory_(6,_2)
 + 6 Inventory_(6,_3) + 12 Inventory_(7,_1) + 12 Inventory_(7,_2)
 + 6 Inventory_(7,_3) + 14 Inventory_(8,_1) + 14 Inventory_(8,_2)
 + 7 Inventory_(8,_3) + 10 Inventory_(9,_1) + 10 Inventory_(9,_2)
 + 5 Inventory_(9,_3) + 93 Setup_(1,_1,_1) + 93 Setup_(1,_1,_2)
 + 93 Setup_(1,_1,_3) + 93 Setup_(1,_2,_1) + 93 Setup_(1,_2,_2)
 + 93 Setup_(1,_2,_3) + 83 Setup_(1,_3,_1) + 83 Setup_(1,_3,_2)
 + 83 Setup_(1,_3,_3) + 83 Setup_(1,_4,_1) + 83 Setup_(1,_4,_2)
 + 83 Setup_(1,_4,_3) + 72 Setup_(2,_5,_1) + 72 Setup_(2,_5,_2)
 + 72 Setup_(2,_5,_3) + 83 Setup_(2,_6,_1) + 83 Setup_(2,_6,_2)
 + 83 Setup_(2,_6,_3) + 73 Setup_(2,_7,_1) + 73 Setup_(2,_7,_2)
 + 73 Setup_(2,_7,_3) + 73 Setup_(2,_8,_1) + 73 Setup_(2,_8,_2)
 + 73 Setup_(2,_8,_3) + 114 Setup_(3,_21,_1) + 114 Setup_(3,_21,_2)
 + 114 Setup_(3,_21,_3) + 127 Setup_(3,_22,_1) + 127 Setup_(3,_22,_2)
 + 127 Setup_(3,_22,_3) + 129 Setup_(4,_14,_1) + 129 Setup_(4,_14,_2)
 + 129 Setup_(4,_14,_3) + 129 Setup_(4,_15,_1) + 129 Setup_(4,_15,_2)
 + 129 Setup_(4,_15,_3) + 128 Setup_(4,_16,_1) + 128 Setup_(4,_16,_2)
 + 128 Setup_(4,_16,_3) + 128 Setup_(4,_17,_1) + 128 Setup_(4,_17,_2)
 + 128 Setup_(4,_17,_3) + 174 Setup_(5,_18,_1) + 174 Setup_(5,_18,_2)
 + 174 Setup_(5,_18,_3) + 174 Setup_(5,_19,_1) + 174 Setup_(5,_19,_2)
 + 174 Setup_(5,_19,_3) + 180 Setup_(5,_20,_1) + 180 Setup_(5,_20,_2)
 + 180 Setup_(5,_20,_3) + 243 Setup_(6,_10,_1) + 243 Setup_(6,_10,_2)
 + 243 Setup_(6,_10,_3) + 167 Setup_(6,_11,_1) + 167 Setup_(6,_11,_2)
 + 167 Setup_(6,_11,_3) + 243 Setup_(6,_9,_1) + 243 Setup_(6,_9,_2)
 + 243 Setup_(6,_9,_3) + 78 Setup_(7,_12,_1) + 78 Setup_(7,_12,_2)
 + 78 Setup_(7,_12,_3) + 78 Setup_(7,_13,_1) + 78 Setup_(7,_13,_2)
 + 78 Setup_(7,_13,_3)
Subject To
_C1: - Inventory_(1,_1) + Lotsize_(1,_1,_1) = 458
_C10: - Inventory_(4,_1) + Lotsize_(1,_4,_1) = 149
_C100: Production_(7,_12,_1) <= 1
_C101: Production_(7,_12,_2) <= 1
_C102: Production_(7,_12,_3) <= 1
_C103: Production_(7,_13,_1) <= 1
_C104: Production_(7,_13,_2) <= 1
_C105: Production_(7,_13,_3) <= 1
_C106: Production_(4,_14,_1) <= 1
_C107: Production_(4,_14,_2) <= 1
_C108: Production_(4,_14,_3) <= 1
_C109: Production_(4,_15,_1) <= 1
_C11: Inventory_(4,_1) - Inventory_(4,_2) + Lotsize_(1,_4,_2) = 152
_C110: Production_(4,_15,_2) <= 1
_C111: Production_(4,_15,_3) <= 1
_C112: Production_(4,_16,_1) <= 1
_C113: Production_(4,_16,_2) <= 1
_C114: Production_(4,_16,_3) <= 1
_C115: Production_(4,_17,_1) <= 1
_C116: Production_(4,_17,_2) <= 1
_C117: Production_(4,_17,_3) <= 1
_C118: Production_(5,_18,_1) <= 1
_C119: Production_(5,_18,_2) <= 1
_C12: Inventory_(4,_2) - Inventory_(4,_3) + Lotsize_(1,_4,_3) = 102
_C120: Production_(5,_18,_3) <= 1
_C121: Production_(5,_19,_1) <= 1
_C122: Production_(5,_19,_2) <= 1
_C123: Production_(5,_19,_3) <= 1
_C124: Production_(5,_20,_1) <= 1
_C125: Production_(5,_20,_2) <= 1
_C126: Production_(5,_20,_3) <= 1
_C127: Production_(3,_21,_1) <= 1
_C128: Production_(3,_21,_2) <= 1
_C129: Production_(3,_21,_3) <= 1
_C13: - Inventory_(5,_1) + Lotsize_(2,_5,_1) = 40
_C130: Production_(3,_22,_1) <= 1
_C131: Production_(3,_22,_2) <= 1
_C132: Production_(3,_22,_3) <= 1
_C133: Setup_(1,_1,_1) <= 1
_C134: Setup_(1,_1,_2) <= 1
_C135: Setup_(1,_1,_3) <= 1
_C136: Setup_(1,_2,_1) <= 1
_C137: Setup_(1,_2,_2) <= 1
_C138: Setup_(1,_2,_3) <= 1
_C139: Setup_(1,_3,_1) <= 1
_C14: Inventory_(5,_1) - Inventory_(5,_2) + Lotsize_(2,_5,_2) = 144
_C140: Setup_(1,_3,_2) <= 1
_C141: Setup_(1,_3,_3) <= 1
_C142: Setup_(1,_4,_1) <= 1
_C143: Setup_(1,_4,_2) <= 1
_C144: Setup_(1,_4,_3) <= 1
_C145: Setup_(2,_5,_1) <= 1
_C146: Setup_(2,_5,_2) <= 1
_C147: Setup_(2,_5,_3) <= 1
_C148: Setup_(2,_6,_1) <= 1
_C149: Setup_(2,_6,_2) <= 1
_C15: Inventory_(5,_2) - Inventory_(5,_3) + Lotsize_(2,_5,_3) = 146
_C150: Setup_(2,_6,_3) <= 1
_C151: Setup_(2,_7,_1) <= 1
_C152: Setup_(2,_7,_2) <= 1
_C153: Setup_(2,_7,_3) <= 1
_C154: Setup_(2,_8,_1) <= 1
_C155: Setup_(2,_8,_2) <= 1
_C156: Setup_(2,_8,_3) <= 1
_C157: Setup_(6,_9,_1) <= 1
_C158: Setup_(6,_9,_2) <= 1
_C159: Setup_(6,_9,_3) <= 1
_C16: - Inventory_(6,_1) + Lotsize_(2,_6,_1) = 146
_C160: Setup_(6,_10,_1) <= 1
_C161: Setup_(6,_10,_2) <= 1
_C162: Setup_(6,_10,_3) <= 1
_C163: Setup_(6,_11,_1) <= 1
_C164: Setup_(6,_11,_2) <= 1
_C165: Setup_(6,_11,_3) <= 1
_C166: Setup_(7,_12,_1) <= 1
_C167: Setup_(7,_12,_2) <= 1
_C168: Setup_(7,_12,_3) <= 1
_C169: Setup_(7,_13,_1) <= 1
_C17: Inventory_(6,_1) - Inventory_(6,_2) + Lotsize_(2,_6,_2) = 154
_C170: Setup_(7,_13,_2) <= 1
_C171: Setup_(7,_13,_3) <= 1
_C172: Setup_(4,_14,_1) <= 1
_C173: Setup_(4,_14,_2) <= 1
_C174: Setup_(4,_14,_3) <= 1
_C175: Setup_(4,_15,_1) <= 1
_C176: Setup_(4,_15,_2) <= 1
_C177: Setup_(4,_15,_3) <= 1
_C178: Setup_(4,_16,_1) <= 1
_C179: Setup_(4,_16,_2) <= 1
_C18: Inventory_(6,_2) - Inventory_(6,_3) + Lotsize_(2,_6,_3) = 136
_C180: Setup_(4,_16,_3) <= 1
_C181: Setup_(4,_17,_1) <= 1
_C182: Setup_(4,_17,_2) <= 1
_C183: Setup_(4,_17,_3) <= 1
_C184: Setup_(5,_18,_1) <= 1
_C185: Setup_(5,_18,_2) <= 1
_C186: Setup_(5,_18,_3) <= 1
_C187: Setup_(5,_19,_1) <= 1
_C188: Setup_(5,_19,_2) <= 1
_C189: Setup_(5,_19,_3) <= 1
_C19: - Inventory_(7,_1) + Lotsize_(2,_7,_1) = 136
_C190: Setup_(5,_20,_1) <= 1
_C191: Setup_(5,_20,_2) <= 1
_C192: Setup_(5,_20,_3) <= 1
_C193: Setup_(3,_21,_1) <= 1
_C194: Setup_(3,_21,_2) <= 1
_C195: Setup_(3,_21,_3) <= 1
_C196: Setup_(3,_22,_1) <= 1
_C197: Setup_(3,_22,_2) <= 1
_C198: Setup_(3,_22,_3) <= 1
_C2: Inventory_(1,_1) - Inventory_(1,_2) + Lotsize_(1,_1,_2) = 36
_C20: Inventory_(7,_1) - Inventory_(7,_2) + Lotsize_(2,_7,_2) = 133
_C21: Inventory_(7,_2) - Inventory_(7,_3) + Lotsize_(2,_7,_3) = 139
_C22: - Inventory_(8,_1) + Lotsize_(2,_8,_1) = 145
_C23: Inventory_(8,_1) - Inventory_(8,_2) + Lotsize_(2,_8,_2) = 0
_C24: Inventory_(8,_2) - Inventory_(8,_3) + Lotsize_(2,_8,_3) = 0
_C25: - Inventory_(9,_1) + Lotsize_(6,_9,_1) = 0
_C26: Inventory_(9,_1) - Inventory_(9,_2) + Lotsize_(6,_9,_2) = 0
_C27: Inventory_(9,_2) - Inventory_(9,_3) + Lotsize_(6,_9,_3) = 0
_C28: - Inventory_(10,_1) + Lotsize_(6,_10,_1) = 0
_C29: Inventory_(10,_1) - Inventory_(10,_2) + Lotsize_(6,_10,_2) = 0
_C3: Inventory_(1,_2) - Inventory_(1,_3) + Lotsize_(1,_1,_3) = 251
_C30: Inventory_(10,_2) - Inventory_(10,_3) + Lotsize_(6,_10,_3) = 0
_C31: - Inventory_(11,_1) + Lotsize_(6,_11,_1) = 0
_C32: Inventory_(11,_1) - Inventory_(11,_2) + Lotsize_(6,_11,_2) = 0
_C33: Inventory_(11,_2) - Inventory_(11,_3) + Lotsize_(6,_11,_3) = 0
_C34: - Inventory_(12,_1) + Lotsize_(7,_12,_1) = 0
_C35: Inventory_(12,_1) - Inventory_(12,_2) + Lotsize_(7,_12,_2) = 0
_C36: Inventory_(12,_2) - Inventory_(12,_3) + Lotsize_(7,_12,_3) = 0
_C37: - Inventory_(13,_1) + Lotsize_(7,_13,_1) = 0
_C38: Inventory_(13,_1) - Inventory_(13,_2) + Lotsize_(7,_13,_2) = 0
_C39: Inventory_(13,_2) - Inventory_(13,_3) + Lotsize_(7,_13,_3) = 0
_C4: - Inventory_(2,_1) + Lotsize_(1,_2,_1) = 23
_C40: - Inventory_(14,_1) + Lotsize_(4,_14,_1) = 0
_C41: Inventory_(14,_1) - Inventory_(14,_2) + Lotsize_(4,_14,_2) = 0
_C42: Inventory_(14,_2) - Inventory_(14,_3) + Lotsize_(4,_14,_3) = 0
_C43: - Inventory_(15,_1) + Lotsize_(4,_15,_1) = 0
_C44: Inventory_(15,_1) - Inventory_(15,_2) + Lotsize_(4,_15,_2) = 0
_C45: Inventory_(15,_2) - Inventory_(15,_3) + Lotsize_(4,_15,_3) = 0
_C46: - Inventory_(16,_1) + Lotsize_(4,_16,_1) = 0
_C47: Inventory_(16,_1) - Inventory_(16,_2) + Lotsize_(4,_16,_2) = 0
_C48: Inventory_(16,_2) - Inventory_(16,_3) + Lotsize_(4,_16,_3) = 0
_C49: - Inventory_(17,_1) + Lotsize_(4,_17,_1) = 0
_C5: Inventory_(2,_1) - Inventory_(2,_2) + Lotsize_(1,_2,_2) = 142
_C50: Inventory_(17,_1) - Inventory_(17,_2) + Lotsize_(4,_17,_2) = 0
_C51: Inventory_(17,_2) - Inventory_(17,_3) + Lotsize_(4,_17,_3) = 0
_C52: - Inventory_(18,_1) + Lotsize_(5,_18,_1) = 0
_C53: Inventory_(18,_1) - Inventory_(18,_2) + Lotsize_(5,_18,_2) = 0
_C54: Inventory_(18,_2) - Inventory_(18,_3) + Lotsize_(5,_18,_3) = 0
_C55: - Inventory_(19,_1) + Lotsize_(5,_19,_1) = 0
_C56: Inventory_(19,_1) - Inventory_(19,_2) + Lotsize_(5,_19,_2) = 0
_C57: Inventory_(19,_2) - Inventory_(19,_3) + Lotsize_(5,_19,_3) = 0
_C58: - Inventory_(20,_1) + Lotsize_(5,_20,_1) = 0
_C59: Inventory_(20,_1) - Inventory_(20,_2) + Lotsize_(5,_20,_2) = 0
_C6: Inventory_(2,_2) - Inventory_(2,_3) + Lotsize_(1,_2,_3) = 133
_C60: Inventory_(20,_2) - Inventory_(20,_3) + Lotsize_(5,_20,_3) = 0
_C61: - Inventory_(21,_1) + Lotsize_(3,_21,_1) = 0
_C62: Inventory_(21,_1) - Inventory_(21,_2) + Lotsize_(3,_21,_2) = 0
_C63: Inventory_(21,_2) - Inventory_(21,_3) + Lotsize_(3,_21,_3) = 0
_C64: - Inventory_(22,_1) + Lotsize_(3,_22,_1) = 0
_C65: Inventory_(22,_1) - Inventory_(22,_2) + Lotsize_(3,_22,_2) = 0
_C66: Inventory_(22,_2) - Inventory_(22,_3) + Lotsize_(3,_22,_3) = 0
_C67: Production_(1,_1,_1) <= 1
_C68: Production_(1,_1,_2) <= 1
_C69: Production_(1,_1,_3) <= 1
_C7: - Inventory_(3,_1) + Lotsize_(1,_3,_1) = 107
_C70: Production_(1,_2,_1) <= 1
_C71: Production_(1,_2,_2) <= 1
_C72: Production_(1,_2,_3) <= 1
_C73: Production_(1,_3,_1) <= 1
_C74: Production_(1,_3,_2) <= 1
_C75: Production_(1,_3,_3) <= 1
_C76: Production_(1,_4,_1) <= 1
_C77: Production_(1,_4,_2) <= 1
_C78: Production_(1,_4,_3) <= 1
_C79: Production_(2,_5,_1) <= 1
_C8: Inventory_(3,_1) - Inventory_(3,_2) + Lotsize_(1,_3,_2) = 26
_C80: Production_(2,_5,_2) <= 1
_C81: Production_(2,_5,_3) <= 1
_C82: Production_(2,_6,_1) <= 1
_C83: Production_(2,_6,_2) <= 1
_C84: Production_(2,_6,_3) <= 1
_C85: Production_(2,_7,_1) <= 1
_C86: Production_(2,_7,_2) <= 1
_C87: Production_(2,_7,_3) <= 1
_C88: Production_(2,_8,_1) <= 1
_C89: Production_(2,_8,_2) <= 1
_C9: Inventory_(3,_2) - Inventory_(3,_3) + Lotsize_(1,_3,_3) = 151
_C90: Production_(2,_8,_3) <= 1
_C91: Production_(6,_9,_1) <= 1
_C92: Production_(6,_9,_2) <= 1
_C93: Production_(6,_9,_3) <= 1
_C94: Production_(6,_10,_1) <= 1
_C95: Production_(6,_10,_2) <= 1
_C96: Production_(6,_10,_3) <= 1
_C97: Production_(6,_11,_1) <= 1
_C98: Production_(6,_11,_2) <= 1
_C99: Production_(6,_11,_3) <= 1
Bounds
Production_(1,_1,_1) <= 1
Production_(1,_1,_2) <= 1
Production_(1,_1,_3) <= 1
Production_(1,_2,_1) <= 1
Production_(1,_2,_2) <= 1
Production_(1,_2,_3) <= 1
Production_(1,_3,_1) <= 1
Production_(1,_3,_2) <= 1
Production_(1,_3,_3) <= 1
Production_(1,_4,_1) <= 1
Production_(1,_4,_2) <= 1
Production_(1,_4,_3) <= 1
Production_(2,_5,_1) <= 1
Production_(2,_5,_2) <= 1
Production_(2,_5,_3) <= 1
Production_(2,_6,_1) <= 1
Production_(2,_6,_2) <= 1
Production_(2,_6,_3) <= 1
Production_(2,_7,_1) <= 1
Production_(2,_7,_2) <= 1
Production_(2,_7,_3) <= 1
Production_(2,_8,_1) <= 1
Production_(2,_8,_2) <= 1
Production_(2,_8,_3) <= 1
Production_(3,_21,_1) <= 1
Production_(3,_21,_2) <= 1
Production_(3,_21,_3) <= 1
Production_(3,_22,_1) <= 1
Production_(3,_22,_2) <= 1
Production_(3,_22,_3) <= 1
Production_(4,_14,_1) <= 1
Production_(4,_14,_2) <= 1
Production_(4,_14,_3) <= 1
Production_(4,_15,_1) <= 1
Production_(4,_15,_2) <= 1
Production_(4,_15,_3) <= 1
Production_(4,_16,_1) <= 1
Production_(4,_16,_2) <= 1
Production_(4,_16,_3) <= 1
Production_(4,_17,_1) <= 1
Production_(4,_17,_2) <= 1
Production_(4,_17,_3) <= 1
Production_(5,_18,_1) <= 1
Production_(5,_18,_2) <= 1
Production_(5,_18,_3) <= 1
Production_(5,_19,_1) <= 1
Production_(5,_19,_2) <= 1
Production_(5,_19,_3) <= 1
Production_(5,_20,_1) <= 1
Production_(5,_20,_2) <= 1
Production_(5,_20,_3) <= 1
Production_(6,_10,_1) <= 1
Production_(6,_10,_2) <= 1
Production_(6,_10,_3) <= 1
Production_(6,_11,_1) <= 1
Production_(6,_11,_2) <= 1
Production_(6,_11,_3) <= 1
Production_(6,_9,_1) <= 1
Production_(6,_9,_2) <= 1
Production_(6,_9,_3) <= 1
Production_(7,_12,_1) <= 1
Production_(7,_12,_2) <= 1
Production_(7,_12,_3) <= 1
Production_(7,_13,_1) <= 1
Production_(7,_13,_2) <= 1
Production_(7,_13,_3) <= 1
Setup_(1,_1,_1) <= 1
Setup_(1,_1,_2) <= 1
Setup_(1,_1,_3) <= 1
Setup_(1,_2,_1) <= 1
Setup_(1,_2,_2) <= 1
Setup_(1,_2,_3) <= 1
Setup_(1,_3,_1) <= 1
Setup_(1,_3,_2) <= 1
Setup_(1,_3,_3) <= 1
Setup_(1,_4,_1) <= 1
Setup_(1,_4,_2) <= 1
Setup_(1,_4,_3) <= 1
Setup_(2,_5,_1) <= 1
Setup_(2,_5,_2) <= 1
Setup_(2,_5,_3) <= 1
Setup_(2,_6,_1) <= 1
Setup_(2,_6,_2) <= 1
Setup_(2,_6,_3) <= 1
Setup_(2,_7,_1) <= 1
Setup_(2,_7,_2) <= 1
Setup_(2,_7,_3) <= 1
Setup_(2,_8,_1) <= 1
Setup_(2,_8,_2) <= 1
Setup_(2,_8,_3) <= 1
Setup_(3,_21,_1) <= 1
Setup_(3,_21,_2) <= 1
Setup_(3,_21,_3) <= 1
Setup_(3,_22,_1) <= 1
Setup_(3,_22,_2) <= 1
Setup_(3,_22,_3) <= 1
Setup_(4,_14,_1) <= 1
Setup_(4,_14,_2) <= 1
Setup_(4,_14,_3) <= 1
Setup_(4,_15,_1) <= 1
Setup_(4,_15,_2) <= 1
Setup_(4,_15,_3) <= 1
Setup_(4,_16,_1) <= 1
Setup_(4,_16,_2) <= 1
Setup_(4,_16,_3) <= 1
Setup_(4,_17,_1) <= 1
Setup_(4,_17,_2) <= 1
Setup_(4,_17,_3) <= 1
Setup_(5,_18,_1) <= 1
Setup_(5,_18,_2) <= 1
Setup_(5,_18,_3) <= 1
Setup_(5,_19,_1) <= 1
Setup_(5,_19,_2) <= 1
Setup_(5,_19,_3) <= 1
Setup_(5,_20,_1) <= 1
Setup_(5,_20,_2) <= 1
Setup_(5,_20,_3) <= 1
Setup_(6,_10,_1) <= 1
Setup_(6,_10,_2) <= 1
Setup_(6,_10,_3) <= 1
Setup_(6,_11,_1) <= 1
Setup_(6,_11,_2) <= 1
Setup_(6,_11,_3) <= 1
Setup_(6,_9,_1) <= 1
Setup_(6,_9,_2) <= 1
Setup_(6,_9,_3) <= 1
Setup_(7,_12,_1) <= 1
Setup_(7,_12,_2) <= 1
Setup_(7,_12,_3) <= 1
Setup_(7,_13,_1) <= 1
Setup_(7,_13,_2) <= 1
Setup_(7,_13,_3) <= 1
End
