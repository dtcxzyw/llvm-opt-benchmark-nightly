inline.NumInlined: 18
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }

@_dist_code = dso_local local_unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\10\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 16
@_length_code = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C", align 16
@static_ltree = internal constant [288 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 140 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 76 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 204 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 44 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 172 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 108 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 236 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 156 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 92 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 220 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 60 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 188 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 124 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 252 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 130 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 66 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 194 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 34 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 162 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 98 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 226 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 146 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 82 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 210 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 50 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 178 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 114 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 242 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 138 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 74 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 202 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 42 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 170 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 106 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 234 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 154 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 90 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 218 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 58 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 186 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 122 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 250 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 134 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 70 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 198 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 38 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 166 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 102 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 230 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 150 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 86 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 214 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 54 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 182 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 118 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 246 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 142 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 78 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 206 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 46 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 174 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 110 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 238 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 158 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 94 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 222 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 62 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 190 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 126 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 254 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 129 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 65 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 193 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 33 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 161 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 97 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 225 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 145 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 81 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 209 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 49 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 177 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 113 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 241 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 137 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 73 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 201 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 41 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 169 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 105 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 233 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 153 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 89 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 217 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 57 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 185 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 121 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 249 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 133 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 69 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 197 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 37 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 165 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 101 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 229 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 149 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 85 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 213 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 53 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 181 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 117 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 245 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 141 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 77 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 205 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 45 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 173 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 109 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 237 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 157 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 93 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 221 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 61 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 189 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 125 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 253 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 275 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 147 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 403 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 83 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 339 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 211 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 467 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 51 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 307 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 179 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 435 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 115 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 371 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 243 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 499 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 267 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 139 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 395 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 75 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 331 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 203 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 459 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 43 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 299 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 171 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 427 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 107 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 363 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 235 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 491 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 283 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 155 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 411 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 91 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 347 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 219 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 475 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 59 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 315 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 187 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 443 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 123 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 379 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 251 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 507 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 263 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 135 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 391 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 71 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 327 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 199 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 455 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 39 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 295 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 167 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 423 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 103 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 359 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 231 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 487 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 279 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 151 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 407 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 87 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 343 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 215 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 471 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 55 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 311 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 183 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 439 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 119 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 375 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 247 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 503 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 15 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 271 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 143 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 399 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 79 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 335 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 207 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 463 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 47 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 303 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 175 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 431 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 111 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 367 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 239 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 495 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 31 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 287 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 159 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 415 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 95 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 351 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 223 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 479 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 63 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 319 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 191 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 447 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 127 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 383 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 255 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 511 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 64 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 32 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 96 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 80 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 48 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 112 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 72 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 40 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 104 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 88 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 56 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 120 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 68 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 36 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 100 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 84 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 52 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 116 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 131 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 67 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 195 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 35 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 163 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 99 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 227 }, %union.anon.0 { i16 8 } }], align 16
@static_dtree = internal constant [30 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 5 } }], align 16
@extra_lbits = internal constant [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 16
@static_l_desc = internal constant { ptr, ptr, i32, i32, i32, [4 x i8] } { ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15, [4 x i8] zeroinitializer }, align 8
@extra_dbits = internal constant [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 16
@static_d_desc = internal constant { ptr, ptr, i32, i32, i32, [4 x i8] } { ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15, [4 x i8] zeroinitializer }, align 8
@extra_blbits = internal constant [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 16
@static_bl_desc = internal constant { ptr, ptr, i32, i32, i32, [4 x i8] } { ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7, [4 x i8] zeroinitializer }, align 8
@bl_order = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@base_length = internal unnamed_addr constant [29 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 10, i32 12, i32 14, i32 16, i32 20, i32 24, i32 28, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 0], align 16
@base_dist = internal unnamed_addr constant [30 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @_tr_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2904
  store ptr %i.a, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2920
  store ptr @static_l_desc, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2504 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2928
  store ptr %i.d, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2944
  store ptr @static_d_desc, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2748 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2952
  store ptr %i.g, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2968
  store ptr @static_bl_desc, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5940
  store i32 0, ptr %i.k, align 4, !tbaa !26
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i16 0, ptr %i.l, align 4, !tbaa !27
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i16 0, ptr %i.n, align 4, !tbaa !27
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 286
  br i1 %exitcond.not.i.1, label %init_block.exit, label %bb.b, !llvm.loop !28

init_block.exit:                                  ; preds = %bb.b
  store i16 0, ptr %i.d, align 4, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %i.o, align 4, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %i.p, align 4, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %i.q, align 4, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %i.r, align 4, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %i.s, align 4, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %i.t, align 4, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %i.u, align 4, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %i.v, align 4, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %i.w, align 4, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %i.x, align 4, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %i.y, align 4, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %i.z, align 4, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %i.aa, align 4, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %i.ab, align 4, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %i.ac, align 4, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %i.ad, align 4, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %i.ae, align 4, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %i.af, align 4, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %i.ag, align 4, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %i.ah, align 4, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %i.ai, align 4, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %i.aj, align 4, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %i.ak, align 4, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %i.al, align 4, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %i.am, align 4, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %i.an, align 4, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %i.ao, align 4, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %i.ap, align 4, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %i.aq, align 4, !tbaa !27
  store i16 0, ptr %i.g, align 4, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %i.ar, align 4, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %i.as, align 4, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %i.at, align 4, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %i.au, align 4, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %i.av, align 4, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %i.aw, align 4, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %i.ax, align 4, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %i.ay, align 4, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %i.az, align 4, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %i.ba, align 4, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %i.bb, align 4, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %i.bc, align 4, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %i.bd, align 4, !tbaa !27
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %i.be, align 4, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %i.bf, align 4, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %i.bg, align 4, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %i.bh, align 4, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %i.bi, align 4, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %i.bj, align 4, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %i.bl, align 4, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bk, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_tr_stored_block(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 13
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %3, 65535
  %i.e = shl i32 %3, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 3 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !25
  %i.h = trunc i32 %i.e to i16
  %i.i = or i16 %i.g, %i.h                        ; 2 uses
  store i16 %i.i, ptr %i.f, align 8, !tbaa !25
  %i.j = trunc i16 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 %i.j, ptr %i.p, align 1, !tbaa !27
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %4 = load i8, ptr %.shift, align 1, !tbaa !25
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.r = load i64, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.m, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 %4, ptr %i.t, align 1, !tbaa !27
  %i.u = load i32, ptr %i.a, align 4, !tbaa !26   ; 2 uses
  %i.v = sub nsw i32 16, %i.u
  %i.w = lshr i32 %i.d, %i.v
  %i.x = trunc nuw i32 %i.w to i16                ; 2 uses
  store i16 %i.x, ptr %i.f, align 8, !tbaa !25
  %i.y = add nsw i32 %i.u, -13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = shl i32 %3, %i.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !25
  %i.ac = trunc i32 %i.z to i16
  %i.ad = or i16 %i.ab, %i.ac                     ; 2 uses
  store i16 %i.ad, ptr %i.aa, align 8, !tbaa !25
  %i.ae = add nsw i32 %i.b, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.af = phi i16 [ %i.ad, %bb.c ], [ %i.x, %bb.b ] ; 2 uses
  %storemerge = phi i32 [ %i.ae, %bb.c ], [ %i.y, %bb.b ] ; 2 uses
  %i.ag = icmp sgt i32 %storemerge, 8
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = trunc i16 %i.af to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  store i8 %i.ah, ptr %i.an, align 1, !tbaa !27
  %.shift.i = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %5 = load i8, ptr %.shift.i, align 1, !tbaa !25
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !31
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  store i8 %5, ptr %i.ar, align 1, !tbaa !27
  br label %bi_windup.exit

bb.f:                                             ; preds = %bb.d
  %i.as = icmp sgt i32 %storemerge, 0
  br i1 %i.as, label %bb.g, label %bi_windup.exit

bb.g:                                             ; preds = %bb.f
  %i.at = trunc i16 %i.af to i8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !32 ; 2 uses
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 %i.at, ptr %i.az, align 1, !tbaa !27
  br label %bi_windup.exit

bi_windup.exit:                                   ; preds = %bb.e, %bb.f, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %i.ba, align 8, !tbaa !25
  store i32 0, ptr %i.a, align 4, !tbaa !26
  %i.bb = trunc i64 %2 to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !32 ; 2 uses
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf
  store i8 %i.bb, ptr %i.bh, align 1, !tbaa !27
  %i.bi = lshr i64 %2, 8
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.bl = load i64, ptr %i.be, align 8, !tbaa !32 ; 2 uses
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  store i8 %i.bj, ptr %i.bn, align 1, !tbaa !27
  %i.bo = trunc i64 %2 to i32
  %i.bp = xor i32 %i.bo, 65535                    ; 2 uses
  %i.bq = trunc i32 %i.bp to i8
  %i.br = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !32 ; 2 uses
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.be, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  store i8 %i.bq, ptr %i.bu, align 1, !tbaa !27
  %i.bv = lshr i32 %i.bp, 8
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.by = load i64, ptr %i.be, align 8, !tbaa !32 ; 2 uses
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.be, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  store i8 %i.bw, ptr %i.ca, align 1, !tbaa !27
  %i.cb = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.cc = load i64, ptr %i.be, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr align 1 %1, i64 %2, i1 false)
  %i.ce = load i64, ptr %i.be, align 8, !tbaa !32
  %i.cf = add i64 %i.ce, %2
  store i64 %i.cf, ptr %i.be, align 8, !tbaa !32
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_tr_flush_bits(ptr noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26   ; 2 uses
  %i.c = icmp eq i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !25
  %i.f = trunc i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  store i8 %i.f, ptr %i.l, align 1, !tbaa !27
  %.shift15.i = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %1 = load i8, ptr %.shift15.i, align 1, !tbaa !25
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.n = load i64, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.i, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 %1, ptr %i.p, align 1, !tbaa !27
  store i16 0, ptr %i.d, align 8, !tbaa !25
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %i.b, 7
  br i1 %i.q, label %bb.d, label %bi_flush.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !25
  %i.t = trunc i16 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  store i8 %i.t, ptr %i.z, align 1, !tbaa !27
  %.shift.i = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %2 = load i8, ptr %.shift.i, align 1, !tbaa !25
  %3 = zext i8 %2 to i16
  store i16 %3, ptr %i.r, align 8, !tbaa !25
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !26
  %i.ab = add nsw i32 %i.aa, -8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.b
  %.sink.i = phi i32 [ %i.ab, %bb.d ], [ 0, %bb.b ]
  store i32 %.sink.i, ptr %i.a, align 4, !tbaa !26
  br label %bi_flush.exit

bi_flush.exit:                                    ; preds = %bb.c, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_tr_align(ptr noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 13
  %i.d = shl i32 2, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 3 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !25
  %i.g = trunc i32 %i.d to i16
  %i.h = or i16 %i.f, %i.g                        ; 3 uses
  store i16 %i.h, ptr %i.e, align 8, !tbaa !25
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i16 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !32   ; 2 uses
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  store i8 %i.i, ptr %i.o, align 1, !tbaa !27
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %1 = load i8, ptr %.shift, align 1, !tbaa !25
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.q = load i64, ptr %i.l, align 8, !tbaa !32   ; 2 uses
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.l, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  store i8 %1, ptr %i.s, align 1, !tbaa !27
  %i.t = load i32, ptr %i.a, align 4, !tbaa !26   ; 2 uses
  %i.u = sub nsw i32 16, %i.t
  %i.v = lshr i32 2, %i.u
  %i.w = trunc nuw nsw i32 %i.v to i16            ; 2 uses
  store i16 %i.w, ptr %i.e, align 8, !tbaa !25
  %i.x = add nsw i32 %i.t, -13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.y = add nsw i32 %i.b, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = phi i16 [ %i.h, %bb.c ], [ %i.w, %bb.b ]
  %storemerge = phi i32 [ %i.y, %bb.c ], [ %i.x, %bb.b ] ; 3 uses
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !26
  %i.aa = icmp sgt i32 %storemerge, 9
  %i.ab = trunc i16 %i.z to i8                    ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !27
  %.shift42 = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %2 = load i8, ptr %.shift42, align 1, !tbaa !25
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.af, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 %2, ptr %i.am, align 1, !tbaa !27
  store i16 0, ptr %i.ac, align 8, !tbaa !25
  %i.an = load i32, ptr %i.a, align 4, !tbaa !26
  %i.ao = add nsw i32 %i.an, -9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = add nsw i32 %storemerge, 7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = phi i8 [ %i.ab, %bb.f ], [ 0, %bb.e ]   ; 2 uses
  %storemerge41 = phi i32 [ %i.ap, %bb.f ], [ %i.ao, %bb.e ] ; 3 uses
  store i32 %storemerge41, ptr %i.a, align 4, !tbaa !26
  %i.ar = icmp eq i32 %storemerge41, 16
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  store i8 %i.aq, ptr %i.ay, align 1, !tbaa !27
  %.shift15.i = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %3 = load i8, ptr %.shift15.i, align 1, !tbaa !25
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !31
  %i.ba = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.av, align 8, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  store i8 %3, ptr %i.bc, align 1, !tbaa !27
  store i16 0, ptr %i.as, align 8, !tbaa !25
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.bd = icmp sgt i32 %storemerge41, 7
  br i1 %i.bd, label %bb.j, label %bi_flush.exit

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32 ; 2 uses
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  store i8 %i.aq, ptr %i.bk, align 1, !tbaa !27
  %.shift.i = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %4 = load i8, ptr %.shift.i, align 1, !tbaa !25
  %5 = zext i8 %4 to i16
  store i16 %5, ptr %i.be, align 8, !tbaa !25
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !26
  %i.bm = add nsw i32 %i.bl, -8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.h
  %.sink.i = phi i32 [ %i.bm, %bb.j ], [ 0, %bb.h ]
  store i32 %.sink.i, ptr %i.a, align 4, !tbaa !26
  br label %bi_flush.exit

bi_flush.exit:                                    ; preds = %bb.i, %.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_tr_flush_block(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.bt

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 5 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !27
  %.not19.i = icmp eq i16 %i.i, 0
  br i1 %.not19.i, label %bb.d, label %detect_data_type.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = load i16, ptr %i.j, align 4, !tbaa !27
  %.not19.1.i = icmp eq i16 %i.k, 0
  br i1 %.not19.1.i, label %bb.e, label %detect_data_type.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.m = load i16, ptr %i.l, align 4, !tbaa !27
  %.not19.2.i = icmp eq i16 %i.m, 0
  br i1 %.not19.2.i, label %bb.f, label %detect_data_type.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.o = load i16, ptr %i.n, align 4, !tbaa !27
  %.not19.3.i = icmp eq i16 %i.o, 0
  br i1 %.not19.3.i, label %bb.g, label %detect_data_type.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.q = load i16, ptr %i.p, align 4, !tbaa !27
  %.not19.4.i = icmp eq i16 %i.q, 0
  br i1 %.not19.4.i, label %bb.h, label %detect_data_type.exit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load i16, ptr %i.r, align 4, !tbaa !27
  %.not19.5.i = icmp eq i16 %i.s, 0
  br i1 %.not19.5.i, label %bb.i, label %detect_data_type.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.u = load i16, ptr %i.t, align 4, !tbaa !27
  %.not19.6.i = icmp eq i16 %i.u, 0
  br i1 %.not19.6.i, label %bb.j, label %detect_data_type.exit

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.w = load i16, ptr %i.v, align 4, !tbaa !27
  %.not19.14.i = icmp eq i16 %i.w, 0
  br i1 %.not19.14.i, label %bb.k, label %detect_data_type.exit

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.y = load i16, ptr %i.x, align 4, !tbaa !27
  %.not19.15.i = icmp eq i16 %i.y, 0
  br i1 %.not19.15.i, label %bb.l, label %detect_data_type.exit

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !27
  %.not19.16.i = icmp eq i16 %i.aa, 0
  br i1 %.not19.16.i, label %bb.m, label %detect_data_type.exit

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !27
  %.not19.17.i = icmp eq i16 %i.ac, 0
  br i1 %.not19.17.i, label %bb.n, label %detect_data_type.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !27
  %.not19.18.i = icmp eq i16 %i.ae, 0
  br i1 %.not19.18.i, label %bb.o, label %detect_data_type.exit

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !27
  %.not19.19.i = icmp eq i16 %i.ag, 0
  br i1 %.not19.19.i, label %bb.p, label %detect_data_type.exit

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !27
  %.not19.20.i = icmp eq i16 %i.ai, 0
  br i1 %.not19.20.i, label %bb.q, label %detect_data_type.exit

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !27
  %.not19.21.i = icmp eq i16 %i.ak, 0
  br i1 %.not19.21.i, label %bb.r, label %detect_data_type.exit

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.am = load i16, ptr %i.al, align 4, !tbaa !27
  %.not19.22.i = icmp eq i16 %i.am, 0
  br i1 %.not19.22.i, label %bb.s, label %detect_data_type.exit

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !27
  %.not19.23.i = icmp eq i16 %i.ao, 0
  br i1 %.not19.23.i, label %bb.t, label %detect_data_type.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !27
  %.not19.24.i = icmp eq i16 %i.aq, 0
  br i1 %.not19.24.i, label %bb.u, label %detect_data_type.exit

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !27
  %.not19.25.i = icmp eq i16 %i.as, 0
  br i1 %.not19.25.i, label %bb.v, label %detect_data_type.exit

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.au = load i16, ptr %i.at, align 4, !tbaa !27
  %.not19.28.i = icmp eq i16 %i.au, 0
  br i1 %.not19.28.i, label %bb.w, label %detect_data_type.exit

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !27
  %.not19.29.i = icmp eq i16 %i.aw, 0
  br i1 %.not19.29.i, label %bb.x, label %detect_data_type.exit

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !27
  %.not19.30.i = icmp eq i16 %i.ay, 0
  br i1 %.not19.30.i, label %bb.y, label %detect_data_type.exit

bb.y:                                             ; preds = %bb.x
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ba = load i16, ptr %i.az, align 4, !tbaa !27
  %.not19.31.i = icmp eq i16 %i.ba, 0
  br i1 %.not19.31.i, label %bb.z, label %detect_data_type.exit

bb.z:                                             ; preds = %bb.y
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !27
  %.not.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i, label %bb.aa, label %detect_data_type.exit

bb.aa:                                            ; preds = %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !27
  %.not15.i = icmp eq i16 %i.be, 0
  br i1 %.not15.i, label %bb.ab, label %detect_data_type.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !27
  %.not16.i = icmp eq i16 %i.bg, 0
  br i1 %.not16.i, label %.preheader.i, label %detect_data_type.exit

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !27
  %.not17.i.1 = icmp eq i16 %i.bj, 0
  br i1 %.not17.i.1, label %.preheader.i.2, label %detect_data_type.exit

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !27
  %.not17.i.2 = icmp eq i16 %i.bm, 0
  br i1 %.not17.i.2, label %.preheader.i.3, label %detect_data_type.exit

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
end_hunk_0
begin_hunk_1_@_tr_flush_block:bb.a
  %i.ek = zext nneg i32 %.03651.i23.i to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ek ; 2 uses
  %i.em = load i16, ptr %i.el, align 4, !tbaa !27
  %i.en = add i16 %i.em, 1
  store i16 %i.en, ptr %i.el, align 4, !tbaa !27
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.eo = load i16, ptr %i.dt, align 4, !tbaa !27
  %i.ep = add i16 %i.eo, 1
  store i16 %i.ep, ptr %i.dt, align 4, !tbaa !27
  br label %bb.bb

bb.ay:                                            ; preds = %bb.au
  %i.eq = icmp slt i32 %.03452.i22.i, 10
  br i1 %i.eq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.er = load i16, ptr %i.dv, align 4, !tbaa !27
  %i.es = add i16 %i.er, 1
  store i16 %i.es, ptr %i.dv, align 4, !tbaa !27
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.et = load i16, ptr %i.du, align 4, !tbaa !27
  %i.eu = add i16 %i.et, 1
  store i16 %i.eu, ptr %i.du, align 4, !tbaa !27
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ax, %bb.at
  %i.ev = icmp eq i16 %i.dz, 0
  br i1 %i.ev, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %..i29.i = select i1 %i.ed, i32 6, i32 7
  %.47.i30.i = select i1 %i.ed, i32 3, i32 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ar
  %.139.i31.i = phi i32 [ %.03849.i24.i, %bb.ar ], [ %.03651.i23.i, %bb.bb ], [ %.03651.i23.i, %bb.bc ]
  %.135.i32.i = phi i32 [ %i.eb, %bb.ar ], [ 0, %bb.bb ], [ 0, %bb.bc ]
  %.233.i33.i = phi i32 [ %.13253.i21.i, %bb.ar ], [ 138, %bb.bb ], [ %..i29.i, %bb.bc ]
  %.2.i34.i = phi i32 [ %.154.i20.i, %bb.ar ], [ 3, %bb.bb ], [ %.47.i30.i, %bb.bc ]
  %exitcond.not.i35.i = icmp eq i64 %indvars.iv.next.i25.i, %wide.trip.count.i18.i
  br i1 %exitcond.not.i35.i, label %scan_tree.exit36.i, label %bb.ar, !llvm.loop !40

scan_tree.exit36.i:                               ; preds = %bb.bd, %scan_tree.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 2952
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !27
  %.not.i92 = icmp eq i16 %i.ey, 0
  br i1 %.not.i92, label %bb.be, label %build_bl_tree.exit

bb.be:                                            ; preds = %scan_tree.exit36.i
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !27
  %.not.1.i = icmp eq i16 %i.fa, 0
  br i1 %.not.1.i, label %bb.bf, label %build_bl_tree.exit

bb.bf:                                            ; preds = %bb.be
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !27
  %.not.2.i = icmp eq i16 %i.fc, 0
  br i1 %.not.2.i, label %bb.bg, label %build_bl_tree.exit

bb.bg:                                            ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !27
  %.not.3.i = icmp eq i16 %i.fe, 0
  br i1 %.not.3.i, label %bb.bh, label %build_bl_tree.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !27
  %.not.4.i = icmp eq i16 %i.fg, 0
  br i1 %.not.4.i, label %bb.bi, label %build_bl_tree.exit

bb.bi:                                            ; preds = %bb.bh
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !27
  %.not.5.i = icmp eq i16 %i.fi, 0
  br i1 %.not.5.i, label %bb.bj, label %build_bl_tree.exit

bb.bj:                                            ; preds = %bb.bi
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !27
  %.not.6.i = icmp eq i16 %i.fk, 0
  br i1 %.not.6.i, label %bb.bk, label %build_bl_tree.exit

bb.bk:                                            ; preds = %bb.bj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !27
  %.not.7.i = icmp eq i16 %i.fm, 0
  br i1 %.not.7.i, label %bb.bl, label %build_bl_tree.exit

bb.bl:                                            ; preds = %bb.bk
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !27
  %.not.8.i = icmp eq i16 %i.fo, 0
  br i1 %.not.8.i, label %bb.bm, label %build_bl_tree.exit

bb.bm:                                            ; preds = %bb.bl
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !27
  %.not.9.i = icmp eq i16 %i.fq, 0
  br i1 %.not.9.i, label %bb.bn, label %build_bl_tree.exit

bb.bn:                                            ; preds = %bb.bm
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !27
  %.not.10.i = icmp eq i16 %i.fs, 0
  br i1 %.not.10.i, label %bb.bo, label %build_bl_tree.exit

bb.bo:                                            ; preds = %bb.bn
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !27
  %.not.11.i = icmp eq i16 %i.fu, 0
  br i1 %.not.11.i, label %bb.bp, label %build_bl_tree.exit

bb.bp:                                            ; preds = %bb.bo
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !27
  %.not.12.i = icmp eq i16 %i.fw, 0
  br i1 %.not.12.i, label %bb.bq, label %build_bl_tree.exit

bb.bq:                                            ; preds = %bb.bp
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !27
  %.not.13.i = icmp eq i16 %i.fy, 0
  br i1 %.not.13.i, label %bb.br, label %build_bl_tree.exit

bb.br:                                            ; preds = %bb.bq
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !27
  %.not.14.i = icmp eq i16 %i.ga, 0
  br i1 %.not.14.i, label %bb.bs, label %build_bl_tree.exit

bb.bs:                                            ; preds = %bb.br
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !27
  %.not.15.i = icmp eq i16 %i.gc, 0
  %spec.select.i = select i1 %.not.15.i, i32 2, i32 3
  br label %build_bl_tree.exit

build_bl_tree.exit:                               ; preds = %scan_tree.exit36.i, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs
  %.0.lcssa.i = phi i32 [ 18, %scan_tree.exit36.i ], [ 10, %bb.bl ], [ 17, %bb.be ], [ %spec.select.i, %bb.bs ], [ 16, %bb.bf ], [ 8, %bb.bn ], [ 15, %bb.bg ], [ 4, %bb.br ], [ 14, %bb.bh ], [ 9, %bb.bm ], [ 13, %bb.bi ], [ 5, %bb.bq ], [ 12, %bb.bj ], [ 7, %bb.bo ], [ 11, %bb.bk ], [ 6, %bb.bp ] ; 2 uses
  %narrow.i = mul nuw nsw i32 %.0.lcssa.i, 3
  %narrow42.i = add nuw nsw i32 %narrow.i, 17
  %i.gd = zext nneg i32 %narrow42.i to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !42
  %i.gg = add i64 %i.gf, %i.gd                    ; 2 uses
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !42
  %i.gh = add i64 %i.gg, 10
  %i.gi = lshr i64 %i.gh, 3                       ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !43
  %i.gl = add i64 %i.gk, 10
  %i.gm = lshr i64 %i.gl, 3                       ; 2 uses
  %.not = icmp samesign ule i64 %i.gm, %i.gi
  %spec.select91 = tail call i64 @llvm.umin.i64(i64 %i.gm, i64 %i.gi)
  %i.gn = add nuw nsw i32 %.0.lcssa.i, 1
  br label %bb.bu

bb.bt:                                            ; preds = %bb.a
  %i.go = add i64 %2, 5
  br label %bb.bu

bb.bu:                                            ; preds = %build_bl_tree.exit, %bb.bt
  %.081 = phi i32 [ 1, %bb.bt ], [ %i.gn, %build_bl_tree.exit ] ; 2 uses
  %.080 = phi i1 [ true, %bb.bt ], [ %.not, %build_bl_tree.exit ]
  %.0 = phi i64 [ %i.go, %bb.bt ], [ %spec.select91, %build_bl_tree.exit ]
  %i.gp = add i64 %2, 4
  %i.gq = icmp ule i64 %i.gp, %.0
  %i.gr = icmp ne ptr %1, null
  %or.cond = and i1 %i.gr, %i.gq
  br i1 %or.cond, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3)
  br label %bb.cr

bb.bw:                                            ; preds = %bb.bu
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !44
  %i.gu = icmp eq i32 %i.gt, 4
  %brmerge = or i1 %.080, %i.gu
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 13 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !26 ; 7 uses
  %i.gx = icmp sgt i32 %i.gw, 13                  ; 2 uses
  br i1 %brmerge, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.gy = add i32 %3, 2                           ; 3 uses
  br i1 %i.gx, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.gz = and i32 %i.gy, 65535
  %i.ha = shl i32 %i.gy, %i.gw
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 3 uses
  %i.hc = load i16, ptr %i.hb, align 8, !tbaa !25
  %i.hd = trunc i32 %i.ha to i16
  %i.he = or i16 %i.hc, %i.hd                     ; 2 uses
  store i16 %i.he, ptr %i.hb, align 8, !tbaa !25
  %i.hf = trunc i16 %i.he to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !31
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !32 ; 2 uses
  %i.hk = add i64 %i.hj, 1
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hj
  store i8 %i.hf, ptr %i.hl, align 1, !tbaa !27
  %.shift90 = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %4 = load i8, ptr %.shift90, align 1, !tbaa !25
  %i.hm = load ptr, ptr %i.hg, align 8, !tbaa !31
  %i.hn = load i64, ptr %i.hi, align 8, !tbaa !32 ; 2 uses
  %i.ho = add i64 %i.hn, 1
  store i64 %i.ho, ptr %i.hi, align 8, !tbaa !32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn
  store i8 %4, ptr %i.hp, align 1, !tbaa !27
  %i.hq = load i32, ptr %i.gv, align 4, !tbaa !26 ; 2 uses
  %i.hr = sub nsw i32 16, %i.hq
  %i.hs = lshr i32 %i.gz, %i.hr
  %i.ht = trunc nuw i32 %i.hs to i16
  store i16 %i.ht, ptr %i.hb, align 8, !tbaa !25
  %i.hu = add nsw i32 %i.hq, -13
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.hv = shl i32 %i.gy, %i.gw
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 8, !tbaa !25
  %i.hy = trunc i32 %i.hv to i16
  %i.hz = or i16 %i.hx, %i.hy
  store i16 %i.hz, ptr %i.hw, align 8, !tbaa !25
  %i.ia = add nsw i32 %i.gw, 3
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %storemerge89 = phi i32 [ %i.ia, %bb.bz ], [ %i.hu, %bb.by ]
  store i32 %storemerge89, ptr %i.gv, align 4, !tbaa !26
  tail call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  br label %bb.cr

bb.cb:                                            ; preds = %bb.bw
  %i.ib = add i32 %3, 4                           ; 3 uses
  br i1 %i.gx, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ic = and i32 %i.ib, 65535
  %i.id = shl i32 %i.ib, %i.gw
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.if = load i16, ptr %i.ie, align 8, !tbaa !25
  %i.ig = trunc i32 %i.id to i16
  %i.ih = or i16 %i.if, %i.ig                     ; 2 uses
  store i16 %i.ih, ptr %i.ie, align 8, !tbaa !25
  %i.ii = trunc i16 %i.ih to i8
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !31
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !32 ; 2 uses
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.il, align 8, !tbaa !32
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.im
  store i8 %i.ii, ptr %i.io, align 1, !tbaa !27
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %5 = load i8, ptr %.shift, align 1, !tbaa !25
  %i.ip = load ptr, ptr %i.ij, align 8, !tbaa !31
  %i.iq = load i64, ptr %i.il, align 8, !tbaa !32 ; 2 uses
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.il, align 8, !tbaa !32
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iq
  store i8 %5, ptr %i.is, align 1, !tbaa !27
  %i.it = load i32, ptr %i.gv, align 4, !tbaa !26 ; 2 uses
  %i.iu = sub nsw i32 16, %i.it
  %i.iv = lshr i32 %i.ic, %i.iu
  %i.iw = trunc nuw i32 %i.iv to i16
  %i.ix = add nsw i32 %i.it, -13
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.iy = shl i32 %i.ib, %i.gw
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.ja = load i16, ptr %i.iz, align 8, !tbaa !25
  %i.jb = trunc i32 %i.iy to i16
  %i.jc = or i16 %i.ja, %i.jb
  %i.jd = add nsw i32 %i.gw, 3
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.je = phi i16 [ %i.jc, %bb.cd ], [ %i.iw, %bb.cc ] ; 2 uses
  %storemerge = phi i32 [ %i.jd, %bb.cd ], [ %i.ix, %bb.cc ] ; 5 uses
  store i32 %storemerge, ptr %i.gv, align 4, !tbaa !26
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !39 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !41 ; 4 uses
  %i.jj = icmp sgt i32 %storemerge, 11
  %i.jk = add i32 %i.jg, 65280                    ; 3 uses
  br i1 %i.jj, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.jl = and i32 %i.jk, 65535
  %i.jm = shl i32 %i.jk, %storemerge
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.jo = trunc i32 %i.jm to i16
  %i.jp = or i16 %i.je, %i.jo                     ; 2 uses
  store i16 %i.jp, ptr %i.jn, align 8, !tbaa !25
  %i.jq = trunc i16 %i.jp to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !31
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !32 ; 2 uses
  %i.jv = add i64 %i.ju, 1
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !32
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.ju
  store i8 %i.jq, ptr %i.jw, align 1, !tbaa !27
  %.shift.i = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %6 = load i8, ptr %.shift.i, align 1, !tbaa !25
  %i.jx = load ptr, ptr %i.jr, align 8, !tbaa !31
  %i.jy = load i64, ptr %i.jt, align 8, !tbaa !32 ; 2 uses
  %i.jz = add i64 %i.jy, 1
  store i64 %i.jz, ptr %i.jt, align 8, !tbaa !32
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jy
  store i8 %6, ptr %i.ka, align 1, !tbaa !27
  %i.kb = load i32, ptr %i.gv, align 4, !tbaa !26 ; 2 uses
  %i.kc = sub nsw i32 16, %i.kb
  %i.kd = lshr i32 %i.jl, %i.kc
  %i.ke = trunc nuw i32 %i.kd to i16
  %i.kf = add nsw i32 %i.kb, -11
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.kg = shl i32 %i.jk, %storemerge
  %i.kh = trunc i32 %i.kg to i16
  %i.ki = or i16 %i.je, %i.kh
  %i.kj = add nsw i32 %storemerge, 5
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.kk = phi i16 [ %i.ki, %bb.cg ], [ %i.ke, %bb.cf ] ; 2 uses
  %storemerge.i = phi i32 [ %i.kj, %bb.cg ], [ %i.kf, %bb.cf ] ; 5 uses
  store i32 %storemerge.i, ptr %i.gv, align 4, !tbaa !26
  %i.kl = icmp sgt i32 %storemerge.i, 11
  br i1 %i.kl, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.km = and i32 %i.ji, 65535
  %i.kn = shl i32 %i.ji, %storemerge.i
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.kp = trunc i32 %i.kn to i16
  %i.kq = or i16 %i.kk, %i.kp                     ; 2 uses
  store i16 %i.kq, ptr %i.ko, align 8, !tbaa !25
  %i.kr = trunc i16 %i.kq to i8
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !31
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !32 ; 2 uses
  %i.kw = add i64 %i.kv, 1
  store i64 %i.kw, ptr %i.ku, align 8, !tbaa !32
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kv
  store i8 %i.kr, ptr %i.kx, align 1, !tbaa !27
  %.shift106.i = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %7 = load i8, ptr %.shift106.i, align 1, !tbaa !25
  %i.ky = load ptr, ptr %i.ks, align 8, !tbaa !31
  %i.kz = load i64, ptr %i.ku, align 8, !tbaa !32 ; 2 uses
  %i.la = add i64 %i.kz, 1
  store i64 %i.la, ptr %i.ku, align 8, !tbaa !32
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kz
  store i8 %7, ptr %i.lb, align 1, !tbaa !27
  %i.lc = load i32, ptr %i.gv, align 4, !tbaa !26 ; 2 uses
  %i.ld = sub nsw i32 16, %i.lc
  %i.le = lshr i32 %i.km, %i.ld
  %i.lf = trunc nuw i32 %i.le to i16
  %i.lg = add nsw i32 %i.lc, -11
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.lh = shl i32 %i.ji, %storemerge.i
  %i.li = trunc i32 %i.lh to i16
  %i.lj = or i16 %i.kk, %i.li
  %i.lk = add nsw i32 %storemerge.i, 5
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ll = phi i16 [ %i.lj, %bb.cj ], [ %i.lf, %bb.ci ] ; 2 uses
  %storemerge105.i = phi i32 [ %i.lk, %bb.cj ], [ %i.lg, %bb.ci ] ; 5 uses
  store i32 %storemerge105.i, ptr %i.gv, align 4, !tbaa !26
  %i.lm = icmp sgt i32 %storemerge105.i, 12
  %i.ln = add nuw nsw i32 %.081, 65532            ; 3 uses
  br i1 %i.lm, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.lo = and i32 %i.ln, 65535
  %i.lp = shl i32 %i.ln, %storemerge105.i
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.lr = trunc i32 %i.lp to i16
  %i.ls = or i16 %i.ll, %i.lr                     ; 2 uses
  store i16 %i.ls, ptr %i.lq, align 8, !tbaa !25
  %i.lt = trunc i16 %i.ls to i8
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !31
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !32 ; 2 uses
  %i.ly = add i64 %i.lx, 1
  store i64 %i.ly, ptr %i.lw, align 8, !tbaa !32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lx
  store i8 %i.lt, ptr %i.lz, align 1, !tbaa !27
  %.shift108.i = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %8 = load i8, ptr %.shift108.i, align 1, !tbaa !25
  %i.ma = load ptr, ptr %i.lu, align 8, !tbaa !31
  %i.mb = load i64, ptr %i.lw, align 8, !tbaa !32 ; 2 uses
  %i.mc = add i64 %i.mb, 1
  store i64 %i.mc, ptr %i.lw, align 8, !tbaa !32
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mb
  store i8 %8, ptr %i.md, align 1, !tbaa !27
  %i.me = load i32, ptr %i.gv, align 4, !tbaa !26 ; 2 uses
  %i.mf = sub nsw i32 16, %i.me
  %i.mg = lshr i32 %i.lo, %i.mf
  %i.mh = trunc nuw i32 %i.mg to i16
  %i.mi = add nsw i32 %i.me, -12
  br label %.lr.ph.i

bb.cm:                                            ; preds = %bb.ck
  %i.mj = shl nuw nsw i32 %i.ln, %storemerge105.i
  %i.mk = trunc i32 %i.mj to i16
  %i.ml = or i16 %i.ll, %i.mk
  %i.mm = add nsw i32 %storemerge105.i, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cl, %bb.cm
  %i.mn = phi i16 [ %i.ml, %bb.cm ], [ %i.mh, %bb.cl ]
  %storemerge106.i = phi i32 [ %i.mm, %bb.cm ], [ %i.mi, %bb.cl ] ; 2 uses
  store i32 %storemerge106.i, ptr %i.gv, align 4, !tbaa !26
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.shift110.i = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %wide.trip.count.i = zext nneg i32 %.081 to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cq, %.lr.ph.i
  %i.mr = phi i16 [ %i.mn, %.lr.ph.i ], [ %i.nt, %bb.cq ]
  %i.ms = phi i32 [ %storemerge106.i, %.lr.ph.i ], [ %storemerge107.i, %bb.cq ] ; 3 uses
  %indvars.iv.i93 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i94, %bb.cq ] ; 2 uses
  %i.mt = icmp sgt i32 %i.ms, 13
  %i.mu = getelementptr inbounds nuw i8, ptr @bl_order, i64 %indvars.iv.i93
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !27
  %i.mw = zext i8 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 2750
  %i.mz = load i16, ptr %i.my, align 2, !tbaa !27
  %i.na = zext i16 %i.mz to i32                   ; 2 uses
  %i.nb = shl i32 %i.na, %i.ms
  %i.nc = trunc i32 %i.nb to i16
  %i.nd = or i16 %i.mr, %i.nc                     ; 3 uses
  store i16 %i.nd, ptr %i.mo, align 8, !tbaa !25
  br i1 %i.mt, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ne = trunc i16 %i.nd to i8
  %i.nf = load ptr, ptr %i.mp, align 8, !tbaa !31
  %i.ng = load i64, ptr %i.mq, align 8, !tbaa !32 ; 2 uses
  %i.nh = add i64 %i.ng, 1
  store i64 %i.nh, ptr %i.mq, align 8, !tbaa !32
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.ng
  store i8 %i.ne, ptr %i.ni, align 1, !tbaa !27
  %9 = load i8, ptr %.shift110.i, align 1, !tbaa !25
  %i.nj = load ptr, ptr %i.mp, align 8, !tbaa !31
  %i.nk = load i64, ptr %i.mq, align 8, !tbaa !32 ; 2 uses
  %i.nl = add i64 %i.nk, 1
  store i64 %i.nl, ptr %i.mq, align 8, !tbaa !32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nk
  store i8 %9, ptr %i.nm, align 1, !tbaa !27
  %i.nn = load i32, ptr %i.gv, align 4, !tbaa !26 ; 2 uses
  %i.no = sub nsw i32 16, %i.nn
  %i.np = lshr i32 %i.na, %i.no
  %i.nq = trunc nuw i32 %i.np to i16              ; 2 uses
  store i16 %i.nq, ptr %i.mo, align 8, !tbaa !25
  %i.nr = add nsw i32 %i.nn, -13
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.ns = add nsw i32 %i.ms, 3
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.nt = phi i16 [ %i.nd, %bb.cp ], [ %i.nq, %bb.co ]
  %storemerge107.i = phi i32 [ %i.ns, %bb.cp ], [ %i.nr, %bb.co ] ; 2 uses
  store i32 %storemerge107.i, ptr %i.gv, align 4, !tbaa !26
  %indvars.iv.next.i94 = add nuw nsw i64 %indvars.iv.i93, 1 ; 2 uses
  %exitcond.not.i95 = icmp eq i64 %indvars.iv.next.i94, %wide.trip.count.i
  br i1 %exitcond.not.i95, label %send_all_trees.exit, label %bb.cn, !llvm.loop !45

send_all_trees.exit:                              ; preds = %bb.cq
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  tail call fastcc void @send_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.nu, i32 noundef %i.jg)
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 2504 ; 2 uses
  tail call fastcc void @send_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.nv, i32 noundef %i.ji)
  tail call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull %i.nu, ptr noundef nonnull %i.nv)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.ca, %send_all_trees.exit, %bb.bv
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %bb.cr
  %indvars.iv.i96 = phi i64 [ 0, %bb.cr ], [ %indvars.iv.next.i97.1, %bb.cs ] ; 3 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %indvars.iv.i96
  store i16 0, ptr %i.nx, align 4, !tbaa !27
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %indvars.iv.i96
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  store i16 0, ptr %i.nz, align 4, !tbaa !27
  %indvars.iv.next.i97.1 = add nuw nsw i64 %indvars.iv.i96, 2 ; 2 uses
  %exitcond.not.i98.1 = icmp eq i64 %indvars.iv.next.i97.1, 286
  br i1 %exitcond.not.i98.1, label %init_block.exit, label %bb.cs, !llvm.loop !28

init_block.exit:                                  ; preds = %bb.cs
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %i.oa, align 4, !tbaa !27
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %i.ob, align 4, !tbaa !27
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %i.oc, align 4, !tbaa !27
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %i.od, align 4, !tbaa !27
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %i.oe, align 4, !tbaa !27
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %i.of, align 4, !tbaa !27
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %i.og, align 4, !tbaa !27
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %i.oh, align 4, !tbaa !27
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %i.oi, align 4, !tbaa !27
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %i.oj, align 4, !tbaa !27
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %i.ok, align 4, !tbaa !27
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %i.ol, align 4, !tbaa !27
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %i.om, align 4, !tbaa !27
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %i.on, align 4, !tbaa !27
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %i.oo, align 4, !tbaa !27
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %i.op, align 4, !tbaa !27
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %i.oq, align 4, !tbaa !27
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %i.or, align 4, !tbaa !27
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %i.os, align 4, !tbaa !27
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %i.ot, align 4, !tbaa !27
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %i.ou, align 4, !tbaa !27
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %i.ov, align 4, !tbaa !27
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %i.ow, align 4, !tbaa !27
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %i.ox, align 4, !tbaa !27
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %i.oy, align 4, !tbaa !27
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %i.oz, align 4, !tbaa !27
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %i.pa, align 4, !tbaa !27
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %i.pb, align 4, !tbaa !27
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %i.pc, align 4, !tbaa !27
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %i.pd, align 4, !tbaa !27
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %i.pe, align 4, !tbaa !27
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %i.pf, align 4, !tbaa !27
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %i.pg, align 4, !tbaa !27
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %i.ph, align 4, !tbaa !27
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %i.pi, align 4, !tbaa !27
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %i.pj, align 4, !tbaa !27
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %i.pk, align 4, !tbaa !27
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %i.pl, align 4, !tbaa !27
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %i.pm, align 4, !tbaa !27
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %i.pn, align 4, !tbaa !27
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %i.po, align 4, !tbaa !27
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %i.pp, align 4, !tbaa !27
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %i.pq, align 4, !tbaa !27
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %i.pr, align 4, !tbaa !27
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %i.ps, align 4, !tbaa !27
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %i.pt, align 4, !tbaa !27
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %i.pu, align 4, !tbaa !27
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %i.pv, align 4, !tbaa !27
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %i.pw, align 4, !tbaa !27
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %i.px, align 4, !tbaa !27
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %i.pz, align 4, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.py, i8 0, i64 20, i1 false)
  %.not90 = icmp eq i32 %3, 0
  br i1 %.not90, label %bb.cx, label %bb.ct

bb.ct:                                            ; preds = %init_block.exit
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !26 ; 2 uses
  %i.qc = icmp sgt i32 %i.qb, 8
  br i1 %i.qc, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.qe = load i16, ptr %i.qd, align 8, !tbaa !25
  %i.qf = trunc i16 %i.qe to i8
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !31
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !32 ; 2 uses
  %i.qk = add i64 %i.qj, 1
  store i64 %i.qk, ptr %i.qi, align 8, !tbaa !32
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qj
  store i8 %i.qf, ptr %i.ql, align 1, !tbaa !27
  %.shift.i100 = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %10 = load i8, ptr %.shift.i100, align 1, !tbaa !25
  %i.qm = load ptr, ptr %i.qg, align 8, !tbaa !31
  %i.qn = load i64, ptr %i.qi, align 8, !tbaa !32 ; 2 uses
  %i.qo = add i64 %i.qn, 1
  store i64 %i.qo, ptr %i.qi, align 8, !tbaa !32
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qn
  store i8 %10, ptr %i.qp, align 1, !tbaa !27
  br label %bi_windup.exit

bb.cv:                                            ; preds = %bb.ct
  %i.qq = icmp sgt i32 %i.qb, 0
  br i1 %i.qq, label %bb.cw, label %bi_windup.exit

bb.cw:                                            ; preds = %bb.cv
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.qs = load i16, ptr %i.qr, align 8, !tbaa !25
  %i.qt = trunc i16 %i.qs to i8
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !31
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !32 ; 2 uses
  %i.qy = add i64 %i.qx, 1
  store i64 %i.qy, ptr %i.qw, align 8, !tbaa !32
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qx
  store i8 %i.qt, ptr %i.qz, align 1, !tbaa !27
  br label %bi_windup.exit

bi_windup.exit:                                   ; preds = %bb.cu, %bb.cv, %bb.cw
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %i.ra, align 8, !tbaa !25
  store i32 0, ptr %i.qa, align 4, !tbaa !26
  br label %bb.cx

bb.cx:                                            ; preds = %bi_windup.exit, %init_block.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @build_tree(ptr noundef initializes((5300, 5308)) %0, ptr noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i16], align 16              ; 18 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !46     ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5300 ; 14 uses
  store i32 0, ptr %i.h, align 4, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 9 uses
  store i32 573, ptr %i.i, align 8, !tbaa !53
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph, label %.lr.ph142

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

.preheader131:                                    ; preds = %bb.e
  %.pre = load i32, ptr %i.h, align 4, !tbaa !52  ; 3 uses
  %i.m = icmp slt i32 %.pre, 2
  br i1 %i.m, label %.lr.ph142, label %.lr.ph147

.lr.ph142:                                        ; preds = %bb.a, %.preheader131
  %.086.lcssa196 = phi i32 [ %.1, %.preheader131 ], [ -1, %bb.a ]
  %i.n = phi i32 [ %.pre, %.preheader131 ], [ 0, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 2 uses
  %.not92 = icmp eq ptr %i.e, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.086140 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.e ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !27
  %.not93 = icmp eq i16 %i.t, 0
  br i1 %.not93, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.h, align 4, !tbaa !52
  %i.v = add nsw i32 %i.u, 1                      ; 2 uses
  store i32 %i.v, ptr %i.h, align 4, !tbaa !52
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.w
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.y, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  store i8 0, ptr %i.z, align 1, !tbaa !27
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.aa, align 2, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.y, %bb.c ], [ %.086140, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader131, label %bb.b, !llvm.loop !54

bb.f:                                             ; preds = %.lr.ph142, %bb.h
  %i.ab = phi i32 [ %i.n, %.lr.ph142 ], [ %i.as, %bb.h ]
  %.2141 = phi i32 [ %.086.lcssa196, %.lr.ph142 ], [ %spec.select, %bb.h ] ; 3 uses
  %i.ac = icmp slt i32 %.2141, 2                  ; 2 uses
  %i.ad = add nsw i32 %.2141, 1                   ; 2 uses
  %spec.select = select i1 %i.ac, i32 %i.ad, i32 %.2141 ; 2 uses
  %spec.select94 = select i1 %i.ac, i32 %i.ad, i32 0 ; 2 uses
  %i.ae = add nsw i32 %i.ab, 1                    ; 2 uses
  store i32 %i.ae, ptr %i.h, align 4, !tbaa !52
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.af
  store i32 %spec.select94, ptr %i.ag, align 4, !tbaa !4
  %i.ah = sext i32 %spec.select94 to i64          ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ah
  store i16 1, ptr %i.ai, align 2, !tbaa !27
  %i.aj = getelementptr inbounds i8, ptr %i.p, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !27
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !42
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %i.q, align 8, !tbaa !42
  br i1 %.not92, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !27
  %i.ap = zext i16 %i.ao to i64
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !43
  %i.ar = sub i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.r, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = load i32, ptr %i.h, align 4, !tbaa !52  ; 3 uses
  %i.at = icmp slt i32 %i.as, 2
  br i1 %i.at, label %bb.f, label %.lr.ph147, !llvm.loop !55

.lr.ph147:                                        ; preds = %bb.h, %.preheader131
  %.2.lcssa = phi i32 [ %.1, %.preheader131 ], [ %spec.select, %bb.h ] ; 3 uses
  %.lcssa138 = phi i32 [ %.pre, %.preheader131 ], [ %i.as, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %.2.lcssa, ptr %i.au, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3008 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5308 ; 4 uses
  %i.ax = lshr i32 %.lcssa138, 1
  %i.ay = zext nneg i32 %i.ax to i64
  br label %bb.i

.preheader:                                       ; preds = %pqdownheap.exit
  %.pre159.pre = load i32, ptr %i.h, align 4, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3008 ; 17 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3012 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5308 ; 10 uses
  %i.bc = sext i32 %i.g to i64
  br label %bb.s

bb.i:                                             ; preds = %.lr.ph147, %pqdownheap.exit
  %indvars.iv153 = phi i64 [ %i.ay, %.lr.ph147 ], [ %indvars.iv.next154, %pqdownheap.exit ] ; 5 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv153
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.aw, i64 %i.bf
  %i.bh = load i32, ptr %i.h, align 4, !tbaa !52  ; 2 uses
  %indvars.iv153.tr = trunc i64 %indvars.iv153 to i32
  %i.bi = shl i32 %indvars.iv153.tr, 1            ; 2 uses
  %.not58.i = icmp sgt i32 %i.bi, %i.bh
  %i.bj = trunc nuw nsw i64 %indvars.iv153 to i32 ; 2 uses
  br i1 %.not58.i, label %pqdownheap.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bf
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %.lr.ph.i
  %i.bl = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.ct, %bb.r ]
  %.060.i = phi i32 [ %i.bi, %.lr.ph.i ], [ %.0.i, %bb.r ] ; 7 uses
  %.04959.i = phi i32 [ %i.bj, %.lr.ph.i ], [ %.1.i, %bb.r ] ; 3 uses
  %i.bm = icmp slt i32 %.060.i, %i.bl
  br i1 %i.bm, label %bb.k, label %._crit_edge65.i

._crit_edge65.i:                                  ; preds = %bb.j
  %.pre.i = sext i32 %.060.i to i64
  br label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bn = or disjoint i32 %.060.i, 1              ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !27 ; 2 uses
  %i.bu = sext i32 %.060.i to i64                 ; 3 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !27 ; 2 uses
  %i.ca = icmp ult i16 %i.bt, %i.bz
  br i1 %i.ca, label %bb.n, label %bb.l

end_hunk_1
begin_hunk_2_@build_tree:bb.a
  br i1 %.not99.i, label %.outer.split.us.i, label %.outer.split.i, !llvm.loop !68

gen_bitlen.exit:                                  ; preds = %.outer.split.us.i, %bb.ak, %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.li = load i16, ptr %i.hv, align 2, !tbaa !63
  %i.lj = shl i16 %i.li, 1                        ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.lj, ptr %i.lk, align 2, !tbaa !63
  %i.ll = getelementptr i8, ptr %0, i64 2978
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !63
  %i.ln = add i16 %i.lm, %i.lj
  %i.lo = shl i16 %i.ln, 1                        ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.lo, ptr %i.lp, align 4, !tbaa !63
  %i.lq = getelementptr i8, ptr %0, i64 2980
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !63
  %i.ls = add i16 %i.lr, %i.lo
  %i.lt = shl i16 %i.ls, 1                        ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.lt, ptr %i.lu, align 2, !tbaa !63
  %i.lv = getelementptr i8, ptr %0, i64 2982
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !63
  %i.lx = add i16 %i.lw, %i.lt
  %i.ly = shl i16 %i.lx, 1                        ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.ly, ptr %i.lz, align 8, !tbaa !63
  %i.ma = getelementptr i8, ptr %0, i64 2984
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !63
  %i.mc = add i16 %i.mb, %i.ly
  %i.md = shl i16 %i.mc, 1                        ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.md, ptr %i.me, align 2, !tbaa !63
  %i.mf = getelementptr i8, ptr %0, i64 2986
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !63
  %i.mh = add i16 %i.mg, %i.md
  %i.mi = shl i16 %i.mh, 1                        ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.mi, ptr %i.mj, align 4, !tbaa !63
  %i.mk = getelementptr i8, ptr %0, i64 2988
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !63
  %i.mm = add i16 %i.ml, %i.mi
  %i.mn = shl i16 %i.mm, 1                        ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mn, ptr %i.mo, align 2, !tbaa !63
  %i.mp = getelementptr i8, ptr %0, i64 2990
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !63
  %i.mr = add i16 %i.mq, %i.mn
  %i.ms = shl i16 %i.mr, 1                        ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.ms, ptr %i.mt, align 16, !tbaa !63
  %i.mu = getelementptr i8, ptr %0, i64 2992
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !63
  %i.mw = add i16 %i.mv, %i.ms
  %i.mx = shl i16 %i.mw, 1                        ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.mx, ptr %i.my, align 2, !tbaa !63
  %i.mz = getelementptr i8, ptr %0, i64 2994
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !63
  %i.nb = add i16 %i.na, %i.mx
  %i.nc = shl i16 %i.nb, 1                        ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.nc, ptr %i.nd, align 4, !tbaa !63
  %i.ne = getelementptr i8, ptr %0, i64 2996
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !63
  %i.ng = add i16 %i.nf, %i.nc
  %i.nh = shl i16 %i.ng, 1                        ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %i.nh, ptr %i.ni, align 2, !tbaa !63
  %i.nj = getelementptr i8, ptr %0, i64 2998
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !63
  %i.nl = add i16 %i.nk, %i.nh
  %i.nm = shl i16 %i.nl, 1                        ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.nm, ptr %i.nn, align 8, !tbaa !63
  %i.no = getelementptr i8, ptr %0, i64 3000
  %i.np = load i16, ptr %i.no, align 2, !tbaa !63
  %i.nq = add i16 %i.np, %i.nm
  %i.nr = shl i16 %i.nq, 1                        ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 %i.nr, ptr %i.ns, align 2, !tbaa !63
  %i.nt = getelementptr i8, ptr %0, i64 3002
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !63
  %i.nv = add i16 %i.nu, %i.nr
  %i.nw = shl i16 %i.nv, 1                        ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 %i.nw, ptr %i.nx, align 4, !tbaa !63
  %i.ny = getelementptr i8, ptr %0, i64 3004
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !63
  %i.oa = add i16 %i.nz, %i.nw
  %i.ob = shl i16 %i.oa, 1
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %i.ob, ptr %i.oc, align 2, !tbaa !63
  %.not21.i = icmp slt i32 %.2.lcssa, 0
  br i1 %.not21.i, label %gen_codes.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %gen_bitlen.exit
  %i.od = add nuw i32 %.2.lcssa, 1
  %wide.trip.count.i = zext i32 %i.od to i64
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %bb.ba, %.lr.ph.preheader.i
  %indvars.iv.i127 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i128, %bb.ba ] ; 2 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i127 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 2
  %i.og = load i16, ptr %i.of, align 2, !tbaa !27 ; 4 uses
  %i.oh = icmp eq i16 %i.og, 0
  br i1 %i.oh, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i126
  %i.oi = zext i16 %i.og to i32                   ; 2 uses
  %i.oj = zext i16 %i.og to i64
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oj ; 2 uses
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !63 ; 3 uses
  %i.om = add i16 %i.ol, 1
  store i16 %i.om, ptr %i.ok, align 2, !tbaa !63
  %xtraiter = and i32 %i.oi, 3                    ; 3 uses
  %i.on = icmp ult i16 %i.og, 4
  br i1 %i.on, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ax
  %unroll_iter = and i32 %i.oi, 65532
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.new
  %.07.i.i = phi i16 [ %i.ol, %.new ], [ %i.pa, %bb.ay ] ; 5 uses
  %.0.i.i = phi i16 [ 0, %.new ], [ %i.pb, %bb.ay ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.ay ]
  %i.oo = and i16 %.07.i.i, 1
  %i.op = or disjoint i16 %.0.i.i, %i.oo
  %i.oq = shl i16 %i.op, 2
  %i.or = and i16 %.07.i.i, 2
  %i.os = or disjoint i16 %i.oq, %i.or
  %i.ot = lshr i16 %.07.i.i, 2
  %i.ou = and i16 %i.ot, 1
  %i.ov = or disjoint i16 %i.os, %i.ou
  %i.ow = lshr i16 %.07.i.i, 3
  %i.ox = shl i16 %i.ov, 1
  %i.oy = and i16 %i.ow, 1
  %i.oz = or disjoint i16 %i.ox, %i.oy            ; 2 uses
  %i.pa = lshr i16 %.07.i.i, 4                    ; 2 uses
  %i.pb = shl i16 %i.oz, 1                        ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %bi_reverse.exit.i.unr-lcssa, label %bb.ay, !llvm.loop !69

bi_reverse.exit.i.unr-lcssa:                      ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bi_reverse.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %bi_reverse.exit.i.unr-lcssa, %bb.ax
  %.07.i.i.epil.init = phi i16 [ %i.ol, %bb.ax ], [ %i.pa, %bi_reverse.exit.i.unr-lcssa ]
  %.0.i.i.epil.init = phi i16 [ 0, %bb.ax ], [ %i.pb, %bi_reverse.exit.i.unr-lcssa ]
  %lcmp.mod211 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod211)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader
  %.07.i.i.epil = phi i16 [ %.07.i.i.epil.init, %.epil.preheader ], [ %i.pe, %bb.az ] ; 2 uses
  %.0.i.i.epil = phi i16 [ %.0.i.i.epil.init, %.epil.preheader ], [ %i.pf, %bb.az ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.az ]
  %i.pc = and i16 %.07.i.i.epil, 1
  %i.pd = or disjoint i16 %.0.i.i.epil, %i.pc     ; 2 uses
  %i.pe = lshr i16 %.07.i.i.epil, 1
  %i.pf = shl i16 %i.pd, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bi_reverse.exit.i, label %bb.az, !llvm.loop !70

