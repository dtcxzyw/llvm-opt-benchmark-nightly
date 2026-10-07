Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/inflate64?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.code = type { i8, i8, i16 }

@inflate64_copyright = local_unnamed_addr constant [47 x i8] c" inflate 1.2.3 Copyright 1995-2005 Mark Adler \00", align 16
@inflate64.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 -124, i8 8, i16 115 }, %struct.code { i8 -126, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 -128, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 -128, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 -125, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 -127, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 -128, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 -123, i8 8, i16 227 }, %struct.code { i8 -125, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 -127, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 -128, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 -124, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 -126, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 -128, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 -123, i8 8, i16 163 }, %struct.code { i8 -125, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 -127, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 -128, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 -124, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 -126, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 -128, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 -55, i8 8, i16 0 }, %struct.code { i8 -125, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 -127, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 -128, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 -124, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 -126, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 -123, i8 8, i16 131 }, %struct.code { i8 -126, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 -128, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 -128, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 -125, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 -127, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 -128, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 -112, i8 8, i16 3 }, %struct.code { i8 -125, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 -127, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 -128, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 -124, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 -126, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 -128, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 -123, i8 8, i16 195 }, %struct.code { i8 -125, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 -127, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 -128, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 -124, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 -126, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 -128, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 -60, i8 8, i16 0 }, %struct.code { i8 -125, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 -127, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 -128, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 -124, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 -126, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 -124, i8 8, i16 115 }, %struct.code { i8 -126, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 -128, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 -128, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 -125, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 -127, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 -128, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 -123, i8 8, i16 227 }, %struct.code { i8 -125, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 -127, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 -128, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 -124, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 -126, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 -128, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 -123, i8 8, i16 163 }, %struct.code { i8 -125, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 -127, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 -128, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 -124, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 -126, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 -128, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 -55, i8 8, i16 0 }, %struct.code { i8 -125, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 -127, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 -128, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 -124, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 -126, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 -123, i8 8, i16 131 }, %struct.code { i8 -126, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 -128, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 -128, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 -125, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 -127, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 -128, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 -112, i8 8, i16 3 }, %struct.code { i8 -125, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 -127, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 -128, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 -124, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 -126, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 -128, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 -123, i8 8, i16 195 }, %struct.code { i8 -125, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 -127, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 -128, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 -124, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 -126, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 -128, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 -60, i8 8, i16 0 }, %struct.code { i8 -125, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 -127, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 -128, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 -124, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 -126, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 16
@fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 30, i8 5, i16 -32767 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 30, i8 5, i16 -16383 }], align 16
@inflate_table.lbase = internal unnamed_addr constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 3, i16 0, i16 0], align 16
@inflate_table.lext = internal unnamed_addr constant [31 x i16] [i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 129, i16 129, i16 129, i16 129, i16 130, i16 130, i16 130, i16 130, i16 131, i16 131, i16 131, i16 131, i16 132, i16 132, i16 132, i16 132, i16 133, i16 133, i16 133, i16 133, i16 144, i16 201, i16 196], align 16
@inflate_table.dbase = internal unnamed_addr constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 -32767, i16 -16383], align 16
@inflate_table.dext = internal unnamed_addr constant [32 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 30, i16 30], align 16

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable
define range(i32 -4, 1) i32 @inflate64Init2(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(9544) ptr @calloc(i64 noundef 1, i64 noundef 9544) #12 ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !13
  %i.e = icmp slt i32 %1, 0
  %i.f = lshr i32 %1, 4
  %i.g = add nuw nsw i32 %i.f, 1
  %.sink = select i1 %i.e, i32 0, i32 %i.g
  %.0 = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink, ptr %i.h, align 8, !tbaa !15
  %i.i = add nsw i32 %.0, -17
  %or.cond = icmp ult i32 %i.i, -9
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #13
  store ptr null, ptr %i.d, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %.0, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1, ptr %i.m, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 32768, ptr %i.n, align 4, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1352 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.o, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.o, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.o, ptr %i.r, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.034 = phi i32 [ 0, %bb.e ], [ -2, %bb.a ], [ -2, %bb.d ], [ -4, %bb.b ]
  ret i32 %.034
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -5, 3) i32 @inflate64(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit840, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 65 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit840, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit840, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %.loopexit840

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load i32, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.m = icmp eq i32 %i.l, 11
  br i1 %i.m, label %bb.g, label %.split1779

bb.g:                                             ; preds = %bb.f
  store i32 12, ptr %i.c, align 8, !tbaa !41
  br label %.split1779

.split1779:                                       ; preds = %bb.f, %bb.g
  %i.n = phi i32 [ %i.l, %bb.f ], [ 12, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !42   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !40   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 76 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 116 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 124 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 14 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 1352 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 776 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.au = icmp eq i32 %1, 5
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  br label %bb.h

bb.h:                                             ; preds = %.thread, %.split1779
  %i.ay = phi i32 [ %i.n, %.split1779 ], [ %.pre, %.thread ] ; 3 uses
  %.0686 = phi ptr [ %i.h, %.split1779 ], [ %.39725, %.thread ] ; 53 uses
  %.0683 = phi ptr [ %i.f, %.split1779 ], [ %.2685, %.thread ] ; 34 uses
  %.0642 = phi i32 [ %i.r, %.split1779 ], [ %.39681, %.thread ] ; 47 uses
  %.0640 = phi i32 [ %i.p, %.split1779 ], [ %.1641, %.thread ] ; 36 uses
  %.0599 = phi i64 [ %i.t, %.split1779 ], [ %.39638, %.thread ] ; 34 uses
  %.0590 = phi i32 [ %i.v, %.split1779 ], [ %.39, %.thread ] ; 47 uses
  %.0585 = phi i32 [ %i.p, %.split1779 ], [ %.3588, %.thread ] ; 46 uses
  %.0 = phi i32 [ 0, %.split1779 ], [ %.7, %.thread ] ; 28 uses
  %.06833029 = ptrtoaddr ptr %.0683 to i64
  switch i32 %i.ay, label %.loopexit840 [
    i32 0, label %bb.i
    i32 9, label %.preheader
    i32 10, label %.loopexit838
    i32 11, label %bb.w
    i32 12, label %bb.x
    i32 13, label %bb.ae
    i32 14, label %._crit_edge2203
    i32 15, label %.preheader834
    i32 16, label %.split
    i32 17, label %..split1426_crit_edge
    i32 18, label %bb.bj
    i32 19, label %._crit_edge2197
    i32 20, label %bb.bv
    i32 21, label %._crit_edge2199
    i32 22, label %bb.cf
    i32 23, label %bb.cn
    i32 24, label %bb.cp
    i32 26, label %.loopexit
    i32 27, label %.loopexit.loopexit1806
    i32 28, label %.loopexit840.loopexit
  ]

._crit_edge2203:                                  ; preds = %bb.h
  %.pre2204 = load i32, ptr %i.ab, align 4, !tbaa !45
  br label %bb.al

._crit_edge2199:                                  ; preds = %bb.h
  %.pre2200 = load i32, ptr %i.ao, align 4, !tbaa !46
  br label %bb.cb

._crit_edge2197:                                  ; preds = %bb.h
  %.pre2198 = load i32, ptr %i.ao, align 4, !tbaa !46
  br label %bb.bt

..split1426_crit_edge:                            ; preds = %bb.h
  %.promoted1427.pre = load i32, ptr %i.af, align 4, !tbaa !47
  br label %.split1426

.preheader834:                                    ; preds = %bb.h
  %i.az = icmp ult i32 %.0590, 14
  br i1 %i.az, label %.lr.ph1215.preheader, label %.split.thread

.lr.ph1215.preheader:                             ; preds = %.preheader834
  %i.ba = zext nneg i32 %.0590 to i64             ; 4 uses
  %i.bb = icmp eq i32 %.0642, 0
  br i1 %i.bb, label %.loopexit.loopexit1803, label %bb.ap

.preheader:                                       ; preds = %bb.h
  %i.bc = icmp ult i32 %.0590, 32
  br i1 %i.bc, label %.lr.ph1784.preheader, label %._crit_edge1785

.lr.ph1784.preheader:                             ; preds = %.preheader
  %i.bd = zext nneg i32 %.0590 to i64             ; 5 uses
  %i.be = icmp eq i32 %.0642, 0
  br i1 %i.be, label %.loopexit.loopexit, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.bf = load i32, ptr %i.w, align 8, !tbaa !15
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %.preheader818

.preheader818:                                    ; preds = %bb.i
  %i.bh = icmp ult i32 %.0590, 16
  br i1 %i.bh, label %.lr.ph1773.preheader, label %._crit_edge1774

.lr.ph1773.preheader:                             ; preds = %.preheader818
  %i.bi = zext nneg i32 %.0590 to i64             ; 4 uses
  %i.bj = icmp eq i32 %.0642, 0
  br i1 %i.bj, label %.loopexit.loopexit1794, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 12, ptr %i.c, align 8, !tbaa !41
  br label %.thread

bb.k:                                             ; preds = %.lr.ph1773.preheader
  %i.bk = add i32 %.0642, -1                      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0686, i64 1 ; 3 uses
  %i.bm = load i8, ptr %.0686, align 1, !tbaa !24
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, %i.bi
  %i.bp = add i64 %i.bo, %.0599                   ; 3 uses
  %indvars.iv.next2165 = add nuw nsw i64 %i.bi, 8 ; 3 uses
  %i.bq = icmp ult i32 %.0590, 8
  br i1 %i.bq, label %.lr.ph1773.1, label %._crit_edge1774.loopexit

.lr.ph1773.1:                                     ; preds = %bb.k
  %i.br = icmp eq i32 %i.bk, 0
  br i1 %i.br, label %.loopexit.loopexit1794, label %bb.l

bb.l:                                             ; preds = %.lr.ph1773.1
  %i.bs = add i32 %.0642, -2
  %i.bt = getelementptr inbounds nuw i8, ptr %.0686, i64 2
  %i.bu = load i8, ptr %i.bl, align 1, !tbaa !24
  %i.bv = zext i8 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, %indvars.iv.next2165
  %i.bx = add i64 %i.bw, %i.bp
  %indvars.iv.next2165.1 = or disjoint i64 %i.bi, 16
  br label %._crit_edge1774.loopexit

._crit_edge1774.loopexit:                         ; preds = %bb.l, %bb.k
  %.lcssa3244.a = phi i32 [ %i.bk, %bb.k ], [ %i.bs, %bb.l ]
  %.lcssa3243 = phi ptr [ %i.bl, %bb.k ], [ %i.bt, %bb.l ]
  %.lcssa3242 = phi i64 [ %i.bp, %bb.k ], [ %i.bx, %bb.l ]
  %indvars.iv.next2165.lcssa = phi i64 [ %indvars.iv.next2165, %bb.k ], [ %indvars.iv.next2165.1, %bb.l ]
  %i.by = trunc nuw nsw i64 %indvars.iv.next2165.lcssa to i32
  br label %._crit_edge1774

._crit_edge1774:                                  ; preds = %._crit_edge1774.loopexit, %.preheader818
  %.1687.lcssa = phi ptr [ %.0686, %.preheader818 ], [ %.lcssa3243, %._crit_edge1774.loopexit ] ; 4 uses
  %.1643.lcssa = phi i32 [ %.0642, %.preheader818 ], [ %.lcssa3244.a, %._crit_edge1774.loopexit ] ; 4 uses
  %.1600.lcssa = phi i64 [ %.0599, %.preheader818 ], [ %.lcssa3242, %._crit_edge1774.loopexit ] ; 7 uses
  %.1591.lcssa = phi i32 [ %.0590, %.preheader818 ], [ %i.by, %._crit_edge1774.loopexit ] ; 3 uses
  %i.bz = shl i64 %.1600.lcssa, 8
  %i.ca = and i64 %i.bz, 65280
  %i.cb = lshr i64 %.1600.lcssa, 8
  %i.cc = add nuw nsw i64 %i.ca, %i.cb
  %i.cd = urem i64 %i.cc, 31
  %.not786 = icmp eq i64 %i.cd, 0
  br i1 %.not786, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge1774
  store i32 27, ptr %i.c, align 8, !tbaa !41
  br label %.thread

bb.n:                                             ; preds = %._crit_edge1774
  %i.ce = and i64 %.1600.lcssa, 15
  %.not787 = icmp eq i64 %i.ce, 8
  br i1 %.not787, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 27, ptr %i.c, align 8, !tbaa !41
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.cf = lshr i64 %.1600.lcssa, 4                ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = and i32 %i.cg, 15                       ; 2 uses
  %i.ci = add nuw nsw i32 %i.ch, 8
  %i.cj = load i32, ptr %i.aw, align 8, !tbaa !16
  %i.ck = icmp ugt i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cl = add i32 %.1591.lcssa, -4
  store i32 27, ptr %i.c, align 8, !tbaa !41
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.cm = shl nuw nsw i32 256, %i.ch
  store i32 %i.cm, ptr %i.ax, align 4, !tbaa !20
  %i.cn = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13 ; 2 uses
  store i64 %i.cn, ptr %i.z, align 8, !tbaa !48
  store i64 %i.cn, ptr %i.aa, align 8, !tbaa !19
  %i.co = and i64 %.1600.lcssa, 8192
  %.not788 = icmp eq i64 %i.co, 0
  %i.cp = select i1 %.not788, i32 11, i32 9
  store i32 %i.cp, ptr %i.c, align 8, !tbaa !41
  br label %.thread

bb.s:                                             ; preds = %.lr.ph1784.preheader
  %i.cq = add i32 %.0642, -1                      ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0686, i64 1 ; 3 uses
  %i.cs = load i8, ptr %.0686, align 1, !tbaa !24
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, %i.bd
  %i.cv = add i64 %i.cu, %.0599                   ; 3 uses
  %indvars.iv.next2190 = add nuw nsw i64 %i.bd, 8 ; 2 uses
  %i.cw = icmp ult i32 %.0590, 24
  br i1 %i.cw, label %.lr.ph1784.1, label %._crit_edge1785

.lr.ph1784.1:                                     ; preds = %bb.s
  %i.cx = icmp eq i32 %i.cq, 0
  br i1 %i.cx, label %.loopexit.loopexit, label %bb.t

bb.t:                                             ; preds = %.lr.ph1784.1
  %i.cy = add i32 %.0642, -2                      ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0686, i64 2 ; 3 uses
  %i.da = load i8, ptr %i.cr, align 1, !tbaa !24
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, %indvars.iv.next2190
  %i.dd = add i64 %i.dc, %i.cv                    ; 3 uses
  %indvars.iv.next2190.1 = add nuw nsw i64 %i.bd, 16 ; 2 uses
  %i.de = icmp ult i32 %.0590, 16
  br i1 %i.de, label %.lr.ph1784.2, label %._crit_edge1785

.lr.ph1784.2:                                     ; preds = %bb.t
  %i.df = icmp eq i32 %i.cy, 0
  br i1 %i.df, label %.loopexit.loopexit, label %bb.u

bb.u:                                             ; preds = %.lr.ph1784.2
  %i.dg = add i32 %.0642, -3                      ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0686, i64 3 ; 3 uses
  %i.di = load i8, ptr %i.cz, align 1, !tbaa !24
  %i.dj = zext i8 %i.di to i64
end_hunk_0
begin_hunk_1_@inflate64:bb.a
  store i32 18, ptr %i.c, align 8, !tbaa !41
  br label %.thread

bb.cn:                                            ; preds = %bb.h
  %i.yi = icmp eq i32 %.0640, 0
  br i1 %i.yi, label %.loopexit.loopexit1806, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.yj = load i32, ptr %i.ab, align 4, !tbaa !45
  %i.yk = trunc i32 %i.yj to i8
  %i.yl = getelementptr inbounds nuw i8, ptr %.0683, i64 1
  store i8 %i.yk, ptr %.0683, align 1, !tbaa !24
  %i.ym = add i32 %.0640, -1
  store i32 18, ptr %i.c, align 8, !tbaa !41
  br label %.thread

bb.cp:                                            ; preds = %bb.h
  %i.yn = load i32, ptr %i.w, align 8, !tbaa !15
  %.not756 = icmp eq i32 %i.yn, 0
  br i1 %.not756, label %bb.cx, label %.preheader836

.preheader836:                                    ; preds = %bb.cp
  %i.yo = icmp ult i32 %.0590, 32
  br i1 %i.yo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader836
  %i.yp = zext nneg i32 %.0590 to i64             ; 6 uses
  %i.yq = icmp eq i32 %.0642, 0
  br i1 %i.yq, label %.loopexit.loopexit1804, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.preheader
  %i.yr = add i32 %.0642, -1                      ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.0686, i64 1 ; 3 uses
  %i.yt = load i8, ptr %.0686, align 1, !tbaa !24
  %i.yu = zext i8 %i.yt to i64
  %i.yv = shl nuw nsw i64 %i.yu, %i.yp
  %i.yw = add i64 %i.yv, %.0599                   ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %i.yp, 8     ; 3 uses
  %i.yx = icmp ult i32 %.0590, 24
  br i1 %i.yx, label %.lr.ph.1, label %._crit_edge.loopexit

.lr.ph.1:                                         ; preds = %bb.cq
  %i.yy = icmp eq i32 %i.yr, 0
  br i1 %i.yy, label %.loopexit.loopexit1804, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.1
  %i.yz = add i32 %.0642, -2                      ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.0686, i64 2 ; 3 uses
  %i.zb = load i8, ptr %i.ys, align 1, !tbaa !24
  %i.zc = zext i8 %i.zb to i64
  %i.zd = shl nuw nsw i64 %i.zc, %indvars.iv.next
  %i.ze = add i64 %i.zd, %i.yw                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %i.yp, 16  ; 3 uses
  %i.zf = icmp ult i32 %.0590, 16
  br i1 %i.zf, label %.lr.ph.2, label %._crit_edge.loopexit

.lr.ph.2:                                         ; preds = %bb.cr
  %i.zg = icmp eq i32 %i.yz, 0
  br i1 %i.zg, label %.loopexit.loopexit1804, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.2
  %i.zh = add i32 %.0642, -3                      ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.0686, i64 3 ; 3 uses
  %i.zj = load i8, ptr %i.za, align 1, !tbaa !24
  %i.zk = zext i8 %i.zj to i64
  %i.zl = shl nuw nsw i64 %i.zk, %indvars.iv.next.1
  %i.zm = add i64 %i.zl, %i.ze                    ; 3 uses
  %indvars.iv.next.2 = add nuw nsw i64 %i.yp, 24  ; 3 uses
  %i.zn = icmp ult i32 %.0590, 8
  br i1 %i.zn, label %.lr.ph.3, label %._crit_edge.loopexit

.lr.ph.3:                                         ; preds = %bb.cs
  %i.zo = icmp eq i32 %i.zh, 0
  br i1 %i.zo, label %.loopexit.loopexit1804, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.3
  %i.zp = add i32 %.0642, -4
  %i.zq = getelementptr inbounds nuw i8, ptr %.0686, i64 4
  %i.zr = load i8, ptr %i.zi, align 1, !tbaa !24
  %i.zs = zext i8 %i.zr to i64
  %i.zt = shl nuw nsw i64 %i.zs, %indvars.iv.next.2
  %i.zu = add i64 %i.zt, %i.zm
  %indvars.iv.next.3 = or disjoint i64 %i.yp, 32
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %.lcssa3097.a = phi i32 [ %i.yr, %bb.cq ], [ %i.yz, %bb.cr ], [ %i.zh, %bb.cs ], [ %i.zp, %bb.ct ]
  %.lcssa3096 = phi ptr [ %i.ys, %bb.cq ], [ %i.za, %bb.cr ], [ %i.zi, %bb.cs ], [ %i.zq, %bb.ct ]
  %.lcssa3095 = phi i64 [ %i.yw, %bb.cq ], [ %i.ze, %bb.cr ], [ %i.zm, %bb.cs ], [ %i.zu, %bb.ct ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %bb.cq ], [ %indvars.iv.next.1, %bb.cr ], [ %indvars.iv.next.2, %bb.cs ], [ %indvars.iv.next.3, %bb.ct ]
  %i.zv = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader836
  %.36722.lcssa = phi ptr [ %.0686, %.preheader836 ], [ %.lcssa3096, %._crit_edge.loopexit ] ; 2 uses
  %.36678.lcssa = phi i32 [ %.0642, %.preheader836 ], [ %.lcssa3097.a, %._crit_edge.loopexit ] ; 2 uses
  %.36635.lcssa = phi i64 [ %.0599, %.preheader836 ], [ %.lcssa3095, %._crit_edge.loopexit ] ; 2 uses
  %.36.lcssa = phi i32 [ %.0590, %.preheader836 ], [ %i.zv, %._crit_edge.loopexit ]
  %i.zw = sub i32 %.0585, %.0640                  ; 2 uses
  %i.zx = zext i32 %i.zw to i64                   ; 3 uses
  %i.zy = load i64, ptr %i.x, align 8, !tbaa !17
  %i.zz = add i64 %i.zy, %i.zx
  store i64 %i.zz, ptr %i.x, align 8, !tbaa !17
  %i.aaa = load i64, ptr %i.y, align 8, !tbaa !63
  %i.aab = add i64 %i.aaa, %i.zx
  store i64 %i.aab, ptr %i.y, align 8, !tbaa !63
  %.not757 = icmp eq i32 %.0585, %.0640
  %.pre2192 = load i64, ptr %i.z, align 8, !tbaa !48 ; 2 uses
  br i1 %.not757, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge
  %i.aac = sub nsw i64 0, %i.zx
  %i.aad = getelementptr inbounds i8, ptr %.0683, i64 %i.aac
  %i.aae = tail call i64 @adler32(i64 noundef %.pre2192, ptr noundef nonnull %i.aad, i32 noundef %i.zw) #13 ; 3 uses
  store i64 %i.aae, ptr %i.z, align 8, !tbaa !48
  store i64 %i.aae, ptr %i.aa, align 8, !tbaa !19
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %._crit_edge
  %i.aaf = phi i64 [ %i.aae, %bb.cu ], [ %.pre2192, %._crit_edge ]
  %trunc = trunc i64 %.36635.lcssa to i32
  %rev = tail call i32 @llvm.bswap.i32(i32 %trunc)
  %i.aag = zext i32 %rev to i64
  %.not758 = icmp eq i64 %i.aaf, %i.aag
  br i1 %.not758, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i32 27, ptr %i.c, align 8, !tbaa !41
  br label %.thread

bb.cx:                                            ; preds = %bb.cv, %bb.cp
  %.37723 = phi ptr [ %.0686, %bb.cp ], [ %.36722.lcssa, %bb.cv ]
  %.37679 = phi i32 [ %.0642, %bb.cp ], [ %.36678.lcssa, %bb.cv ]
  %.37636 = phi i64 [ %.0599, %bb.cp ], [ 0, %bb.cv ]
  %.37 = phi i32 [ %.0590, %bb.cp ], [ 0, %bb.cv ]
  %.1586 = phi i32 [ %.0585, %bb.cp ], [ %.0640, %bb.cv ]
  store i32 26, ptr %i.c, align 8, !tbaa !41
  br label %.loopexit

.thread:                                          ; preds = %bb.ay, %bb.bd, %.loopexit3073, %bb.cm, %bb.cw, %bb.co, %bb.cd, %bb.bz, %bb.br, %bb.bp, %bb.bn, %bb.bh, %bb.bf, %bb.at, %bb.ao, %bb.an, %bb.aj, %bb.ad, %bb.y, %bb.r, %bb.q, %bb.o, %bb.m, %bb.j
  %.39725 = phi ptr [ %.0686, %bb.j ], [ %.1687.lcssa, %bb.m ], [ %.1687.lcssa, %bb.o ], [ %.1687.lcssa, %bb.q ], [ %.1687.lcssa, %bb.r ], [ %.0686, %bb.y ], [ %.4690.lcssa, %bb.ad ], [ %.5691.lcssa, %bb.aj ], [ %i.gl, %bb.an ], [ %.6692, %bb.ao ], [ %.9695.lcssa, %bb.at ], [ %.15701.lcssa, %bb.ay ], [ %.12698.lcssa, %bb.bf ], [ %.12698.lcssa, %bb.bh ], [ %.24710, %bb.bn ], [ %.24710, %bb.bp ], [ %.24710, %bb.br ], [ %.31717, %bb.bz ], [ %.34720, %bb.cd ], [ %.35721, %bb.cm ], [ %.35721, %.loopexit3073 ], [ %.0686, %bb.co ], [ %.36722.lcssa, %bb.cw ], [ %.18704, %bb.bd ]
  %.2685 = phi ptr [ %.0683, %bb.j ], [ %.0683, %bb.m ], [ %.0683, %bb.o ], [ %.0683, %bb.q ], [ %.0683, %bb.r ], [ %.0683, %bb.y ], [ %.0683, %bb.ad ], [ %.0683, %bb.aj ], [ %i.gn, %bb.an ], [ %.0683, %bb.ao ], [ %.0683, %bb.at ], [ %.0683, %bb.ay ], [ %.0683, %bb.bf ], [ %.0683, %bb.bh ], [ %.0683, %bb.bn ], [ %.0683, %bb.bp ], [ %.0683, %bb.br ], [ %.0683, %bb.bz ], [ %.0683, %bb.cd ], [ %.lcssa2680, %bb.cm ], [ %.lcssa2680, %.loopexit3073 ], [ %i.yl, %bb.co ], [ %.0683, %bb.cw ], [ %.0683, %bb.bd ]
  %.39681 = phi i32 [ %.0642, %bb.j ], [ %.1643.lcssa, %bb.m ], [ %.1643.lcssa, %bb.o ], [ %.1643.lcssa, %bb.q ], [ %.1643.lcssa, %bb.r ], [ %.0642, %bb.y ], [ %.4646.lcssa, %bb.ad ], [ %.5647.lcssa, %bb.aj ], [ %i.gk, %bb.an ], [ %.6648, %bb.ao ], [ %.9651.lcssa, %bb.at ], [ %.15657.lcssa, %bb.ay ], [ %.12654.lcssa, %bb.bf ], [ %.12654.lcssa, %bb.bh ], [ %.24666, %bb.bn ], [ %.24666, %bb.bp ], [ %.24666, %bb.br ], [ %.31673, %bb.bz ], [ %.34676, %bb.cd ], [ %.35677, %bb.cm ], [ %.35677, %.loopexit3073 ], [ %.0642, %bb.co ], [ %.36678.lcssa, %bb.cw ], [ %.18660, %bb.bd ]
  %.1641 = phi i32 [ %.0640, %bb.j ], [ %.0640, %bb.m ], [ %.0640, %bb.o ], [ %.0640, %bb.q ], [ %.0640, %bb.r ], [ %.0640, %bb.y ], [ %.0640, %bb.ad ], [ %.0640, %bb.aj ], [ %i.gm, %bb.an ], [ %.0640, %bb.ao ], [ %.0640, %bb.at ], [ %.0640, %bb.ay ], [ %.0640, %bb.bf ], [ %.0640, %bb.bh ], [ %.0640, %bb.bn ], [ %.0640, %bb.bp ], [ %.0640, %bb.br ], [ %.0640, %bb.bz ], [ %.0640, %bb.cd ], [ %i.yf, %bb.cm ], [ %i.yf, %.loopexit3073 ], [ %i.ym, %bb.co ], [ %.0640, %bb.cw ], [ %.0640, %bb.bd ]
  %.39638 = phi i64 [ %.0599, %bb.j ], [ %.1600.lcssa, %bb.m ], [ %.1600.lcssa, %bb.o ], [ %i.cf, %bb.q ], [ 0, %bb.r ], [ %i.ea, %bb.y ], [ %i.eo, %bb.ad ], [ %.5604.lcssa, %bb.aj ], [ %.6605, %bb.an ], [ %.6605, %bb.ao ], [ %.9608.lcssa, %bb.at ], [ %i.lb, %bb.ay ], [ %.12611.lcssa, %bb.bf ], [ %.12611.lcssa, %bb.bh ], [ %i.qx, %bb.bn ], [ %i.qx, %bb.bp ], [ %i.qx, %bb.br ], [ %i.uj, %bb.bz ], [ %.34633, %bb.cd ], [ %.35634, %bb.cm ], [ %.35634, %.loopexit3073 ], [ %.0599, %bb.co ], [ %.36635.lcssa, %bb.cw ], [ %.18617, %bb.bd ]
  %.39 = phi i32 [ %.0590, %bb.j ], [ %.1591.lcssa, %bb.m ], [ %.1591.lcssa, %bb.o ], [ %i.cl, %bb.q ], [ 0, %bb.r ], [ %i.eb, %bb.y ], [ %i.ep, %bb.ad ], [ %.5595.lcssa, %bb.aj ], [ %.6596, %bb.an ], [ %.6596, %bb.ao ], [ %.9.lcssa, %bb.at ], [ %i.lc, %bb.ay ], [ %.12.lcssa, %bb.bf ], [ %.12.lcssa, %bb.bh ], [ %i.qy, %bb.bn ], [ %i.qy, %bb.bp ], [ %i.qy, %bb.br ], [ %i.uk, %bb.bz ], [ %.34, %bb.cd ], [ %.35, %bb.cm ], [ %.35, %.loopexit3073 ], [ %.0590, %bb.co ], [ %.36.lcssa, %bb.cw ], [ %.18, %bb.bd ]
  %.3588 = phi i32 [ %.0585, %bb.j ], [ %.0585, %bb.m ], [ %.0585, %bb.o ], [ %.0585, %bb.q ], [ %.0585, %bb.r ], [ %.0585, %bb.y ], [ %.0585, %bb.ad ], [ %.0585, %bb.aj ], [ %.0585, %bb.an ], [ %.0585, %bb.ao ], [ %.0585, %bb.at ], [ %.0585, %bb.ay ], [ %.0585, %bb.bf ], [ %.0585, %bb.bh ], [ %.0585, %bb.bn ], [ %.0585, %bb.bp ], [ %.0585, %bb.br ], [ %.0585, %bb.bz ], [ %.0585, %bb.cd ], [ %.0585, %bb.cm ], [ %.0585, %.loopexit3073 ], [ %.0585, %bb.co ], [ %.0640, %bb.cw ], [ %.0585, %bb.bd ]
  %.7 = phi i32 [ %.0, %bb.j ], [ %.0, %bb.m ], [ %.0, %bb.o ], [ %.0, %bb.q ], [ %.0, %bb.r ], [ %.0, %bb.y ], [ %.0, %bb.ad ], [ %.0, %bb.aj ], [ %.0, %bb.an ], [ %.0, %bb.ao ], [ %i.it, %bb.at ], [ %.1, %bb.ay ], [ %i.oh, %bb.bf ], [ %i.on, %bb.bh ], [ %.2, %bb.bn ], [ %.2, %bb.bp ], [ %.2, %bb.br ], [ %.4, %bb.bz ], [ %.5, %bb.cd ], [ %.6, %bb.cm ], [ %.6, %.loopexit3073 ], [ %.0, %bb.co ], [ %.0, %bb.cw ], [ %.1, %bb.bd ]
  %.pre = load i32, ptr %i.c, align 8, !tbaa !41
  br label %bb.h

.loopexit.loopexit:                               ; preds = %.lr.ph1784.3, %.lr.ph1784.2, %.lr.ph1784.1, %.lr.ph1784.preheader
  %indvars.iv2189.lcssa = phi i64 [ %i.bd, %.lr.ph1784.preheader ], [ %indvars.iv.next2190, %.lr.ph1784.1 ], [ %indvars.iv.next2190.1, %.lr.ph1784.2 ], [ %indvars.iv.next2190.2, %.lr.ph1784.3 ]
  %.26011782.lcssa = phi i64 [ %.0599, %.lr.ph1784.preheader ], [ %i.cv, %.lr.ph1784.1 ], [ %i.dd, %.lr.ph1784.2 ], [ %i.dl, %.lr.ph1784.3 ]
  %.26881780.lcssa = phi ptr [ %.0686, %.lr.ph1784.preheader ], [ %i.cr, %.lr.ph1784.1 ], [ %i.cz, %.lr.ph1784.2 ], [ %i.dh, %.lr.ph1784.3 ]
  %i.aah = trunc nuw nsw i64 %indvars.iv2189.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1790:                           ; preds = %.lr.ph1407
  %i.aai = trunc nuw nsw i64 %indvars.iv2141 to i32
  br label %.loopexit

.loopexit.loopexit1791:                           ; preds = %.lr.ph1397
  %i.aaj = trunc nuw nsw i64 %indvars.iv2138 to i32
  br label %.loopexit

.loopexit.loopexit1792:                           ; preds = %.lr.ph1387
  %i.aak = trunc nuw nsw i64 %indvars.iv2135 to i32
  br label %.loopexit

.loopexit.loopexit1794:                           ; preds = %.lr.ph1773.1, %.lr.ph1773.preheader
  %indvars.iv2164.lcssa = phi i64 [ %i.bi, %.lr.ph1773.preheader ], [ %indvars.iv.next2165, %.lr.ph1773.1 ]
  %.16001771.lcssa = phi i64 [ %.0599, %.lr.ph1773.preheader ], [ %i.bp, %.lr.ph1773.1 ]
  %.16871769.lcssa = phi ptr [ %.0686, %.lr.ph1773.preheader ], [ %i.bl, %.lr.ph1773.1 ]
  %i.aal = trunc nuw nsw i64 %indvars.iv2164.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1795:                           ; preds = %.lr.ph1536.3, %.lr.ph1536.2, %.lr.ph1536.1, %.lr.ph1536.preheader
  %indvars.iv2162.lcssa = phi i64 [ %i.ew, %.lr.ph1536.preheader ], [ %indvars.iv.next2163, %.lr.ph1536.1 ], [ %indvars.iv.next2163.1, %.lr.ph1536.2 ], [ %indvars.iv.next2163.2, %.lr.ph1536.3 ]
  %.56041533.lcssa = phi i64 [ %i.es, %.lr.ph1536.preheader ], [ %i.fd, %.lr.ph1536.1 ], [ %i.fk, %.lr.ph1536.2 ], [ %i.fs, %.lr.ph1536.3 ]
  %.56911531.lcssa = phi ptr [ %.0686, %.lr.ph1536.preheader ], [ %i.ez, %.lr.ph1536.1 ], [ %i.fg, %.lr.ph1536.2 ], [ %i.fo, %.lr.ph1536.3 ]
  %i.aam = trunc nuw nsw i64 %indvars.iv2162.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1803:                           ; preds = %.lr.ph1215.1, %.lr.ph1215.preheader
  %indvars.iv2121.lcssa = phi i64 [ %i.ba, %.lr.ph1215.preheader ], [ %indvars.iv.next2122, %.lr.ph1215.1 ]
  %.76061213.lcssa = phi i64 [ %.0599, %.lr.ph1215.preheader ], [ %i.gv, %.lr.ph1215.1 ]
  %.76931211.lcssa = phi ptr [ %.0686, %.lr.ph1215.preheader ], [ %i.gr, %.lr.ph1215.1 ]
  %i.aan = trunc nuw nsw i64 %indvars.iv2121.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1804:                           ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i64 [ %i.yp, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.next.2, %.lr.ph.3 ]
  %.366351206.lcssa = phi i64 [ %.0599, %.lr.ph.preheader ], [ %i.yw, %.lr.ph.1 ], [ %i.ze, %.lr.ph.2 ], [ %i.zm, %.lr.ph.3 ]
  %.367221204.lcssa = phi ptr [ %.0686, %.lr.ph.preheader ], [ %i.ys, %.lr.ph.1 ], [ %i.za, %.lr.ph.2 ], [ %i.zi, %.lr.ph.3 ]
  %i.aao = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1806:                           ; preds = %bb.h, %.lr.ph1546, %bb.cn, %bb.cf, %bb.am, %bb.w
  %i.aap = phi i32 [ %i.ay, %bb.h ], [ %i.ay, %.lr.ph1546 ], [ 23, %bb.cn ], [ 22, %bb.cf ], [ 14, %bb.am ], [ 11, %bb.w ]
  %.40726.ph = phi ptr [ %.0686, %bb.h ], [ %.0686, %.lr.ph1546 ], [ %.0686, %bb.cn ], [ %.35721, %bb.cf ], [ %.6692, %bb.am ], [ %.0686, %bb.w ]
  %.40682.ph = phi i32 [ %.0642, %bb.h ], [ 0, %.lr.ph1546 ], [ %.0642, %bb.cn ], [ %.35677, %bb.cf ], [ %.6648, %bb.am ], [ %.0642, %bb.w ]
  %.40639.ph = phi i64 [ %.0599, %bb.h ], [ %.0599, %.lr.ph1546 ], [ %.0599, %bb.cn ], [ %.35634, %bb.cf ], [ %.6605, %bb.am ], [ %.0599, %bb.w ]
  %.40.ph = phi i32 [ %.0590, %bb.h ], [ %.0590, %.lr.ph1546 ], [ %.0590, %bb.cn ], [ %.35, %bb.cf ], [ %.6596, %bb.am ], [ %.0590, %bb.w ]
  %.8.ph = phi i32 [ -3, %bb.h ], [ %.0, %.lr.ph1546 ], [ %.0, %bb.cn ], [ %.6, %bb.cf ], [ %.0, %bb.am ], [ %.0, %bb.w ]
  %i.aaq = icmp samesign ugt i32 %i.aap, 23
  br label %.loopexit

.loopexit.loopexit2253:                           ; preds = %.lr.ph1373.preheader, %.lr.ph1373
  %.136121371.lcssa = phi i64 [ %i.jo, %.lr.ph1373 ], [ %.126111433, %.lr.ph1373.preheader ]
  %i.aar = zext i32 %.126541432 to i64
  %i.aas = shl i32 %.126541432, 3
  %i.aat = add i32 %i.aas, %.121434
  %scevgep.le = getelementptr i8, ptr %.126981431, i64 %i.aar
  br label %.loopexit

.loopexit.loopexit2254:                           ; preds = %.lr.ph1525.preheader, %.lr.ph1525
  %.336321523.lcssa = phi i64 [ %i.uz, %.lr.ph1525 ], [ %.32631, %.lr.ph1525.preheader ]
  %i.aau = shl i32 %.32674, 3
  %i.aav = add i32 %.32, %i.aau
  %i.aaw = zext i32 %.32674 to i64
  %scevgep2161.le = getelementptr i8, ptr %.32718, i64 %i.aaw
  br label %.loopexit

.loopexit.loopexit2255:                           ; preds = %.lr.ph1513.preheader, %.lr.ph1513
  %.306291511.lcssa = phi i64 [ %i.tt, %.lr.ph1513 ], [ %.29628.lcssa, %.lr.ph1513.preheader ]
  %i.aax = zext i32 %.29671.lcssa to i64
  %i.aay = shl i32 %.29671.lcssa, 3
  %i.aaz = add i32 %i.aay, %.29.lcssa
  %scevgep2159.le = getelementptr i8, ptr %.29715.lcssa, i64 %i.aax
  br label %.loopexit

.loopexit.loopexit2256:                           ; preds = %.lr.ph1495.preheader, %.lr.ph1495
  %.296281492.lcssa = phi i64 [ %i.sq, %.lr.ph1495 ], [ %.28627, %.lr.ph1495.preheader ]
  %i.aba = zext i32 %.28670 to i64
  %i.abb = shl i32 %.28670, 3
  %i.abc = add i32 %i.abb, %.28
  %scevgep2155.le = getelementptr i8, ptr %.28714, i64 %i.aba
  br label %.loopexit

.loopexit.loopexit2257:                           ; preds = %.lr.ph1480.preheader, %.lr.ph1480
  %.266251478.lcssa = phi i64 [ %i.rp, %.lr.ph1480 ], [ %.25624, %.lr.ph1480.preheader ]
  %i.abd = shl i32 %.25667, 3
  %i.abe = add i32 %.25, %i.abd
  %i.abf = zext i32 %.25667 to i64
  %scevgep2152.le = getelementptr i8, ptr %.25711, i64 %i.abf
  br label %.loopexit

.loopexit.loopexit2258:                           ; preds = %.lr.ph1468.preheader, %.lr.ph1468
  %.236221466.lcssa = phi i64 [ %i.qh, %.lr.ph1468 ], [ %.22621.lcssa, %.lr.ph1468.preheader ]
  %i.abg = zext i32 %.22664.lcssa to i64
  %i.abh = shl i32 %.22664.lcssa, 3
  %i.abi = add i32 %i.abh, %.22.lcssa
  %scevgep2150.le = getelementptr i8, ptr %.22708.lcssa, i64 %i.abg
  br label %.loopexit

.loopexit.loopexit2259:                           ; preds = %.lr.ph1450.preheader, %.lr.ph1450
  %.226211447.lcssa = phi i64 [ %i.pe, %.lr.ph1450 ], [ %.21620, %.lr.ph1450.preheader ]
  %i.abj = zext i32 %.21663 to i64
  %i.abk = shl i32 %.21663, 3
  %i.abl = add i32 %i.abk, %.21
  %scevgep2146.le = getelementptr i8, ptr %.21707, i64 %i.abj
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.lr.ph1225, %.loopexit.loopexit2259, %.loopexit.loopexit2258, %.loopexit.loopexit2257, %.loopexit.loopexit2256, %.loopexit.loopexit2255, %.loopexit.loopexit2254, %.loopexit.loopexit2253, %.loopexit.loopexit1806, %.loopexit.loopexit1804, %.loopexit.loopexit1803, %.loopexit.loopexit1795, %.loopexit.loopexit1794, %.loopexit.loopexit1792, %.loopexit.loopexit1791, %.loopexit.loopexit1790, %.loopexit.loopexit, %bb.cx
  %i.abm = phi i1 [ false, %.loopexit.loopexit1792 ], [ false, %.loopexit.loopexit2258 ], [ false, %.loopexit.loopexit2256 ], [ false, %.loopexit.loopexit2257 ], [ false, %.lr.ph1225 ], [ false, %.loopexit.loopexit1790 ], [ false, %.loopexit.loopexit2255 ], [ false, %.loopexit.loopexit1791 ], [ false, %.loopexit.loopexit1803 ], [ %i.aaq, %.loopexit.loopexit1806 ], [ false, %.loopexit.loopexit2259 ], [ true, %.loopexit.loopexit1804 ], [ true, %bb.cx ], [ false, %.loopexit.loopexit1794 ], [ false, %.loopexit.loopexit1795 ], [ false, %.loopexit.loopexit2253 ], [ false, %.loopexit.loopexit2254 ], [ false, %.loopexit.loopexit ], [ true, %bb.h ]
  %.40726 = phi ptr [ %.167021383, %.loopexit.loopexit1792 ], [ %scevgep2150.le, %.loopexit.loopexit2258 ], [ %scevgep2155.le, %.loopexit.loopexit2256 ], [ %scevgep2152.le, %.loopexit.loopexit2257 ], [ %.96951351, %.lr.ph1225 ], [ %.177031403, %.loopexit.loopexit1790 ], [ %scevgep2159.le, %.loopexit.loopexit2255 ], [ %.157011393, %.loopexit.loopexit1791 ], [ %.76931211.lcssa, %.loopexit.loopexit1803 ], [ %.40726.ph, %.loopexit.loopexit1806 ], [ %scevgep2146.le, %.loopexit.loopexit2259 ], [ %.367221204.lcssa, %.loopexit.loopexit1804 ], [ %.37723, %bb.cx ], [ %.16871769.lcssa, %.loopexit.loopexit1794 ], [ %.56911531.lcssa, %.loopexit.loopexit1795 ], [ %scevgep.le, %.loopexit.loopexit2253 ], [ %scevgep2161.le, %.loopexit.loopexit2254 ], [ %.26881780.lcssa, %.loopexit.loopexit ], [ %.0686, %bb.h ]
  %.40682 = phi i32 [ 0, %.loopexit.loopexit1792 ], [ 0, %.loopexit.loopexit2258 ], [ 0, %.loopexit.loopexit2256 ], [ 0, %.loopexit.loopexit2257 ], [ 0, %.lr.ph1225 ], [ 0, %.loopexit.loopexit1790 ], [ 0, %.loopexit.loopexit2255 ], [ 0, %.loopexit.loopexit1791 ], [ 0, %.loopexit.loopexit1803 ], [ %.40682.ph, %.loopexit.loopexit1806 ], [ 0, %.loopexit.loopexit2259 ], [ 0, %.loopexit.loopexit1804 ], [ %.37679, %bb.cx ], [ 0, %.loopexit.loopexit1794 ], [ 0, %.loopexit.loopexit1795 ], [ 0, %.loopexit.loopexit2253 ], [ 0, %.loopexit.loopexit2254 ], [ 0, %.loopexit.loopexit ], [ %.0642, %bb.h ]
  %.40639 = phi i64 [ %.166151385, %.loopexit.loopexit1792 ], [ %.236221466.lcssa, %.loopexit.loopexit2258 ], [ %.296281492.lcssa, %.loopexit.loopexit2256 ], [ %.266251478.lcssa, %.loopexit.loopexit2257 ], [ %.96081353, %.lr.ph1225 ], [ %.176161405, %.loopexit.loopexit1790 ], [ %.306291511.lcssa, %.loopexit.loopexit2255 ], [ %.156141395, %.loopexit.loopexit1791 ], [ %.76061213.lcssa, %.loopexit.loopexit1803 ], [ %.40639.ph, %.loopexit.loopexit1806 ], [ %.226211447.lcssa, %.loopexit.loopexit2259 ], [ %.366351206.lcssa, %.loopexit.loopexit1804 ], [ %.37636, %bb.cx ], [ %.16001771.lcssa, %.loopexit.loopexit1794 ], [ %.56041533.lcssa, %.loopexit.loopexit1795 ], [ %.136121371.lcssa, %.loopexit.loopexit2253 ], [ %.336321523.lcssa, %.loopexit.loopexit2254 ], [ %.26011782.lcssa, %.loopexit.loopexit ], [ %.0599, %bb.h ]
  %.40 = phi i32 [ %i.aak, %.loopexit.loopexit1792 ], [ %i.abi, %.loopexit.loopexit2258 ], [ %i.abc, %.loopexit.loopexit2256 ], [ %i.abe, %.loopexit.loopexit2257 ], [ %.91354, %.lr.ph1225 ], [ %i.aai, %.loopexit.loopexit1790 ], [ %i.aaz, %.loopexit.loopexit2255 ], [ %i.aaj, %.loopexit.loopexit1791 ], [ %i.aan, %.loopexit.loopexit1803 ], [ %.40.ph, %.loopexit.loopexit1806 ], [ %i.abl, %.loopexit.loopexit2259 ], [ %i.aao, %.loopexit.loopexit1804 ], [ %.37, %bb.cx ], [ %i.aal, %.loopexit.loopexit1794 ], [ %i.aam, %.loopexit.loopexit1795 ], [ %i.aat, %.loopexit.loopexit2253 ], [ %i.aav, %.loopexit.loopexit2254 ], [ %i.aah, %.loopexit.loopexit ], [ %.0590, %bb.h ]
  %.4589 = phi i32 [ %.0585, %.loopexit.loopexit1792 ], [ %.0585, %.loopexit.loopexit2258 ], [ %.0585, %.loopexit.loopexit2256 ], [ %.0585, %.loopexit.loopexit2257 ], [ %.0585, %.lr.ph1225 ], [ %.0585, %.loopexit.loopexit1790 ], [ %.0585, %.loopexit.loopexit2255 ], [ %.0585, %.loopexit.loopexit1791 ], [ %.0585, %.loopexit.loopexit1803 ], [ %.0585, %.loopexit.loopexit1806 ], [ %.0585, %.loopexit.loopexit2259 ], [ %.0585, %.loopexit.loopexit1804 ], [ %.1586, %bb.cx ], [ %.0585, %.loopexit.loopexit1794 ], [ %.0585, %.loopexit.loopexit1795 ], [ %.0585, %.loopexit.loopexit2253 ], [ %.0585, %.loopexit.loopexit2254 ], [ %.0585, %.loopexit.loopexit ], [ %.0585, %bb.h ] ; 4 uses
  %.8 = phi i32 [ %.1, %.loopexit.loopexit1792 ], [ %.2, %.loopexit.loopexit2258 ], [ %.4, %.loopexit.loopexit2256 ], [ %.3, %.loopexit.loopexit2257 ], [ %.0, %.lr.ph1225 ], [ %.1, %.loopexit.loopexit1790 ], [ %.4, %.loopexit.loopexit2255 ], [ %.1, %.loopexit.loopexit1791 ], [ %.0, %.loopexit.loopexit1803 ], [ %.8.ph, %.loopexit.loopexit1806 ], [ %.2, %.loopexit.loopexit2259 ], [ %.0, %.loopexit.loopexit1804 ], [ 1, %bb.cx ], [ %.0, %.loopexit.loopexit1794 ], [ %.0, %.loopexit.loopexit1795 ], [ %.1, %.loopexit.loopexit2253 ], [ %.5, %.loopexit.loopexit2254 ], [ %.0, %.loopexit.loopexit ], [ 1, %bb.h ] ; 2 uses
  store ptr %.0683, ptr %i.e, align 8, !tbaa !38
  store i32 %.0640, ptr %i.o, align 4, !tbaa !42
  store ptr %.40726, ptr %0, align 8, !tbaa !39
  store i32 %.40682, ptr %i.q, align 8, !tbaa !40
  store i64 %.40639, ptr %i.s, align 8, !tbaa !43
  store i32 %.40, ptr %i.u, align 8, !tbaa !44
  %i.abn = load i32, ptr %i.at, align 4, !tbaa !61
  %.not789 = icmp eq i32 %i.abn, 0
  %.not790 = icmp eq i32 %.4589, %.0640
  %or.cond803 = select i1 %i.abm, i1 true, i1 %.not790
  %or.cond2574 = select i1 %.not789, i1 %or.cond803, i1 false
  br i1 %or.cond2574, label %updatewindow.exit.thread, label %bb.cy

bb.cy:                                            ; preds = %.loopexit
  %i.abo = load ptr, ptr %i.b, align 8, !tbaa !13 ; 11 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 56 ; 3 uses
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !29 ; 2 uses
  %i.abr = icmp eq ptr %i.abq, null
  br i1 %i.abr, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abo, i64 40
  %i.abt = load i32, ptr %i.abs, align 8, !tbaa !16
  %i.abu = shl nuw i32 1, %i.abt
  %i.abv = zext i32 %i.abu to i64
  %i.abw = tail call ptr @cli_max_calloc(i64 noundef %i.abv, i64 noundef 1) #13 ; 3 uses
  store ptr %i.abw, ptr %i.abp, align 8, !tbaa !29
  %i.abx = icmp eq ptr %i.abw, null
  br i1 %i.abx, label %updatewindow.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.aby = phi ptr [ %i.abw, %bb.cz ], [ %i.abq, %bb.cy ] ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abo, i64 44 ; 5 uses
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !61 ; 2 uses
  %i.acb = icmp eq i32 %i.aca, 0
  br i1 %i.acb, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abo, i64 40
  %i.acd = load i32, ptr %i.acc, align 8, !tbaa !16
  %i.ace = shl nuw i32 1, %i.acd                  ; 2 uses
  store i32 %i.ace, ptr %i.abz, align 4, !tbaa !61
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abo, i64 52
  store i32 0, ptr %i.acf, align 4, !tbaa !60
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abo, i64 48
  store i32 0, ptr %i.acg, align 8, !tbaa !59
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.ach = phi i32 [ %i.ace, %bb.db ], [ %i.aca, %bb.da ] ; 3 uses
  %i.aci = load i32, ptr %i.o, align 4, !tbaa !42
  %i.acj = sub i32 %.4589, %i.aci                 ; 5 uses
  %.not.i = icmp ult i32 %i.acj, %i.ach
  br i1 %.not.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ack = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.acl = zext i32 %i.ach to i64                 ; 2 uses
  %i.acm = sub nsw i64 0, %i.acl
  %i.acn = getelementptr inbounds i8, ptr %i.ack, i64 %i.acm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aby, ptr noundef nonnull align 1 dereferenceable(1) %i.acn, i64 %i.acl, i1 false)
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abo, i64 52
  store i32 0, ptr %i.aco, align 4, !tbaa !60
  %i.acp = load i32, ptr %i.abz, align 4, !tbaa !61
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abo, i64 48
  store i32 %i.acp, ptr %i.acq, align 8, !tbaa !59
  br label %updatewindow.exit.thread

bb.de:                                            ; preds = %bb.dc
  %i.acr = getelementptr inbounds nuw i8, ptr %i.abo, i64 52 ; 4 uses
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !60 ; 2 uses
  %i.act = sub i32 %i.ach, %i.acs                 ; 2 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.act, i32 %i.acj) ; 4 uses
  %i.acu = zext i32 %i.acs to i64
  %i.acv = getelementptr inbounds nuw i8, ptr %i.aby, i64 %i.acu
  %i.acw = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.acx = zext i32 %i.acj to i64
  %i.acy = sub nsw i64 0, %i.acx
  %i.acz = getelementptr inbounds i8, ptr %i.acw, i64 %i.acy
  %i.ada = zext i32 %spec.select.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.acv, ptr align 1 %i.acz, i64 %i.ada, i1 false)
  %.not57.not.i = icmp ugt i32 %i.acj, %i.act
  br i1 %.not57.not.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.adb = sub nuw i32 %i.acj, %spec.select.i     ; 2 uses
  %i.adc = load ptr, ptr %i.abp, align 8, !tbaa !29
  %i.add = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.ade = zext i32 %i.adb to i64                 ; 2 uses
  %i.adf = sub nsw i64 0, %i.ade
  %i.adg = getelementptr inbounds i8, ptr %i.add, i64 %i.adf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adc, ptr nonnull align 1 %i.adg, i64 %i.ade, i1 false)
  store i32 %i.adb, ptr %i.acr, align 4, !tbaa !60
  %i.adh = load i32, ptr %i.abz, align 4, !tbaa !61
  %i.adi = getelementptr inbounds nuw i8, ptr %i.abo, i64 48
  store i32 %i.adh, ptr %i.adi, align 8, !tbaa !59
  br label %updatewindow.exit.thread

