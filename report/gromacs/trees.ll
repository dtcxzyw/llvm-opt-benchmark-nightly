Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/trees?download=true
inline.NumInlined: 19
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }

@_dist_code = local_unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\10\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 16
@_length_code = local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C", align 16
@static_ltree = internal constant [288 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 140 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 76 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 204 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 44 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 172 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 108 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 236 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 156 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 92 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 220 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 60 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 188 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 124 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 252 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 130 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 66 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 194 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 34 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 162 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 98 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 226 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 146 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 82 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 210 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 50 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 178 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 114 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 242 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 138 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 74 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 202 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 42 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 170 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 106 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 234 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 154 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 90 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 218 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 58 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 186 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 122 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 250 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 134 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 70 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 198 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 38 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 166 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 102 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 230 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 150 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 86 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 214 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 54 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 182 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 118 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 246 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 142 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 78 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 206 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 46 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 174 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 110 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 238 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 158 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 94 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 222 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 62 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 190 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 126 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 254 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 129 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 65 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 193 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 33 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 161 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 97 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 225 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 145 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 81 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 209 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 49 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 177 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 113 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 241 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 137 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 73 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 201 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 41 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 169 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 105 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 233 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 153 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 89 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 217 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 57 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 185 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 121 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 249 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 133 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 69 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 197 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 37 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 165 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 101 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 229 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 149 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 85 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 213 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 53 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 181 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 117 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 245 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 141 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 77 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 205 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 45 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 173 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 109 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 237 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 157 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 93 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 221 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 61 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 189 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 125 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 253 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 275 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 147 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 403 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 83 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 339 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 211 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 467 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 51 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 307 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 179 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 435 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 115 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 371 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 243 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 499 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 267 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 139 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 395 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 75 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 331 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 203 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 459 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 43 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 299 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 171 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 427 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 107 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 363 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 235 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 491 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 283 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 155 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 411 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 91 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 347 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 219 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 475 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 59 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 315 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 187 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 443 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 123 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 379 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 251 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 507 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 263 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 135 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 391 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 71 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 327 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 199 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 455 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 39 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 295 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 167 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 423 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 103 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 359 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 231 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 487 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 279 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 151 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 407 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 87 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 343 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 215 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 471 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 55 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 311 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 183 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 439 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 119 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 375 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 247 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 503 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 15 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 271 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 143 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 399 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 79 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 335 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 207 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 463 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 47 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 303 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 175 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 431 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 111 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 367 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 239 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 495 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 31 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 287 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 159 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 415 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 95 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 351 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 223 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 479 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 63 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 319 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 191 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 447 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 127 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 383 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 255 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 511 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 64 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 32 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 96 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 80 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 48 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 112 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 72 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 40 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 104 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 88 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 56 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 120 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 68 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 36 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 100 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 84 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 52 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 116 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 131 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 67 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 195 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 35 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 163 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 99 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 227 }, %union.anon.0 { i16 8 } }], align 16
@static_dtree = internal constant [30 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 5 } }], align 16
@extra_lbits = internal constant [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 16
@static_l_desc = internal global { ptr, ptr, i32, i32, i32, [4 x i8] } { ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15, [4 x i8] zeroinitializer }, align 8
@extra_dbits = internal constant [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 16
@static_d_desc = internal global { ptr, ptr, i32, i32, i32, [4 x i8] } { ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15, [4 x i8] zeroinitializer }, align 8
@extra_blbits = internal constant [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 16
@static_bl_desc = internal global { ptr, ptr, i32, i32, i32, [4 x i8] } { ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7, [4 x i8] zeroinitializer }, align 8
@bl_order = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@base_length = internal unnamed_addr constant [29 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 10, i32 12, i32 14, i32 16, i32 20, i32 24, i32 28, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 0], align 16
@base_dist = internal unnamed_addr constant [30 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_tr_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2888
  store ptr %i.a, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2904
  store ptr @static_l_desc, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2488 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store ptr %i.d, ptr %i.e, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2928
  store ptr @static_d_desc, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2732 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store ptr %i.g, ptr %i.h, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2952
  store ptr @static_bl_desc, ptr %i.i, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5920
  store i16 0, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5924
  store i32 0, ptr %i.k, align 4, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i16 0, ptr %i.l, align 4, !tbaa !22
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i16 0, ptr %i.n, align 4, !tbaa !22
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 286
  br i1 %exitcond.not.i.1, label %init_block.exit, label %bb.b, !llvm.loop !0

init_block.exit:                                  ; preds = %bb.b
  store i16 0, ptr %i.d, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2492
  store i16 0, ptr %i.o, align 4, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2496
  store i16 0, ptr %i.p, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2500
  store i16 0, ptr %i.q, align 4, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %i.r, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %i.s, align 4, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %i.t, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %i.u, align 4, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %i.v, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %i.w, align 4, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %i.x, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %i.y, align 4, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %i.z, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %i.aa, align 4, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %i.ab, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %i.ac, align 4, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %i.ad, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %i.ae, align 4, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %i.af, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %i.ag, align 4, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %i.ah, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %i.ai, align 4, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %i.aj, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %i.ak, align 4, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %i.al, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %i.am, align 4, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %i.an, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %i.ao, align 4, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %i.ap, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %i.aq, align 4, !tbaa !22
  store i16 0, ptr %i.g, align 4, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2736
  store i16 0, ptr %i.ar, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2740
  store i16 0, ptr %i.as, align 4, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2744
  store i16 0, ptr %i.at, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %i.au, align 4, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %i.av, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %i.aw, align 4, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %i.ax, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %i.ay, align 4, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %i.az, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %i.ba, align 4, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %i.bb, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %i.bc, align 4, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %i.bd, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %i.be, align 4, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %i.bf, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %i.bg, align 4, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %i.bh, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %i.bi, align 4, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1220
  store i16 1, ptr %i.bj, align 4, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5896
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5884
  store i32 0, ptr %i.bl, align 4, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bk, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_tr_stored_block(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5924 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 13
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %3, 65535
  %i.e = shl i32 %3, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 3 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !20
  %i.h = trunc i32 %i.e to i16
  %i.i = or i16 %i.g, %i.h                        ; 2 uses
  store i16 %i.i, ptr %i.f, align 8, !tbaa !20
  %i.j = trunc i16 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !26
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  store i8 %i.j, ptr %i.q, align 1, !tbaa !22
  %4 = getelementptr i8, ptr %0, i64 5921
  %5 = load i8, ptr %4, align 1, !tbaa !20
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.s = load i32, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.m, align 8, !tbaa !26
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  store i8 %5, ptr %i.v, align 1, !tbaa !22
  %i.w = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.x = sub nsw i32 16, %i.w
  %i.y = lshr i32 %i.d, %i.x
  %i.z = trunc nuw i32 %i.y to i16                ; 2 uses
  store i16 %i.z, ptr %i.f, align 8, !tbaa !20
  %i.aa = add nsw i32 %i.w, -13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ab = shl i32 %3, %i.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !20
  %i.ae = trunc i32 %i.ab to i16
  %i.af = or i16 %i.ad, %i.ae                     ; 2 uses
  store i16 %i.af, ptr %i.ac, align 8, !tbaa !20
  %i.ag = add nsw i32 %i.b, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = phi i16 [ %i.af, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %storemerge = phi i32 [ %i.ag, %bb.c ], [ %i.aa, %bb.b ] ; 2 uses
  %i.ai = trunc i64 %2 to i32                     ; 6 uses
  %i.aj = icmp sgt i32 %storemerge, 8
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = trunc i16 %i.ah to i8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !26 ; 2 uses
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !26
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  store i8 %i.ak, ptr %i.ar, align 1, !tbaa !22
  %6 = getelementptr i8, ptr %0, i64 5921
  %7 = load i8, ptr %6, align 1, !tbaa !20
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !25
  %i.at = load i32, ptr %i.an, align 8, !tbaa !26 ; 2 uses
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.an, align 8, !tbaa !26
  br label %.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %i.av = icmp sgt i32 %storemerge, 0
  br i1 %i.av, label %bb.g, label %bi_windup.exit.i

bb.g:                                             ; preds = %bb.f
  %8 = trunc i16 %i.ah to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !26 ; 2 uses
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !26
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.g, %bb.e
  %.sink16.i.i = phi i32 [ %i.az, %bb.g ], [ %i.at, %bb.e ]
  %.sink14.i.i = phi ptr [ %i.ax, %bb.g ], [ %i.as, %bb.e ]
  %.sink.i.i = phi i8 [ %8, %bb.g ], [ %7, %bb.e ]
  %i.bb = zext i32 %.sink16.i.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 %i.bb
  store i8 %.sink.i.i, ptr %i.bc, align 1, !tbaa !22
  br label %bi_windup.exit.i

bi_windup.exit.i:                                 ; preds = %.sink.split.i.i, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 5920
  store i16 0, ptr %i.bd, align 8, !tbaa !20
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.be = trunc i64 %2 to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !26
  %i.bk = zext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bk
  store i8 %i.be, ptr %i.bl, align 1, !tbaa !22
  %i.bm = lshr i64 %2, 8
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bp = load i32, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bh, align 8, !tbaa !26
  %i.br = zext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.br
  store i8 %i.bn, ptr %i.bs, align 1, !tbaa !22
  %i.bt = xor i32 %i.ai, 65535                    ; 2 uses
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bw = load i32, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bh, align 8, !tbaa !26
  %i.by = zext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.by
  store i8 %i.bu, ptr %i.bz, align 1, !tbaa !22
  %i.ca = lshr i32 %i.bt, 8
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.cd = load i32, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.bh, align 8, !tbaa !26
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf
  store i8 %i.cb, ptr %i.cg, align 1, !tbaa !22
  %.not18.i = icmp eq i32 %i.ai, 0
  br i1 %.not18.i, label %copy_block.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bi_windup.exit.i
  %xtraiter = and i32 %i.ai, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ch = add nsw i32 %i.ai, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cj = load i8, ptr %1, align 1, !tbaa !22
  %i.ck = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.cl = load i32, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.bh, align 8, !tbaa !26
  %i.cn = zext i32 %i.cl to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cn
  store i8 %i.cj, ptr %i.co, align 1, !tbaa !22
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.ci, %.lr.ph.i.prol ]
  %.01719.i.unr = phi i32 [ %i.ai, %.lr.ph.i.preheader ], [ %i.ch, %.lr.ph.i.prol ]
  %i.cp = icmp eq i32 %i.ai, 1
  br i1 %i.cp, label %copy_block.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi ptr [ %i.cy, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01719.i = phi i32 [ %i.cx, %.lr.ph.i ], [ %.01719.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  %i.cr = load i8, ptr %.020.i, align 1, !tbaa !22
  %i.cs = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.ct = load i32, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.bh, align 8, !tbaa !26
  %i.cv = zext i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cv
  store i8 %i.cr, ptr %i.cw, align 1, !tbaa !22
  %i.cx = add i32 %.01719.i, -2                   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.020.i, i64 2
  %i.cz = load i8, ptr %i.cq, align 1, !tbaa !22
  %i.da = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.db = load i32, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.bh, align 8, !tbaa !26
  %i.dd = zext i32 %i.db to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dd
  store i8 %i.cz, ptr %i.de, align 1, !tbaa !22
  %.not.i.1 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.1, label %copy_block.exit, label %.lr.ph.i, !llvm.loop !39

copy_block.exit:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bi_windup.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_tr_flush_bits(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5924 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.c = icmp eq i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !20
  %i.f = trunc i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !26
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  store i8 %i.f, ptr %i.m, align 1, !tbaa !22
  %1 = getelementptr i8, ptr %0, i64 5921
  %2 = load i8, ptr %1, align 1, !tbaa !20
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.o = load i32, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.i, align 8, !tbaa !26
  %i.q = zext i32 %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store i8 %2, ptr %i.r, align 1, !tbaa !22
  store i16 0, ptr %i.d, align 8, !tbaa !20
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.s = icmp sgt i32 %i.b, 7
  br i1 %i.s, label %bb.d, label %bi_flush.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 3 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !20
  %i.v = trunc i16 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !26   ; 2 uses
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !26
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  store i8 %i.v, ptr %i.ac, align 1, !tbaa !22
  %i.ad = load i16, ptr %i.t, align 8, !tbaa !20
  %i.ae = lshr i16 %i.ad, 8
  store i16 %i.ae, ptr %i.t, align 8, !tbaa !20
  %i.af = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ag = add nsw i32 %i.af, -8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.b
  %.sink.i = phi i32 [ %i.ag, %bb.d ], [ 0, %bb.b ]
  store i32 %.sink.i, ptr %i.a, align 4, !tbaa !21
  br label %bi_flush.exit

bi_flush.exit:                                    ; preds = %bb.c, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_tr_align(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5924 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 13
  %i.d = shl i32 2, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 3 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !20
  %i.g = trunc i32 %i.d to i16
  %i.h = or i16 %i.f, %i.g                        ; 3 uses
  store i16 %i.h, ptr %i.e, align 8, !tbaa !20
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i16 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !26
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  store i8 %i.i, ptr %i.p, align 1, !tbaa !22
  %1 = getelementptr i8, ptr %0, i64 5921
  %2 = load i8, ptr %1, align 1, !tbaa !20
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.r = load i32, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.l, align 8, !tbaa !26
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  store i8 %2, ptr %i.u, align 1, !tbaa !22
  %i.v = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.w = sub nsw i32 16, %i.v
  %i.x = lshr i32 2, %i.w
  %i.y = trunc nuw nsw i32 %i.x to i16            ; 2 uses
  store i16 %i.y, ptr %i.e, align 8, !tbaa !20
  %i.z = add nsw i32 %i.v, -13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aa = add nsw i32 %i.b, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = phi i16 [ %i.h, %bb.c ], [ %i.y, %bb.b ]
  %storemerge = phi i32 [ %i.aa, %bb.c ], [ %i.z, %bb.b ] ; 3 uses
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !21
  %i.ac = icmp sgt i32 %storemerge, 9
  %i.ad = trunc i16 %i.ab to i8                   ; 2 uses
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !26
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak
  store i8 %i.ad, ptr %i.al, align 1, !tbaa !22
  %3 = getelementptr i8, ptr %0, i64 5921
  %4 = load i8, ptr %3, align 1, !tbaa !20
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.ah, align 8, !tbaa !26
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  store i8 %4, ptr %i.aq, align 1, !tbaa !22
  store i16 0, ptr %i.ae, align 8, !tbaa !20
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !21
  %i.as = add nsw i32 %i.ar, -9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.at = add nsw i32 %storemerge, 7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = phi i8 [ %i.ad, %bb.f ], [ 0, %bb.e ]   ; 2 uses
  %storemerge41 = phi i32 [ %i.at, %bb.f ], [ %i.as, %bb.e ] ; 3 uses
  store i32 %storemerge41, ptr %i.a, align 4, !tbaa !21
  %i.av = icmp eq i32 %storemerge41, 16
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !26
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bc
  store i8 %i.au, ptr %i.bd, align 1, !tbaa !22
  %5 = getelementptr i8, ptr %0, i64 5921
  %6 = load i8, ptr %5, align 1, !tbaa !20
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !25
  %i.bf = load i32, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.az, align 8, !tbaa !26
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh
  store i8 %6, ptr %i.bi, align 1, !tbaa !22
  store i16 0, ptr %i.aw, align 8, !tbaa !20
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.bj = icmp sgt i32 %storemerge41, 7
  br i1 %i.bj, label %bb.j, label %bi_flush.exit

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !26 ; 2 uses
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !26
  %i.bq = zext i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  store i8 %i.au, ptr %i.br, align 1, !tbaa !22
  %i.bs = load i16, ptr %i.bk, align 8, !tbaa !20
  %i.bt = lshr i16 %i.bs, 8
  store i16 %i.bt, ptr %i.bk, align 8, !tbaa !20
  %i.bu = load i32, ptr %i.a, align 4, !tbaa !21
  %i.bv = add nsw i32 %i.bu, -8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.h
  %.sink.i = phi i32 [ %i.bv, %bb.j ], [ 0, %bb.h ]
  store i32 %.sink.i, ptr %i.a, align 4, !tbaa !21
  br label %bi_flush.exit

bi_flush.exit:                                    ; preds = %bb.i, %.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_tr_flush_block(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.bt

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !47
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 5 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !22
  %.not19.i = icmp eq i16 %i.i, 0
  br i1 %.not19.i, label %bb.d, label %detect_data_type.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load i16, ptr %i.j, align 8, !tbaa !22
  %.not19.1.i = icmp eq i16 %i.k, 0
  br i1 %.not19.1.i, label %bb.e, label %detect_data_type.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.m = load i16, ptr %i.l, align 4, !tbaa !22
  %.not19.2.i = icmp eq i16 %i.m, 0
  br i1 %.not19.2.i, label %bb.f, label %detect_data_type.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = load i16, ptr %i.n, align 8, !tbaa !22
  %.not19.3.i = icmp eq i16 %i.o, 0
  br i1 %.not19.3.i, label %bb.g, label %detect_data_type.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.q = load i16, ptr %i.p, align 4, !tbaa !22
  %.not19.4.i = icmp eq i16 %i.q, 0
  br i1 %.not19.4.i, label %bb.h, label %detect_data_type.exit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = load i16, ptr %i.r, align 8, !tbaa !22
  %.not19.5.i = icmp eq i16 %i.s, 0
  br i1 %.not19.5.i, label %bb.i, label %detect_data_type.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.u = load i16, ptr %i.t, align 4, !tbaa !22
  %.not19.6.i = icmp eq i16 %i.u, 0
  br i1 %.not19.6.i, label %bb.j, label %detect_data_type.exit

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.w = load i16, ptr %i.v, align 4, !tbaa !22
  %.not19.14.i = icmp eq i16 %i.w, 0
  br i1 %.not19.14.i, label %bb.k, label %detect_data_type.exit

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.y = load i16, ptr %i.x, align 8, !tbaa !22
  %.not19.15.i = icmp eq i16 %i.y, 0
  br i1 %.not19.15.i, label %bb.l, label %detect_data_type.exit

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !22
  %.not19.16.i = icmp eq i16 %i.aa, 0
  br i1 %.not19.16.i, label %bb.m, label %detect_data_type.exit

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !22
  %.not19.17.i = icmp eq i16 %i.ac, 0
  br i1 %.not19.17.i, label %bb.n, label %detect_data_type.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !22
  %.not19.18.i = icmp eq i16 %i.ae, 0
  br i1 %.not19.18.i, label %bb.o, label %detect_data_type.exit

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !22
  %.not19.19.i = icmp eq i16 %i.ag, 0
  br i1 %.not19.19.i, label %bb.p, label %detect_data_type.exit

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !22
  %.not19.20.i = icmp eq i16 %i.ai, 0
  br i1 %.not19.20.i, label %bb.q, label %detect_data_type.exit

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !22
  %.not19.21.i = icmp eq i16 %i.ak, 0
  br i1 %.not19.21.i, label %bb.r, label %detect_data_type.exit

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.am = load i16, ptr %i.al, align 4, !tbaa !22
  %.not19.22.i = icmp eq i16 %i.am, 0
  br i1 %.not19.22.i, label %bb.s, label %detect_data_type.exit

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !22
  %.not19.23.i = icmp eq i16 %i.ao, 0
  br i1 %.not19.23.i, label %bb.t, label %detect_data_type.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !22
  %.not19.24.i = icmp eq i16 %i.aq, 0
  br i1 %.not19.24.i, label %bb.u, label %detect_data_type.exit

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !22
  %.not19.25.i = icmp eq i16 %i.as, 0
  br i1 %.not19.25.i, label %bb.v, label %detect_data_type.exit

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.au = load i16, ptr %i.at, align 4, !tbaa !22
  %.not19.28.i = icmp eq i16 %i.au, 0
  br i1 %.not19.28.i, label %bb.w, label %detect_data_type.exit

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !22
  %.not19.29.i = icmp eq i16 %i.aw, 0
  br i1 %.not19.29.i, label %bb.x, label %detect_data_type.exit

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !22
  %.not19.30.i = icmp eq i16 %i.ay, 0
  br i1 %.not19.30.i, label %bb.y, label %detect_data_type.exit

bb.y:                                             ; preds = %bb.x
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !22
  %.not19.31.i = icmp eq i16 %i.ba, 0
  br i1 %.not19.31.i, label %bb.z, label %detect_data_type.exit

bb.z:                                             ; preds = %bb.y
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !22
  %.not.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i, label %bb.aa, label %detect_data_type.exit

bb.aa:                                            ; preds = %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !22
  %.not15.i = icmp eq i16 %i.be, 0
  br i1 %.not15.i, label %bb.ab, label %detect_data_type.exit

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
begin_hunk_1_@_tr_flush_block:bb.a
  %i.ek = zext nneg i32 %.03651.i23.i to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ek ; 2 uses
  %i.em = load i16, ptr %i.el, align 4, !tbaa !22
  %i.en = add i16 %i.em, 1
  store i16 %i.en, ptr %i.el, align 4, !tbaa !22
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.eo = load i16, ptr %i.dt, align 4, !tbaa !22
  %i.ep = add i16 %i.eo, 1
  store i16 %i.ep, ptr %i.dt, align 4, !tbaa !22
  br label %bb.bb

bb.ay:                                            ; preds = %bb.au
  %i.eq = icmp slt i32 %.03452.i22.i, 10
  br i1 %i.eq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.er = load i16, ptr %i.dv, align 8, !tbaa !22
  %i.es = add i16 %i.er, 1
  store i16 %i.es, ptr %i.dv, align 8, !tbaa !22
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.et = load i16, ptr %i.du, align 4, !tbaa !22
  %i.eu = add i16 %i.et, 1
  store i16 %i.eu, ptr %i.du, align 4, !tbaa !22
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
  br i1 %exitcond.not.i35.i, label %scan_tree.exit36.i, label %bb.ar, !llvm.loop !41

scan_tree.exit36.i:                               ; preds = %bb.bd, %scan_tree.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 2936
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !22
  %.not.i92 = icmp eq i16 %i.ey, 0
  br i1 %.not.i92, label %bb.be, label %build_bl_tree.exit

bb.be:                                            ; preds = %scan_tree.exit36.i
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2738
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !22
  %.not.1.i = icmp eq i16 %i.fa, 0
  br i1 %.not.1.i, label %bb.bf, label %build_bl_tree.exit

bb.bf:                                            ; preds = %bb.be
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !22
  %.not.2.i = icmp eq i16 %i.fc, 0
  br i1 %.not.2.i, label %bb.bg, label %build_bl_tree.exit

bb.bg:                                            ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2742
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !22
  %.not.3.i = icmp eq i16 %i.fe, 0
  br i1 %.not.3.i, label %bb.bh, label %build_bl_tree.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !22
  %.not.4.i = icmp eq i16 %i.fg, 0
  br i1 %.not.4.i, label %bb.bi, label %build_bl_tree.exit

bb.bi:                                            ; preds = %bb.bh
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2746
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !22
  %.not.5.i = icmp eq i16 %i.fi, 0
  br i1 %.not.5.i, label %bb.bj, label %build_bl_tree.exit

bb.bj:                                            ; preds = %bb.bi
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !22
  %.not.6.i = icmp eq i16 %i.fk, 0
  br i1 %.not.6.i, label %bb.bk, label %build_bl_tree.exit

bb.bk:                                            ; preds = %bb.bj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !22
  %.not.7.i = icmp eq i16 %i.fm, 0
  br i1 %.not.7.i, label %bb.bl, label %build_bl_tree.exit

bb.bl:                                            ; preds = %bb.bk
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !22
  %.not.8.i = icmp eq i16 %i.fo, 0
  br i1 %.not.8.i, label %bb.bm, label %build_bl_tree.exit

bb.bm:                                            ; preds = %bb.bl
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !22
  %.not.9.i = icmp eq i16 %i.fq, 0
  br i1 %.not.9.i, label %bb.bn, label %build_bl_tree.exit

bb.bn:                                            ; preds = %bb.bm
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !22
  %.not.10.i = icmp eq i16 %i.fs, 0
  br i1 %.not.10.i, label %bb.bo, label %build_bl_tree.exit

bb.bo:                                            ; preds = %bb.bn
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !22
  %.not.11.i = icmp eq i16 %i.fu, 0
  br i1 %.not.11.i, label %bb.bp, label %build_bl_tree.exit

bb.bp:                                            ; preds = %bb.bo
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !22
  %.not.12.i = icmp eq i16 %i.fw, 0
  br i1 %.not.12.i, label %bb.bq, label %build_bl_tree.exit

bb.bq:                                            ; preds = %bb.bp
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !22
  %.not.13.i = icmp eq i16 %i.fy, 0
  br i1 %.not.13.i, label %bb.br, label %build_bl_tree.exit

bb.br:                                            ; preds = %bb.bq
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !22
  %.not.14.i = icmp eq i16 %i.ga, 0
  br i1 %.not.14.i, label %bb.bs, label %build_bl_tree.exit

bb.bs:                                            ; preds = %bb.br
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2734
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !22
  %.not.15.i = icmp eq i16 %i.gc, 0
  %spec.select.i = select i1 %.not.15.i, i32 2, i32 3
  br label %build_bl_tree.exit

build_bl_tree.exit:                               ; preds = %scan_tree.exit36.i, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs
  %.0.lcssa.i = phi i32 [ 18, %scan_tree.exit36.i ], [ 10, %bb.bl ], [ 17, %bb.be ], [ %spec.select.i, %bb.bs ], [ 16, %bb.bf ], [ 8, %bb.bn ], [ 15, %bb.bg ], [ 4, %bb.br ], [ 14, %bb.bh ], [ 9, %bb.bm ], [ 13, %bb.bi ], [ 5, %bb.bq ], [ 12, %bb.bj ], [ 7, %bb.bo ], [ 11, %bb.bk ], [ 6, %bb.bp ] ; 2 uses
  %i.gd = mul nuw nsw i32 %.0.lcssa.i, 3
  %i.ge = add nuw nsw i32 %i.gd, 17
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 5896 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !27
  %i.gi = add i64 %i.gh, %i.gf                    ; 2 uses
  store i64 %i.gi, ptr %i.gg, align 8, !tbaa !27
  %i.gj = add i64 %i.gi, 10
  %i.gk = lshr i64 %i.gj, 3                       ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !28
  %i.gn = add i64 %i.gm, 10
  %i.go = lshr i64 %i.gn, 3                       ; 2 uses
  %.not = icmp samesign ule i64 %i.go, %i.gk
  %spec.select91 = tail call i64 @llvm.umin.i64(i64 %i.go, i64 %i.gk)
  %i.gp = add nuw nsw i32 %.0.lcssa.i, 1
  br label %bb.bu

bb.bt:                                            ; preds = %bb.a
  %i.gq = add i64 %2, 5
  br label %bb.bu

bb.bu:                                            ; preds = %build_bl_tree.exit, %bb.bt
  %.081 = phi i32 [ 1, %bb.bt ], [ %i.gp, %build_bl_tree.exit ] ; 2 uses
  %.080 = phi i1 [ true, %bb.bt ], [ %.not, %build_bl_tree.exit ]
  %.0 = phi i64 [ %i.gq, %bb.bt ], [ %spec.select91, %build_bl_tree.exit ]
  %i.gr = add i64 %2, 4
  %i.gs = icmp ule i64 %i.gr, %.0
  %i.gt = icmp ne ptr %1, null
  %or.cond = and i1 %i.gt, %i.gs
  br i1 %or.cond, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3)
  br label %bb.cr

bb.bw:                                            ; preds = %bb.bu
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !50
  %i.gw = icmp eq i32 %i.gv, 4
  %brmerge = or i1 %.080, %i.gw
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 5924 ; 13 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !21 ; 7 uses
  %i.gz = icmp sgt i32 %i.gy, 13                  ; 2 uses
  br i1 %brmerge, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.ha = add i32 %3, 2                           ; 3 uses
  br i1 %i.gz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.hb = and i32 %i.ha, 65535
  %i.hc = shl i32 %i.ha, %i.gy
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 3 uses
  %i.he = load i16, ptr %i.hd, align 8, !tbaa !20
  %i.hf = trunc i32 %i.hc to i16
  %i.hg = or i16 %i.he, %i.hf                     ; 2 uses
  store i16 %i.hg, ptr %i.hd, align 8, !tbaa !20
  %i.hh = trunc i16 %i.hg to i8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !25
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !26 ; 2 uses
  %i.hm = add i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 8, !tbaa !26
  %i.hn = zext i32 %i.hl to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hn
  store i8 %i.hh, ptr %i.ho, align 1, !tbaa !22
  %4 = getelementptr i8, ptr %0, i64 5921
  %5 = load i8, ptr %4, align 1, !tbaa !20
  %i.hp = load ptr, ptr %i.hi, align 8, !tbaa !25
  %i.hq = load i32, ptr %i.hk, align 8, !tbaa !26 ; 2 uses
  %i.hr = add i32 %i.hq, 1
  store i32 %i.hr, ptr %i.hk, align 8, !tbaa !26
  %i.hs = zext i32 %i.hq to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hs
  store i8 %5, ptr %i.ht, align 1, !tbaa !22
  %i.hu = load i32, ptr %i.gx, align 4, !tbaa !21 ; 2 uses
  %i.hv = sub nsw i32 16, %i.hu
  %i.hw = lshr i32 %i.hb, %i.hv
  %i.hx = trunc nuw i32 %i.hw to i16
  store i16 %i.hx, ptr %i.hd, align 8, !tbaa !20
  %i.hy = add nsw i32 %i.hu, -13
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.hz = shl i32 %i.ha, %i.gy
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 8, !tbaa !20
  %i.ic = trunc i32 %i.hz to i16
  %i.id = or i16 %i.ib, %i.ic
  store i16 %i.id, ptr %i.ia, align 8, !tbaa !20
  %i.ie = add nsw i32 %i.gy, 3
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %storemerge89 = phi i32 [ %i.ie, %bb.bz ], [ %i.hy, %bb.by ]
  store i32 %storemerge89, ptr %i.gx, align 4, !tbaa !21
  tail call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  br label %bb.cr

bb.cb:                                            ; preds = %bb.bw
  %i.if = add i32 %3, 4                           ; 3 uses
  br i1 %i.gz, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ig = and i32 %i.if, 65535
  %i.ih = shl i32 %i.if, %i.gy
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.ij = load i16, ptr %i.ii, align 8, !tbaa !20
  %i.ik = trunc i32 %i.ih to i16
  %i.il = or i16 %i.ij, %i.ik                     ; 2 uses
  store i16 %i.il, ptr %i.ii, align 8, !tbaa !20
  %i.im = trunc i16 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !25
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !26 ; 2 uses
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 8, !tbaa !26
  %i.is = zext i32 %i.iq to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.is
  store i8 %i.im, ptr %i.it, align 1, !tbaa !22
  %6 = getelementptr i8, ptr %0, i64 5921
  %7 = load i8, ptr %6, align 1, !tbaa !20
  %i.iu = load ptr, ptr %i.in, align 8, !tbaa !25
  %i.iv = load i32, ptr %i.ip, align 8, !tbaa !26 ; 2 uses
  %i.iw = add i32 %i.iv, 1
  store i32 %i.iw, ptr %i.ip, align 8, !tbaa !26
  %i.ix = zext i32 %i.iv to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.ix
  store i8 %7, ptr %i.iy, align 1, !tbaa !22
  %i.iz = load i32, ptr %i.gx, align 4, !tbaa !21 ; 2 uses
  %i.ja = sub nsw i32 16, %i.iz
  %i.jb = lshr i32 %i.ig, %i.ja
  %i.jc = trunc nuw i32 %i.jb to i16
  %i.jd = add nsw i32 %i.iz, -13
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.je = shl i32 %i.if, %i.gy
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.jg = load i16, ptr %i.jf, align 8, !tbaa !20
  %i.jh = trunc i32 %i.je to i16
  %i.ji = or i16 %i.jg, %i.jh
  %i.jj = add nsw i32 %i.gy, 3
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.jk = phi i16 [ %i.ji, %bb.cd ], [ %i.jc, %bb.cc ] ; 2 uses
  %storemerge = phi i32 [ %i.jj, %bb.cd ], [ %i.jd, %bb.cc ] ; 5 uses
  store i32 %storemerge, ptr %i.gx, align 4, !tbaa !21
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !48 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 2920
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !49 ; 4 uses
  %i.jp = icmp sgt i32 %storemerge, 11
  %i.jq = add i32 %i.jm, 65280                    ; 3 uses
  br i1 %i.jp, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.jr = and i32 %i.jq, 65535
  %i.js = shl i32 %i.jq, %storemerge
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.ju = trunc i32 %i.js to i16
  %i.jv = or i16 %i.jk, %i.ju                     ; 2 uses
  store i16 %i.jv, ptr %i.jt, align 8, !tbaa !20
  %i.jw = trunc i16 %i.jv to i8
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !25
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !26 ; 2 uses
  %i.kb = add i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jz, align 8, !tbaa !26
  %i.kc = zext i32 %i.ka to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kc
  store i8 %i.jw, ptr %i.kd, align 1, !tbaa !22
  %8 = getelementptr i8, ptr %0, i64 5921
  %9 = load i8, ptr %8, align 1, !tbaa !20
  %i.ke = load ptr, ptr %i.jx, align 8, !tbaa !25
  %i.kf = load i32, ptr %i.jz, align 8, !tbaa !26 ; 2 uses
  %i.kg = add i32 %i.kf, 1
  store i32 %i.kg, ptr %i.jz, align 8, !tbaa !26
  %i.kh = zext i32 %i.kf to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kh
  store i8 %9, ptr %i.ki, align 1, !tbaa !22
  %i.kj = load i32, ptr %i.gx, align 4, !tbaa !21 ; 2 uses
  %i.kk = sub nsw i32 16, %i.kj
  %i.kl = lshr i32 %i.jr, %i.kk
  %i.km = trunc nuw i32 %i.kl to i16
  %i.kn = add nsw i32 %i.kj, -11
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.ko = shl i32 %i.jq, %storemerge
  %i.kp = trunc i32 %i.ko to i16
  %i.kq = or i16 %i.jk, %i.kp
  %i.kr = add nsw i32 %storemerge, 5
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ks = phi i16 [ %i.kq, %bb.cg ], [ %i.km, %bb.cf ] ; 2 uses
  %storemerge.i = phi i32 [ %i.kr, %bb.cg ], [ %i.kn, %bb.cf ] ; 5 uses
  store i32 %storemerge.i, ptr %i.gx, align 4, !tbaa !21
  %i.kt = icmp sgt i32 %storemerge.i, 11
  br i1 %i.kt, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ku = and i32 %i.jo, 65535
  %i.kv = shl i32 %i.jo, %storemerge.i
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.kx = trunc i32 %i.kv to i16
  %i.ky = or i16 %i.ks, %i.kx                     ; 2 uses
  store i16 %i.ky, ptr %i.kw, align 8, !tbaa !20
  %i.kz = trunc i16 %i.ky to i8
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !25
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !26 ; 2 uses
  %i.le = add i32 %i.ld, 1
  store i32 %i.le, ptr %i.lc, align 8, !tbaa !26
  %i.lf = zext i32 %i.ld to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.lf
  store i8 %i.kz, ptr %i.lg, align 1, !tbaa !22
  %10 = getelementptr i8, ptr %0, i64 5921
  %11 = load i8, ptr %10, align 1, !tbaa !20
  %i.lh = load ptr, ptr %i.la, align 8, !tbaa !25
  %i.li = load i32, ptr %i.lc, align 8, !tbaa !26 ; 2 uses
  %i.lj = add i32 %i.li, 1
  store i32 %i.lj, ptr %i.lc, align 8, !tbaa !26
  %i.lk = zext i32 %i.li to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lk
  store i8 %11, ptr %i.ll, align 1, !tbaa !22
  %i.lm = load i32, ptr %i.gx, align 4, !tbaa !21 ; 2 uses
  %i.ln = sub nsw i32 16, %i.lm
  %i.lo = lshr i32 %i.ku, %i.ln
  %i.lp = trunc nuw i32 %i.lo to i16
  %i.lq = add nsw i32 %i.lm, -11
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.lr = shl i32 %i.jo, %storemerge.i
  %i.ls = trunc i32 %i.lr to i16
  %i.lt = or i16 %i.ks, %i.ls
  %i.lu = add nsw i32 %storemerge.i, 5
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.lv = phi i16 [ %i.lt, %bb.cj ], [ %i.lp, %bb.ci ] ; 2 uses
  %storemerge105.i = phi i32 [ %i.lu, %bb.cj ], [ %i.lq, %bb.ci ] ; 5 uses
  store i32 %storemerge105.i, ptr %i.gx, align 4, !tbaa !21
  %i.lw = icmp sgt i32 %storemerge105.i, 12
  %i.lx = add nuw nsw i32 %.081, 65532            ; 3 uses
  br i1 %i.lw, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ly = and i32 %i.lx, 65535
  %i.lz = shl i32 %i.lx, %storemerge105.i
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.mb = trunc i32 %i.lz to i16
  %i.mc = or i16 %i.lv, %i.mb                     ; 2 uses
  store i16 %i.mc, ptr %i.ma, align 8, !tbaa !20
  %i.md = trunc i16 %i.mc to i8
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !25
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !26 ; 2 uses
  %i.mi = add i32 %i.mh, 1
  store i32 %i.mi, ptr %i.mg, align 8, !tbaa !26
  %i.mj = zext i32 %i.mh to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mj
  store i8 %i.md, ptr %i.mk, align 1, !tbaa !22
  %12 = getelementptr i8, ptr %0, i64 5921
  %13 = load i8, ptr %12, align 1, !tbaa !20
  %i.ml = load ptr, ptr %i.me, align 8, !tbaa !25
  %i.mm = load i32, ptr %i.mg, align 8, !tbaa !26 ; 2 uses
  %i.mn = add i32 %i.mm, 1
  store i32 %i.mn, ptr %i.mg, align 8, !tbaa !26
  %i.mo = zext i32 %i.mm to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mo
  store i8 %13, ptr %i.mp, align 1, !tbaa !22
  %i.mq = load i32, ptr %i.gx, align 4, !tbaa !21 ; 2 uses
  %i.mr = sub nsw i32 16, %i.mq
  %i.ms = lshr i32 %i.ly, %i.mr
  %i.mt = trunc nuw i32 %i.ms to i16
  %i.mu = add nsw i32 %i.mq, -12
  br label %.lr.ph.i

bb.cm:                                            ; preds = %bb.ck
  %i.mv = shl nuw nsw i32 %i.lx, %storemerge105.i
  %i.mw = trunc i32 %i.mv to i16
  %i.mx = or i16 %i.lv, %i.mw
  %i.my = add nsw i32 %storemerge105.i, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cl, %bb.cm
  %i.mz = phi i16 [ %i.mx, %bb.cm ], [ %i.mt, %bb.cl ]
  %storemerge106.i = phi i32 [ %i.my, %bb.cm ], [ %i.mu, %bb.cl ] ; 2 uses
  store i32 %storemerge106.i, ptr %i.gx, align 4, !tbaa !21
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %14 = getelementptr i8, ptr %0, i64 5921
  %wide.trip.count.i = zext nneg i32 %.081 to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cq, %.lr.ph.i
  %i.nd = phi i16 [ %i.mz, %.lr.ph.i ], [ %i.oh, %bb.cq ]
  %i.ne = phi i32 [ %storemerge106.i, %.lr.ph.i ], [ %storemerge107.i, %bb.cq ] ; 3 uses
  %indvars.iv.i93 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i94, %bb.cq ] ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, 13
  %i.ng = getelementptr inbounds nuw i8, ptr @bl_order, i64 %indvars.iv.i93
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !22
  %i.ni = zext i8 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 2734
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !22
  %i.nm = zext i16 %i.nl to i32                   ; 2 uses
  %i.nn = shl i32 %i.nm, %i.ne
  %i.no = trunc i32 %i.nn to i16
  %i.np = or i16 %i.nd, %i.no                     ; 3 uses
  store i16 %i.np, ptr %i.na, align 8, !tbaa !20
  br i1 %i.nf, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.nq = trunc i16 %i.np to i8
  %i.nr = load ptr, ptr %i.nb, align 8, !tbaa !25
  %i.ns = load i32, ptr %i.nc, align 8, !tbaa !26 ; 2 uses
  %i.nt = add i32 %i.ns, 1
  store i32 %i.nt, ptr %i.nc, align 8, !tbaa !26
  %i.nu = zext i32 %i.ns to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nu
  store i8 %i.nq, ptr %i.nv, align 1, !tbaa !22
  %15 = load i8, ptr %14, align 1, !tbaa !20
  %i.nw = load ptr, ptr %i.nb, align 8, !tbaa !25
  %i.nx = load i32, ptr %i.nc, align 8, !tbaa !26 ; 2 uses
  %i.ny = add i32 %i.nx, 1
  store i32 %i.ny, ptr %i.nc, align 8, !tbaa !26
  %i.nz = zext i32 %i.nx to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.nz
  store i8 %15, ptr %i.oa, align 1, !tbaa !22
  %i.ob = load i32, ptr %i.gx, align 4, !tbaa !21 ; 2 uses
  %i.oc = sub nsw i32 16, %i.ob
  %i.od = lshr i32 %i.nm, %i.oc
  %i.oe = trunc nuw i32 %i.od to i16              ; 2 uses
  store i16 %i.oe, ptr %i.na, align 8, !tbaa !20
  %i.of = add nsw i32 %i.ob, -13
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.og = add nsw i32 %i.ne, 3
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.oh = phi i16 [ %i.np, %bb.cp ], [ %i.oe, %bb.co ]
  %storemerge107.i = phi i32 [ %i.og, %bb.cp ], [ %i.of, %bb.co ] ; 2 uses
  store i32 %storemerge107.i, ptr %i.gx, align 4, !tbaa !21
  %indvars.iv.next.i94 = add nuw nsw i64 %indvars.iv.i93, 1 ; 2 uses
  %exitcond.not.i95 = icmp eq i64 %indvars.iv.next.i94, %wide.trip.count.i
  br i1 %exitcond.not.i95, label %send_all_trees.exit, label %bb.cn, !llvm.loop !42

send_all_trees.exit:                              ; preds = %bb.cq
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  tail call fastcc void @send_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.oi, i32 noundef %i.jm)
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 2488 ; 2 uses
  tail call fastcc void @send_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.oj, i32 noundef %i.jo)
  tail call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull %i.oi, ptr noundef nonnull %i.oj)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.ca, %send_all_trees.exit, %bb.bv
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %bb.cr
  %indvars.iv.i96 = phi i64 [ 0, %bb.cr ], [ %indvars.iv.next.i97.1, %bb.cs ] ; 3 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.i96
  store i16 0, ptr %i.ol, align 4, !tbaa !22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.i96
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  store i16 0, ptr %i.on, align 4, !tbaa !22
  %indvars.iv.next.i97.1 = add nuw nsw i64 %indvars.iv.i96, 2 ; 2 uses
  %exitcond.not.i98.1 = icmp eq i64 %indvars.iv.next.i97.1, 286
  br i1 %exitcond.not.i98.1, label %init_block.exit, label %bb.cs, !llvm.loop !0

init_block.exit:                                  ; preds = %bb.cs
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 2488
  store i16 0, ptr %i.oo, align 4, !tbaa !22
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 2492
  store i16 0, ptr %i.op, align 4, !tbaa !22
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 2496
  store i16 0, ptr %i.oq, align 4, !tbaa !22
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 2500
  store i16 0, ptr %i.or, align 4, !tbaa !22
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %i.os, align 4, !tbaa !22
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %i.ot, align 4, !tbaa !22
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %i.ou, align 4, !tbaa !22
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %i.ov, align 4, !tbaa !22
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %i.ow, align 4, !tbaa !22
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %i.ox, align 4, !tbaa !22
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %i.oy, align 4, !tbaa !22
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %i.oz, align 4, !tbaa !22
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %i.pa, align 4, !tbaa !22
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %i.pb, align 4, !tbaa !22
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %i.pc, align 4, !tbaa !22
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %i.pd, align 4, !tbaa !22
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %i.pe, align 4, !tbaa !22
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %i.pf, align 4, !tbaa !22
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %i.pg, align 4, !tbaa !22
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %i.ph, align 4, !tbaa !22
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %i.pi, align 4, !tbaa !22
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %i.pj, align 4, !tbaa !22
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %i.pk, align 4, !tbaa !22
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %i.pl, align 4, !tbaa !22
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %i.pm, align 4, !tbaa !22
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %i.pn, align 4, !tbaa !22
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %i.po, align 4, !tbaa !22
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %i.pp, align 4, !tbaa !22
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %i.pq, align 4, !tbaa !22
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %i.pr, align 4, !tbaa !22
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 2732
  store i16 0, ptr %i.ps, align 4, !tbaa !22
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 2736
  store i16 0, ptr %i.pt, align 4, !tbaa !22
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 2740
  store i16 0, ptr %i.pu, align 4, !tbaa !22
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 2744
  store i16 0, ptr %i.pv, align 4, !tbaa !22
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %i.pw, align 4, !tbaa !22
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %i.px, align 4, !tbaa !22
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %i.py, align 4, !tbaa !22
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %i.pz, align 4, !tbaa !22
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %i.qa, align 4, !tbaa !22
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %i.qb, align 4, !tbaa !22
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %i.qc, align 4, !tbaa !22
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %i.qd, align 4, !tbaa !22
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %i.qe, align 4, !tbaa !22
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %i.qf, align 4, !tbaa !22
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %i.qg, align 4, !tbaa !22
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %i.qh, align 4, !tbaa !22
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %i.qi, align 4, !tbaa !22
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %i.qj, align 4, !tbaa !22
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %i.qk, align 4, !tbaa !22
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 1220
  store i16 1, ptr %i.ql, align 4, !tbaa !22
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 5896
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 5884
  store i32 0, ptr %i.qn, align 4, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.qm, i8 0, i64 20, i1 false)
  %.not90 = icmp eq i32 %3, 0
  br i1 %.not90, label %bb.cx, label %bb.ct

bb.ct:                                            ; preds = %init_block.exit
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 5924 ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !21 ; 2 uses
  %i.qq = icmp sgt i32 %i.qp, 8
  br i1 %i.qq, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.qs = load i16, ptr %i.qr, align 8, !tbaa !20
  %i.qt = trunc i16 %i.qs to i8
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !25
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !26 ; 2 uses
  %i.qy = add i32 %i.qx, 1
  store i32 %i.qy, ptr %i.qw, align 8, !tbaa !26
  %i.qz = zext i32 %i.qx to i64
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qz
  store i8 %i.qt, ptr %i.ra, align 1, !tbaa !22
  %16 = getelementptr i8, ptr %0, i64 5921
  %17 = load i8, ptr %16, align 1, !tbaa !20
  %i.rb = load ptr, ptr %i.qu, align 8, !tbaa !25
  %i.rc = load i32, ptr %i.qw, align 8, !tbaa !26 ; 2 uses
  %i.rd = add i32 %i.rc, 1
  store i32 %i.rd, ptr %i.qw, align 8, !tbaa !26
  br label %.sink.split.i

bb.cv:                                            ; preds = %bb.ct
  %i.re = icmp sgt i32 %i.qp, 0
  br i1 %i.re, label %bb.cw, label %bi_windup.exit

bb.cw:                                            ; preds = %bb.cv
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.rg = load i16, ptr %i.rf, align 8, !tbaa !20
  %18 = trunc i16 %i.rg to i8
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !25
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !26 ; 2 uses
  %i.rl = add i32 %i.rk, 1
  store i32 %i.rl, ptr %i.rj, align 8, !tbaa !26
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cw, %bb.cu
  %.sink16.i = phi i32 [ %i.rk, %bb.cw ], [ %i.rc, %bb.cu ]
  %.sink14.i = phi ptr [ %i.ri, %bb.cw ], [ %i.rb, %bb.cu ]
  %.sink.i = phi i8 [ %18, %bb.cw ], [ %17, %bb.cu ]
  %i.rm = zext i32 %.sink16.i to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 %i.rm
  store i8 %.sink.i, ptr %i.rn, align 1, !tbaa !22
  br label %bi_windup.exit

bi_windup.exit:                                   ; preds = %bb.cv, %.sink.split.i
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 5920
  store i16 0, ptr %i.ro, align 8, !tbaa !20
  store i32 0, ptr %i.qo, align 4, !tbaa !21
  br label %bb.cx

bb.cx:                                            ; preds = %bi_windup.exit, %init_block.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @build_tree(ptr nofree noundef initializes((5284, 5292)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i16], align 16              ; 18 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !64     ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !69   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5284 ; 14 uses
  store i32 0, ptr %i.h, align 4, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5288 ; 9 uses
  store i32 573, ptr %i.i, align 8, !tbaa !71
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph, label %.lr.ph141

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5292
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

.preheader131:                                    ; preds = %bb.e
  %.pre = load i32, ptr %i.h, align 4, !tbaa !70  ; 3 uses
  %i.m = icmp slt i32 %.pre, 2
  br i1 %i.m, label %.lr.ph141, label %.lr.ph146

.lr.ph141:                                        ; preds = %bb.a, %.preheader131
  %.086.lcssa194 = phi i32 [ %.1, %.preheader131 ], [ -1, %bb.a ]
  %i.n = phi i32 [ %.pre, %.preheader131 ], [ 0, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5292
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5896 ; 2 uses
  %.not92 = icmp eq ptr %i.e, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5904 ; 2 uses
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.086139 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.e ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !22
  %.not93 = icmp eq i16 %i.t, 0
  br i1 %.not93, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.h, align 4, !tbaa !70
  %i.v = add nsw i32 %i.u, 1                      ; 2 uses
  store i32 %i.v, ptr %i.h, align 4, !tbaa !70
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.w
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.y, ptr %i.x, align 4, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  store i8 0, ptr %i.z, align 1, !tbaa !22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.aa, align 2, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.y, %bb.c ], [ %.086139, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader131, label %bb.b, !llvm.loop !51

bb.f:                                             ; preds = %.lr.ph141, %bb.h
  %i.ab = phi i32 [ %i.n, %.lr.ph141 ], [ %i.as, %bb.h ]
  %.2140 = phi i32 [ %.086.lcssa194, %.lr.ph141 ], [ %spec.select, %bb.h ] ; 3 uses
  %i.ac = icmp slt i32 %.2140, 2                  ; 2 uses
  %i.ad = add nsw i32 %.2140, 1                   ; 2 uses
  %spec.select = select i1 %i.ac, i32 %i.ad, i32 %.2140 ; 2 uses
  %spec.select94 = select i1 %i.ac, i32 %i.ad, i32 0 ; 2 uses
  %i.ae = add nsw i32 %i.ab, 1                    ; 2 uses
  store i32 %i.ae, ptr %i.h, align 4, !tbaa !70
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.af
  store i32 %spec.select94, ptr %i.ag, align 4, !tbaa !29
  %i.ah = sext i32 %spec.select94 to i64          ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ah
  store i16 1, ptr %i.ai, align 2, !tbaa !22
  %i.aj = getelementptr inbounds i8, ptr %i.p, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !22
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !27
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %i.q, align 8, !tbaa !27
  br i1 %.not92, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !22
  %i.ap = zext i16 %i.ao to i64
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !28
  %i.ar = sub i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.r, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = load i32, ptr %i.h, align 4, !tbaa !70  ; 3 uses
  %i.at = icmp slt i32 %i.as, 2
  br i1 %i.at, label %bb.f, label %.lr.ph146, !llvm.loop !52

.lr.ph146:                                        ; preds = %bb.h, %.preheader131
  %.2.lcssa = phi i32 [ %.1, %.preheader131 ], [ %spec.select, %bb.h ] ; 3 uses
  %.lcssa137 = phi i32 [ %.pre, %.preheader131 ], [ %i.as, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %.2.lcssa, ptr %i.au, align 8, !tbaa !72
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2992 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5292 ; 4 uses
  %i.ax = lshr i32 %.lcssa137, 1
  %i.ay = zext nneg i32 %i.ax to i64
  br label %bb.i

.preheader:                                       ; preds = %pqdownheap.exit
  %.pre157.pre = load i32, ptr %i.h, align 4, !tbaa !70
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2992 ; 17 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2996 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5292 ; 10 uses
  %i.bc = sext i32 %i.g to i64
  br label %bb.s

bb.i:                                             ; preds = %.lr.ph146, %pqdownheap.exit
  %indvars.iv151 = phi i64 [ %i.ay, %.lr.ph146 ], [ %indvars.iv.next152, %pqdownheap.exit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv151
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29 ; 2 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.aw, i64 %i.bf
  %i.bh = load i32, ptr %i.h, align 4, !tbaa !70  ; 2 uses
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
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !22 ; 2 uses
  %i.bu = sext i32 %.060.i to i64                 ; 3 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !29
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !22 ; 2 uses
  %i.ca = icmp ult i16 %i.bt, %i.bz
  br i1 %i.ca, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = icmp eq i16 %i.bt, %i.bz
  br i1 %i.cb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds i8, ptr %i.aw, i64 %i.br
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !22
  %i.ce = getelementptr inbounds i8, ptr %i.aw, i64 %i.bx
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !22
  %.not55.i = icmp ugt i8 %i.cd, %i.cf
  br i1 %.not55.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  br label %bb.o

end_hunk_1
begin_hunk_2_@build_tree:bb.a
  br i1 %.not.i124, label %gen_bitlen.exit, label %.lr.ph125.i, !llvm.loop !60

gen_bitlen.exit:                                  ; preds = %.outer._crit_edge.i, %bb.ak, %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.lh = load i16, ptr %i.hv, align 8, !tbaa !30
  %i.li = shl i16 %i.lh, 1                        ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !30
  %i.lk = getelementptr i8, ptr %0, i64 2962
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !30
  %i.lm = add i16 %i.ll, %i.li
  %i.ln = shl i16 %i.lm, 1                        ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.ln, ptr %i.lo, align 4, !tbaa !30
  %i.lp = getelementptr i8, ptr %0, i64 2964
  %i.lq = load i16, ptr %i.lp, align 4, !tbaa !30
  %i.lr = add i16 %i.lq, %i.ln
  %i.ls = shl i16 %i.lr, 1                        ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.ls, ptr %i.lt, align 2, !tbaa !30
  %i.lu = getelementptr i8, ptr %0, i64 2966
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !30
  %i.lw = add i16 %i.lv, %i.ls
  %i.lx = shl i16 %i.lw, 1                        ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.lx, ptr %i.ly, align 8, !tbaa !30
  %i.lz = getelementptr i8, ptr %0, i64 2968
  %i.ma = load i16, ptr %i.lz, align 8, !tbaa !30
  %i.mb = add i16 %i.ma, %i.lx
  %i.mc = shl i16 %i.mb, 1                        ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mc, ptr %i.md, align 2, !tbaa !30
  %i.me = getelementptr i8, ptr %0, i64 2970
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !30
  %i.mg = add i16 %i.mf, %i.mc
  %i.mh = shl i16 %i.mg, 1                        ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.mh, ptr %i.mi, align 4, !tbaa !30
  %i.mj = getelementptr i8, ptr %0, i64 2972
  %i.mk = load i16, ptr %i.mj, align 4, !tbaa !30
  %i.ml = add i16 %i.mk, %i.mh
  %i.mm = shl i16 %i.ml, 1                        ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mm, ptr %i.mn, align 2, !tbaa !30
  %i.mo = getelementptr i8, ptr %0, i64 2974
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !30
  %i.mq = add i16 %i.mp, %i.mm
  %i.mr = shl i16 %i.mq, 1                        ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.mr, ptr %i.ms, align 16, !tbaa !30
  %i.mt = getelementptr i8, ptr %0, i64 2976
  %i.mu = load i16, ptr %i.mt, align 8, !tbaa !30
  %i.mv = add i16 %i.mu, %i.mr
  %i.mw = shl i16 %i.mv, 1                        ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !30
  %i.my = getelementptr i8, ptr %0, i64 2978
  %i.mz = load i16, ptr %i.my, align 2, !tbaa !30
  %i.na = add i16 %i.mz, %i.mw
  %i.nb = shl i16 %i.na, 1                        ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.nb, ptr %i.nc, align 4, !tbaa !30
  %i.nd = getelementptr i8, ptr %0, i64 2980
  %i.ne = load i16, ptr %i.nd, align 4, !tbaa !30
  %i.nf = add i16 %i.ne, %i.nb
  %i.ng = shl i16 %i.nf, 1                        ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %i.ng, ptr %i.nh, align 2, !tbaa !30
  %i.ni = getelementptr i8, ptr %0, i64 2982
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !30
  %i.nk = add i16 %i.nj, %i.ng
  %i.nl = shl i16 %i.nk, 1                        ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.nl, ptr %i.nm, align 8, !tbaa !30
  %i.nn = getelementptr i8, ptr %0, i64 2984
  %i.no = load i16, ptr %i.nn, align 8, !tbaa !30
  %i.np = add i16 %i.no, %i.nl
  %i.nq = shl i16 %i.np, 1                        ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 %i.nq, ptr %i.nr, align 2, !tbaa !30
  %i.ns = getelementptr i8, ptr %0, i64 2986
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !30
  %i.nu = add i16 %i.nt, %i.nq
  %i.nv = shl i16 %i.nu, 1                        ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 %i.nv, ptr %i.nw, align 4, !tbaa !30
  %i.nx = getelementptr i8, ptr %0, i64 2988
  %i.ny = load i16, ptr %i.nx, align 4, !tbaa !30
  %i.nz = add i16 %i.ny, %i.nv
  %i.oa = shl i16 %i.nz, 1
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %i.oa, ptr %i.ob, align 2, !tbaa !30
  %.not20.i = icmp slt i32 %.2.lcssa, 0
  br i1 %.not20.i, label %gen_codes.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %gen_bitlen.exit
  %i.oc = add nuw i32 %.2.lcssa, 1
  %wide.trip.count.i = zext i32 %i.oc to i64
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %bb.ba, %.lr.ph.preheader.i
  %indvars.iv.i127 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i128, %bb.ba ] ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i127 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 2
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !22 ; 4 uses
  %i.og = icmp eq i16 %i.of, 0
  br i1 %i.og, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i126
  %i.oh = zext i16 %i.of to i32                   ; 2 uses
  %i.oi = zext i16 %i.of to i64
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oi ; 2 uses
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !30 ; 3 uses
  %i.ol = add i16 %i.ok, 1
  store i16 %i.ol, ptr %i.oj, align 2, !tbaa !30
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
  br i1 %niter.ncmp.3.not, label %bi_reverse.exit.i.unr-lcssa, label %bb.ay, !llvm.loop !61

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
  br i1 %epil.iter.cmp.not, label %bi_reverse.exit.i, label %bb.az, !llvm.loop !62

bi_reverse.exit.i:                                ; preds = %bb.az, %bi_reverse.exit.i.unr-lcssa
  %.lcssa = phi i16 [ %i.oy, %bi_reverse.exit.i.unr-lcssa ], [ %i.pc, %bb.az ]
  store i16 %.lcssa, ptr %i.od, align 2, !tbaa !22
  br label %bb.ba

bb.ba:                                            ; preds = %bi_reverse.exit.i, %.lr.ph.i126
  %indvars.iv.next.i128 = add nuw nsw i64 %indvars.iv.i127, 1 ; 2 uses
  %exitcond.not.i129 = icmp eq i64 %indvars.iv.next.i128, %wide.trip.count.i
  br i1 %exitcond.not.i129, label %gen_codes.exit, label %.lr.ph.i126, !llvm.loop !63

gen_codes.exit:                                   ; preds = %bb.ba, %gen_bitlen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @compress_block(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5884 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %..loopexit_crit_edge, label %.preheader

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 5924
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !21
  br label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5872
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5924 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  %3 = getelementptr i8, ptr %0, i64 5921         ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !30   ; 3 uses
  %i.l = zext i16 %i.k to i32
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !22    ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = icmp eq i16 %i.k, 0
  %i.r = zext i8 %i.o to i64                      ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !22
  %i.v = zext i16 %i.u to i32                     ; 3 uses
  %i.w = load i32, ptr %i.e, align 4, !tbaa !21   ; 3 uses
  %i.x = sub nsw i32 16, %i.v
  %i.y = icmp sgt i32 %i.w, %i.x
  %i.z = load i16, ptr %i.s, align 2, !tbaa !22
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = shl i32 %i.aa, %i.w
  %i.ac = load i16, ptr %i.f, align 8, !tbaa !20
  %i.ad = trunc i32 %i.ab to i16
  %i.ae = or i16 %i.ac, %i.ad                     ; 2 uses
  store i16 %i.ae, ptr %i.f, align 8, !tbaa !20
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = trunc i16 %i.ae to i8
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.h, align 8, !tbaa !26
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  store i8 %i.af, ptr %i.ak, align 1, !tbaa !22
  %4 = load i8, ptr %3, align 1, !tbaa !20
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.am = load i32, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.h, align 8, !tbaa !26
  %i.ao = zext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  store i8 %4, ptr %i.ap, align 1, !tbaa !22
  %i.aq = load i32, ptr %i.e, align 4, !tbaa !21  ; 2 uses
  %i.ar = sub nsw i32 16, %i.aq
  %i.as = lshr i32 %i.aa, %i.ar
  %i.at = trunc nuw i32 %i.as to i16
  store i16 %i.at, ptr %i.f, align 8, !tbaa !20
  %i.au = add nsw i32 %i.v, -16
  %i.av = add nsw i32 %i.au, %i.aq
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.aw = add nsw i32 %i.w, %i.v
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr @_length_code, i64 %i.r
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !22  ; 2 uses
  %i.az = zext i8 %i.ay to i64                    ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1028
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 1030
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !22
  %i.be = zext i16 %i.bd to i32                   ; 3 uses
  %i.bf = load i32, ptr %i.e, align 4, !tbaa !21  ; 3 uses
  %i.bg = sub nsw i32 16, %i.be
  %i.bh = icmp sgt i32 %i.bf, %i.bg
  %i.bi = load i16, ptr %i.bb, align 2, !tbaa !22
  %i.bj = zext i16 %i.bi to i32                   ; 2 uses
  %i.bk = shl i32 %i.bj, %i.bf
  %i.bl = load i16, ptr %i.f, align 8, !tbaa !20
  %i.bm = trunc i32 %i.bk to i16
  %i.bn = or i16 %i.bl, %i.bm                     ; 3 uses
  store i16 %i.bn, ptr %i.f, align 8, !tbaa !20
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bo = trunc i16 %i.bn to i8
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.bq = load i32, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.h, align 8, !tbaa !26
  %i.bs = zext i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bs
  store i8 %i.bo, ptr %i.bt, align 1, !tbaa !22
  %5 = load i8, ptr %3, align 1, !tbaa !20
  %i.bu = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.bv = load i32, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.h, align 8, !tbaa !26
  %i.bx = zext i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  store i8 %5, ptr %i.by, align 1, !tbaa !22
  %i.bz = load i32, ptr %i.e, align 4, !tbaa !21  ; 2 uses
  %i.ca = sub nsw i32 16, %i.bz
  %i.cb = lshr i32 %i.bj, %i.ca
  %i.cc = trunc nuw i32 %i.cb to i16              ; 2 uses
  store i16 %i.cc, ptr %i.f, align 8, !tbaa !20
  %i.cd = add nsw i32 %i.be, -16
  %i.ce = add nsw i32 %i.cd, %i.bz
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cf = add nsw i32 %i.bf, %i.be
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cg = phi i16 [ %i.bn, %bb.h ], [ %i.cc, %bb.g ] ; 3 uses
  %storemerge = phi i32 [ %i.cf, %bb.h ], [ %i.ce, %bb.g ] ; 6 uses
  store i32 %storemerge, ptr %i.e, align 4, !tbaa !21
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %i.az
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !29 ; 3 uses
  %i.cj = add i8 %i.ay, -28
  %.not184 = icmp ult i8 %i.cj, -20
  br i1 %.not184, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %i.az
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !29
  %i.cm = sub nsw i32 %i.p, %i.cl                 ; 3 uses
  %i.cn = sub nsw i32 16, %i.ci
  %i.co = icmp sgt i32 %storemerge, %i.cn
  br i1 %i.co, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cp = and i32 %i.cm, 65535
  %i.cq = shl i32 %i.cm, %storemerge
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = or i16 %i.cg, %i.cr                     ; 2 uses
  store i16 %i.cs, ptr %i.f, align 8, !tbaa !20
  %i.ct = trunc i16 %i.cs to i8
  %i.cu = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.cv = load i32, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.h, align 8, !tbaa !26
  %i.cx = zext i32 %i.cv to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cx
  store i8 %i.ct, ptr %i.cy, align 1, !tbaa !22
  %6 = load i8, ptr %3, align 1, !tbaa !20
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.da = load i32, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.h, align 8, !tbaa !26
  %i.dc = zext i32 %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dc
  store i8 %6, ptr %i.dd, align 1, !tbaa !22
  %i.de = load i32, ptr %i.e, align 4, !tbaa !21  ; 2 uses
  %i.df = sub nsw i32 16, %i.de
  %i.dg = lshr i32 %i.cp, %i.df
  %i.dh = trunc nuw i32 %i.dg to i16              ; 2 uses
  store i16 %i.dh, ptr %i.f, align 8, !tbaa !20
  %i.di = add nsw i32 %i.ci, -16
  %i.dj = add nsw i32 %i.di, %i.de
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.dk = shl i32 %i.cm, %storemerge
  %i.dl = trunc i32 %i.dk to i16
  %i.dm = or i16 %i.cg, %i.dl                     ; 2 uses
  store i16 %i.dm, ptr %i.f, align 8, !tbaa !20
  %i.dn = add nsw i32 %i.ci, %storemerge
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.do = phi i16 [ %i.dm, %bb.l ], [ %i.dh, %bb.k ]
  %storemerge185 = phi i32 [ %i.dn, %bb.l ], [ %i.dj, %bb.k ] ; 2 uses
  store i32 %storemerge185, ptr %i.e, align 4, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.dp = phi i16 [ %i.do, %bb.m ], [ %i.cg, %bb.i ]
  %i.dq = phi i32 [ %storemerge185, %bb.m ], [ %storemerge, %bb.i ] ; 3 uses
  %i.dr = add nsw i32 %i.l, -1                    ; 3 uses
  %i.ds = icmp ult i16 %i.k, 257
  %i.dt = zext nneg i32 %i.dr to i64
  %i.du = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.dt
  %i.dv = lshr i32 %i.dr, 7
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 256
  %.in.in = select i1 %i.ds, ptr %i.du, ptr %i.dy
  %.in = load i8, ptr %.in.in, align 1, !tbaa !22 ; 2 uses
  %i.dz = zext i8 %.in to i64                     ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !22
  %i.ed = zext i16 %i.ec to i32                   ; 3 uses
  %i.ee = sub nsw i32 16, %i.ed
  %i.ef = icmp sgt i32 %i.dq, %i.ee
  %i.eg = load i16, ptr %i.ea, align 2, !tbaa !22
  %i.eh = zext i16 %i.eg to i32                   ; 2 uses
  %i.ei = shl i32 %i.eh, %i.dq
  %i.ej = trunc i32 %i.ei to i16
  %i.ek = or i16 %i.dp, %i.ej                     ; 3 uses
  store i16 %i.ek, ptr %i.f, align 8, !tbaa !20
  br i1 %i.ef, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.el = trunc i16 %i.ek to i8
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.en = load i32, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.h, align 8, !tbaa !26
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ep
  store i8 %i.el, ptr %i.eq, align 1, !tbaa !22
  %7 = load i8, ptr %3, align 1, !tbaa !20
  %i.er = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.es = load i32, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.h, align 8, !tbaa !26
  %i.eu = zext i32 %i.es to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eu
  store i8 %7, ptr %i.ev, align 1, !tbaa !22
  %i.ew = load i32, ptr %i.e, align 4, !tbaa !21  ; 2 uses
  %i.ex = sub nsw i32 16, %i.ew
  %i.ey = lshr i32 %i.eh, %i.ex
  %i.ez = trunc nuw i32 %i.ey to i16              ; 2 uses
  store i16 %i.ez, ptr %i.f, align 8, !tbaa !20
  %i.fa = add nsw i32 %i.ed, -16
  %i.fb = add nsw i32 %i.fa, %i.ew
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.fc = add nsw i32 %i.dq, %i.ed
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fd = phi i16 [ %i.ek, %bb.p ], [ %i.ez, %bb.o ] ; 2 uses
  %storemerge186 = phi i32 [ %i.fc, %bb.p ], [ %i.fb, %bb.o ] ; 6 uses
  store i32 %storemerge186, ptr %i.e, align 4, !tbaa !21
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %i.dz
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !29 ; 3 uses
  %.not187 = icmp ult i8 %.in, 4
  br i1 %.not187, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %i.dz
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !29
  %i.fi = sub i32 %i.dr, %i.fh                    ; 3 uses
  %i.fj = sub nsw i32 16, %i.ff
  %i.fk = icmp sgt i32 %storemerge186, %i.fj
  br i1 %i.fk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fl = and i32 %i.fi, 65535
  %i.fm = shl i32 %i.fi, %storemerge186
  %i.fn = trunc i32 %i.fm to i16
  %i.fo = or i16 %i.fd, %i.fn                     ; 2 uses
  store i16 %i.fo, ptr %i.f, align 8, !tbaa !20
  %i.fp = trunc i16 %i.fo to i8
  %i.fq = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.fr = load i32, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr %i.h, align 8, !tbaa !26
  %i.ft = zext i32 %i.fr to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ft
  store i8 %i.fp, ptr %i.fu, align 1, !tbaa !22
  %8 = load i8, ptr %3, align 1, !tbaa !20
  %i.fv = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.fw = load i32, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr %i.h, align 8, !tbaa !26
  %i.fy = zext i32 %i.fw to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fy
  store i8 %8, ptr %i.fz, align 1, !tbaa !22
  %i.ga = load i32, ptr %i.e, align 4, !tbaa !21  ; 2 uses
  %i.gb = sub nsw i32 16, %i.ga
  %i.gc = lshr i32 %i.fl, %i.gb
  %i.gd = trunc nuw i32 %i.gc to i16
  store i16 %i.gd, ptr %i.f, align 8, !tbaa !20
  %i.ge = add nsw i32 %i.ff, -16
  %i.gf = add nsw i32 %i.ge, %i.ga
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.gg = shl i32 %i.fi, %storemerge186
  %i.gh = trunc i32 %i.gg to i16
  %i.gi = or i16 %i.fd, %i.gh
  store i16 %i.gi, ptr %i.f, align 8, !tbaa !20
  %i.gj = add nsw i32 %i.ff, %storemerge186
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.t, %bb.d, %bb.e
  %storemerge189.sink = phi i32 [ %i.av, %bb.d ], [ %i.aw, %bb.e ], [ %i.gj, %bb.t ], [ %i.gf, %bb.s ] ; 2 uses
  store i32 %storemerge189.sink, ptr %i.e, align 4, !tbaa !21
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.q
  %i.gk = phi i32 [ %storemerge186, %bb.q ], [ %storemerge189.sink, %.sink.split ]
  %i.gl = load i32, ptr %i.a, align 4, !tbaa !24
  %i.gm = zext i32 %i.gl to i64
  %i.gn = icmp samesign ult i64 %indvars.iv.next, %i.gm
  br i1 %i.gn, label %bb.b, label %.loopexit, !llvm.loop !77

.loopexit:                                        ; preds = %bb.u, %..loopexit_crit_edge
  %i.go = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.gk, %bb.u ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 1026
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !22
  %i.gs = zext i16 %i.gr to i32                   ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 5924 ; 2 uses
  %i.gu = sub nsw i32 16, %i.gs
  %i.gv = icmp sgt i32 %i.go, %i.gu
  %i.gw = load i16, ptr %i.gp, align 2, !tbaa !22
  %i.gx = zext i16 %i.gw to i32                   ; 2 uses
  %i.gy = shl i32 %i.gx, %i.go
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 3 uses
  %i.ha = load i16, ptr %i.gz, align 8, !tbaa !20
  %i.hb = trunc i32 %i.gy to i16
  %i.hc = or i16 %i.ha, %i.hb                     ; 2 uses
  store i16 %i.hc, ptr %i.gz, align 8, !tbaa !20
  br i1 %i.gv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.hd = trunc i16 %i.hc to i8
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !25
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !26 ; 2 uses
  %i.hi = add i32 %i.hh, 1
  store i32 %i.hi, ptr %i.hg, align 8, !tbaa !26
  %i.hj = zext i32 %i.hh to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hj
  store i8 %i.hd, ptr %i.hk, align 1, !tbaa !22
  %9 = getelementptr i8, ptr %0, i64 5921
  %10 = load i8, ptr %9, align 1, !tbaa !20
  %i.hl = load ptr, ptr %i.he, align 8, !tbaa !25
  %i.hm = load i32, ptr %i.hg, align 8, !tbaa !26 ; 2 uses
  %i.hn = add i32 %i.hm, 1
  store i32 %i.hn, ptr %i.hg, align 8, !tbaa !26
  %i.ho = zext i32 %i.hm to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ho
  store i8 %10, ptr %i.hp, align 1, !tbaa !22
  %i.hq = load i32, ptr %i.gt, align 4, !tbaa !21 ; 2 uses
  %i.hr = sub nsw i32 16, %i.hq
  %i.hs = lshr i32 %i.gx, %i.hr
  %i.ht = trunc nuw i32 %i.hs to i16
  store i16 %i.ht, ptr %i.gz, align 8, !tbaa !20
  %i.hu = add nsw i32 %i.gs, -16
  %i.hv = add nsw i32 %i.hu, %i.hq
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.hw = add nsw i32 %i.go, %i.gs
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge190 = phi i32 [ %i.hw, %bb.w ], [ %i.hv, %bb.v ]
  store i32 %storemerge190, ptr %i.gt, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @_tr_tally(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = trunc i32 %1 to i16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5884 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24   ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.f
  store i16 %i.a, ptr %i.g, align 2, !tbaa !30
  %i.h = trunc i32 %2 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5872
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = add i32 %i.e, 1
  store i32 %i.k, ptr %i.d, align 4, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  store i8 %i.h, ptr %i.l, align 1, !tbaa !22
  %i.m = icmp eq i32 %1, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.o = zext i32 %2 to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 4, !tbaa !22
  %i.r = add i16 %i.q, 1
  store i16 %i.r, ptr %i.p, align 4, !tbaa !22
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !78
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !78
  %i.v = add i32 %1, -1                           ; 2 uses
  %i.w = zext i32 %2 to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_length_code, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !22
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr i8, ptr %0, i64 1224
  %i.ab = getelementptr [4 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !22
  %i.ad = add i16 %i.ac, 1
  store i16 %i.ad, ptr %i.ab, align 4, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.af = icmp ult i32 %1, 257
  %i.ag = zext nneg i32 %i.v to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.ag
  %i.ai = lshr i32 %i.v, 7
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 256
  %.in.in = select i1 %i.af, ptr %i.ah, ptr %i.al
  %.in = load i8, ptr %.in.in, align 1, !tbaa !22
  %i.am = zext i8 %.in to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.am ; 2 uses
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !22
  %i.ap = add i16 %i.ao, 1
  store i16 %i.ap, ptr %i.an, align 4, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5880
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !79
  %i.at = add i32 %i.as, -1
  %i.au = icmp eq i32 %i.aq, %i.at
  %i.av = zext i1 %i.au to i32
  ret i32 %i.av
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @send_tree(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -2147483648, 2147483647) %2) unnamed_addr #1 {
bb.a:
  %.not253 = icmp slt i32 %2, 0
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0                      ; 2 uses
  %spec.select251 = select i1 %i.c, i32 138, i32 7
  %spec.select = select i1 %i.c, i32 3, i32 4
  %i.d = zext i16 %i.b to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2732 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5924 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 32 uses
  %3 = getelementptr i8, ptr %0, i64 5921         ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2796
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2804
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2802
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
  %i.s = load i16, ptr %i.r, align 2, !tbaa !22   ; 2 uses
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
  %.1213 = phi i32 [ %i.be, %bb.g ], [ %i.u, %.preheader ]
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !22
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = sub nsw i32 16, %i.ad
  %i.af = icmp sgt i32 %i.ab, %i.ae
  %i.ag = load i16, ptr %i.z, align 4, !tbaa !22
  %i.ah = zext i16 %i.ag to i32                   ; 2 uses
  %i.ai = shl i32 %i.ah, %i.ab
  %i.aj = load i16, ptr %i.g, align 8, !tbaa !20
  %i.ak = trunc i32 %i.ai to i16
  %i.al = or i16 %i.aj, %i.ak                     ; 2 uses
  store i16 %i.al, ptr %i.g, align 8, !tbaa !20
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = trunc i16 %i.al to i8
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ao = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.i, align 8, !tbaa !26
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  store i8 %i.am, ptr %i.ar, align 1, !tbaa !22
  %4 = load i8, ptr %3, align 1, !tbaa !20
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.at = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.i, align 8, !tbaa !26
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  store i8 %4, ptr %i.aw, align 1, !tbaa !22
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.ay = sub nsw i32 16, %i.ax
  %i.az = lshr i32 %i.ah, %i.ay
  %i.ba = trunc nuw i32 %i.az to i16
  store i16 %i.ba, ptr %i.g, align 8, !tbaa !20
  %i.bb = add nsw i32 %i.ad, -16
  %i.bc = add nsw i32 %i.bb, %i.ax
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bd = add nsw i32 %i.ab, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge249 = phi i32 [ %i.bd, %bb.f ], [ %i.bc, %bb.e ] ; 2 uses
  store i32 %storemerge249, ptr %i.f, align 4, !tbaa !21
  %i.be = add nsw i32 %.1213, -1                  ; 2 uses
  %.not250 = icmp eq i32 %i.be, 0
  br i1 %.not250, label %.loopexit, label %bb.d, !llvm.loop !80

bb.h:                                             ; preds = %bb.c
  %.not241 = icmp eq i32 %.0211257, 0
  %i.bf = load i32, ptr %i.f, align 4, !tbaa !21  ; 10 uses
  br i1 %.not241, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not245 = icmp eq i32 %.0211257, %.0210258
  br i1 %.not245, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = zext nneg i32 %.0211257 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !22
  %i.bk = zext i16 %i.bj to i32                   ; 3 uses
  %i.bl = sub nsw i32 16, %i.bk
  %i.bm = icmp sgt i32 %i.bf, %i.bl
  %i.bn = load i16, ptr %i.bh, align 4, !tbaa !22
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %i.bp = shl i32 %i.bo, %i.bf
  %i.bq = load i16, ptr %i.g, align 8, !tbaa !20
  %i.br = trunc i32 %i.bp to i16
  %i.bs = or i16 %i.bq, %i.br                     ; 2 uses
  store i16 %i.bs, ptr %i.g, align 8, !tbaa !20
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = trunc i16 %i.bs to i8
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.bv = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.i, align 8, !tbaa !26
  %i.bx = zext i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  store i8 %i.bt, ptr %i.by, align 1, !tbaa !22
  %5 = load i8, ptr %3, align 1, !tbaa !20
  %i.bz = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ca = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.i, align 8, !tbaa !26
  %i.cc = zext i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  store i8 %5, ptr %i.cd, align 1, !tbaa !22
  %i.ce = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.cf = sub nsw i32 16, %i.ce
  %i.cg = lshr i32 %i.bo, %i.cf
  %i.ch = trunc nuw i32 %i.cg to i16
  store i16 %i.ch, ptr %i.g, align 8, !tbaa !20
  %i.ci = add nsw i32 %i.bk, -16
  %i.cj = add nsw i32 %i.ci, %i.ce
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ck = add nsw i32 %i.bf, %i.bk
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge246 = phi i32 [ %i.ck, %bb.l ], [ %i.cj, %bb.k ] ; 2 uses
  store i32 %storemerge246, ptr %i.f, align 4, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.cl = phi i32 [ %storemerge246, %bb.m ], [ %i.bf, %bb.i ] ; 3 uses
  %.2 = phi i32 [ %.0212256, %bb.m ], [ %i.u, %bb.i ]
  %i.cm = load i16, ptr %i.k, align 2, !tbaa !22
  %i.cn = zext i16 %i.cm to i32                   ; 3 uses
  %i.co = sub nsw i32 16, %i.cn
  %i.cp = icmp sgt i32 %i.cl, %i.co
  %i.cq = load i16, ptr %i.j, align 4, !tbaa !22
  %i.cr = zext i16 %i.cq to i32                   ; 2 uses
  %i.cs = shl i32 %i.cr, %i.cl
  %i.ct = load i16, ptr %i.g, align 8, !tbaa !20
  %i.cu = trunc i32 %i.cs to i16
  %i.cv = or i16 %i.ct, %i.cu                     ; 3 uses
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i16 %i.cv, ptr %i.g, align 8, !tbaa !20
  %i.cw = trunc i16 %i.cv to i8
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.cy = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.i, align 8, !tbaa !26
  %i.da = zext i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da
  store i8 %i.cw, ptr %i.db, align 1, !tbaa !22
  %6 = load i8, ptr %3, align 1, !tbaa !20
  %i.dc = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.dd = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.i, align 8, !tbaa !26
  %i.df = zext i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.df
  store i8 %6, ptr %i.dg, align 1, !tbaa !22
  %i.dh = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.di = sub nsw i32 16, %i.dh
  %i.dj = lshr i32 %i.cr, %i.di
  %i.dk = trunc nuw i32 %i.dj to i16
  %i.dl = add nsw i32 %i.cn, -16
  %i.dm = add nsw i32 %i.dl, %i.dh
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dn = add nsw i32 %i.cl, %i.cn
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.do = phi i16 [ %i.cv, %bb.p ], [ %i.dk, %bb.o ] ; 2 uses
  %storemerge247 = phi i32 [ %i.dn, %bb.p ], [ %i.dm, %bb.o ] ; 5 uses
  store i32 %storemerge247, ptr %i.f, align 4, !tbaa !21
  %i.dp = icmp sgt i32 %storemerge247, 14
  %i.dq = add i32 %.2, 65533                      ; 3 uses
  br i1 %i.dp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dr = and i32 %i.dq, 65535
  %i.ds = shl i32 %i.dq, %storemerge247
  %i.dt = trunc i32 %i.ds to i16
  %i.du = or i16 %i.do, %i.dt                     ; 2 uses
  store i16 %i.du, ptr %i.g, align 8, !tbaa !20
  %i.dv = trunc i16 %i.du to i8
  %i.dw = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.dx = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.i, align 8, !tbaa !26
  %i.dz = zext i32 %i.dx to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dz
  store i8 %i.dv, ptr %i.ea, align 1, !tbaa !22
  %7 = load i8, ptr %3, align 1, !tbaa !20
  %i.eb = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ec = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.i, align 8, !tbaa !26
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ee
  store i8 %7, ptr %i.ef, align 1, !tbaa !22
  %i.eg = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.eh = sub nsw i32 16, %i.eg
  %i.ei = lshr i32 %i.dr, %i.eh
  %i.ej = trunc nuw i32 %i.ei to i16
  store i16 %i.ej, ptr %i.g, align 8, !tbaa !20
  %i.ek = add nsw i32 %i.eg, -14
  br label %.loopexit.sink.split

bb.s:                                             ; preds = %bb.q
  %i.el = shl i32 %i.dq, %storemerge247
  %i.em = trunc i32 %i.el to i16
  %i.en = or i16 %i.do, %i.em
  store i16 %i.en, ptr %i.g, align 8, !tbaa !20
  %i.eo = add nsw i32 %storemerge247, 2
  br label %.loopexit.sink.split

bb.t:                                             ; preds = %bb.h
  %i.ep = icmp slt i32 %.0212256, 10
  %i.eq = load i16, ptr %i.g, align 8, !tbaa !20  ; 2 uses
  br i1 %i.ep, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.er = load i16, ptr %i.o, align 2, !tbaa !22
  %i.es = zext i16 %i.er to i32                   ; 3 uses
  %i.et = sub nsw i32 16, %i.es
  %i.eu = icmp sgt i32 %i.bf, %i.et
  %i.ev = load i16, ptr %i.n, align 8, !tbaa !22
  %i.ew = zext i16 %i.ev to i32                   ; 2 uses
  %i.ex = shl i32 %i.ew, %i.bf
  %i.ey = trunc i32 %i.ex to i16
  %i.ez = or i16 %i.eq, %i.ey                     ; 3 uses
  br i1 %i.eu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i16 %i.ez, ptr %i.g, align 8, !tbaa !20
  %i.fa = trunc i16 %i.ez to i8
  %i.fb = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.fc = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.i, align 8, !tbaa !26
  %i.fe = zext i32 %i.fc to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  store i8 %i.fa, ptr %i.ff, align 1, !tbaa !22
  %8 = load i8, ptr %3, align 1, !tbaa !20
  %i.fg = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.fh = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.i, align 8, !tbaa !26
  %i.fj = zext i32 %i.fh to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fj
  store i8 %8, ptr %i.fk, align 1, !tbaa !22
  %i.fl = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.fm = sub nsw i32 16, %i.fl
  %i.fn = lshr i32 %i.ew, %i.fm
  %i.fo = trunc nuw i32 %i.fn to i16
  %i.fp = add nsw i32 %i.es, -16
  %i.fq = add nsw i32 %i.fp, %i.fl
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.fr = add nsw i32 %i.bf, %i.es
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fs = phi i16 [ %i.ez, %bb.w ], [ %i.fo, %bb.v ] ; 2 uses
  %storemerge243 = phi i32 [ %i.fr, %bb.w ], [ %i.fq, %bb.v ] ; 5 uses
  store i32 %storemerge243, ptr %i.f, align 4, !tbaa !21
  %i.ft = icmp sgt i32 %storemerge243, 13
  %i.fu = add nsw i32 %.0212256, 65534            ; 3 uses
  br i1 %i.ft, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fv = and i32 %i.fu, 65535
  %i.fw = shl i32 %i.fu, %storemerge243
  %i.fx = trunc i32 %i.fw to i16
  %i.fy = or i16 %i.fs, %i.fx                     ; 2 uses
  store i16 %i.fy, ptr %i.g, align 8, !tbaa !20
  %i.fz = trunc i16 %i.fy to i8
  %i.ga = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.gb = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr %i.i, align 8, !tbaa !26
  %i.gd = zext i32 %i.gb to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gd
  store i8 %i.fz, ptr %i.ge, align 1, !tbaa !22
  %9 = load i8, ptr %3, align 1, !tbaa !20
  %i.gf = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.gg = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.i, align 8, !tbaa !26
  %i.gi = zext i32 %i.gg to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gi
  store i8 %9, ptr %i.gj, align 1, !tbaa !22
  %i.gk = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.gl = sub nsw i32 16, %i.gk
  %i.gm = lshr i32 %i.fv, %i.gl
  %i.gn = trunc nuw i32 %i.gm to i16
  store i16 %i.gn, ptr %i.g, align 8, !tbaa !20
  %i.go = add nsw i32 %i.gk, -13
  br label %.loopexit.sink.split

bb.z:                                             ; preds = %bb.x
  %i.gp = shl i32 %i.fu, %storemerge243
  %i.gq = trunc i32 %i.gp to i16
  %i.gr = or i16 %i.fs, %i.gq
  store i16 %i.gr, ptr %i.g, align 8, !tbaa !20
  %i.gs = add nsw i32 %storemerge243, 3
  br label %.loopexit.sink.split

bb.aa:                                            ; preds = %bb.t
  %i.gt = load i16, ptr %i.m, align 2, !tbaa !22
  %i.gu = zext i16 %i.gt to i32                   ; 3 uses
  %i.gv = sub nsw i32 16, %i.gu
  %i.gw = icmp sgt i32 %i.bf, %i.gv
  %i.gx = load i16, ptr %i.l, align 4, !tbaa !22
  %i.gy = zext i16 %i.gx to i32                   ; 2 uses
  %i.gz = shl i32 %i.gy, %i.bf
  %i.ha = trunc i32 %i.gz to i16
  %i.hb = or i16 %i.eq, %i.ha                     ; 3 uses
  br i1 %i.gw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i16 %i.hb, ptr %i.g, align 8, !tbaa !20
  %i.hc = trunc i16 %i.hb to i8
  %i.hd = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.he = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr %i.i, align 8, !tbaa !26
  %i.hg = zext i32 %i.he to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hg
  store i8 %i.hc, ptr %i.hh, align 1, !tbaa !22
  %10 = load i8, ptr %3, align 1, !tbaa !20
  %i.hi = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.hj = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr %i.i, align 8, !tbaa !26
  %i.hl = zext i32 %i.hj to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hl
  store i8 %10, ptr %i.hm, align 1, !tbaa !22
  %i.hn = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.ho = sub nsw i32 16, %i.hn
  %i.hp = lshr i32 %i.gy, %i.ho
  %i.hq = trunc nuw i32 %i.hp to i16
  %i.hr = add nsw i32 %i.gu, -16
  %i.hs = add nsw i32 %i.hr, %i.hn
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ht = add nsw i32 %i.bf, %i.gu
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hu = phi i16 [ %i.hb, %bb.ac ], [ %i.hq, %bb.ab ] ; 2 uses
  %storemerge = phi i32 [ %i.ht, %bb.ac ], [ %i.hs, %bb.ab ] ; 5 uses
  store i32 %storemerge, ptr %i.f, align 4, !tbaa !21
  %i.hv = icmp sgt i32 %storemerge, 9
  %i.hw = add nuw i32 %.0212256, 65526            ; 3 uses
  br i1 %i.hv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hx = and i32 %i.hw, 65535
  %i.hy = shl i32 %i.hw, %storemerge
  %i.hz = trunc i32 %i.hy to i16
  %i.ia = or i16 %i.hu, %i.hz                     ; 2 uses
  store i16 %i.ia, ptr %i.g, align 8, !tbaa !20
  %i.ib = trunc i16 %i.ia to i8
  %i.ic = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.id = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.ie = add i32 %i.id, 1
  store i32 %i.ie, ptr %i.i, align 8, !tbaa !26
  %i.if = zext i32 %i.id to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.if
  store i8 %i.ib, ptr %i.ig, align 1, !tbaa !22
  %11 = load i8, ptr %3, align 1, !tbaa !20
  %i.ih = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ii = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr %i.i, align 8, !tbaa !26
  %i.ik = zext i32 %i.ii to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ik
  store i8 %11, ptr %i.il, align 1, !tbaa !22
  %i.im = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.in = sub nsw i32 16, %i.im
  %i.io = lshr i32 %i.hx, %i.in
  %i.ip = trunc nuw i32 %i.io to i16
  store i16 %i.ip, ptr %i.g, align 8, !tbaa !20
  %i.iq = add nsw i32 %i.im, -9
  br label %.loopexit.sink.split

bb.af:                                            ; preds = %bb.ad
  %i.ir = shl i32 %i.hw, %storemerge
  %i.is = trunc i32 %i.ir to i16
  %i.it = or i16 %i.hu, %i.is
  store i16 %i.it, ptr %i.g, align 8, !tbaa !20
  %i.iu = add nsw i32 %storemerge, 7
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.ae, %bb.af, %bb.y, %bb.z, %bb.r, %bb.s
  %storemerge244.sink = phi i32 [ %i.ek, %bb.r ], [ %i.go, %bb.y ], [ %i.eo, %bb.s ], [ %i.gs, %bb.z ], [ %i.iu, %bb.af ], [ %i.iq, %bb.ae ]
  store i32 %storemerge244.sink, ptr %i.f, align 4, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.loopexit.sink.split
  %i.iv = icmp eq i16 %i.s, 0
  br i1 %i.iv, label %bb.ah, label %bb.ag

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
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.ah, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !23}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
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
!19 = !{!"internal_state", !10, i64 0, !6, i64 8, !11, i64 16, !12, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !13, i64 48, !6, i64 56, !5, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !11, i64 80, !12, i64 88, !14, i64 96, !14, i64 104, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !12, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !5, i64 196, !5, i64 2488, !5, i64 2732, !17, i64 2888, !17, i64 2912, !17, i64 2936, !5, i64 2960, !5, i64 2992, !6, i64 5284, !6, i64 5288, !5, i64 5292, !11, i64 5872, !6, i64 5880, !6, i64 5884, !14, i64 5888, !12, i64 5896, !12, i64 5904, !6, i64 5912, !6, i64 5916, !18, i64 5920, !6, i64 5924, !12, i64 5928}
!20 = !{!19, !18, i64 5920}
!21 = !{!19, !6, i64 5924}
!22 = !{!5, !5, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!19, !6, i64 5884}
!25 = !{!19, !11, i64 16}
!26 = !{!19, !6, i64 40}
!27 = !{!19, !12, i64 5896}
!28 = !{!19, !12, i64 5904}
!29 = !{!6, !6, i64 0}
!30 = !{!18, !18, i64 0}
!31 = !{!19, !14, i64 5888}
!32 = !{!19, !11, i64 5872}
!33 = !{!19, !15, i64 2888}
!34 = !{!19, !16, i64 2904}
!35 = !{!19, !15, i64 2912}
!36 = !{!19, !16, i64 2928}
!37 = !{!19, !15, i64 2936}
!38 = !{!19, !16, i64 2952}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23}
!43 = !{!19, !6, i64 180}
!44 = !{!19, !10, i64 0}
!45 = !{!"p1 _ZTS14internal_state", !9, i64 0}
!46 = !{!"z_stream_s", !11, i64 0, !6, i64 8, !12, i64 16, !11, i64 24, !6, i64 32, !12, i64 40, !11, i64 48, !45, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !6, i64 88, !12, i64 96, !12, i64 104}
!47 = !{!46, !6, i64 88}
!48 = !{!19, !6, i64 2896}
!49 = !{!19, !6, i64 2920}
!50 = !{!19, !6, i64 184}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = distinct !{!53, !23}
!54 = distinct !{!54, !23}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
!58 = distinct !{!58, !23}
!59 = distinct !{!59, !23}
!60 = distinct !{!60, !23}
!61 = distinct !{!61, !23}
!62 = distinct !{!62, !76}
!63 = distinct !{!63, !23}
!64 = !{!17, !15, i64 0}
!65 = !{!17, !16, i64 16}
!66 = !{!"p1 int", !9, i64 0}
!67 = !{!"static_tree_desc_s", !15, i64 0, !66, i64 8, !6, i64 16, !6, i64 20, !6, i64 24}
!68 = !{!67, !15, i64 0}
!69 = !{!67, !6, i64 20}
!70 = !{!19, !6, i64 5284}
!71 = !{!19, !6, i64 5288}
!72 = !{!17, !6, i64 8}
!73 = !{!67, !66, i64 8}
!74 = !{!67, !6, i64 16}
!75 = !{!67, !6, i64 24}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !23}
!78 = !{!19, !6, i64 5912}
!79 = !{!19, !6, i64 5880}
!80 = distinct !{!80, !23}
!81 = distinct !{!81, !23}
end_hunk_2