bi_reverse.exit.i:                                ; preds = %bb.az, %bi_reverse.exit.i.unr-lcssa
  %.lcssa = phi i16 [ %i.oz, %bi_reverse.exit.i.unr-lcssa ], [ %i.pd, %bb.az ]
  store i16 %.lcssa, ptr %i.oe, align 2, !tbaa !27
  br label %bb.ba

bb.ba:                                            ; preds = %bi_reverse.exit.i, %.lr.ph.i126
  %indvars.iv.next.i128 = add nuw nsw i64 %indvars.iv.i127, 1 ; 2 uses
  %exitcond.not.i129 = icmp eq i64 %indvars.iv.next.i128, %wide.trip.count.i
  br i1 %exitcond.not.i129, label %gen_codes.exit, label %.lr.ph.i126, !llvm.loop !72

gen_codes.exit:                                   ; preds = %bb.ba, %gen_bitlen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @compress_block(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %..loopexit_crit_edge, label %.preheader

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !26
  br label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 5937 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !63   ; 3 uses
  %i.l = zext i16 %i.k to i32
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !27    ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = icmp eq i16 %i.k, 0
  %i.r = zext i8 %i.o to i64                      ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !27
  %i.v = zext i16 %i.u to i32                     ; 3 uses
  %i.w = load i32, ptr %i.e, align 4, !tbaa !26   ; 3 uses
  %i.x = sub nsw i32 16, %i.v
  %i.y = icmp sgt i32 %i.w, %i.x
  %i.z = load i16, ptr %i.s, align 2, !tbaa !27
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = shl i32 %i.aa, %i.w
  %i.ac = load i16, ptr %i.f, align 8, !tbaa !25
  %i.ad = trunc i32 %i.ab to i16
  %i.ae = or i16 %i.ac, %i.ad                     ; 2 uses
  store i16 %i.ae, ptr %i.f, align 8, !tbaa !25
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = trunc i16 %i.ae to i8
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !32  ; 2 uses
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.h, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  store i8 %i.af, ptr %i.aj, align 1, !tbaa !27
  %3 = load i8, ptr %.shift, align 1, !tbaa !25
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.al = load i64, ptr %i.h, align 8, !tbaa !32  ; 2 uses
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.h, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i8 %3, ptr %i.an, align 1, !tbaa !27
  %i.ao = load i32, ptr %i.e, align 4, !tbaa !26  ; 2 uses
  %i.ap = sub nsw i32 16, %i.ao
  %i.aq = lshr i32 %i.aa, %i.ap
  %i.ar = trunc nuw i32 %i.aq to i16
  store i16 %i.ar, ptr %i.f, align 8, !tbaa !25
  %i.as = add nsw i32 %i.v, -16
  %i.at = add nsw i32 %i.as, %i.ao
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.au = add nsw i32 %i.w, %i.v
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr @_length_code, i64 %i.r
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !27  ; 2 uses
  %i.ax = zext i8 %i.aw to i64                    ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1028
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1030
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !27
  %i.bc = zext i16 %i.bb to i32                   ; 3 uses
  %i.bd = load i32, ptr %i.e, align 4, !tbaa !26  ; 3 uses
  %i.be = sub nsw i32 16, %i.bc
  %i.bf = icmp sgt i32 %i.bd, %i.be
  %i.bg = load i16, ptr %i.az, align 2, !tbaa !27
  %i.bh = zext i16 %i.bg to i32                   ; 2 uses
  %i.bi = shl i32 %i.bh, %i.bd
  %i.bj = load i16, ptr %i.f, align 8, !tbaa !25
  %i.bk = trunc i32 %i.bi to i16
  %i.bl = or i16 %i.bj, %i.bk                     ; 3 uses
  store i16 %i.bl, ptr %i.f, align 8, !tbaa !25
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bm = trunc i16 %i.bl to i8
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.bo = load i64, ptr %i.h, align 8, !tbaa !32  ; 2 uses
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.h, align 8, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  store i8 %i.bm, ptr %i.bq, align 1, !tbaa !27
  %4 = load i8, ptr %.shift, align 1, !tbaa !25
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.bs = load i64, ptr %i.h, align 8, !tbaa !32  ; 2 uses
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.h, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  store i8 %4, ptr %i.bu, align 1, !tbaa !27
  %i.bv = load i32, ptr %i.e, align 4, !tbaa !26  ; 2 uses
  %i.bw = sub nsw i32 16, %i.bv
  %i.bx = lshr i32 %i.bh, %i.bw
  %i.by = trunc nuw i32 %i.bx to i16              ; 2 uses
  store i16 %i.by, ptr %i.f, align 8, !tbaa !25
  %i.bz = add nsw i32 %i.bc, -16
  %i.ca = add nsw i32 %i.bz, %i.bv
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cb = add nsw i32 %i.bd, %i.bc
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cc = phi i16 [ %i.bl, %bb.h ], [ %i.by, %bb.g ] ; 3 uses
  %storemerge = phi i32 [ %i.cb, %bb.h ], [ %i.ca, %bb.g ] ; 6 uses
  store i32 %storemerge, ptr %i.e, align 4, !tbaa !26
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %i.ax
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4  ; 3 uses
  %i.cf = add i8 %i.aw, -28
  %.not184 = icmp ult i8 %i.cf, -20
  br i1 %.not184, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %i.ax
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = sub nsw i32 %i.p, %i.ch                 ; 3 uses
  %i.cj = sub nsw i32 16, %i.ce
  %i.ck = icmp sgt i32 %storemerge, %i.cj
  br i1 %i.ck, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cl = and i32 %i.ci, 65535
  %i.cm = shl i32 %i.ci, %storemerge
  %i.cn = trunc i32 %i.cm to i16
  %i.co = or i16 %i.cc, %i.cn                     ; 2 uses
  store i16 %i.co, ptr %i.f, align 8, !tbaa !25
  %i.cp = trunc i16 %i.co to i8
  %i.cq = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.cr = load i64, ptr %i.h, align 8, !tbaa !32  ; 2 uses
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %i.h, align 8, !tbaa !32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  store i8 %i.cp, ptr %i.ct, align 1, !tbaa !27
  %5 = load i8, ptr %.shift, align 1, !tbaa !25
  %i.cu = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.cv = load i64, ptr %i.h, align 8, !tbaa !32  ; 2 uses
  %i.cw = add i64 %i.cv, 1
  store i64 %i.cw, ptr %i.h, align 8, !tbaa !32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  store i8 %5, ptr %i.cx, align 1, !tbaa !27
  %i.cy = load i32, ptr %i.e, align 4, !tbaa !26  ; 2 uses
  %i.cz = sub nsw i32 16, %i.cy
  %i.da = lshr i32 %i.cl, %i.cz
  %i.db = trunc nuw i32 %i.da to i16              ; 2 uses
  store i16 %i.db, ptr %i.f, align 8, !tbaa !25
  %i.dc = add nsw i32 %i.ce, -16
  %i.dd = add nsw i32 %i.dc, %i.cy
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.de = shl i32 %i.ci, %storemerge
  %i.df = trunc i32 %i.de to i16
  %i.dg = or i16 %i.cc, %i.df                     ; 2 uses
  store i16 %i.dg, ptr %i.f, align 8, !tbaa !25
  %i.dh = add nsw i32 %i.ce, %storemerge
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.di = phi i16 [ %i.dg, %bb.l ], [ %i.db, %bb.k ]
  %storemerge185 = phi i32 [ %i.dh, %bb.l ], [ %i.dd, %bb.k ] ; 2 uses
  store i32 %storemerge185, ptr %i.e, align 4, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.dj = phi i16 [ %i.di, %bb.m ], [ %i.cc, %bb.i ]
  %i.dk = phi i32 [ %storemerge185, %bb.m ], [ %storemerge, %bb.i ] ; 3 uses
  %i.dl = add nsw i32 %i.l, -1                    ; 3 uses
  %i.dm = icmp ult i16 %i.k, 257
  %i.dn = zext nneg i32 %i.dl to i64
  %i.do = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.dn
  %i.dp = lshr i32 %i.dl, 7
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 256
  %.in.in = select i1 %i.dm, ptr %i.do, ptr %i.ds
  %.in = load i8, ptr %.in.in, align 1, !tbaa !27 ; 2 uses
  %i.dt = zext i8 %.in to i64                     ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !27
  %i.dx = zext i16 %i.dw to i32                   ; 3 uses
  %i.dy = sub nsw i32 16, %i.dx
  %i.dz = icmp sgt i32 %i.dk, %i.dy
  %i.ea = load i16, ptr %i.du, align 2, !tbaa !27
  %i.eb = zext i16 %i.ea to i32                   ; 2 uses
  %i.ec = shl i32 %i.eb, %i.dk
  %i.ed = trunc i32 %i.ec to i16
  %i.ee = or i16 %i.dj, %i.ed                     ; 3 uses
  store i16 %i.ee, ptr %i.f, align 8, !tbaa !25
  br i1 %i.dz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ef = trunc i16 %i.ee to i8
  %i.eg = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.eh = load i64, ptr %i.h, align 8, !tbaa !32  ; 2 uses
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.h, align 8, !tbaa !32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eh
  store i8 %i.ef, ptr %i.ej, align 1, !tbaa !27
  %6 = load i8, ptr %.shift, align 1, !tbaa !25
  %i.ek = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.el = load i64, ptr %i.h, align 8, !tbaa !32  ; 2 uses
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %i.h, align 8, !tbaa !32
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.el
  store i8 %6, ptr %i.en, align 1, !tbaa !27
  %i.eo = load i32, ptr %i.e, align 4, !tbaa !26  ; 2 uses
  %i.ep = sub nsw i32 16, %i.eo
  %i.eq = lshr i32 %i.eb, %i.ep
  %i.er = trunc nuw i32 %i.eq to i16              ; 2 uses
  store i16 %i.er, ptr %i.f, align 8, !tbaa !25
  %i.es = add nsw i32 %i.dx, -16
  %i.et = add nsw i32 %i.es, %i.eo
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.eu = add nsw i32 %i.dk, %i.dx
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ev = phi i16 [ %i.ee, %bb.p ], [ %i.er, %bb.o ] ; 2 uses
  %storemerge186 = phi i32 [ %i.eu, %bb.p ], [ %i.et, %bb.o ] ; 6 uses
  store i32 %storemerge186, ptr %i.e, align 4, !tbaa !26
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %i.dt
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4  ; 3 uses
  %.not187 = icmp ult i8 %.in, 4
  br i1 %.not187, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %i.dt
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !4
  %i.fa = sub i32 %i.dl, %i.ez                    ; 3 uses
  %i.fb = sub nsw i32 16, %i.ex
  %i.fc = icmp sgt i32 %storemerge186, %i.fb
  br i1 %i.fc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fd = and i32 %i.fa, 65535
  %i.fe = shl i32 %i.fa, %storemerge186
  %i.ff = trunc i32 %i.fe to i16
  %i.fg = or i16 %i.ev, %i.ff                     ; 2 uses
  store i16 %i.fg, ptr %i.f, align 8, !tbaa !25
  %i.fh = trunc i16 %i.fg to i8
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.fj = load i64, ptr %i.h, align 8, !tbaa !32  ; 2 uses
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %i.h, align 8, !tbaa !32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fj
  store i8 %i.fh, ptr %i.fl, align 1, !tbaa !27
  %7 = load i8, ptr %.shift, align 1, !tbaa !25
  %i.fm = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.fn = load i64, ptr %i.h, align 8, !tbaa !32  ; 2 uses
  %i.fo = add i64 %i.fn, 1
  store i64 %i.fo, ptr %i.h, align 8, !tbaa !32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fn
  store i8 %7, ptr %i.fp, align 1, !tbaa !27
  %i.fq = load i32, ptr %i.e, align 4, !tbaa !26  ; 2 uses
  %i.fr = sub nsw i32 16, %i.fq
  %i.fs = lshr i32 %i.fd, %i.fr
  %i.ft = trunc nuw i32 %i.fs to i16
  store i16 %i.ft, ptr %i.f, align 8, !tbaa !25
  %i.fu = add nsw i32 %i.ex, -16
  %i.fv = add nsw i32 %i.fu, %i.fq
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.fw = shl i32 %i.fa, %storemerge186
  %i.fx = trunc i32 %i.fw to i16
  %i.fy = or i16 %i.ev, %i.fx
  store i16 %i.fy, ptr %i.f, align 8, !tbaa !25
  %i.fz = add nsw i32 %i.ex, %storemerge186
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.t, %bb.d, %bb.e
  %storemerge189.sink = phi i32 [ %i.at, %bb.d ], [ %i.au, %bb.e ], [ %i.fz, %bb.t ], [ %i.fv, %bb.s ] ; 2 uses
  store i32 %storemerge189.sink, ptr %i.e, align 4, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.q
  %i.ga = phi i32 [ %storemerge186, %bb.q ], [ %storemerge189.sink, %.sink.split ]
  %i.gb = load i32, ptr %i.a, align 4, !tbaa !30
  %i.gc = zext i32 %i.gb to i64
  %i.gd = icmp samesign ult i64 %indvars.iv.next, %i.gc
  br i1 %i.gd, label %bb.b, label %.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %bb.u, %..loopexit_crit_edge
  %i.ge = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.ga, %bb.u ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 1026
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !27
  %i.gi = zext i16 %i.gh to i32                   ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 2 uses
  %i.gk = sub nsw i32 16, %i.gi
  %i.gl = icmp sgt i32 %i.ge, %i.gk
  %i.gm = load i16, ptr %i.gf, align 2, !tbaa !27
  %i.gn = zext i16 %i.gm to i32                   ; 2 uses
  %i.go = shl i32 %i.gn, %i.ge
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 3 uses
  %i.gq = load i16, ptr %i.gp, align 8, !tbaa !25
  %i.gr = trunc i32 %i.go to i16
  %i.gs = or i16 %i.gq, %i.gr                     ; 2 uses
  store i16 %i.gs, ptr %i.gp, align 8, !tbaa !25
  br i1 %i.gl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.gt = trunc i16 %i.gs to i8
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !31
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !32 ; 2 uses
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gx
  store i8 %i.gt, ptr %i.gz, align 1, !tbaa !27
  %.shift195 = getelementptr inbounds nuw i8, ptr %0, i64 5937
  %8 = load i8, ptr %.shift195, align 1, !tbaa !25
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !31
  %i.hb = load i64, ptr %i.gw, align 8, !tbaa !32 ; 2 uses
  %i.hc = add i64 %i.hb, 1
  store i64 %i.hc, ptr %i.gw, align 8, !tbaa !32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hb
  store i8 %8, ptr %i.hd, align 1, !tbaa !27
  %i.he = load i32, ptr %i.gj, align 4, !tbaa !26 ; 2 uses
  %i.hf = sub nsw i32 16, %i.he
  %i.hg = lshr i32 %i.gn, %i.hf
  %i.hh = trunc nuw i32 %i.hg to i16
  store i16 %i.hh, ptr %i.gp, align 8, !tbaa !25
  %i.hi = add nsw i32 %i.gi, -16
  %i.hj = add nsw i32 %i.hi, %i.he
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.hk = add nsw i32 %i.ge, %i.gi
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge190 = phi i32 [ %i.hk, %bb.w ], [ %i.hj, %bb.v ]
  store i32 %storemerge190, ptr %i.gj, align 4, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_tr_tally(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = trunc i32 %1 to i16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30   ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.f
  store i16 %i.a, ptr %i.g, align 2, !tbaa !63
  %i.h = trunc i32 %2 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.k = add i32 %i.e, 1
  store i32 %i.k, ptr %i.d, align 4, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  store i8 %i.h, ptr %i.l, align 1, !tbaa !27
  %i.m = icmp eq i32 %1, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.o = zext i32 %2 to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 4, !tbaa !27
  %i.r = add i16 %i.q, 1
  store i16 %i.r, ptr %i.p, align 4, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5928 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !76
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !76
  %i.v = add i32 %1, -1                           ; 2 uses
  %i.w = zext i32 %2 to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_length_code, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !27
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr i8, ptr %0, i64 1240
  %i.ab = getelementptr [4 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !27
  %i.ad = add i16 %i.ac, 1
  store i16 %i.ad, ptr %i.ab, align 4, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.af = icmp ult i32 %1, 257
  %i.ag = zext nneg i32 %i.v to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.ag
  %i.ai = lshr i32 %i.v, 7
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 256
  %.in.in = select i1 %i.af, ptr %i.ah, ptr %i.al
  %.in = load i8, ptr %.in.in, align 1, !tbaa !27
  %i.am = zext i8 %.in to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.am ; 2 uses
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !27
  %i.ap = add i16 %i.ao, 1
  store i16 %i.ap, ptr %i.an, align 4, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5896
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !77
  %i.at = add i32 %i.as, -1
  %i.au = icmp eq i32 %i.aq, %i.at
  %i.av = zext i1 %i.au to i32
  ret i32 %i.av
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @send_tree(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef range(i32 -2147483648, 2147483647) %2) unnamed_addr #5 {
bb.a:
  %.not253 = icmp slt i32 %2, 0
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !27   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0                      ; 2 uses
  %spec.select251 = select i1 %i.c, i32 138, i32 7
  %spec.select = select i1 %i.c, i32 3, i32 4
  %i.d = zext i16 %i.b to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2748 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 32 uses
  %.shift250 = getelementptr inbounds nuw i8, ptr %0, i64 5937 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %i.p = add nuw nsw i32 %2, 1
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ]
  %.0210258 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.ah ] ; 2 uses
  %.0211257 = phi i32 [ %i.d, %.lr.ph ], [ %i.t, %bb.ah ] ; 7 uses
  %.0212256 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.ah ] ; 5 uses
  %.1215255 = phi i32 [ %spec.select251, %.lr.ph ], [ %.2216, %bb.ah ] ; 2 uses
  %.1218254 = phi i32 [ %spec.select, %.lr.ph ], [ %.2219, %bb.ah ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !27   ; 2 uses
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = add nsw i32 %.0212256, 1                 ; 5 uses
  %i.v = icmp slt i32 %i.u, %.1215255
  %i.w = icmp eq i32 %.0211257, %i.t              ; 3 uses
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp slt i32 %i.u, %.1218254
  br i1 %i.x, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.c
  %i.y = zext nneg i32 %.0211257 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %.pre261 = load i32, ptr %i.f, align 4, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.g
  %i.ab = phi i32 [ %storemerge249.a, %bb.g ], [ %.pre261, %.preheader ] ; 3 uses
  %.1213 = phi i32 [ %i.bc, %bb.g ], [ %i.u, %.preheader ]
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !27
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = sub nsw i32 16, %i.ad
  %i.af = icmp sgt i32 %i.ab, %i.ae
  %i.ag = load i16, ptr %i.z, align 4, !tbaa !27
  %i.ah = zext i16 %i.ag to i32                   ; 2 uses
  %i.ai = shl i32 %i.ah, %i.ab
  %i.aj = load i16, ptr %i.g, align 8, !tbaa !25
  %i.ak = trunc i32 %i.ai to i16
  %i.al = or i16 %i.aj, %i.ak                     ; 2 uses
  store i16 %i.al, ptr %i.g, align 8, !tbaa !25
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = trunc i16 %i.al to i8
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.ao = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.i, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store i8 %i.am, ptr %i.aq, align 1, !tbaa !27
  %3 = load i8, ptr %.shift250, align 1, !tbaa !25
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.as = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.i, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  store i8 %3, ptr %i.au, align 1, !tbaa !27
  %i.av = load i32, ptr %i.f, align 4, !tbaa !26  ; 2 uses
  %i.aw = sub nsw i32 16, %i.av
  %i.ax = lshr i32 %i.ah, %i.aw
  %i.ay = trunc nuw i32 %i.ax to i16
  store i16 %i.ay, ptr %i.g, align 8, !tbaa !25
  %i.az = add nsw i32 %i.ad, -16
  %i.ba = add nsw i32 %i.az, %i.av
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bb = add nsw i32 %i.ab, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge249.a = phi i32 [ %i.bb, %bb.f ], [ %i.ba, %bb.e ] ; 2 uses
  store i32 %storemerge249.a, ptr %i.f, align 4, !tbaa !26
  %i.bc = add nsw i32 %.1213, -1                  ; 2 uses
  %.not250 = icmp eq i32 %i.bc, 0
  br i1 %.not250, label %.loopexit, label %bb.d, !llvm.loop !78

bb.h:                                             ; preds = %bb.c
  %.not241 = icmp eq i32 %.0211257, 0
  %i.bd = load i32, ptr %i.f, align 4, !tbaa !26  ; 10 uses
  br i1 %.not241, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not245 = icmp eq i32 %.0211257, %.0210258
  br i1 %.not245, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = zext nneg i32 %.0211257 to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !27
  %i.bi = zext i16 %i.bh to i32                   ; 3 uses
  %i.bj = sub nsw i32 16, %i.bi
  %i.bk = icmp sgt i32 %i.bd, %i.bj
  %i.bl = load i16, ptr %i.bf, align 4, !tbaa !27
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = shl i32 %i.bm, %i.bd
  %i.bo = load i16, ptr %i.g, align 8, !tbaa !25
  %i.bp = trunc i32 %i.bn to i16
  %i.bq = or i16 %i.bo, %i.bp                     ; 2 uses
  store i16 %i.bq, ptr %i.g, align 8, !tbaa !25
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = trunc i16 %i.bq to i8
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.i, align 8, !tbaa !32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 %i.br, ptr %i.bv, align 1, !tbaa !27
  %4 = load i8, ptr %.shift250, align 1, !tbaa !25
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.bx = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.i, align 8, !tbaa !32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  store i8 %4, ptr %i.bz, align 1, !tbaa !27
  %i.ca = load i32, ptr %i.f, align 4, !tbaa !26  ; 2 uses
  %i.cb = sub nsw i32 16, %i.ca
  %i.cc = lshr i32 %i.bm, %i.cb
  %i.cd = trunc nuw i32 %i.cc to i16
  store i16 %i.cd, ptr %i.g, align 8, !tbaa !25
  %i.ce = add nsw i32 %i.bi, -16
  %i.cf = add nsw i32 %i.ce, %i.ca
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cg = add nsw i32 %i.bd, %i.bi
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge246 = phi i32 [ %i.cg, %bb.l ], [ %i.cf, %bb.k ] ; 2 uses
  store i32 %storemerge246, ptr %i.f, align 4, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.ch = phi i32 [ %storemerge246, %bb.m ], [ %i.bd, %bb.i ] ; 3 uses
  %.2 = phi i32 [ %.0212256, %bb.m ], [ %i.u, %bb.i ]
  %i.ci = load i16, ptr %i.k, align 2, !tbaa !27
  %i.cj = zext i16 %i.ci to i32                   ; 3 uses
  %i.ck = sub nsw i32 16, %i.cj
  %i.cl = icmp sgt i32 %i.ch, %i.ck
  %i.cm = load i16, ptr %i.j, align 4, !tbaa !27
  %i.cn = zext i16 %i.cm to i32                   ; 2 uses
  %i.co = shl i32 %i.cn, %i.ch
  %i.cp = load i16, ptr %i.g, align 8, !tbaa !25
  %i.cq = trunc i32 %i.co to i16
  %i.cr = or i16 %i.cp, %i.cq                     ; 3 uses
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i16 %i.cr, ptr %i.g, align 8, !tbaa !25
  %i.cs = trunc i16 %i.cr to i8
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.cu = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.i, align 8, !tbaa !32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu
  store i8 %i.cs, ptr %i.cw, align 1, !tbaa !27
  %5 = load i8, ptr %.shift250, align 1, !tbaa !25
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.cy = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.i, align 8, !tbaa !32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy
  store i8 %5, ptr %i.da, align 1, !tbaa !27
  %i.db = load i32, ptr %i.f, align 4, !tbaa !26  ; 2 uses
  %i.dc = sub nsw i32 16, %i.db
  %i.dd = lshr i32 %i.cn, %i.dc
  %i.de = trunc nuw i32 %i.dd to i16
  %i.df = add nsw i32 %i.cj, -16
  %i.dg = add nsw i32 %i.df, %i.db
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dh = add nsw i32 %i.ch, %i.cj
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.di = phi i16 [ %i.cr, %bb.p ], [ %i.de, %bb.o ] ; 2 uses
  %storemerge247 = phi i32 [ %i.dh, %bb.p ], [ %i.dg, %bb.o ] ; 5 uses
  store i32 %storemerge247, ptr %i.f, align 4, !tbaa !26
  %i.dj = icmp sgt i32 %storemerge247, 14
  %i.dk = add i32 %.2, 65533                      ; 3 uses
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dl = and i32 %i.dk, 65535
  %i.dm = shl i32 %i.dk, %storemerge247
  %i.dn = trunc i32 %i.dm to i16
  %i.do = or i16 %i.di, %i.dn                     ; 2 uses
  store i16 %i.do, ptr %i.g, align 8, !tbaa !25
  %i.dp = trunc i16 %i.do to i8
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.dr = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.i, align 8, !tbaa !32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  store i8 %i.dp, ptr %i.dt, align 1, !tbaa !27
  %6 = load i8, ptr %.shift250, align 1, !tbaa !25
  %i.du = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.dv = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %i.i, align 8, !tbaa !32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dv
  store i8 %6, ptr %i.dx, align 1, !tbaa !27
  %i.dy = load i32, ptr %i.f, align 4, !tbaa !26  ; 2 uses
  %i.dz = sub nsw i32 16, %i.dy
  %i.ea = lshr i32 %i.dl, %i.dz
  %i.eb = trunc nuw i32 %i.ea to i16
  store i16 %i.eb, ptr %i.g, align 8, !tbaa !25
  %i.ec = add nsw i32 %i.dy, -14
  br label %.loopexit.sink.split

bb.s:                                             ; preds = %bb.q
  %i.ed = shl i32 %i.dk, %storemerge247
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = or i16 %i.di, %i.ee
  store i16 %i.ef, ptr %i.g, align 8, !tbaa !25
  %i.eg = add nsw i32 %storemerge247, 2
  br label %.loopexit.sink.split

bb.t:                                             ; preds = %bb.h
  %i.eh = icmp slt i32 %.0212256, 10
  %i.ei = load i16, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  br i1 %i.eh, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.ej = load i16, ptr %i.o, align 2, !tbaa !27
  %i.ek = zext i16 %i.ej to i32                   ; 3 uses
  %i.el = sub nsw i32 16, %i.ek
  %i.em = icmp sgt i32 %i.bd, %i.el
  %i.en = load i16, ptr %i.n, align 4, !tbaa !27
  %i.eo = zext i16 %i.en to i32                   ; 2 uses
  %i.ep = shl i32 %i.eo, %i.bd
  %i.eq = trunc i32 %i.ep to i16
  %i.er = or i16 %i.ei, %i.eq                     ; 3 uses
  br i1 %i.em, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i16 %i.er, ptr %i.g, align 8, !tbaa !25
  %i.es = trunc i16 %i.er to i8
  %i.et = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.eu = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.ev = add i64 %i.eu, 1
  store i64 %i.ev, ptr %i.i, align 8, !tbaa !32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eu
  store i8 %i.es, ptr %i.ew, align 1, !tbaa !27
  %7 = load i8, ptr %.shift250, align 1, !tbaa !25
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.ey = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.ez = add i64 %i.ey, 1
  store i64 %i.ez, ptr %i.i, align 8, !tbaa !32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ey
  store i8 %7, ptr %i.fa, align 1, !tbaa !27
  %i.fb = load i32, ptr %i.f, align 4, !tbaa !26  ; 2 uses
  %i.fc = sub nsw i32 16, %i.fb
  %i.fd = lshr i32 %i.eo, %i.fc
  %i.fe = trunc nuw i32 %i.fd to i16
  %i.ff = add nsw i32 %i.ek, -16
  %i.fg = add nsw i32 %i.ff, %i.fb
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.fh = add nsw i32 %i.bd, %i.ek
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fi = phi i16 [ %i.er, %bb.w ], [ %i.fe, %bb.v ] ; 2 uses
  %storemerge243 = phi i32 [ %i.fh, %bb.w ], [ %i.fg, %bb.v ] ; 5 uses
  store i32 %storemerge243, ptr %i.f, align 4, !tbaa !26
  %i.fj = icmp sgt i32 %storemerge243, 13
  %i.fk = add nsw i32 %.0212256, 65534            ; 3 uses
  br i1 %i.fj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fl = and i32 %i.fk, 65535
  %i.fm = shl i32 %i.fk, %storemerge243
  %i.fn = trunc i32 %i.fm to i16
  %i.fo = or i16 %i.fi, %i.fn                     ; 2 uses
  store i16 %i.fo, ptr %i.g, align 8, !tbaa !25
  %i.fp = trunc i16 %i.fo to i8
  %i.fq = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.fr = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.fs = add i64 %i.fr, 1
  store i64 %i.fs, ptr %i.i, align 8, !tbaa !32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fr
  store i8 %i.fp, ptr %i.ft, align 1, !tbaa !27
  %8 = load i8, ptr %.shift250, align 1, !tbaa !25
  %i.fu = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.fv = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.fw = add i64 %i.fv, 1
  store i64 %i.fw, ptr %i.i, align 8, !tbaa !32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv
  store i8 %8, ptr %i.fx, align 1, !tbaa !27
  %i.fy = load i32, ptr %i.f, align 4, !tbaa !26  ; 2 uses
  %i.fz = sub nsw i32 16, %i.fy
  %i.ga = lshr i32 %i.fl, %i.fz
  %i.gb = trunc nuw i32 %i.ga to i16
  store i16 %i.gb, ptr %i.g, align 8, !tbaa !25
  %i.gc = add nsw i32 %i.fy, -13
  br label %.loopexit.sink.split

bb.z:                                             ; preds = %bb.x
  %i.gd = shl i32 %i.fk, %storemerge243
  %i.ge = trunc i32 %i.gd to i16
  %i.gf = or i16 %i.fi, %i.ge
  store i16 %i.gf, ptr %i.g, align 8, !tbaa !25
  %i.gg = add nsw i32 %storemerge243, 3
  br label %.loopexit.sink.split

bb.aa:                                            ; preds = %bb.t
  %i.gh = load i16, ptr %i.m, align 2, !tbaa !27
  %i.gi = zext i16 %i.gh to i32                   ; 3 uses
  %i.gj = sub nsw i32 16, %i.gi
  %i.gk = icmp sgt i32 %i.bd, %i.gj
  %i.gl = load i16, ptr %i.l, align 4, !tbaa !27
  %i.gm = zext i16 %i.gl to i32                   ; 2 uses
  %i.gn = shl i32 %i.gm, %i.bd
  %i.go = trunc i32 %i.gn to i16
  %i.gp = or i16 %i.ei, %i.go                     ; 3 uses
  br i1 %i.gk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i16 %i.gp, ptr %i.g, align 8, !tbaa !25
  %i.gq = trunc i16 %i.gp to i8
  %i.gr = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.gs = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.gt = add i64 %i.gs, 1
  store i64 %i.gt, ptr %i.i, align 8, !tbaa !32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gs
  store i8 %i.gq, ptr %i.gu, align 1, !tbaa !27
  %9 = load i8, ptr %.shift250, align 1, !tbaa !25
  %i.gv = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.gw = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.gx = add i64 %i.gw, 1
  store i64 %i.gx, ptr %i.i, align 8, !tbaa !32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw
  store i8 %9, ptr %i.gy, align 1, !tbaa !27
  %i.gz = load i32, ptr %i.f, align 4, !tbaa !26  ; 2 uses
  %i.ha = sub nsw i32 16, %i.gz
  %i.hb = lshr i32 %i.gm, %i.ha
  %i.hc = trunc nuw i32 %i.hb to i16
  %i.hd = add nsw i32 %i.gi, -16
  %i.he = add nsw i32 %i.hd, %i.gz
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.hf = add nsw i32 %i.bd, %i.gi
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hg = phi i16 [ %i.gp, %bb.ac ], [ %i.hc, %bb.ab ] ; 2 uses
  %storemerge = phi i32 [ %i.hf, %bb.ac ], [ %i.he, %bb.ab ] ; 5 uses
  store i32 %storemerge, ptr %i.f, align 4, !tbaa !26
  %i.hh = icmp sgt i32 %storemerge, 9
  %i.hi = add nuw i32 %.0212256, 65526            ; 3 uses
  br i1 %i.hh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hj = and i32 %i.hi, 65535
  %i.hk = shl i32 %i.hi, %storemerge
  %i.hl = trunc i32 %i.hk to i16
  %i.hm = or i16 %i.hg, %i.hl                     ; 2 uses
  store i16 %i.hm, ptr %i.g, align 8, !tbaa !25
  %i.hn = trunc i16 %i.hm to i8
  %i.ho = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.hp = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.hq = add i64 %i.hp, 1
  store i64 %i.hq, ptr %i.i, align 8, !tbaa !32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hp
  store i8 %i.hn, ptr %i.hr, align 1, !tbaa !27
  %10 = load i8, ptr %.shift250, align 1, !tbaa !25
  %i.hs = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.ht = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.hu = add i64 %i.ht, 1
  store i64 %i.hu, ptr %i.i, align 8, !tbaa !32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.ht
  store i8 %10, ptr %i.hv, align 1, !tbaa !27
  %i.hw = load i32, ptr %i.f, align 4, !tbaa !26  ; 2 uses
  %i.hx = sub nsw i32 16, %i.hw
  %i.hy = lshr i32 %i.hj, %i.hx
  %i.hz = trunc nuw i32 %i.hy to i16
  store i16 %i.hz, ptr %i.g, align 8, !tbaa !25
  %i.ia = add nsw i32 %i.hw, -9
  br label %.loopexit.sink.split

bb.af:                                            ; preds = %bb.ad
  %i.ib = shl i32 %i.hi, %storemerge
  %i.ic = trunc i32 %i.ib to i16
  %i.id = or i16 %i.hg, %i.ic
  store i16 %i.id, ptr %i.g, align 8, !tbaa !25
  %i.ie = add nsw i32 %storemerge, 7
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.ae, %bb.af, %bb.y, %bb.z, %bb.r, %bb.s
  %storemerge244.sink = phi i32 [ %i.ec, %bb.r ], [ %i.gc, %bb.y ], [ %i.eg, %bb.s ], [ %i.gg, %bb.z ], [ %i.ie, %bb.af ], [ %i.ia, %bb.ae ]
  store i32 %storemerge244.sink, ptr %i.f, align 4, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.loopexit.sink.split
  %i.if = icmp eq i16 %i.s, 0
  br i1 %i.if, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %. = select i1 %i.w, i32 3, i32 4
  %.252 = select i1 %i.w, i32 6, i32 7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit, %bb.b
  %.2219 = phi i32 [ %.1218254, %bb.b ], [ 3, %.loopexit ], [ %., %bb.ag ]
  %.2216 = phi i32 [ %.1215255, %bb.b ], [ 138, %.loopexit ], [ %.252, %bb.ag ]
  %.3 = phi i32 [ %i.u, %bb.b ], [ 0, %.loopexit ], [ 0, %bb.ag ]
  %.1 = phi i32 [ %.0210258, %bb.b ], [ %.0211257, %.loopexit ], [ %.0211257, %bb.ag ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.ah, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !17, i64 2904}
!9 = !{!"internal_state", !10, i64 0, !5, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !13, i64 40, !5, i64 48, !14, i64 56, !13, i64 64, !6, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !12, i64 96, !13, i64 104, !15, i64 112, !15, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !13, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !6, i64 212, !6, i64 2504, !6, i64 2748, !16, i64 2904, !16, i64 2928, !16, i64 2952, !6, i64 2976, !6, i64 3008, !5, i64 5300, !5, i64 5304, !6, i64 5308, !12, i64 5888, !5, i64 5896, !5, i64 5900, !15, i64 5904, !13, i64 5912, !13, i64 5920, !5, i64 5928, !5, i64 5932, !19, i64 5936, !5, i64 5940, !13, i64 5944}
!10 = !{!"p1 _ZTS10z_stream_s", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS11gz_header_s", !11, i64 0}
!15 = !{!"p1 short", !11, i64 0}
!16 = !{!"tree_desc_s", !17, i64 0, !5, i64 8, !18, i64 16}
!17 = !{!"p1 _ZTS9ct_data_s", !11, i64 0}
!18 = !{!"p1 _ZTS18static_tree_desc_s", !11, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!9, !18, i64 2920}
!21 = !{!9, !17, i64 2928}
!22 = !{!9, !18, i64 2944}
!23 = !{!9, !17, i64 2952}
!24 = !{!9, !18, i64 2968}
!25 = !{!9, !19, i64 5936}
!26 = !{!9, !5, i64 5940}
!27 = !{!6, !6, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!9, !5, i64 5900}
!31 = !{!9, !12, i64 16}
!32 = !{!9, !13, i64 40}
!33 = !{!9, !5, i64 196}
!34 = !{!9, !10, i64 0}
!35 = !{!36, !5, i64 88}
!36 = !{!"z_stream_s", !12, i64 0, !5, i64 8, !13, i64 16, !12, i64 24, !5, i64 32, !13, i64 40, !12, i64 48, !37, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!37 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!38 = distinct !{!38, !29}
!39 = !{!9, !5, i64 2912}
!40 = distinct !{!40, !29}
!41 = !{!9, !5, i64 2936}
!42 = !{!9, !13, i64 5912}
!43 = !{!9, !13, i64 5920}
!44 = !{!9, !5, i64 200}
!45 = distinct !{!45, !29}
!46 = !{!16, !17, i64 0}
!47 = !{!16, !18, i64 16}
!48 = !{!49, !17, i64 0}
!49 = !{!"static_tree_desc_s", !17, i64 0, !50, i64 8, !5, i64 16, !5, i64 20, !5, i64 24}
!50 = !{!"p1 int", !11, i64 0}
!51 = !{!49, !5, i64 20}
!52 = !{!9, !5, i64 5300}
!53 = !{!9, !5, i64 5304}
!54 = distinct !{!54, !29}
!55 = distinct !{!55, !29}
!56 = !{!16, !5, i64 8}
!57 = distinct !{!57, !29}
!58 = distinct !{!58, !29}
!59 = distinct !{!59, !29}
!60 = !{!49, !50, i64 8}
!61 = !{!49, !5, i64 16}
!62 = !{!49, !5, i64 24}
!63 = !{!19, !19, i64 0}
!64 = distinct !{!64, !29}
!65 = distinct !{!65, !29}
!66 = distinct !{!66, !29}
!67 = distinct !{!67, !29}
!68 = distinct !{!68, !29}
!69 = distinct !{!69, !29}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = distinct !{!72, !29}
!73 = !{!9, !15, i64 5904}
!74 = !{!9, !12, i64 5888}
!75 = distinct !{!75, !29}
!76 = !{!9, !5, i64 5928}
!77 = !{!9, !5, i64 5896}
!78 = distinct !{!78, !29}
!79 = distinct !{!79, !29}
end_hunk_2
