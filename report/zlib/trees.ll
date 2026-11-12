Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/trees?download=true
inline.NumInlined: 18
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }

@_dist_code = hidden local_unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\10\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 16
@_length_code = hidden local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C", align 16
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
define hidden void @_tr_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2904
  store ptr %i.a, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2920
  store ptr @static_l_desc, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2504 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2928
  store ptr %i.d, ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2944
  store ptr @static_d_desc, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2748 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2952
  store ptr %i.g, ptr %i.h, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2968
  store ptr @static_bl_desc, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5940
  store i32 0, ptr %i.k, align 4, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 0, ptr %i.l, align 8, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i16 0, ptr %i.m, align 4, !tbaa !23
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i16 0, ptr %i.o, align 4, !tbaa !23
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 286
  br i1 %exitcond.not.i.1, label %init_block.exit, label %bb.b, !llvm.loop !0

init_block.exit:                                  ; preds = %bb.b
  store i16 0, ptr %i.d, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %i.p, align 4, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %i.r, align 4, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %i.t, align 4, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %i.u, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %i.v, align 4, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %i.w, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %i.x, align 4, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %i.y, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %i.z, align 4, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %i.ab, align 4, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %i.ac, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %i.ad, align 4, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %i.ae, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %i.af, align 4, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %i.ag, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %i.ah, align 4, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %i.ai, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %i.aj, align 4, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %i.ak, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %i.al, align 4, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %i.am, align 8, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %i.an, align 4, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %i.ao, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %i.ap, align 4, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %i.aq, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %i.ar, align 4, !tbaa !23
  store i16 0, ptr %i.g, align 4, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %i.as, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %i.at, align 4, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %i.au, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %i.av, align 4, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %i.aw, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %i.ax, align 4, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %i.ay, align 8, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %i.az, align 4, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %i.ba, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %i.bb, align 4, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %i.bc, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %i.bd, align 4, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %i.be, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %i.bf, align 4, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %i.bg, align 8, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %i.bh, align 4, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %i.bi, align 8, !tbaa !23
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %i.bj, align 4, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %i.bk, align 4, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %i.bm, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bl, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_tr_stored_block(ptr nofree noundef captures(none) initializes((5944, 5948)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 13
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %3, 65535
  %i.e = shl i32 %3, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 4 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !20
  %i.h = trunc i32 %i.e to i16
  %i.i = or i16 %i.g, %i.h                        ; 2 uses
  store i16 %i.i, ptr %i.f, align 8, !tbaa !20
  %i.j = trunc i16 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 %i.j, ptr %i.p, align 1, !tbaa !23
  %4 = load i16, ptr %i.f, align 8, !tbaa !20
  %5 = lshr i16 %4, 8
  %6 = trunc nuw i16 %5 to i8
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.r = load i64, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.m, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 %6, ptr %i.t, align 1, !tbaa !23
  %i.u = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.v = sub nsw i32 16, %i.u
  %i.w = lshr i32 %i.d, %i.v
  %i.x = trunc nuw i32 %i.w to i16                ; 2 uses
  store i16 %i.x, ptr %i.f, align 8, !tbaa !20
  %i.y = add nsw i32 %i.u, -13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = shl i32 %3, %i.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !20
  %i.ac = trunc i32 %i.z to i16
  %i.ad = or i16 %i.ab, %i.ac                     ; 2 uses
  store i16 %i.ad, ptr %i.aa, align 8, !tbaa !20
  %i.ae = add nsw i32 %i.b, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.af = phi i16 [ %i.ad, %bb.c ], [ %i.x, %bb.b ] ; 2 uses
  %storemerge = phi i32 [ %i.ae, %bb.c ], [ %i.y, %bb.b ] ; 3 uses
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !21
  %i.ag = icmp sgt i32 %storemerge, 8
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.ah = trunc i16 %i.af to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !27 ; 2 uses
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  store i8 %i.ah, ptr %i.an, align 1, !tbaa !23
  %8 = load i16, ptr %7, align 8, !tbaa !20
  %9 = lshr i16 %8, 8
  %10 = trunc nuw i16 %9 to i8
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !27 ; 2 uses
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  store i8 %10, ptr %i.ar, align 1, !tbaa !23
  br label %bi_windup.exit

bb.f:                                             ; preds = %bb.d
  %i.as = icmp sgt i32 %storemerge, 0
  br i1 %i.as, label %bb.g, label %bi_windup.exit

bb.g:                                             ; preds = %bb.f
  %i.at = trunc i16 %i.af to i8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !27 ; 2 uses
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 %i.at, ptr %i.az, align 1, !tbaa !23
  br label %bi_windup.exit

bi_windup.exit:                                   ; preds = %bb.e, %bb.f, %bb.g
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !21
  %i.bb = add i32 %i.ba, 7
  %i.bc = and i32 %i.bb, 7
  %i.bd = add nuw nsw i32 %i.bc, 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %i.bf, align 8, !tbaa !20
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.bg = trunc i64 %2 to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !27 ; 2 uses
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk
  store i8 %i.bg, ptr %i.bm, align 1, !tbaa !23
  %i.bn = lshr i64 %2, 8
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bq = load i64, ptr %i.bj, align 8, !tbaa !27 ; 2 uses
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  store i8 %i.bo, ptr %i.bs, align 1, !tbaa !23
  %i.bt = trunc i64 %2 to i32
  %i.bu = xor i32 %i.bt, 65535                    ; 2 uses
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bx = load i64, ptr %i.bj, align 8, !tbaa !27 ; 2 uses
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.bj, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  store i8 %i.bv, ptr %i.bz, align 1, !tbaa !23
  %i.ca = lshr i32 %i.bu, 8
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.cd = load i64, ptr %i.bj, align 8, !tbaa !27 ; 2 uses
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bj, align 8, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  store i8 %i.cb, ptr %i.cf, align 1, !tbaa !23
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bi_windup.exit
  %i.cg = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.ch = load i64, ptr %i.bj, align 8, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bi_windup.exit
  %i.cj = load i64, ptr %i.bj, align 8, !tbaa !27
  %i.ck = add i64 %i.cj, %2
  store i64 %i.ck, ptr %i.bj, align 8, !tbaa !27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_tr_flush_bits(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.c = icmp eq i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 3 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !20
  %i.f = trunc i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  store i8 %i.f, ptr %i.l, align 1, !tbaa !23
  %1 = load i16, ptr %i.d, align 8, !tbaa !20
  %2 = lshr i16 %1, 8
  %3 = trunc nuw i16 %2 to i8
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.n = load i64, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.i, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 %3, ptr %i.p, align 1, !tbaa !23
  store i16 0, ptr %i.d, align 8, !tbaa !20
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %i.b, 7
  br i1 %i.q, label %bb.d, label %bi_flush.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 3 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !20
  %i.t = trunc i16 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !27   ; 2 uses
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  store i8 %i.t, ptr %i.z, align 1, !tbaa !23
  %i.aa = load i16, ptr %i.r, align 8, !tbaa !20
  %i.ab = lshr i16 %i.aa, 8
  store i16 %i.ab, ptr %i.r, align 8, !tbaa !20
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ad = add nsw i32 %i.ac, -8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.b
  %.sink.i = phi i32 [ %i.ad, %bb.d ], [ 0, %bb.b ]
  store i32 %.sink.i, ptr %i.a, align 4, !tbaa !21
  br label %bi_flush.exit

bi_flush.exit:                                    ; preds = %bb.c, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_tr_align(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 13
  %i.d = shl i32 2, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 4 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !20
  %i.g = trunc i32 %i.d to i16
  %i.h = or i16 %i.f, %i.g                        ; 3 uses
  store i16 %i.h, ptr %i.e, align 8, !tbaa !20
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i16 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  store i8 %i.i, ptr %i.o, align 1, !tbaa !23
  %1 = load i16, ptr %i.e, align 8, !tbaa !20
  %2 = lshr i16 %1, 8
  %3 = trunc nuw i16 %2 to i8
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.q = load i64, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.l, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  store i8 %3, ptr %i.s, align 1, !tbaa !23
  %i.t = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.u = sub nsw i32 16, %i.t
  %i.v = lshr i32 2, %i.u
  %i.w = trunc nuw nsw i32 %i.v to i16            ; 2 uses
  store i16 %i.w, ptr %i.e, align 8, !tbaa !20
  %i.x = add nsw i32 %i.t, -13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.y = add nsw i32 %i.b, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = phi i16 [ %i.h, %bb.c ], [ %i.w, %bb.b ]
  %storemerge = phi i32 [ %i.y, %bb.c ], [ %i.x, %bb.b ] ; 3 uses
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !21
  %i.aa = icmp sgt i32 %storemerge, 9
  %i.ab = trunc i16 %i.z to i8                    ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !27 ; 2 uses
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !23
  %4 = load i16, ptr %i.ac, align 8, !tbaa !20
  %5 = lshr i16 %4, 8
  %6 = trunc nuw i16 %5 to i8
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !27 ; 2 uses
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.af, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 %6, ptr %i.am, align 1, !tbaa !23
  store i16 0, ptr %i.ac, align 8, !tbaa !20
  %i.an = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ao = add nsw i32 %i.an, -9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = add nsw i32 %storemerge, 7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = phi i8 [ %i.ab, %bb.f ], [ 0, %bb.e ]   ; 2 uses
  %storemerge41 = phi i32 [ %i.ap, %bb.f ], [ %i.ao, %bb.e ] ; 3 uses
  store i32 %storemerge41, ptr %i.a, align 4, !tbaa !21
  %i.ar = icmp eq i32 %storemerge41, 16
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !27 ; 2 uses
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  store i8 %i.aq, ptr %i.ay, align 1, !tbaa !23
  %7 = load i16, ptr %i.as, align 8, !tbaa !20
  %8 = lshr i16 %7, 8
  %9 = trunc nuw i16 %8 to i8
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !26
  %i.ba = load i64, ptr %i.av, align 8, !tbaa !27 ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.av, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  store i8 %9, ptr %i.bc, align 1, !tbaa !23
  store i16 0, ptr %i.as, align 8, !tbaa !20
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.bd = icmp sgt i32 %storemerge41, 7
  br i1 %i.bd, label %bb.j, label %bi_flush.exit

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !27 ; 2 uses
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  store i8 %i.aq, ptr %i.bk, align 1, !tbaa !23
  %i.bl = load i16, ptr %i.be, align 8, !tbaa !20
  %i.bm = lshr i16 %i.bl, 8
  store i16 %i.bm, ptr %i.be, align 8, !tbaa !20
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !21
  %i.bo = add nsw i32 %i.bn, -8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.h
  %.sink.i = phi i32 [ %i.bo, %bb.j ], [ 0, %bb.h ]
  store i32 %.sink.i, ptr %i.a, align 4, !tbaa !21
  br label %bi_flush.exit

bi_flush.exit:                                    ; preds = %bb.i, %.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_tr_flush_block(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.bu

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 5 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !23
  %.not19.i = icmp eq i16 %i.i, 0
  br i1 %.not19.i, label %bb.d, label %detect_data_type.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = load i16, ptr %i.j, align 8, !tbaa !23
  %.not19.1.i = icmp eq i16 %i.k, 0
  br i1 %.not19.1.i, label %bb.e, label %detect_data_type.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.m = load i16, ptr %i.l, align 4, !tbaa !23
  %.not19.2.i = icmp eq i16 %i.m, 0
  br i1 %.not19.2.i, label %bb.f, label %detect_data_type.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.o = load i16, ptr %i.n, align 8, !tbaa !23
  %.not19.3.i = icmp eq i16 %i.o, 0
  br i1 %.not19.3.i, label %bb.g, label %detect_data_type.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.q = load i16, ptr %i.p, align 4, !tbaa !23
  %.not19.4.i = icmp eq i16 %i.q, 0
  br i1 %.not19.4.i, label %bb.h, label %detect_data_type.exit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load i16, ptr %i.r, align 8, !tbaa !23
  %.not19.5.i = icmp eq i16 %i.s, 0
  br i1 %.not19.5.i, label %bb.i, label %detect_data_type.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.u = load i16, ptr %i.t, align 4, !tbaa !23
  %.not19.6.i = icmp eq i16 %i.u, 0
  br i1 %.not19.6.i, label %bb.j, label %detect_data_type.exit

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.w = load i16, ptr %i.v, align 4, !tbaa !23
  %.not19.14.i = icmp eq i16 %i.w, 0
  br i1 %.not19.14.i, label %bb.k, label %detect_data_type.exit

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.y = load i16, ptr %i.x, align 8, !tbaa !23
  %.not19.15.i = icmp eq i16 %i.y, 0
  br i1 %.not19.15.i, label %bb.l, label %detect_data_type.exit

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !23
  %.not19.16.i = icmp eq i16 %i.aa, 0
  br i1 %.not19.16.i, label %bb.m, label %detect_data_type.exit

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !23
  %.not19.17.i = icmp eq i16 %i.ac, 0
  br i1 %.not19.17.i, label %bb.n, label %detect_data_type.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !23
  %.not19.18.i = icmp eq i16 %i.ae, 0
  br i1 %.not19.18.i, label %bb.o, label %detect_data_type.exit

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !23
  %.not19.19.i = icmp eq i16 %i.ag, 0
  br i1 %.not19.19.i, label %bb.p, label %detect_data_type.exit

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !23
  %.not19.20.i = icmp eq i16 %i.ai, 0
  br i1 %.not19.20.i, label %bb.q, label %detect_data_type.exit

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !23
  %.not19.21.i = icmp eq i16 %i.ak, 0
  br i1 %.not19.21.i, label %bb.r, label %detect_data_type.exit

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.am = load i16, ptr %i.al, align 4, !tbaa !23
  %.not19.22.i = icmp eq i16 %i.am, 0
  br i1 %.not19.22.i, label %bb.s, label %detect_data_type.exit

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !23
  %.not19.23.i = icmp eq i16 %i.ao, 0
  br i1 %.not19.23.i, label %bb.t, label %detect_data_type.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !23
  %.not19.24.i = icmp eq i16 %i.aq, 0
  br i1 %.not19.24.i, label %bb.u, label %detect_data_type.exit

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !23
  %.not19.25.i = icmp eq i16 %i.as, 0
  br i1 %.not19.25.i, label %bb.v, label %detect_data_type.exit

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.au = load i16, ptr %i.at, align 4, !tbaa !23
  %.not19.28.i = icmp eq i16 %i.au, 0
  br i1 %.not19.28.i, label %bb.w, label %detect_data_type.exit

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !23
  %.not19.29.i = icmp eq i16 %i.aw, 0
  br i1 %.not19.29.i, label %bb.x, label %detect_data_type.exit

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !23
  %.not19.30.i = icmp eq i16 %i.ay, 0
  br i1 %.not19.30.i, label %bb.y, label %detect_data_type.exit

bb.y:                                             ; preds = %bb.x
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !23
  %.not19.31.i = icmp eq i16 %i.ba, 0
  br i1 %.not19.31.i, label %bb.z, label %detect_data_type.exit

bb.z:                                             ; preds = %bb.y
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !23
  %.not.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i, label %bb.aa, label %detect_data_type.exit

bb.aa:                                            ; preds = %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !23
  %.not15.i = icmp eq i16 %i.be, 0
  br i1 %.not15.i, label %bb.ab, label %detect_data_type.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 264
end_hunk_0
begin_hunk_1_@_tr_flush_block:bb.a
  %i.em = load i16, ptr %i.el, align 4, !tbaa !23
  %i.en = add i16 %i.em, 1
  store i16 %i.en, ptr %i.el, align 4, !tbaa !23
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.eo = load i16, ptr %i.dt, align 4, !tbaa !23
  %i.ep = add i16 %i.eo, 1
  store i16 %i.ep, ptr %i.dt, align 4, !tbaa !23
  br label %bb.bb

bb.ay:                                            ; preds = %bb.au
  %i.eq = icmp slt i32 %.03452.i22.i, 10
  br i1 %i.eq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.er = load i16, ptr %i.dv, align 8, !tbaa !23
  %i.es = add i16 %i.er, 1
  store i16 %i.es, ptr %i.dv, align 8, !tbaa !23
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.et = load i16, ptr %i.du, align 4, !tbaa !23
  %i.eu = add i16 %i.et, 1
  store i16 %i.eu, ptr %i.du, align 4, !tbaa !23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ax, %bb.at
  %i.ev = icmp eq i16 %i.dz, 0
  br i1 %i.ev, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %..i29.i = select i1 %i.ed, i32 6, i32 7
  %.47.i30.i = select i1 %i.ed, i32 3, i32 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ar
  %.138.i31.i = phi i32 [ %.03750.i24.i, %bb.ar ], [ %.03651.i23.i, %bb.bb ], [ %.03651.i23.i, %bb.bc ]
  %.135.i32.i = phi i32 [ %i.eb, %bb.ar ], [ 0, %bb.bb ], [ 0, %bb.bc ]
  %.233.i33.i = phi i32 [ %.13253.i21.i, %bb.ar ], [ 138, %bb.bb ], [ %..i29.i, %bb.bc ]
  %.2.i34.i = phi i32 [ %.154.i20.i, %bb.ar ], [ 3, %bb.bb ], [ %.47.i30.i, %bb.bc ]
  %exitcond.not.i35.i = icmp eq i64 %indvars.iv.next.i25.i, %wide.trip.count.i18.i
  br i1 %exitcond.not.i35.i, label %scan_tree.exit36.i, label %bb.ar, !llvm.loop !39

scan_tree.exit36.i:                               ; preds = %bb.bd, %scan_tree.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 2952
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !23
  %.not.i90 = icmp eq i16 %i.ey, 0
  br i1 %.not.i90, label %bb.be, label %build_bl_tree.exit

bb.be:                                            ; preds = %scan_tree.exit36.i
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !23
  %.not.1.i = icmp eq i16 %i.fa, 0
  br i1 %.not.1.i, label %bb.bf, label %build_bl_tree.exit

bb.bf:                                            ; preds = %bb.be
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !23
  %.not.2.i = icmp eq i16 %i.fc, 0
  br i1 %.not.2.i, label %bb.bg, label %build_bl_tree.exit

bb.bg:                                            ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !23
  %.not.3.i = icmp eq i16 %i.fe, 0
  br i1 %.not.3.i, label %bb.bh, label %build_bl_tree.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !23
  %.not.4.i = icmp eq i16 %i.fg, 0
  br i1 %.not.4.i, label %bb.bi, label %build_bl_tree.exit

bb.bi:                                            ; preds = %bb.bh
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !23
  %.not.5.i = icmp eq i16 %i.fi, 0
  br i1 %.not.5.i, label %bb.bj, label %build_bl_tree.exit

bb.bj:                                            ; preds = %bb.bi
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !23
  %.not.6.i = icmp eq i16 %i.fk, 0
  br i1 %.not.6.i, label %bb.bk, label %build_bl_tree.exit

bb.bk:                                            ; preds = %bb.bj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !23
  %.not.7.i = icmp eq i16 %i.fm, 0
  br i1 %.not.7.i, label %bb.bl, label %build_bl_tree.exit

bb.bl:                                            ; preds = %bb.bk
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !23
  %.not.8.i = icmp eq i16 %i.fo, 0
  br i1 %.not.8.i, label %bb.bm, label %build_bl_tree.exit

bb.bm:                                            ; preds = %bb.bl
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !23
  %.not.9.i = icmp eq i16 %i.fq, 0
  br i1 %.not.9.i, label %bb.bn, label %build_bl_tree.exit

bb.bn:                                            ; preds = %bb.bm
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !23
  %.not.10.i = icmp eq i16 %i.fs, 0
  br i1 %.not.10.i, label %bb.bo, label %build_bl_tree.exit

bb.bo:                                            ; preds = %bb.bn
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !23
  %.not.11.i = icmp eq i16 %i.fu, 0
  br i1 %.not.11.i, label %bb.bp, label %build_bl_tree.exit

bb.bp:                                            ; preds = %bb.bo
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !23
  %.not.12.i = icmp eq i16 %i.fw, 0
  br i1 %.not.12.i, label %bb.bq, label %build_bl_tree.exit

bb.bq:                                            ; preds = %bb.bp
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !23
  %.not.13.i = icmp eq i16 %i.fy, 0
  br i1 %.not.13.i, label %bb.br, label %build_bl_tree.exit

bb.br:                                            ; preds = %bb.bq
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !23
  %.not.14.i = icmp eq i16 %i.ga, 0
  br i1 %.not.14.i, label %bb.bs, label %build_bl_tree.exit

bb.bs:                                            ; preds = %bb.br
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !23
  %.not.15.i = icmp eq i16 %i.gc, 0
  %spec.select.i = select i1 %.not.15.i, i32 2, i32 3
  br label %build_bl_tree.exit

build_bl_tree.exit:                               ; preds = %scan_tree.exit36.i, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs
  %.0.lcssa.i = phi i32 [ 18, %scan_tree.exit36.i ], [ 10, %bb.bl ], [ 17, %bb.be ], [ %spec.select.i, %bb.bs ], [ 16, %bb.bf ], [ 8, %bb.bn ], [ 15, %bb.bg ], [ 4, %bb.br ], [ 14, %bb.bh ], [ 9, %bb.bm ], [ 13, %bb.bi ], [ 5, %bb.bq ], [ 12, %bb.bj ], [ 7, %bb.bo ], [ 11, %bb.bk ], [ 6, %bb.bp ] ; 3 uses
  %narrow.i = mul nuw nsw i32 %.0.lcssa.i, 3
  %narrow42.i = add nuw nsw i32 %narrow.i, 17
  %i.gd = zext nneg i32 %narrow42.i to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !28
  %i.gg = add i64 %i.gf, %i.gd                    ; 2 uses
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !28
  %i.gh = add i64 %i.gg, 10
  %i.gi = lshr i64 %i.gh, 3                       ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !29
  %i.gl = add i64 %i.gk, 10
  %i.gm = lshr i64 %i.gl, 3                       ; 3 uses
  %.not = icmp samesign ugt i64 %i.gm, %i.gi
  br i1 %.not, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %build_bl_tree.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !48
  %i.gp = icmp eq i32 %i.go, 4
  br i1 %i.gp, label %bb.bv, label %.thread

bb.bu:                                            ; preds = %bb.a
  %i.gq = add i64 %2, 5
  br label %bb.bv

bb.bv:                                            ; preds = %build_bl_tree.exit, %bb.bt, %bb.bu
  %.0 = phi i64 [ %i.gq, %bb.bu ], [ %i.gm, %bb.bt ], [ %i.gm, %build_bl_tree.exit ]
  %i.gr = add i64 %2, 4
  %i.gs = icmp ule i64 %i.gr, %.0
  %i.gt = icmp ne ptr %1, null
  %or.cond = and i1 %i.gt, %i.gs
  br i1 %or.cond, label %bb.bw, label %bb.bx

.thread:                                          ; preds = %bb.bt
  %i.gu = add i64 %2, 4
  %i.gv = icmp ule i64 %i.gu, %i.gi
  %i.gw = icmp ne ptr %1, null
  %or.cond100 = and i1 %i.gw, %i.gv
  br i1 %or.cond100, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %.thread, %bb.bv
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3)
  br label %bb.cr

bb.bx:                                            ; preds = %bb.bv
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !21 ; 4 uses
  %i.gz = icmp sgt i32 %i.gy, 13
  %i.ha = add i32 %3, 2                           ; 3 uses
  br i1 %i.gz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.hb = and i32 %i.ha, 65535
  %i.hc = shl i32 %i.ha, %i.gy
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 4 uses
  %i.he = load i16, ptr %i.hd, align 8, !tbaa !20
  %i.hf = trunc i32 %i.hc to i16
  %i.hg = or i16 %i.he, %i.hf                     ; 2 uses
  store i16 %i.hg, ptr %i.hd, align 8, !tbaa !20
  %i.hh = trunc i16 %i.hg to i8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !26
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !27 ; 2 uses
  %i.hm = add i64 %i.hl, 1
  store i64 %i.hm, ptr %i.hk, align 8, !tbaa !27
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hl
  store i8 %i.hh, ptr %i.hn, align 1, !tbaa !23
  %4 = load i16, ptr %i.hd, align 8, !tbaa !20
  %5 = lshr i16 %4, 8
  %6 = trunc nuw i16 %5 to i8
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !26
  %i.hp = load i64, ptr %i.hk, align 8, !tbaa !27 ; 2 uses
  %i.hq = add i64 %i.hp, 1
  store i64 %i.hq, ptr %i.hk, align 8, !tbaa !27
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hp
  store i8 %6, ptr %i.hr, align 1, !tbaa !23
  %i.hs = load i32, ptr %i.gx, align 4, !tbaa !21 ; 2 uses
  %i.ht = sub nsw i32 16, %i.hs
  %i.hu = lshr i32 %i.hb, %i.ht
  %i.hv = trunc nuw i32 %i.hu to i16
  store i16 %i.hv, ptr %i.hd, align 8, !tbaa !20
  %i.hw = add nsw i32 %i.hs, -13
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.hx = shl i32 %i.ha, %i.gy
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 8, !tbaa !20
  %i.ia = trunc i32 %i.hx to i16
  %i.ib = or i16 %i.hz, %i.ia
  store i16 %i.ib, ptr %i.hy, align 8, !tbaa !20
  %i.ic = add nsw i32 %i.gy, 3
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %storemerge88 = phi i32 [ %i.ic, %bb.bz ], [ %i.hw, %bb.by ]
  store i32 %storemerge88, ptr %i.gx, align 4, !tbaa !21
  tail call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  br label %bb.cr

bb.cb:                                            ; preds = %.thread
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 11 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !21 ; 4 uses
  %i.if = icmp sgt i32 %i.ie, 13
  %i.ig = add i32 %3, 4                           ; 3 uses
  br i1 %i.if, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ih = and i32 %i.ig, 65535
  %i.ii = shl i32 %i.ig, %i.ie
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 3 uses
  %i.ik = load i16, ptr %i.ij, align 8, !tbaa !20
  %i.il = trunc i32 %i.ii to i16
  %i.im = or i16 %i.ik, %i.il                     ; 2 uses
  store i16 %i.im, ptr %i.ij, align 8, !tbaa !20
  %i.in = trunc i16 %i.im to i8
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !26
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !27 ; 2 uses
  %i.is = add i64 %i.ir, 1
  store i64 %i.is, ptr %i.iq, align 8, !tbaa !27
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ir
  store i8 %i.in, ptr %i.it, align 1, !tbaa !23
  %7 = load i16, ptr %i.ij, align 8, !tbaa !20
  %8 = lshr i16 %7, 8
  %9 = trunc nuw i16 %8 to i8
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !26
  %i.iv = load i64, ptr %i.iq, align 8, !tbaa !27 ; 2 uses
  %i.iw = add i64 %i.iv, 1
  store i64 %i.iw, ptr %i.iq, align 8, !tbaa !27
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iv
  store i8 %9, ptr %i.ix, align 1, !tbaa !23
  %i.iy = load i32, ptr %i.id, align 4, !tbaa !21 ; 2 uses
  %i.iz = sub nsw i32 16, %i.iy
  %i.ja = lshr i32 %i.ih, %i.iz
  %i.jb = trunc nuw i32 %i.ja to i16
  %i.jc = add nsw i32 %i.iy, -13
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.jd = shl i32 %i.ig, %i.ie
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.jf = load i16, ptr %i.je, align 8, !tbaa !20
  %i.jg = trunc i32 %i.jd to i16
  %i.jh = or i16 %i.jf, %i.jg
  %i.ji = add nsw i32 %i.ie, 3
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.jj = phi i16 [ %i.jh, %bb.cd ], [ %i.jb, %bb.cc ] ; 2 uses
  %storemerge = phi i32 [ %i.ji, %bb.cd ], [ %i.jc, %bb.cc ] ; 5 uses
  store i32 %storemerge, ptr %i.id, align 4, !tbaa !21
  %i.jk = load i32, ptr %i.bv, align 8, !tbaa !46 ; 2 uses
  %i.jl = load i32, ptr %i.dj, align 8, !tbaa !47 ; 4 uses
  %i.jm = add nuw nsw i32 %.0.lcssa.i, 1
  %i.jn = icmp sgt i32 %storemerge, 11
  %i.jo = add i32 %i.jk, 65280                    ; 3 uses
  br i1 %i.jn, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.jp = and i32 %i.jo, 65535
  %i.jq = shl i32 %i.jo, %storemerge
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.js = trunc i32 %i.jq to i16
  %i.jt = or i16 %i.jj, %i.js                     ; 2 uses
  store i16 %i.jt, ptr %i.jr, align 8, !tbaa !20
  %i.ju = trunc i16 %i.jt to i8
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !26
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !27 ; 2 uses
  %i.jz = add i64 %i.jy, 1
  store i64 %i.jz, ptr %i.jx, align 8, !tbaa !27
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jy
  store i8 %i.ju, ptr %i.ka, align 1, !tbaa !23
  %10 = load i16, ptr %i.jr, align 8, !tbaa !20
  %11 = lshr i16 %10, 8
  %12 = trunc nuw i16 %11 to i8
  %i.kb = load ptr, ptr %i.jv, align 8, !tbaa !26
  %i.kc = load i64, ptr %i.jx, align 8, !tbaa !27 ; 2 uses
  %i.kd = add i64 %i.kc, 1
  store i64 %i.kd, ptr %i.jx, align 8, !tbaa !27
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kc
  store i8 %12, ptr %i.ke, align 1, !tbaa !23
  %i.kf = load i32, ptr %i.id, align 4, !tbaa !21 ; 2 uses
  %i.kg = sub nsw i32 16, %i.kf
  %i.kh = lshr i32 %i.jp, %i.kg
  %i.ki = trunc nuw i32 %i.kh to i16
  %i.kj = add nsw i32 %i.kf, -11
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.kk = shl i32 %i.jo, %storemerge
  %i.kl = trunc i32 %i.kk to i16
  %i.km = or i16 %i.jj, %i.kl
  %i.kn = add nsw i32 %storemerge, 5
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ko = phi i16 [ %i.km, %bb.cg ], [ %i.ki, %bb.cf ] ; 2 uses
  %storemerge.i = phi i32 [ %i.kn, %bb.cg ], [ %i.kj, %bb.cf ] ; 5 uses
  store i32 %storemerge.i, ptr %i.id, align 4, !tbaa !21
  %i.kp = icmp sgt i32 %storemerge.i, 11
  br i1 %i.kp, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.kq = and i32 %i.jl, 65535
  %i.kr = shl i32 %i.jl, %storemerge.i
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.kt = trunc i32 %i.kr to i16
  %i.ku = or i16 %i.ko, %i.kt                     ; 2 uses
  store i16 %i.ku, ptr %i.ks, align 8, !tbaa !20
  %i.kv = trunc i16 %i.ku to i8
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !26
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !27 ; 2 uses
  %i.la = add i64 %i.kz, 1
  store i64 %i.la, ptr %i.ky, align 8, !tbaa !27
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kz
  store i8 %i.kv, ptr %i.lb, align 1, !tbaa !23
  %13 = load i16, ptr %i.ks, align 8, !tbaa !20
  %14 = lshr i16 %13, 8
  %15 = trunc nuw i16 %14 to i8
  %i.lc = load ptr, ptr %i.kw, align 8, !tbaa !26
  %i.ld = load i64, ptr %i.ky, align 8, !tbaa !27 ; 2 uses
  %i.le = add i64 %i.ld, 1
  store i64 %i.le, ptr %i.ky, align 8, !tbaa !27
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.ld
  store i8 %15, ptr %i.lf, align 1, !tbaa !23
  %i.lg = load i32, ptr %i.id, align 4, !tbaa !21 ; 2 uses
  %i.lh = sub nsw i32 16, %i.lg
  %i.li = lshr i32 %i.kq, %i.lh
  %i.lj = trunc nuw i32 %i.li to i16
  %i.lk = add nsw i32 %i.lg, -11
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.ll = shl i32 %i.jl, %storemerge.i
  %i.lm = trunc i32 %i.ll to i16
  %i.ln = or i16 %i.ko, %i.lm
  %i.lo = add nsw i32 %storemerge.i, 5
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.lp = phi i16 [ %i.ln, %bb.cj ], [ %i.lj, %bb.ci ] ; 2 uses
  %storemerge105.i = phi i32 [ %i.lo, %bb.cj ], [ %i.lk, %bb.ci ] ; 5 uses
  store i32 %storemerge105.i, ptr %i.id, align 4, !tbaa !21
  %i.lq = icmp sgt i32 %storemerge105.i, 12
  %i.lr = add nuw nsw i32 %.0.lcssa.i, 65533      ; 3 uses
  br i1 %i.lq, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ls = and i32 %i.lr, 65535
  %i.lt = shl i32 %i.lr, %storemerge105.i
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.lv = trunc i32 %i.lt to i16
  %i.lw = or i16 %i.lp, %i.lv                     ; 2 uses
  store i16 %i.lw, ptr %i.lu, align 8, !tbaa !20
  %i.lx = trunc i16 %i.lw to i8
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !26
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !27 ; 2 uses
  %i.mc = add i64 %i.mb, 1
  store i64 %i.mc, ptr %i.ma, align 8, !tbaa !27
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.mb
  store i8 %i.lx, ptr %i.md, align 1, !tbaa !23
  %16 = load i16, ptr %i.lu, align 8, !tbaa !20
  %17 = lshr i16 %16, 8
  %18 = trunc nuw i16 %17 to i8
  %i.me = load ptr, ptr %i.ly, align 8, !tbaa !26
  %i.mf = load i64, ptr %i.ma, align 8, !tbaa !27 ; 2 uses
  %i.mg = add i64 %i.mf, 1
  store i64 %i.mg, ptr %i.ma, align 8, !tbaa !27
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mf
  store i8 %18, ptr %i.mh, align 1, !tbaa !23
  %i.mi = load i32, ptr %i.id, align 4, !tbaa !21 ; 2 uses
  %i.mj = sub nsw i32 16, %i.mi
  %i.mk = lshr i32 %i.ls, %i.mj
  %i.ml = trunc nuw i32 %i.mk to i16
  %i.mm = add nsw i32 %i.mi, -12
  br label %.lr.ph.i

bb.cm:                                            ; preds = %bb.ck
  %i.mn = shl nuw nsw i32 %i.lr, %storemerge105.i
  %i.mo = trunc i32 %i.mn to i16
  %i.mp = or i16 %i.lp, %i.mo
  %i.mq = add nsw i32 %storemerge105.i, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cl, %bb.cm
  %i.mr = phi i16 [ %i.mp, %bb.cm ], [ %i.ml, %bb.cl ]
  %storemerge106.i = phi i32 [ %i.mq, %bb.cm ], [ %i.mm, %bb.cl ] ; 2 uses
  store i32 %storemerge106.i, ptr %i.id, align 4, !tbaa !21
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.jm to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cq, %.lr.ph.i
  %i.mv = phi i16 [ %i.mr, %.lr.ph.i ], [ %i.nx, %bb.cq ]
  %i.mw = phi i32 [ %storemerge106.i, %.lr.ph.i ], [ %storemerge107.i, %bb.cq ] ; 3 uses
  %indvars.iv.i91 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i92, %bb.cq ] ; 2 uses
  %i.mx = icmp sgt i32 %i.mw, 13
  %i.my = getelementptr inbounds nuw i8, ptr @bl_order, i64 %indvars.iv.i91
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !23
  %i.na = zext i8 %i.mz to i64
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 2750
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !23
  %i.ne = zext i16 %i.nd to i32                   ; 2 uses
  %i.nf = shl i32 %i.ne, %i.mw
  %i.ng = trunc i32 %i.nf to i16
  %i.nh = or i16 %i.mv, %i.ng                     ; 3 uses
  store i16 %i.nh, ptr %i.ms, align 8, !tbaa !20
  br i1 %i.mx, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ni = trunc i16 %i.nh to i8
  %i.nj = load ptr, ptr %i.mt, align 8, !tbaa !26
  %i.nk = load i64, ptr %i.mu, align 8, !tbaa !27 ; 2 uses
  %i.nl = add i64 %i.nk, 1
  store i64 %i.nl, ptr %i.mu, align 8, !tbaa !27
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nk
  store i8 %i.ni, ptr %i.nm, align 1, !tbaa !23
  %19 = load i16, ptr %i.ms, align 8, !tbaa !20
  %20 = lshr i16 %19, 8
  %21 = trunc nuw i16 %20 to i8
  %i.nn = load ptr, ptr %i.mt, align 8, !tbaa !26
  %i.no = load i64, ptr %i.mu, align 8, !tbaa !27 ; 2 uses
  %i.np = add i64 %i.no, 1
  store i64 %i.np, ptr %i.mu, align 8, !tbaa !27
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.no
  store i8 %21, ptr %i.nq, align 1, !tbaa !23
  %i.nr = load i32, ptr %i.id, align 4, !tbaa !21 ; 2 uses
  %i.ns = sub nsw i32 16, %i.nr
  %i.nt = lshr i32 %i.ne, %i.ns
  %i.nu = trunc nuw i32 %i.nt to i16              ; 2 uses
  store i16 %i.nu, ptr %i.ms, align 8, !tbaa !20
  %i.nv = add nsw i32 %i.nr, -13
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.nw = add nsw i32 %i.mw, 3
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.nx = phi i16 [ %i.nh, %bb.cp ], [ %i.nu, %bb.co ]
  %storemerge107.i = phi i32 [ %i.nw, %bb.cp ], [ %i.nv, %bb.co ] ; 2 uses
  store i32 %storemerge107.i, ptr %i.id, align 4, !tbaa !21
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i91, 1 ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %indvars.iv.next.i92, %wide.trip.count.i
  br i1 %exitcond.not.i93, label %send_all_trees.exit, label %bb.cn, !llvm.loop !40

send_all_trees.exit:                              ; preds = %bb.cq
  tail call fastcc void @send_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.bu, i32 noundef %i.jk)
  tail call fastcc void @send_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.di, i32 noundef %i.jl)
  tail call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.di)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.ca, %send_all_trees.exit, %bb.bw
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %bb.cr
  %indvars.iv.i94 = phi i64 [ 0, %bb.cr ], [ %indvars.iv.next.i95.1, %bb.cs ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv.i94
  store i16 0, ptr %i.nz, align 4, !tbaa !23
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv.i94
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  store i16 0, ptr %i.ob, align 4, !tbaa !23
  %indvars.iv.next.i95.1 = add nuw nsw i64 %indvars.iv.i94, 2 ; 2 uses
  %exitcond.not.i96.1 = icmp eq i64 %indvars.iv.next.i95.1, 286
  br i1 %exitcond.not.i96.1, label %init_block.exit, label %bb.cs, !llvm.loop !0

init_block.exit:                                  ; preds = %bb.cs
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %i.oc, align 4, !tbaa !23
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %i.od, align 4, !tbaa !23
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %i.oe, align 4, !tbaa !23
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %i.of, align 4, !tbaa !23
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %i.og, align 4, !tbaa !23
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %i.oh, align 4, !tbaa !23
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %i.oi, align 4, !tbaa !23
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %i.oj, align 4, !tbaa !23
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %i.ok, align 4, !tbaa !23
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %i.ol, align 4, !tbaa !23
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %i.om, align 4, !tbaa !23
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %i.on, align 4, !tbaa !23
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %i.oo, align 4, !tbaa !23
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %i.op, align 4, !tbaa !23
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %i.oq, align 4, !tbaa !23
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %i.or, align 4, !tbaa !23
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %i.os, align 4, !tbaa !23
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %i.ot, align 4, !tbaa !23
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %i.ou, align 4, !tbaa !23
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %i.ov, align 4, !tbaa !23
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %i.ow, align 4, !tbaa !23
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %i.ox, align 4, !tbaa !23
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %i.oy, align 4, !tbaa !23
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %i.oz, align 4, !tbaa !23
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %i.pa, align 4, !tbaa !23
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %i.pb, align 4, !tbaa !23
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %i.pc, align 4, !tbaa !23
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %i.pd, align 4, !tbaa !23
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %i.pe, align 4, !tbaa !23
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %i.pf, align 4, !tbaa !23
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %i.pg, align 4, !tbaa !23
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %i.ph, align 4, !tbaa !23
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %i.pi, align 4, !tbaa !23
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %i.pj, align 4, !tbaa !23
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %i.pk, align 4, !tbaa !23
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %i.pl, align 4, !tbaa !23
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %i.pm, align 4, !tbaa !23
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %i.pn, align 4, !tbaa !23
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %i.po, align 4, !tbaa !23
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %i.pp, align 4, !tbaa !23
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %i.pq, align 4, !tbaa !23
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %i.pr, align 4, !tbaa !23
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %i.ps, align 4, !tbaa !23
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %i.pt, align 4, !tbaa !23
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %i.pu, align 4, !tbaa !23
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %i.pv, align 4, !tbaa !23
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %i.pw, align 4, !tbaa !23
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %i.px, align 4, !tbaa !23
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %i.py, align 4, !tbaa !23
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %i.pz, align 4, !tbaa !23
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %i.qb, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.qa, i8 0, i64 20, i1 false)
  %.not89 = icmp eq i32 %3, 0
  br i1 %.not89, label %bb.cx, label %bb.ct