bb.dg:                                            ; preds = %bb.de
  %i.adj = load i32, ptr %i.acr, align 4, !tbaa !60
  %i.adk = add i32 %i.adj, %spec.select.i         ; 2 uses
  %i.adl = load i32, ptr %i.abz, align 4, !tbaa !61 ; 2 uses
  %i.adm = icmp eq i32 %i.adk, %i.adl
  %spec.store.select.i = select i1 %i.adm, i32 0, i32 %i.adk
  store i32 %spec.store.select.i, ptr %i.acr, align 4, !tbaa !60
  %i.adn = getelementptr inbounds nuw i8, ptr %i.abo, i64 48 ; 2 uses
  %i.ado = load i32, ptr %i.adn, align 8, !tbaa !59 ; 2 uses
  %i.adp = icmp ult i32 %i.ado, %i.adl
  br i1 %i.adp, label %bb.dh, label %updatewindow.exit.thread

bb.dh:                                            ; preds = %bb.dg
  %i.adq = add i32 %i.ado, %spec.select.i
  store i32 %i.adq, ptr %i.adn, align 8, !tbaa !59
  br label %updatewindow.exit.thread

updatewindow.exit:                                ; preds = %bb.cz
  store i32 28, ptr %i.c, align 8, !tbaa !41
  br label %.loopexit840

updatewindow.exit.thread:                         ; preds = %.loopexit, %bb.dd, %bb.dg, %bb.dh, %bb.df
  %i.adr = load i32, ptr %i.q, align 8, !tbaa !40 ; 2 uses
  %i.ads = sub i32 %i.r, %i.adr
  %i.adt = load i32, ptr %i.o, align 4, !tbaa !42 ; 2 uses
  %i.adu = sub i32 %.4589, %i.adt                 ; 2 uses
  %i.adv = zext i32 %i.ads to i64
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.adx = load i64, ptr %i.adw, align 8, !tbaa !18
  %i.ady = add i64 %i.adx, %i.adv
  store i64 %i.ady, ptr %i.adw, align 8, !tbaa !18
  %i.adz = zext i32 %i.adu to i64                 ; 3 uses
  %i.aea = load i64, ptr %i.x, align 8, !tbaa !17
  %i.aeb = add i64 %i.aea, %i.adz
  store i64 %i.aeb, ptr %i.x, align 8, !tbaa !17
  %i.aec = load i64, ptr %i.y, align 8, !tbaa !63
  %i.aed = add i64 %i.aec, %i.adz
  store i64 %i.aed, ptr %i.y, align 8, !tbaa !63
  %i.aee = load i32, ptr %i.w, align 8, !tbaa !15
  %i.aef = icmp ne i32 %i.aee, 0
  %i.aeg = icmp ne i32 %.4589, %i.adt             ; 2 uses
  %or.cond = select i1 %i.aef, i1 %i.aeg, i1 false
  br i1 %or.cond, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %updatewindow.exit.thread
  %i.aeh = load i64, ptr %i.z, align 8, !tbaa !48
  %i.aei = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.aej = sub nsw i64 0, %i.adz
  %i.aek = getelementptr inbounds i8, ptr %i.aei, i64 %i.aej
  %i.ael = tail call i64 @adler32(i64 noundef %i.aeh, ptr noundef %i.aek, i32 noundef %i.adu) #13 ; 2 uses
  store i64 %i.ael, ptr %i.z, align 8, !tbaa !48
  store i64 %i.ael, ptr %i.aa, align 8, !tbaa !19
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %updatewindow.exit.thread
  %i.aem = load i32, ptr %i.u, align 8, !tbaa !44
  %i.aen = load i32, ptr %i.av, align 4, !tbaa !49
  %.not792 = icmp eq i32 %i.aen, 0
  %i.aeo = select i1 %.not792, i32 0, i32 64
  %i.aep = add i32 %i.aeo, %i.aem
  %i.aeq = load i32, ptr %i.c, align 8, !tbaa !41
  %i.aer = icmp eq i32 %i.aeq, 11
  %i.aes = select i1 %i.aer, i32 128, i32 0
  %i.aet = add i32 %i.aep, %i.aes
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.aet, ptr %i.aeu, align 8, !tbaa !64
  %i.aev = icmp eq i32 %i.r, %i.adr
  %.not2205 = xor i1 %i.aeg, true
  %or.cond3 = select i1 %i.aev, i1 %.not2205, i1 false
  %i.aew = icmp eq i32 %1, 4
  %or.cond5 = or i1 %i.aew, %or.cond3
  %i.aex = icmp eq i32 %.8, 0
  %or.cond7 = select i1 %or.cond5, i1 %i.aex, i1 false
  %spec.store.select = select i1 %or.cond7, i32 -5, i32 %.8
  br label %.loopexit840

.loopexit840.loopexit:                            ; preds = %bb.h
  br label %.loopexit840

.loopexit840:                                     ; preds = %bb.h, %.loopexit840.loopexit, %bb.a, %bb.b, %bb.c, %bb.e, %bb.dj, %updatewindow.exit, %.loopexit838
  %.0727 = phi i32 [ -2, %bb.a ], [ -4, %.loopexit840.loopexit ], [ -4, %updatewindow.exit ], [ %spec.store.select, %bb.dj ], [ 2, %.loopexit838 ], [ -2, %bb.e ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.h ]
  ret i32 %.0727
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 2) i32 @inflate_table(i32 noundef range(i32 0, 3) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) unnamed_addr #6 {
.preheader248:
  %i.a = alloca [16 x i16], align 16              ; 52 uses
  %i.b = alloca [16 x i16], align 16              ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !27
  %.not282 = icmp eq i32 %2, 0                    ; 2 uses
  br i1 %.not282, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %.preheader248
  %i.c = load i32, ptr %4, align 4, !tbaa !66
  br label %bb.a

.lr.ph.preheader:                                 ; preds = %.preheader248
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
end_hunk_1