bb.ct:                                            ; preds = %init_block.exit
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 3 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !21 ; 2 uses
  %i.qe = icmp sgt i32 %i.qd, 8
  br i1 %i.qe, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.qg = load i16, ptr %i.qf, align 8, !tbaa !20
  %i.qh = trunc i16 %i.qg to i8
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !26
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !27 ; 2 uses
  %i.qm = add i64 %i.ql, 1
  store i64 %i.qm, ptr %i.qk, align 8, !tbaa !27
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.ql
  store i8 %i.qh, ptr %i.qn, align 1, !tbaa !23
  %22 = load i16, ptr %i.qf, align 8, !tbaa !20
  %23 = lshr i16 %22, 8
  %24 = trunc nuw i16 %23 to i8
  %i.qo = load ptr, ptr %i.qi, align 8, !tbaa !26
  %i.qp = load i64, ptr %i.qk, align 8, !tbaa !27 ; 2 uses
  %i.qq = add i64 %i.qp, 1
  store i64 %i.qq, ptr %i.qk, align 8, !tbaa !27
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qp
  store i8 %24, ptr %i.qr, align 1, !tbaa !23
  br label %bi_windup.exit

bb.cv:                                            ; preds = %bb.ct
  %i.qs = icmp sgt i32 %i.qd, 0
  br i1 %i.qs, label %bb.cw, label %bi_windup.exit

bb.cw:                                            ; preds = %bb.cv
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.qu = load i16, ptr %i.qt, align 8, !tbaa !20
  %i.qv = trunc i16 %i.qu to i8
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !26
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !27 ; 2 uses
  %i.ra = add i64 %i.qz, 1
  store i64 %i.ra, ptr %i.qy, align 8, !tbaa !27
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qz
  store i8 %i.qv, ptr %i.rb, align 1, !tbaa !23
  br label %bi_windup.exit

bi_windup.exit:                                   ; preds = %bb.cu, %bb.cv, %bb.cw
  %i.rc = load i32, ptr %i.qc, align 4, !tbaa !21
  %i.rd = add i32 %i.rc, 7
  %i.re = and i32 %i.rd, 7
  %i.rf = add nuw nsw i32 %i.re, 1
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %i.rf, ptr %i.rg, align 8, !tbaa !22
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %i.rh, align 8, !tbaa !20
  store i32 0, ptr %i.qc, align 4, !tbaa !21
  br label %bb.cx

bb.cx:                                            ; preds = %bi_windup.exit, %init_block.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @build_tree(ptr nofree noundef initializes((5300, 5308)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i16], align 16              ; 18 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !62     ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !67   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5300 ; 14 uses
  store i32 0, ptr %i.h, align 4, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 9 uses
  store i32 573, ptr %i.i, align 8, !tbaa !69
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph, label %.lr.ph141

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

.preheader131:                                    ; preds = %bb.e
  %.pre = load i32, ptr %i.h, align 4, !tbaa !68  ; 3 uses
  %i.m = icmp slt i32 %.pre, 2
  br i1 %i.m, label %.lr.ph141, label %.lr.ph146

.lr.ph141:                                        ; preds = %bb.a, %.preheader131
  %.086.lcssa194 = phi i32 [ %.1, %.preheader131 ], [ -1, %bb.a ]
  %i.n = phi i32 [ %.pre, %.preheader131 ], [ 0, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 2 uses
  %.not92 = icmp eq ptr %i.e, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.086139 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.e ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !23
  %.not93 = icmp eq i16 %i.t, 0
  br i1 %.not93, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.h, align 4, !tbaa !68
  %i.v = add nsw i32 %i.u, 1                      ; 2 uses
  store i32 %i.v, ptr %i.h, align 4, !tbaa !68
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.w
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.y, ptr %i.x, align 4, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  store i8 0, ptr %i.z, align 1, !tbaa !23
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.aa, align 2, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.y, %bb.c ], [ %.086139, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader131, label %bb.b, !llvm.loop !49

bb.f:                                             ; preds = %.lr.ph141, %bb.h
  %i.ab = phi i32 [ %i.n, %.lr.ph141 ], [ %i.as, %bb.h ]
  %.2140 = phi i32 [ %.086.lcssa194, %.lr.ph141 ], [ %spec.select, %bb.h ] ; 3 uses
  %i.ac = icmp slt i32 %.2140, 2                  ; 2 uses
  %i.ad = add nsw i32 %.2140, 1                   ; 2 uses
  %spec.select = select i1 %i.ac, i32 %i.ad, i32 %.2140 ; 2 uses
  %spec.select94 = select i1 %i.ac, i32 %i.ad, i32 0 ; 2 uses
  %i.ae = add nsw i32 %i.ab, 1                    ; 2 uses
  store i32 %i.ae, ptr %i.h, align 4, !tbaa !68
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.af
  store i32 %spec.select94, ptr %i.ag, align 4, !tbaa !30
  %i.ah = sext i32 %spec.select94 to i64          ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ah
  store i16 1, ptr %i.ai, align 2, !tbaa !23
  %i.aj = getelementptr inbounds i8, ptr %i.p, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !23
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !28
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %i.q, align 8, !tbaa !28
  br i1 %.not92, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !23
  %i.ap = zext i16 %i.ao to i64
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !29
  %i.ar = sub i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.r, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = load i32, ptr %i.h, align 4, !tbaa !68  ; 3 uses
  %i.at = icmp slt i32 %i.as, 2
  br i1 %i.at, label %bb.f, label %.lr.ph146, !llvm.loop !50

.lr.ph146:                                        ; preds = %bb.h, %.preheader131
  %.2.lcssa = phi i32 [ %.1, %.preheader131 ], [ %spec.select, %bb.h ] ; 3 uses
  %.lcssa137 = phi i32 [ %.pre, %.preheader131 ], [ %i.as, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %.2.lcssa, ptr %i.au, align 8, !tbaa !70
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3008 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5308 ; 4 uses
  %i.ax = lshr i32 %.lcssa137, 1
  %i.ay = zext nneg i32 %i.ax to i64
  br label %bb.i

.preheader:                                       ; preds = %pqdownheap.exit
  %.pre157.pre = load i32, ptr %i.h, align 4, !tbaa !68
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3008 ; 17 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3012 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5308 ; 10 uses
  %i.bc = sext i32 %i.g to i64
  br label %bb.s

bb.i:                                             ; preds = %.lr.ph146, %pqdownheap.exit
  %indvars.iv151 = phi i64 [ %i.ay, %.lr.ph146 ], [ %indvars.iv.next152, %pqdownheap.exit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv151
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !30 ; 2 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.aw, i64 %i.bf
  %i.bh = load i32, ptr %i.h, align 4, !tbaa !68  ; 2 uses
  %indvars.iv151.tr = trunc nuw i64 %indvars.iv151 to i32
  %i.bi = shl nuw i32 %indvars.iv151.tr, 1        ; 2 uses
  %.not58.i = icmp sgt i32 %i.bi, %i.bh
  br i1 %.not58.i, label %pqdownheap.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.bj = trunc nuw nsw i64 %indvars.iv151 to i32
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
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !30
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !23 ; 2 uses
  %i.bu = sext i32 %.060.i to i64                 ; 3 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !30
end_hunk_1
begin_hunk_2_@build_tree:bb.a
  %.not.i124 = icmp eq i64 %indvars.iv.next139.i, 0
  br i1 %.not.i124, label %gen_bitlen.exit, label %.lr.ph125.i, !llvm.loop !58

gen_bitlen.exit:                                  ; preds = %.outer._crit_edge.i, %bb.ak, %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.lh = load i16, ptr %i.hv, align 8, !tbaa !74
  %i.li = shl i16 %i.lh, 1                        ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !74
  %i.lk = getelementptr i8, ptr %0, i64 2978
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !74
  %i.lm = add i16 %i.ll, %i.li
  %i.ln = shl i16 %i.lm, 1                        ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.ln, ptr %i.lo, align 4, !tbaa !74
  %i.lp = getelementptr i8, ptr %0, i64 2980
  %i.lq = load i16, ptr %i.lp, align 4, !tbaa !74
  %i.lr = add i16 %i.lq, %i.ln
  %i.ls = shl i16 %i.lr, 1                        ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.ls, ptr %i.lt, align 2, !tbaa !74
  %i.lu = getelementptr i8, ptr %0, i64 2982
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !74
  %i.lw = add i16 %i.lv, %i.ls
  %i.lx = shl i16 %i.lw, 1                        ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.lx, ptr %i.ly, align 8, !tbaa !74
  %i.lz = getelementptr i8, ptr %0, i64 2984
  %i.ma = load i16, ptr %i.lz, align 8, !tbaa !74
  %i.mb = add i16 %i.ma, %i.lx
  %i.mc = shl i16 %i.mb, 1                        ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mc, ptr %i.md, align 2, !tbaa !74
  %i.me = getelementptr i8, ptr %0, i64 2986
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !74
  %i.mg = add i16 %i.mf, %i.mc
  %i.mh = shl i16 %i.mg, 1                        ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.mh, ptr %i.mi, align 4, !tbaa !74
  %i.mj = getelementptr i8, ptr %0, i64 2988
  %i.mk = load i16, ptr %i.mj, align 4, !tbaa !74
  %i.ml = add i16 %i.mk, %i.mh
  %i.mm = shl i16 %i.ml, 1                        ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mm, ptr %i.mn, align 2, !tbaa !74
  %i.mo = getelementptr i8, ptr %0, i64 2990
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !74
  %i.mq = add i16 %i.mp, %i.mm
  %i.mr = shl i16 %i.mq, 1                        ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.mr, ptr %i.ms, align 16, !tbaa !74
  %i.mt = getelementptr i8, ptr %0, i64 2992
  %i.mu = load i16, ptr %i.mt, align 8, !tbaa !74
  %i.mv = add i16 %i.mu, %i.mr
  %i.mw = shl i16 %i.mv, 1                        ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !74
  %i.my = getelementptr i8, ptr %0, i64 2994
  %i.mz = load i16, ptr %i.my, align 2, !tbaa !74
  %i.na = add i16 %i.mz, %i.mw
  %i.nb = shl i16 %i.na, 1                        ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.nb, ptr %i.nc, align 4, !tbaa !74
  %i.nd = getelementptr i8, ptr %0, i64 2996
  %i.ne = load i16, ptr %i.nd, align 4, !tbaa !74
  %i.nf = add i16 %i.ne, %i.nb
  %i.ng = shl i16 %i.nf, 1                        ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %i.ng, ptr %i.nh, align 2, !tbaa !74
  %i.ni = getelementptr i8, ptr %0, i64 2998
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !74
  %i.nk = add i16 %i.nj, %i.ng
  %i.nl = shl i16 %i.nk, 1                        ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.nl, ptr %i.nm, align 8, !tbaa !74
  %i.nn = getelementptr i8, ptr %0, i64 3000
  %i.no = load i16, ptr %i.nn, align 8, !tbaa !74
  %i.np = add i16 %i.no, %i.nl
  %i.nq = shl i16 %i.np, 1                        ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 %i.nq, ptr %i.nr, align 2, !tbaa !74
  %i.ns = getelementptr i8, ptr %0, i64 3002
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !74
  %i.nu = add i16 %i.nt, %i.nq
  %i.nv = shl i16 %i.nu, 1                        ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 %i.nv, ptr %i.nw, align 4, !tbaa !74
  %i.nx = getelementptr i8, ptr %0, i64 3004
  %i.ny = load i16, ptr %i.nx, align 4, !tbaa !74
  %i.nz = add i16 %i.ny, %i.nv
  %i.oa = shl i16 %i.nz, 1
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %i.oa, ptr %i.ob, align 2, !tbaa !74
  %.not21.i = icmp slt i32 %.2.lcssa, 0
  br i1 %.not21.i, label %gen_codes.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %gen_bitlen.exit
  %i.oc = add nuw i32 %.2.lcssa, 1
  %wide.trip.count.i = zext i32 %i.oc to i64
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %bb.ba, %.lr.ph.preheader.i
  %indvars.iv.i127 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i128, %bb.ba ] ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i127 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 2
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !23 ; 4 uses
  %i.og = icmp eq i16 %i.of, 0
  br i1 %i.og, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i126
  %i.oh = zext i16 %i.of to i32                   ; 2 uses
  %i.oi = zext i16 %i.of to i64
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oi ; 2 uses
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !74 ; 3 uses
  %i.ol = add i16 %i.ok, 1
  store i16 %i.ol, ptr %i.oj, align 2, !tbaa !74
  %xtraiter = and i32 %i.oh, 3                    ; 3 uses
  %i.om = icmp ult i16 %i.of, 4
  br i1 %i.om, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ax
  %unroll_iter = and i32 %i.oh, 65532
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.new
  %.07.i.i = phi i16 [ %i.ok, %.new ], [ %i.oz, %bb.ay ] ; 5 uses
  %.0.i.i = phi i16 [ 0, %.new ], [ %i.pa, %bb.ay ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.ay ]
  %i.on = and i16 %.07.i.i, 1
  %i.oo = or disjoint i16 %.0.i.i, %i.on
  %i.op = shl i16 %i.oo, 2
  %i.oq = and i16 %.07.i.i, 2
  %i.or = or disjoint i16 %i.op, %i.oq
  %i.os = lshr i16 %.07.i.i, 2
  %i.ot = and i16 %i.os, 1
  %i.ou = or disjoint i16 %i.or, %i.ot
  %i.ov = lshr i16 %.07.i.i, 3
  %i.ow = shl i16 %i.ou, 1
  %i.ox = and i16 %i.ov, 1
  %i.oy = or disjoint i16 %i.ow, %i.ox            ; 2 uses
  %i.oz = lshr i16 %.07.i.i, 4                    ; 2 uses
  %i.pa = shl i16 %i.oy, 1                        ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %bi_reverse.exit.i.unr-lcssa, label %bb.ay, !llvm.loop !59

bi_reverse.exit.i.unr-lcssa:                      ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bi_reverse.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %bi_reverse.exit.i.unr-lcssa, %bb.ax
  %.07.i.i.epil.init = phi i16 [ %i.ok, %bb.ax ], [ %i.oz, %bi_reverse.exit.i.unr-lcssa ]
  %.0.i.i.epil.init = phi i16 [ 0, %bb.ax ], [ %i.pa, %bi_reverse.exit.i.unr-lcssa ]
  %lcmp.mod206 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod206)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader
  %.07.i.i.epil = phi i16 [ %.07.i.i.epil.init, %.epil.preheader ], [ %i.pd, %bb.az ] ; 2 uses
  %.0.i.i.epil = phi i16 [ %.0.i.i.epil.init, %.epil.preheader ], [ %i.pe, %bb.az ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.az ]
  %i.pb = and i16 %.07.i.i.epil, 1
  %i.pc = or disjoint i16 %.0.i.i.epil, %i.pb     ; 2 uses
  %i.pd = lshr i16 %.07.i.i.epil, 1
  %i.pe = shl i16 %i.pc, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bi_reverse.exit.i, label %bb.az, !llvm.loop !60

bi_reverse.exit.i:                                ; preds = %bb.az, %bi_reverse.exit.i.unr-lcssa
  %.lcssa = phi i16 [ %i.oy, %bi_reverse.exit.i.unr-lcssa ], [ %i.pc, %bb.az ]
  store i16 %.lcssa, ptr %i.od, align 2, !tbaa !23
  br label %bb.ba

bb.ba:                                            ; preds = %bi_reverse.exit.i, %.lr.ph.i126
  %indvars.iv.next.i128 = add nuw nsw i64 %indvars.iv.i127, 1 ; 2 uses
  %exitcond.not.i129 = icmp eq i64 %indvars.iv.next.i128, %wide.trip.count.i
  br i1 %exitcond.not.i129, label %gen_codes.exit, label %.lr.ph.i126, !llvm.loop !61

gen_codes.exit:                                   ; preds = %bb.ba, %gen_bitlen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @compress_block(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %..loopexit_crit_edge, label %.preheader

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !21
  br label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.u
  %.0 = phi i32 [ %i.u, %bb.u ], [ 0, %.preheader ] ; 4 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.i = add nuw i32 %.0, 1
  %i.j = zext i32 %.0 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !23
  %i.m = zext i8 %i.l to i32
  %i.n = add i32 %.0, 2
  %i.o = zext i32 %i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !23
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = or disjoint i32 %i.s, %i.m               ; 3 uses
  %i.u = add i32 %.0, 3                           ; 2 uses
  %i.v = zext i32 %i.n to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !23    ; 2 uses
  %i.y = zext i8 %i.x to i32
  %i.z = icmp eq i32 %i.t, 0
  %i.aa = zext i8 %i.x to i64                     ; 2 uses
  br i1 %i.z, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !23
  %i.ae = zext i16 %i.ad to i32                   ; 3 uses
  %i.af = load i32, ptr %i.d, align 4, !tbaa !21  ; 3 uses
  %i.ag = sub nsw i32 16, %i.ae
  %i.ah = icmp sgt i32 %i.af, %i.ag
  %i.ai = load i16, ptr %i.ab, align 2, !tbaa !23
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = shl i32 %i.aj, %i.af
  %i.al = load i16, ptr %i.e, align 8, !tbaa !20
  %i.am = trunc i32 %i.ak to i16
  %i.an = or i16 %i.al, %i.am                     ; 2 uses
  store i16 %i.an, ptr %i.e, align 8, !tbaa !20
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i16 %i.an to i8
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.g, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  store i8 %i.ao, ptr %i.as, align 1, !tbaa !23
  %3 = load i16, ptr %i.e, align 8, !tbaa !20
  %4 = lshr i16 %3, 8
  %5 = trunc nuw i16 %4 to i8
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.au = load i64, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.g, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  store i8 %5, ptr %i.aw, align 1, !tbaa !23
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !21  ; 2 uses
  %i.ay = sub nsw i32 16, %i.ax
  %i.az = lshr i32 %i.aj, %i.ay
  %i.ba = trunc nuw i32 %i.az to i16
  store i16 %i.ba, ptr %i.e, align 8, !tbaa !20
  %i.bb = add nsw i32 %i.ae, -16
  %i.bc = add nsw i32 %i.bb, %i.ax
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.bd = add nsw i32 %i.af, %i.ae
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr @_length_code, i64 %i.aa
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !23  ; 2 uses
  %i.bg = zext i8 %i.bf to i64                    ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1028
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1030
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !23
  %i.bl = zext i16 %i.bk to i32                   ; 3 uses
  %i.bm = load i32, ptr %i.d, align 4, !tbaa !21  ; 3 uses
  %i.bn = sub nsw i32 16, %i.bl
  %i.bo = icmp sgt i32 %i.bm, %i.bn
  %i.bp = load i16, ptr %i.bi, align 2, !tbaa !23
  %i.bq = zext i16 %i.bp to i32                   ; 2 uses
  %i.br = shl i32 %i.bq, %i.bm
  %i.bs = load i16, ptr %i.e, align 8, !tbaa !20
  %i.bt = trunc i32 %i.br to i16
  %i.bu = or i16 %i.bs, %i.bt                     ; 3 uses
  store i16 %i.bu, ptr %i.e, align 8, !tbaa !20
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc i16 %i.bu to i8
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.bx = load i64, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.g, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  store i8 %i.bv, ptr %i.bz, align 1, !tbaa !23
  %6 = load i16, ptr %i.e, align 8, !tbaa !20
  %7 = lshr i16 %6, 8
  %8 = trunc nuw i16 %7 to i8
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.cb = load i64, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.g, align 8, !tbaa !27
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb
  store i8 %8, ptr %i.cd, align 1, !tbaa !23
  %i.ce = load i32, ptr %i.d, align 4, !tbaa !21  ; 2 uses
  %i.cf = sub nsw i32 16, %i.ce
  %i.cg = lshr i32 %i.bq, %i.cf
  %i.ch = trunc nuw i32 %i.cg to i16              ; 2 uses
  store i16 %i.ch, ptr %i.e, align 8, !tbaa !20
  %i.ci = add nsw i32 %i.bl, -16
  %i.cj = add nsw i32 %i.ci, %i.ce
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ck = add nsw i32 %i.bm, %i.bl
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cl = phi i16 [ %i.bu, %bb.h ], [ %i.ch, %bb.g ] ; 3 uses
  %storemerge = phi i32 [ %i.ck, %bb.h ], [ %i.cj, %bb.g ] ; 6 uses
  store i32 %storemerge, ptr %i.d, align 4, !tbaa !21
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %i.bg
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !30 ; 3 uses
  %i.co = add i8 %i.bf, -28
  %.not187 = icmp ult i8 %i.co, -20
  br i1 %.not187, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %i.bg
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !30
  %i.cr = sub nsw i32 %i.y, %i.cq                 ; 3 uses
  %i.cs = sub nsw i32 16, %i.cn
  %i.ct = icmp sgt i32 %storemerge, %i.cs
  br i1 %i.ct, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cu = and i32 %i.cr, 65535
  %i.cv = shl i32 %i.cr, %storemerge
  %i.cw = trunc i32 %i.cv to i16
  %i.cx = or i16 %i.cl, %i.cw                     ; 2 uses
  store i16 %i.cx, ptr %i.e, align 8, !tbaa !20
  %i.cy = trunc i16 %i.cx to i8
  %i.cz = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.da = load i64, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.g, align 8, !tbaa !27
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.da
  store i8 %i.cy, ptr %i.dc, align 1, !tbaa !23
  %9 = load i16, ptr %i.e, align 8, !tbaa !20
  %10 = lshr i16 %9, 8
  %11 = trunc nuw i16 %10 to i8
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.de = load i64, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.g, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  store i8 %11, ptr %i.dg, align 1, !tbaa !23
  %i.dh = load i32, ptr %i.d, align 4, !tbaa !21  ; 2 uses
  %i.di = sub nsw i32 16, %i.dh
  %i.dj = lshr i32 %i.cu, %i.di
  %i.dk = trunc nuw i32 %i.dj to i16              ; 2 uses
  store i16 %i.dk, ptr %i.e, align 8, !tbaa !20
  %i.dl = add nsw i32 %i.cn, -16
  %i.dm = add nsw i32 %i.dl, %i.dh
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.dn = shl i32 %i.cr, %storemerge
  %i.do = trunc i32 %i.dn to i16
  %i.dp = or i16 %i.cl, %i.do                     ; 2 uses
  store i16 %i.dp, ptr %i.e, align 8, !tbaa !20
  %i.dq = add nsw i32 %i.cn, %storemerge
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dr = phi i16 [ %i.dp, %bb.l ], [ %i.dk, %bb.k ]
  %storemerge188 = phi i32 [ %i.dq, %bb.l ], [ %i.dm, %bb.k ] ; 2 uses
  store i32 %storemerge188, ptr %i.d, align 4, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.ds = phi i16 [ %i.dr, %bb.m ], [ %i.cl, %bb.i ]
  %i.dt = phi i32 [ %storemerge188, %bb.m ], [ %storemerge, %bb.i ] ; 3 uses
  %i.du = add nsw i32 %i.t, -1                    ; 3 uses
  %i.dv = icmp samesign ult i32 %i.t, 257
  %i.dw = zext nneg i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.dw
  %i.dy = lshr i32 %i.du, 7
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 256
  %.in.in = select i1 %i.dv, ptr %i.dx, ptr %i.eb
  %.in = load i8, ptr %.in.in, align 1, !tbaa !23 ; 2 uses
  %i.ec = zext i8 %.in to i64                     ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !23
  %i.eg = zext i16 %i.ef to i32                   ; 3 uses
  %i.eh = sub nsw i32 16, %i.eg
  %i.ei = icmp sgt i32 %i.dt, %i.eh
  %i.ej = load i16, ptr %i.ed, align 2, !tbaa !23
  %i.ek = zext i16 %i.ej to i32                   ; 2 uses
  %i.el = shl i32 %i.ek, %i.dt
  %i.em = trunc i32 %i.el to i16
  %i.en = or i16 %i.ds, %i.em                     ; 3 uses
  store i16 %i.en, ptr %i.e, align 8, !tbaa !20
  br i1 %i.ei, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eo = trunc i16 %i.en to i8
  %i.ep = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.eq = load i64, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %i.er = add i64 %i.eq, 1
  store i64 %i.er, ptr %i.g, align 8, !tbaa !27
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eq
  store i8 %i.eo, ptr %i.es, align 1, !tbaa !23
  %12 = load i16, ptr %i.e, align 8, !tbaa !20
  %13 = lshr i16 %12, 8
  %14 = trunc nuw i16 %13 to i8
  %i.et = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.eu = load i64, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %i.ev = add i64 %i.eu, 1
  store i64 %i.ev, ptr %i.g, align 8, !tbaa !27
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eu
  store i8 %14, ptr %i.ew, align 1, !tbaa !23
  %i.ex = load i32, ptr %i.d, align 4, !tbaa !21  ; 2 uses
  %i.ey = sub nsw i32 16, %i.ex
  %i.ez = lshr i32 %i.ek, %i.ey
  %i.fa = trunc nuw i32 %i.ez to i16              ; 2 uses
  store i16 %i.fa, ptr %i.e, align 8, !tbaa !20
  %i.fb = add nsw i32 %i.eg, -16
  %i.fc = add nsw i32 %i.fb, %i.ex
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.fd = add nsw i32 %i.dt, %i.eg
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fe = phi i16 [ %i.en, %bb.p ], [ %i.fa, %bb.o ] ; 2 uses
  %storemerge189 = phi i32 [ %i.fd, %bb.p ], [ %i.fc, %bb.o ] ; 6 uses
  store i32 %storemerge189, ptr %i.d, align 4, !tbaa !21
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %i.ec
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !30 ; 3 uses
  %.not190 = icmp ult i8 %.in, 4
  br i1 %.not190, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %i.ec
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !30
  %i.fj = sub i32 %i.du, %i.fi                    ; 3 uses
  %i.fk = sub nsw i32 16, %i.fg
  %i.fl = icmp sgt i32 %storemerge189, %i.fk
  br i1 %i.fl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fm = and i32 %i.fj, 65535
  %i.fn = shl i32 %i.fj, %storemerge189
  %i.fo = trunc i32 %i.fn to i16
  %i.fp = or i16 %i.fe, %i.fo                     ; 2 uses
  store i16 %i.fp, ptr %i.e, align 8, !tbaa !20
  %i.fq = trunc i16 %i.fp to i8
  %i.fr = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.fs = load i64, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %i.ft = add i64 %i.fs, 1
  store i64 %i.ft, ptr %i.g, align 8, !tbaa !27
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fs
  store i8 %i.fq, ptr %i.fu, align 1, !tbaa !23
  %15 = load i16, ptr %i.e, align 8, !tbaa !20
  %16 = lshr i16 %15, 8
  %17 = trunc nuw i16 %16 to i8
  %i.fv = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.fw = load i64, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %i.fx = add i64 %i.fw, 1
  store i64 %i.fx, ptr %i.g, align 8, !tbaa !27
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  store i8 %17, ptr %i.fy, align 1, !tbaa !23
  %i.fz = load i32, ptr %i.d, align 4, !tbaa !21  ; 2 uses
  %i.ga = sub nsw i32 16, %i.fz
  %i.gb = lshr i32 %i.fm, %i.ga
  %i.gc = trunc nuw i32 %i.gb to i16
  store i16 %i.gc, ptr %i.e, align 8, !tbaa !20
  %i.gd = add nsw i32 %i.fg, -16
  %i.ge = add nsw i32 %i.gd, %i.fz
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.gf = shl i32 %i.fj, %storemerge189
  %i.gg = trunc i32 %i.gf to i16
  %i.gh = or i16 %i.fe, %i.gg
  store i16 %i.gh, ptr %i.e, align 8, !tbaa !20
  %i.gi = add nsw i32 %i.fg, %storemerge189
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.t, %bb.d, %bb.e
  %storemerge192.sink = phi i32 [ %i.bc, %bb.d ], [ %i.bd, %bb.e ], [ %i.gi, %bb.t ], [ %i.ge, %bb.s ] ; 2 uses
  store i32 %storemerge192.sink, ptr %i.d, align 4, !tbaa !21
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.q
  %i.gj = phi i32 [ %storemerge189, %bb.q ], [ %storemerge192.sink, %.sink.split ]
  %i.gk = load i32, ptr %i.a, align 4, !tbaa !25
  %i.gl = icmp ult i32 %i.u, %i.gk
  br i1 %i.gl, label %bb.b, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %bb.u, %..loopexit_crit_edge
  %i.gm = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.gj, %bb.u ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 1026
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !23
  %i.gq = zext i16 %i.gp to i32                   ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 2 uses
  %i.gs = sub nsw i32 16, %i.gq
  %i.gt = icmp sgt i32 %i.gm, %i.gs
  %i.gu = load i16, ptr %i.gn, align 2, !tbaa !23
  %i.gv = zext i16 %i.gu to i32                   ; 2 uses
  %i.gw = shl i32 %i.gv, %i.gm
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 4 uses
  %i.gy = load i16, ptr %i.gx, align 8, !tbaa !20
  %i.gz = trunc i32 %i.gw to i16
  %i.ha = or i16 %i.gy, %i.gz                     ; 2 uses
  store i16 %i.ha, ptr %i.gx, align 8, !tbaa !20
  br i1 %i.gt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.hb = trunc i16 %i.ha to i8
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !26
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !27 ; 2 uses
  %i.hg = add i64 %i.hf, 1
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !27
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hf
  store i8 %i.hb, ptr %i.hh, align 1, !tbaa !23
  %18 = load i16, ptr %i.gx, align 8, !tbaa !20
  %19 = lshr i16 %18, 8
  %20 = trunc nuw i16 %19 to i8
  %i.hi = load ptr, ptr %i.hc, align 8, !tbaa !26
  %i.hj = load i64, ptr %i.he, align 8, !tbaa !27 ; 2 uses
  %i.hk = add i64 %i.hj, 1
  store i64 %i.hk, ptr %i.he, align 8, !tbaa !27
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hj
  store i8 %20, ptr %i.hl, align 1, !tbaa !23
  %i.hm = load i32, ptr %i.gr, align 4, !tbaa !21 ; 2 uses
  %i.hn = sub nsw i32 16, %i.hm
  %i.ho = lshr i32 %i.gv, %i.hn
  %i.hp = trunc nuw i32 %i.ho to i16
  store i16 %i.hp, ptr %i.gx, align 8, !tbaa !20
  %i.hq = add nsw i32 %i.gq, -16
  %i.hr = add nsw i32 %i.hq, %i.hm
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.hs = add nsw i32 %i.gm, %i.gq
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge193 = phi i32 [ %i.hs, %bb.w ], [ %i.hr, %bb.v ]
  store i32 %storemerge193, ptr %i.gr, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_tr_tally(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5888 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 7 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !25
  %i.g = zext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  store i8 %i.a, ptr %i.h, align 1, !tbaa !23
  %i.i = lshr i32 %1, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.l = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.d, align 4, !tbaa !25
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  store i8 %i.j, ptr %i.o, align 1, !tbaa !23
  %i.p = trunc i32 %2 to i8
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.r = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.d, align 4, !tbaa !25
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  store i8 %i.p, ptr %i.u, align 1, !tbaa !23
  %i.v = icmp eq i32 %1, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.x = zext i32 %2 to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load i16, ptr %i.y, align 4, !tbaa !23
  %i.aa = add i16 %i.z, 1
  store i16 %i.aa, ptr %i.y, align 4, !tbaa !23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5928 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !77
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !77
  %i.ae = add i32 %1, -1                          ; 2 uses
  %i.af = zext i32 %2 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_length_code, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !23
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr i8, ptr %0, i64 1240
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !23
  %i.am = add i16 %i.al, 1
  store i16 %i.am, ptr %i.ak, align 4, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.ao = icmp ult i32 %1, 257
  %i.ap = zext nneg i32 %i.ae to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.ap
  %i.ar = lshr i32 %i.ae, 7
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 256
  %.in.in = select i1 %i.ao, ptr %i.aq, ptr %i.au
  %.in = load i8, ptr %.in.in, align 1, !tbaa !23
  %i.av = zext i8 %.in to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.av ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !23
  %i.ay = add i16 %i.ax, 1
  store i16 %i.ay, ptr %i.aw, align 4, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.az = load i32, ptr %i.d, align 4, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !78
  %i.bc = icmp eq i32 %i.az, %i.bb
  %i.bd = zext i1 %i.bc to i32
  ret i32 %i.bd
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @send_tree(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -2147483648, 2147483647) %2) unnamed_addr #5 {
bb.a:
  %.not253 = icmp slt i32 %2, 0
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !23   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0                      ; 2 uses
  %spec.select251 = select i1 %i.c, i32 138, i32 7
  %spec.select = select i1 %i.c, i32 3, i32 4
  %i.d = zext i16 %i.b to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2748 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 28 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 32 uses
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
  %i.s = load i16, ptr %i.r, align 2, !tbaa !23   ; 2 uses
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
  %.pre261 = load i32, ptr %i.f, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.g
  %i.ab = phi i32 [ %storemerge249, %bb.g ], [ %.pre261, %.preheader ] ; 3 uses
  %.1213 = phi i32 [ %i.bc, %bb.g ], [ %i.u, %.preheader ]
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !23
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = sub nsw i32 16, %i.ad
  %i.af = icmp sgt i32 %i.ab, %i.ae
  %i.ag = load i16, ptr %i.z, align 4, !tbaa !23
  %i.ah = zext i16 %i.ag to i32                   ; 2 uses
  %i.ai = shl i32 %i.ah, %i.ab
  %i.aj = load i16, ptr %i.g, align 8, !tbaa !20
  %i.ak = trunc i32 %i.ai to i16
  %i.al = or i16 %i.aj, %i.ak                     ; 2 uses
  store i16 %i.al, ptr %i.g, align 8, !tbaa !20
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = trunc i16 %i.al to i8
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.ao = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.i, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store i8 %i.am, ptr %i.aq, align 1, !tbaa !23
  %3 = load i16, ptr %i.g, align 8, !tbaa !20
  %4 = lshr i16 %3, 8
  %5 = trunc nuw i16 %4 to i8
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.as = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.i, align 8, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  store i8 %5, ptr %i.au, align 1, !tbaa !23
  %i.av = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.aw = sub nsw i32 16, %i.av
  %i.ax = lshr i32 %i.ah, %i.aw
  %i.ay = trunc nuw i32 %i.ax to i16
  store i16 %i.ay, ptr %i.g, align 8, !tbaa !20
  %i.az = add nsw i32 %i.ad, -16
  %i.ba = add nsw i32 %i.az, %i.av
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bb = add nsw i32 %i.ab, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge249 = phi i32 [ %i.bb, %bb.f ], [ %i.ba, %bb.e ] ; 2 uses
  store i32 %storemerge249, ptr %i.f, align 4, !tbaa !21
  %i.bc = add nsw i32 %.1213, -1                  ; 2 uses
  %.not250 = icmp eq i32 %i.bc, 0
  br i1 %.not250, label %.loopexit, label %bb.d, !llvm.loop !79

bb.h:                                             ; preds = %bb.c
  %.not241 = icmp eq i32 %.0211257, 0
  %i.bd = load i32, ptr %i.f, align 4, !tbaa !21  ; 10 uses
  br i1 %.not241, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not245 = icmp eq i32 %.0211257, %.0210258
  br i1 %.not245, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = zext nneg i32 %.0211257 to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !23
  %i.bi = zext i16 %i.bh to i32                   ; 3 uses
  %i.bj = sub nsw i32 16, %i.bi
  %i.bk = icmp sgt i32 %i.bd, %i.bj
  %i.bl = load i16, ptr %i.bf, align 4, !tbaa !23
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = shl i32 %i.bm, %i.bd
  %i.bo = load i16, ptr %i.g, align 8, !tbaa !20
  %i.bp = trunc i32 %i.bn to i16
  %i.bq = or i16 %i.bo, %i.bp                     ; 2 uses
  store i16 %i.bq, ptr %i.g, align 8, !tbaa !20
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = trunc i16 %i.bq to i8
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.i, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 %i.br, ptr %i.bv, align 1, !tbaa !23
  %6 = load i16, ptr %i.g, align 8, !tbaa !20
  %7 = lshr i16 %6, 8
  %8 = trunc nuw i16 %7 to i8
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.bx = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.i, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  store i8 %8, ptr %i.bz, align 1, !tbaa !23
  %i.ca = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.cb = sub nsw i32 16, %i.ca
  %i.cc = lshr i32 %i.bm, %i.cb
  %i.cd = trunc nuw i32 %i.cc to i16
  store i16 %i.cd, ptr %i.g, align 8, !tbaa !20
  %i.ce = add nsw i32 %i.bi, -16
  %i.cf = add nsw i32 %i.ce, %i.ca
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cg = add nsw i32 %i.bd, %i.bi
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge246 = phi i32 [ %i.cg, %bb.l ], [ %i.cf, %bb.k ] ; 2 uses
  store i32 %storemerge246, ptr %i.f, align 4, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.ch = phi i32 [ %storemerge246, %bb.m ], [ %i.bd, %bb.i ] ; 3 uses
  %.2 = phi i32 [ %.0212256, %bb.m ], [ %i.u, %bb.i ]
  %i.ci = load i16, ptr %i.k, align 2, !tbaa !23
  %i.cj = zext i16 %i.ci to i32                   ; 3 uses
  %i.ck = sub nsw i32 16, %i.cj
  %i.cl = icmp sgt i32 %i.ch, %i.ck
  %i.cm = load i16, ptr %i.j, align 4, !tbaa !23
  %i.cn = zext i16 %i.cm to i32                   ; 2 uses
  %i.co = shl i32 %i.cn, %i.ch
  %i.cp = load i16, ptr %i.g, align 8, !tbaa !20
  %i.cq = trunc i32 %i.co to i16
  %i.cr = or i16 %i.cp, %i.cq                     ; 3 uses
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i16 %i.cr, ptr %i.g, align 8, !tbaa !20
  %i.cs = trunc i16 %i.cr to i8
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.cu = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.i, align 8, !tbaa !27
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu
  store i8 %i.cs, ptr %i.cw, align 1, !tbaa !23
  %9 = load i16, ptr %i.g, align 8, !tbaa !20
  %10 = lshr i16 %9, 8
  %11 = trunc nuw i16 %10 to i8
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.cy = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.i, align 8, !tbaa !27
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy
  store i8 %11, ptr %i.da, align 1, !tbaa !23
  %i.db = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
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
  store i32 %storemerge247, ptr %i.f, align 4, !tbaa !21
  %i.dj = icmp sgt i32 %storemerge247, 14
  %i.dk = add i32 %.2, 65533                      ; 3 uses
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dl = and i32 %i.dk, 65535
  %i.dm = shl i32 %i.dk, %storemerge247
  %i.dn = trunc i32 %i.dm to i16
  %i.do = or i16 %i.di, %i.dn                     ; 2 uses
  store i16 %i.do, ptr %i.g, align 8, !tbaa !20
  %i.dp = trunc i16 %i.do to i8
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.dr = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.i, align 8, !tbaa !27
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  store i8 %i.dp, ptr %i.dt, align 1, !tbaa !23
  %12 = load i16, ptr %i.g, align 8, !tbaa !20
  %13 = lshr i16 %12, 8
  %14 = trunc nuw i16 %13 to i8
  %i.du = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.dv = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %i.i, align 8, !tbaa !27
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dv
  store i8 %14, ptr %i.dx, align 1, !tbaa !23
  %i.dy = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.dz = sub nsw i32 16, %i.dy
  %i.ea = lshr i32 %i.dl, %i.dz
  %i.eb = trunc nuw i32 %i.ea to i16
  store i16 %i.eb, ptr %i.g, align 8, !tbaa !20
  %i.ec = add nsw i32 %i.dy, -14
  br label %.loopexit.sink.split

bb.s:                                             ; preds = %bb.q
  %i.ed = shl i32 %i.dk, %storemerge247
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = or i16 %i.di, %i.ee
  store i16 %i.ef, ptr %i.g, align 8, !tbaa !20
  %i.eg = add nsw i32 %storemerge247, 2
  br label %.loopexit.sink.split

bb.t:                                             ; preds = %bb.h
  %i.eh = icmp slt i32 %.0212256, 10
  %i.ei = load i16, ptr %i.g, align 8, !tbaa !20  ; 2 uses
  br i1 %i.eh, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.ej = load i16, ptr %i.o, align 2, !tbaa !23
  %i.ek = zext i16 %i.ej to i32                   ; 3 uses
  %i.el = sub nsw i32 16, %i.ek
  %i.em = icmp sgt i32 %i.bd, %i.el
  %i.en = load i16, ptr %i.n, align 8, !tbaa !23
  %i.eo = zext i16 %i.en to i32                   ; 2 uses
  %i.ep = shl i32 %i.eo, %i.bd
  %i.eq = trunc i32 %i.ep to i16
  %i.er = or i16 %i.ei, %i.eq                     ; 3 uses
  br i1 %i.em, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i16 %i.er, ptr %i.g, align 8, !tbaa !20
  %i.es = trunc i16 %i.er to i8
  %i.et = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.eu = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.ev = add i64 %i.eu, 1
  store i64 %i.ev, ptr %i.i, align 8, !tbaa !27
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eu
  store i8 %i.es, ptr %i.ew, align 1, !tbaa !23
  %15 = load i16, ptr %i.g, align 8, !tbaa !20
  %16 = lshr i16 %15, 8
  %17 = trunc nuw i16 %16 to i8
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.ey = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.ez = add i64 %i.ey, 1
  store i64 %i.ez, ptr %i.i, align 8, !tbaa !27
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ey
  store i8 %17, ptr %i.fa, align 1, !tbaa !23
  %i.fb = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
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
  store i32 %storemerge243, ptr %i.f, align 4, !tbaa !21
  %i.fj = icmp sgt i32 %storemerge243, 13
  %i.fk = add nsw i32 %.0212256, 65534            ; 3 uses
  br i1 %i.fj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fl = and i32 %i.fk, 65535
  %i.fm = shl i32 %i.fk, %storemerge243
  %i.fn = trunc i32 %i.fm to i16
  %i.fo = or i16 %i.fi, %i.fn                     ; 2 uses
  store i16 %i.fo, ptr %i.g, align 8, !tbaa !20
  %i.fp = trunc i16 %i.fo to i8
  %i.fq = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.fr = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.fs = add i64 %i.fr, 1
  store i64 %i.fs, ptr %i.i, align 8, !tbaa !27
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fr
  store i8 %i.fp, ptr %i.ft, align 1, !tbaa !23
  %18 = load i16, ptr %i.g, align 8, !tbaa !20
  %19 = lshr i16 %18, 8
  %20 = trunc nuw i16 %19 to i8
  %i.fu = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.fv = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.fw = add i64 %i.fv, 1
  store i64 %i.fw, ptr %i.i, align 8, !tbaa !27
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv
  store i8 %20, ptr %i.fx, align 1, !tbaa !23
  %i.fy = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.fz = sub nsw i32 16, %i.fy
  %i.ga = lshr i32 %i.fl, %i.fz
  %i.gb = trunc nuw i32 %i.ga to i16
  store i16 %i.gb, ptr %i.g, align 8, !tbaa !20
  %i.gc = add nsw i32 %i.fy, -13
  br label %.loopexit.sink.split

bb.z:                                             ; preds = %bb.x
  %i.gd = shl i32 %i.fk, %storemerge243
  %i.ge = trunc i32 %i.gd to i16
  %i.gf = or i16 %i.fi, %i.ge
  store i16 %i.gf, ptr %i.g, align 8, !tbaa !20
  %i.gg = add nsw i32 %storemerge243, 3
  br label %.loopexit.sink.split

bb.aa:                                            ; preds = %bb.t
  %i.gh = load i16, ptr %i.m, align 2, !tbaa !23
  %i.gi = zext i16 %i.gh to i32                   ; 3 uses
  %i.gj = sub nsw i32 16, %i.gi
  %i.gk = icmp sgt i32 %i.bd, %i.gj
  %i.gl = load i16, ptr %i.l, align 4, !tbaa !23
  %i.gm = zext i16 %i.gl to i32                   ; 2 uses
  %i.gn = shl i32 %i.gm, %i.bd
  %i.go = trunc i32 %i.gn to i16
  %i.gp = or i16 %i.ei, %i.go                     ; 3 uses
  br i1 %i.gk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i16 %i.gp, ptr %i.g, align 8, !tbaa !20
  %i.gq = trunc i16 %i.gp to i8
  %i.gr = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.gs = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.gt = add i64 %i.gs, 1
  store i64 %i.gt, ptr %i.i, align 8, !tbaa !27
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gs
  store i8 %i.gq, ptr %i.gu, align 1, !tbaa !23
  %21 = load i16, ptr %i.g, align 8, !tbaa !20
  %22 = lshr i16 %21, 8
  %23 = trunc nuw i16 %22 to i8
  %i.gv = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.gw = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.gx = add i64 %i.gw, 1
  store i64 %i.gx, ptr %i.i, align 8, !tbaa !27
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw
  store i8 %23, ptr %i.gy, align 1, !tbaa !23
  %i.gz = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
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
  store i32 %storemerge, ptr %i.f, align 4, !tbaa !21
  %i.hh = icmp sgt i32 %storemerge, 9
  %i.hi = add nuw i32 %.0212256, 65526            ; 3 uses
  br i1 %i.hh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hj = and i32 %i.hi, 65535
  %i.hk = shl i32 %i.hi, %storemerge
  %i.hl = trunc i32 %i.hk to i16
  %i.hm = or i16 %i.hg, %i.hl                     ; 2 uses
  store i16 %i.hm, ptr %i.g, align 8, !tbaa !20
  %i.hn = trunc i16 %i.hm to i8
  %i.ho = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.hp = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.hq = add i64 %i.hp, 1
  store i64 %i.hq, ptr %i.i, align 8, !tbaa !27
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hp
  store i8 %i.hn, ptr %i.hr, align 1, !tbaa !23
  %24 = load i16, ptr %i.g, align 8, !tbaa !20
  %25 = lshr i16 %24, 8
  %26 = trunc nuw i16 %25 to i8
  %i.hs = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.ht = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.hu = add i64 %i.ht, 1
  store i64 %i.hu, ptr %i.i, align 8, !tbaa !27
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.ht
  store i8 %26, ptr %i.hv, align 1, !tbaa !23
  %i.hw = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.hx = sub nsw i32 16, %i.hw
  %i.hy = lshr i32 %i.hj, %i.hx
  %i.hz = trunc nuw i32 %i.hy to i16
  store i16 %i.hz, ptr %i.g, align 8, !tbaa !20
  %i.ia = add nsw i32 %i.hw, -9
  br label %.loopexit.sink.split

bb.af:                                            ; preds = %bb.ad
  %i.ib = shl i32 %i.hi, %storemerge
  %i.ic = trunc i32 %i.ib to i16
  %i.id = or i16 %i.hg, %i.ic
  store i16 %i.id, ptr %i.g, align 8, !tbaa !20
  %i.ie = add nsw i32 %storemerge, 7
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.ae, %bb.af, %bb.y, %bb.z, %bb.r, %bb.s
  %storemerge244.sink = phi i32 [ %i.ec, %bb.r ], [ %i.gc, %bb.y ], [ %i.eg, %bb.s ], [ %i.gg, %bb.z ], [ %i.ie, %bb.af ], [ %i.ia, %bb.ae ]
  store i32 %storemerge244.sink, ptr %i.f, align 4, !tbaa !21
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.ah, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

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

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !24}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS10z_stream_s", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 _ZTS11gz_header_s", !9, i64 0}
!14 = !{!"p1 short", !9, i64 0}
!15 = !{!"p1 _ZTS9ct_data_s", !9, i64 0}
!16 = !{!"p1 _ZTS18static_tree_desc_s", !9, i64 0}
!17 = !{!"tree_desc_s", !15, i64 0, !6, i64 8, !16, i64 16}
!18 = !{!"short", !5, i64 0}
!19 = !{!"internal_state", !10, i64 0, !6, i64 8, !11, i64 16, !12, i64 24, !11, i64 32, !12, i64 40, !6, i64 48, !13, i64 56, !12, i64 64, !5, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !12, i64 104, !14, i64 112, !14, i64 120, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !12, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !5, i64 212, !5, i64 2504, !5, i64 2748, !17, i64 2904, !17, i64 2928, !17, i64 2952, !5, i64 2976, !5, i64 3008, !6, i64 5300, !6, i64 5304, !5, i64 5308, !11, i64 5888, !6, i64 5896, !6, i64 5900, !6, i64 5904, !12, i64 5912, !12, i64 5920, !6, i64 5928, !6, i64 5932, !18, i64 5936, !6, i64 5940, !6, i64 5944, !12, i64 5952, !6, i64 5960}
!20 = !{!19, !18, i64 5936}
!21 = !{!19, !6, i64 5940}
!22 = !{!19, !6, i64 5944}
!23 = !{!5, !5, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!19, !6, i64 5900}
!26 = !{!19, !11, i64 16}
!27 = !{!19, !12, i64 40}
!28 = !{!19, !12, i64 5912}
!29 = !{!19, !12, i64 5920}
!30 = !{!6, !6, i64 0}
!31 = !{!19, !11, i64 5888}
!32 = !{!19, !15, i64 2904}
!33 = !{!19, !16, i64 2920}
!34 = !{!19, !15, i64 2928}
!35 = !{!19, !16, i64 2944}
!36 = !{!19, !15, i64 2952}
!37 = !{!19, !16, i64 2968}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !24}
!41 = !{!19, !6, i64 196}
!42 = !{!19, !10, i64 0}
!43 = !{!"p1 _ZTS14internal_state", !9, i64 0}
!44 = !{!"z_stream_s", !11, i64 0, !6, i64 8, !12, i64 16, !11, i64 24, !6, i64 32, !12, i64 40, !11, i64 48, !43, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !6, i64 88, !12, i64 96, !12, i64 104}
!45 = !{!44, !6, i64 88}
!46 = !{!19, !6, i64 2912}
!47 = !{!19, !6, i64 2936}
!48 = !{!19, !6, i64 200}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !75}
!61 = distinct !{!61, !24}
!62 = !{!17, !15, i64 0}
!63 = !{!17, !16, i64 16}
!64 = !{!"p1 int", !9, i64 0}
!65 = !{!"static_tree_desc_s", !15, i64 0, !64, i64 8, !6, i64 16, !6, i64 20, !6, i64 24}
!66 = !{!65, !15, i64 0}
!67 = !{!65, !6, i64 20}
!68 = !{!19, !6, i64 5300}
!69 = !{!19, !6, i64 5304}
!70 = !{!17, !6, i64 8}
!71 = !{!65, !64, i64 8}
!72 = !{!65, !6, i64 16}
!73 = !{!65, !6, i64 24}
!74 = !{!18, !18, i64 0}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = distinct !{!76, !24}
!77 = !{!19, !6, i64 5928}
!78 = !{!19, !6, i64 5904}
!79 = distinct !{!79, !24}
!80 = distinct !{!80, !24}
end_hunk_2
