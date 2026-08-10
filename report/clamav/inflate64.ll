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
  store ptr %i.b, ptr %i.d, align 8, !tbaa !8
  %i.e = icmp slt i32 %1, 0
  %i.f = lshr i32 %1, 4
  %i.g = add nuw nsw i32 %i.f, 1
  %.sink = select i1 %i.e, i32 0, i32 %i.g
  %.034 = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink, ptr %i.h, align 8, !tbaa !14
  %i.i = add nsw i32 %.034, -17
  %or.cond = icmp ult i32 %i.i, -9
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #13
  store ptr null, ptr %i.d, align 8, !tbaa !8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %.034, ptr %i.j, align 8, !tbaa !16
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
  %.0 = phi i32 [ 0, %bb.e ], [ -2, %bb.a ], [ -2, %bb.d ], [ -4, %bb.b ]
  ret i32 %.0
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 65 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit840, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit840, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !26
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %.loopexit840

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load i32, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.m = icmp eq i32 %i.l, 11
  br i1 %i.m, label %bb.g, label %.split1778

bb.g:                                             ; preds = %bb.f
  store i32 12, ptr %i.c, align 8, !tbaa !27
  br label %.split1778

.split1778:                                       ; preds = %bb.f, %bb.g
  %i.n = phi i32 [ %i.l, %bb.f ], [ 12, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !28   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !26   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !30
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

bb.h:                                             ; preds = %.thread, %.split1778
  %i.ay = phi i32 [ %i.n, %.split1778 ], [ %.pre, %.thread ] ; 3 uses
  %.0686 = phi ptr [ %i.h, %.split1778 ], [ %.39725, %.thread ] ; 53 uses
  %.0683 = phi ptr [ %i.f, %.split1778 ], [ %.2685, %.thread ] ; 34 uses
  %.0642 = phi i32 [ %i.r, %.split1778 ], [ %.39681, %.thread ] ; 47 uses
  %.0640 = phi i32 [ %i.p, %.split1778 ], [ %.1641, %.thread ] ; 56 uses
  %.0599 = phi i64 [ %i.t, %.split1778 ], [ %.39638, %.thread ] ; 34 uses
  %.0590 = phi i32 [ %i.v, %.split1778 ], [ %.39, %.thread ] ; 47 uses
  %.0585 = phi i32 [ %i.p, %.split1778 ], [ %.3588, %.thread ] ; 46 uses
  %.0 = phi i32 [ 0, %.split1778 ], [ %.7, %.thread ] ; 28 uses
  %.06833081 = ptrtoaddr ptr %.0683 to i64
  switch i32 %i.ay, label %.loopexit840 [
    i32 0, label %bb.i
    i32 9, label %.preheader
    i32 10, label %.loopexit838
    i32 11, label %bb.w
    i32 12, label %bb.x
    i32 13, label %bb.ae
    i32 14, label %._crit_edge2223
    i32 15, label %.preheader834
    i32 16, label %.split
    i32 17, label %._crit_edge2214
    i32 18, label %bb.bk
    i32 19, label %._crit_edge2217
    i32 20, label %bb.bw
    i32 21, label %._crit_edge2219
    i32 22, label %bb.cg
    i32 23, label %bb.co
    i32 24, label %bb.cq
    i32 26, label %.loopexit
    i32 27, label %.loopexit.loopexit1806
    i32 28, label %.loopexit840.loopexit
  ]

._crit_edge2223:                                  ; preds = %bb.h
  %.pre2224 = load i32, ptr %i.ab, align 4, !tbaa !31
  br label %bb.al

._crit_edge2219:                                  ; preds = %bb.h
  %.pre2220 = load i32, ptr %i.ao, align 4, !tbaa !32
  br label %bb.cc

._crit_edge2217:                                  ; preds = %bb.h
  %.pre2218 = load i32, ptr %i.ao, align 4, !tbaa !32
  br label %bb.bu

._crit_edge2214:                                  ; preds = %bb.h
  %.promoted1426.pre = load i32, ptr %i.af, align 4, !tbaa !33
  br label %bb.av

.preheader834:                                    ; preds = %bb.h
  %i.az = icmp ult i32 %.0590, 14
  br i1 %i.az, label %.lr.ph1215.preheader, label %.split.thread

.lr.ph1215.preheader:                             ; preds = %.preheader834
  %i.ba = zext nneg i32 %.0590 to i64             ; 4 uses
  %i.bb = icmp eq i32 %.0642, 0
  br i1 %i.bb, label %.loopexit.loopexit1803, label %bb.ap

.preheader:                                       ; preds = %bb.h
  %i.bc = icmp ult i32 %.0590, 32
  br i1 %i.bc, label %.lr.ph1783.preheader, label %._crit_edge1784

.lr.ph1783.preheader:                             ; preds = %.preheader
  %i.bd = zext nneg i32 %.0590 to i64             ; 5 uses
  %i.be = icmp eq i32 %.0642, 0
  br i1 %i.be, label %.loopexit.loopexit, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.bf = load i32, ptr %i.w, align 8, !tbaa !14
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %.preheader818

.preheader818:                                    ; preds = %bb.i
  %i.bh = icmp ult i32 %.0590, 16
  br i1 %i.bh, label %.lr.ph1772.preheader, label %._crit_edge1773

.lr.ph1772.preheader:                             ; preds = %.preheader818
  %i.bi = zext nneg i32 %.0590 to i64             ; 4 uses
  %i.bj = icmp eq i32 %.0642, 0
  br i1 %i.bj, label %.loopexit.loopexit1794, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 12, ptr %i.c, align 8, !tbaa !27
  br label %.thread

bb.k:                                             ; preds = %.lr.ph1772.preheader
  %i.bk = add i32 %.0642, -1                      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0686, i64 1 ; 3 uses
  %i.bm = load i8, ptr %.0686, align 1, !tbaa !34
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, %i.bi
  %i.bp = add i64 %i.bo, %.0599                   ; 3 uses
  %indvars.iv.next2183 = add nuw nsw i64 %i.bi, 8 ; 3 uses
  %i.bq = icmp ult i32 %.0590, 8
  br i1 %i.bq, label %.lr.ph1772.1, label %._crit_edge1773.loopexit

.lr.ph1772.1:                                     ; preds = %bb.k
  %i.br = icmp eq i32 %i.bk, 0
  br i1 %i.br, label %.loopexit.loopexit1794, label %bb.l

bb.l:                                             ; preds = %.lr.ph1772.1
  %i.bs = add i32 %.0642, -2
  %i.bt = getelementptr inbounds nuw i8, ptr %.0686, i64 2
  %i.bu = load i8, ptr %i.bl, align 1, !tbaa !34
  %i.bv = zext i8 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, %indvars.iv.next2183
  %i.bx = add i64 %i.bw, %i.bp
  %indvars.iv.next2183.1 = or disjoint i64 %i.bi, 16
  br label %._crit_edge1773.loopexit

._crit_edge1773.loopexit:                         ; preds = %bb.l, %bb.k
  %.lcssa3306 = phi i32 [ %i.bk, %bb.k ], [ %i.bs, %bb.l ]
  %.lcssa3305 = phi ptr [ %i.bl, %bb.k ], [ %i.bt, %bb.l ]
  %.lcssa3304 = phi i64 [ %i.bp, %bb.k ], [ %i.bx, %bb.l ]
  %indvars.iv.next2183.lcssa = phi i64 [ %indvars.iv.next2183, %bb.k ], [ %indvars.iv.next2183.1, %bb.l ]
  %i.by = trunc nuw nsw i64 %indvars.iv.next2183.lcssa to i32
  br label %._crit_edge1773

._crit_edge1773:                                  ; preds = %._crit_edge1773.loopexit, %.preheader818
  %.1687.lcssa = phi ptr [ %.0686, %.preheader818 ], [ %.lcssa3305, %._crit_edge1773.loopexit ] ; 4 uses
  %.1643.lcssa = phi i32 [ %.0642, %.preheader818 ], [ %.lcssa3306, %._crit_edge1773.loopexit ] ; 4 uses
  %.1600.lcssa = phi i64 [ %.0599, %.preheader818 ], [ %.lcssa3304, %._crit_edge1773.loopexit ] ; 7 uses
  %.1591.lcssa = phi i32 [ %.0590, %.preheader818 ], [ %i.by, %._crit_edge1773.loopexit ] ; 3 uses
  %i.bz = shl i64 %.1600.lcssa, 8
  %i.ca = and i64 %i.bz, 65280
  %i.cb = lshr i64 %.1600.lcssa, 8
  %i.cc = add nuw nsw i64 %i.ca, %i.cb
  %i.cd = urem i64 %i.cc, 31
  %.not786 = icmp eq i64 %i.cd, 0
  br i1 %.not786, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge1773
  store i32 27, ptr %i.c, align 8, !tbaa !27
  br label %.thread

bb.n:                                             ; preds = %._crit_edge1773
  %i.ce = and i64 %.1600.lcssa, 15
  %.not787 = icmp eq i64 %i.ce, 8
  br i1 %.not787, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 27, ptr %i.c, align 8, !tbaa !27
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
  store i32 27, ptr %i.c, align 8, !tbaa !27
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.cm = shl nuw nsw i32 256, %i.ch
  store i32 %i.cm, ptr %i.ax, align 4, !tbaa !20
  %i.cn = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13 ; 2 uses
  store i64 %i.cn, ptr %i.z, align 8, !tbaa !35
  store i64 %i.cn, ptr %i.aa, align 8, !tbaa !19
  %i.co = and i64 %.1600.lcssa, 8192
  %.not788 = icmp eq i64 %i.co, 0
  %i.cp = select i1 %.not788, i32 11, i32 9
  store i32 %i.cp, ptr %i.c, align 8, !tbaa !27
  br label %.thread

bb.s:                                             ; preds = %.lr.ph1783.preheader
  %i.cq = add i32 %.0642, -1                      ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0686, i64 1 ; 3 uses
  %i.cs = load i8, ptr %.0686, align 1, !tbaa !34
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, %i.bd
  %i.cv = add i64 %i.cu, %.0599                   ; 3 uses
  %indvars.iv.next2209 = add nuw nsw i64 %i.bd, 8 ; 2 uses
  %i.cw = icmp ult i32 %.0590, 24
  br i1 %i.cw, label %.lr.ph1783.1, label %._crit_edge1784

.lr.ph1783.1:                                     ; preds = %bb.s
  %i.cx = icmp eq i32 %i.cq, 0
  br i1 %i.cx, label %.loopexit.loopexit, label %bb.t

bb.t:                                             ; preds = %.lr.ph1783.1
  %i.cy = add i32 %.0642, -2                      ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0686, i64 2 ; 3 uses
  %i.da = load i8, ptr %i.cr, align 1, !tbaa !34
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, %indvars.iv.next2209
  %i.dd = add i64 %i.dc, %i.cv                    ; 3 uses
  %indvars.iv.next2209.1 = add nuw nsw i64 %i.bd, 16 ; 2 uses
  %i.de = icmp ult i32 %.0590, 16
  br i1 %i.de, label %.lr.ph1783.2, label %._crit_edge1784

.lr.ph1783.2:                                     ; preds = %bb.t
  %i.df = icmp eq i32 %i.cy, 0
  br i1 %i.df, label %.loopexit.loopexit, label %bb.u

bb.u:                                             ; preds = %.lr.ph1783.2
  %i.dg = add i32 %.0642, -3                      ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0686, i64 3 ; 3 uses
  %i.di = load i8, ptr %i.cz, align 1, !tbaa !34
  %i.dj = zext i8 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, %indvars.iv.next2209.1
  %i.dl = add i64 %i.dk, %i.dd                    ; 3 uses
  %indvars.iv.next2209.2 = add nuw nsw i64 %i.bd, 24 ; 2 uses
end_hunk_0
begin_hunk_1_@inflate64:bb.a
bb.al:                                            ; preds = %._crit_edge2223, %bb.ak
  %i.gh = phi i32 [ %i.gg, %bb.ak ], [ %.pre2224, %._crit_edge2223 ] ; 2 uses
  %.6692 = phi ptr [ %.5691.lcssa, %bb.ak ], [ %.0686, %._crit_edge2223 ] ; 4 uses
  %.6648 = phi i32 [ %.5647.lcssa, %bb.ak ], [ %.0642, %._crit_edge2223 ] ; 4 uses
  %.6605 = phi i64 [ 0, %bb.ak ], [ %.0599, %._crit_edge2223 ] ; 3 uses
  %.6596 = phi i32 [ 0, %bb.ak ], [ %.0590, %._crit_edge2223 ] ; 3 uses
  %.not782 = icmp eq i32 %i.gh, 0
  br i1 %.not782, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.gh, i32 %.6648)
  %.1578 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %.0640) ; 5 uses
  %i.gi = icmp eq i32 %.1578, 0
  br i1 %i.gi, label %.loopexit.loopexit1806, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gj = zext i32 %.1578 to i64                  ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0683, ptr align 1 %.6692, i64 %i.gj, i1 false)
  %i.gk = sub i32 %.6648, %.1578
  %i.gl = getelementptr inbounds nuw i8, ptr %.6692, i64 %i.gj
  %i.gm = sub i32 %.0640, %.1578
  %i.gn = getelementptr inbounds nuw i8, ptr %.0683, i64 %i.gj
  %i.go = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.gp = sub i32 %i.go, %.1578
  store i32 %i.gp, ptr %i.ab, align 4, !tbaa !31
  br label %.thread

bb.ao:                                            ; preds = %bb.al
  store i32 11, ptr %i.c, align 8, !tbaa !27
  br label %.thread

bb.ap:                                            ; preds = %.lr.ph1215.preheader
  %i.gq = add i32 %.0642, -1                      ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0686, i64 1 ; 3 uses
  %i.gs = load i8, ptr %.0686, align 1, !tbaa !34
  %i.gt = zext i8 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, %i.ba
  %i.gv = add i64 %i.gu, %.0599                   ; 3 uses
  %indvars.iv.next2138.a = add nuw nsw i64 %i.ba, 8 ; 3 uses
  %i.gw = icmp ult i32 %.0590, 6
  br i1 %i.gw, label %.lr.ph1215.1, label %._crit_edge1216.loopexit

.lr.ph1215.1:                                     ; preds = %bb.ap
  %i.gx = icmp eq i32 %i.gq, 0
  br i1 %i.gx, label %.loopexit.loopexit1803, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph1215.1
  %i.gy = add i32 %.0642, -2
  %i.gz = getelementptr inbounds nuw i8, ptr %.0686, i64 2
  %i.ha = load i8, ptr %i.gr, align 1, !tbaa !34
  %i.hb = zext i8 %i.ha to i64
  %i.hc = shl nuw nsw i64 %i.hb, %indvars.iv.next2138.a
  %i.hd = add i64 %i.hc, %i.gv
  %indvars.iv.next2138.1 = or disjoint i64 %i.ba, 16
  br label %._crit_edge1216.loopexit

._crit_edge1216.loopexit:                         ; preds = %bb.aq, %bb.ap
  %.lcssa3155 = phi i32 [ %i.gq, %bb.ap ], [ %i.gy, %bb.aq ]
  %.lcssa3154 = phi ptr [ %i.gr, %bb.ap ], [ %i.gz, %bb.aq ]
  %.lcssa3153 = phi i64 [ %i.gv, %bb.ap ], [ %i.hd, %bb.aq ]
  %indvars.iv.next2138.lcssa = phi i64 [ %indvars.iv.next2138.a, %bb.ap ], [ %indvars.iv.next2138.1, %bb.aq ]
  %i.he = trunc nuw nsw i64 %indvars.iv.next2138.lcssa to i32
  br label %.split.thread

.split.thread:                                    ; preds = %.preheader834, %._crit_edge1216.loopexit
  %.7693.lcssa = phi ptr [ %.0686, %.preheader834 ], [ %.lcssa3154, %._crit_edge1216.loopexit ]
  %.7649.lcssa = phi i32 [ %.0642, %.preheader834 ], [ %.lcssa3155, %._crit_edge1216.loopexit ]
  %.7606.lcssa = phi i64 [ %.0599, %.preheader834 ], [ %.lcssa3153, %._crit_edge1216.loopexit ] ; 2 uses
  %.7597.lcssa = phi i32 [ %.0590, %.preheader834 ], [ %i.he, %._crit_edge1216.loopexit ]
  %i.hf = trunc i64 %.7606.lcssa to i32           ; 3 uses
  %i.hg = and i32 %i.hf, 31
  %i.hh = add nuw nsw i32 %i.hg, 257
  store i32 %i.hh, ptr %i.ac, align 4, !tbaa !40
  %i.hi = lshr i32 %i.hf, 5
  %i.hj = and i32 %i.hi, 31
  %i.hk = add nuw nsw i32 %i.hj, 1
  store i32 %i.hk, ptr %i.ad, align 8, !tbaa !41
  %i.hl = lshr i32 %i.hf, 10
  %i.hm = and i32 %i.hl, 15
  %i.hn = add nuw nsw i32 %i.hm, 4                ; 2 uses
  store i32 %i.hn, ptr %i.ae, align 8, !tbaa !42
  %i.ho = lshr i64 %.7606.lcssa, 14
  %i.hp = add i32 %.7597.lcssa, -14
  store i32 0, ptr %i.af, align 4, !tbaa !33
  store i32 16, ptr %i.c, align 8, !tbaa !27
  br label %.preheader816.preheader

.split:                                           ; preds = %bb.h
  %.pre2212 = load i32, ptr %i.ae, align 8, !tbaa !42 ; 2 uses
  %.promoted.pre = load i32, ptr %i.af, align 4, !tbaa !33 ; 3 uses
  %i.hq = icmp ult i32 %.promoted.pre, %.pre2212
  br i1 %i.hq, label %.preheader816.preheader, label %.preheader833

.preheader816.preheader:                          ; preds = %.split.thread, %.split
  %.85982271 = phi i32 [ %i.hp, %.split.thread ], [ %.0590, %.split ]
  %.86072270 = phi i64 [ %i.ho, %.split.thread ], [ %.0599, %.split ]
  %.86502269 = phi i32 [ %.7649.lcssa, %.split.thread ], [ %.0642, %.split ]
  %.86942268 = phi ptr [ %.7693.lcssa, %.split.thread ], [ %.0686, %.split ]
  %i.hr = phi i32 [ %i.hn, %.split.thread ], [ %.pre2212, %.split ] ; 2 uses
  %.promoted2267 = phi i32 [ 0, %.split.thread ], [ %.promoted.pre, %.split ]
  %i.hs = zext i32 %.promoted2267 to i64
  %wide.trip.count = zext i32 %i.hr to i64
  br label %.preheader816

.preheader833:                                    ; preds = %bb.ar, %.split
  %.9695.lcssa = phi ptr [ %.0686, %.split ], [ %.10696.lcssa, %bb.ar ] ; 2 uses
  %.9651.lcssa = phi i32 [ %.0642, %.split ], [ %.10652.lcssa, %bb.ar ] ; 2 uses
  %.9608.lcssa = phi i64 [ %.0599, %.split ], [ %i.im, %bb.ar ] ; 2 uses
  %.9.lcssa = phi i32 [ %.0590, %.split ], [ %i.in, %bb.ar ] ; 2 uses
  %.lcssa = phi i32 [ %.promoted.pre, %.split ], [ %i.hr, %bb.ar ] ; 2 uses
  %i.ht = icmp ult i32 %.lcssa, 19
  br i1 %i.ht, label %.lr.ph1361.preheader, label %bb.as

.lr.ph1361.preheader:                             ; preds = %.preheader833
  %i.hu = zext nneg i32 %.lcssa to i64
  br label %.lr.ph1361

.preheader816:                                    ; preds = %.preheader816.preheader, %bb.ar
  %indvars.iv2140.a = phi i64 [ %i.hs, %.preheader816.preheader ], [ %indvars.iv.next2141.a, %bb.ar ] ; 2 uses
  %.91354 = phi i32 [ %.85982271, %.preheader816.preheader ], [ %i.in, %bb.ar ] ; 5 uses
  %.96081353 = phi i64 [ %.86072270, %.preheader816.preheader ], [ %i.im, %bb.ar ] ; 3 uses
  %.96511352 = phi i32 [ %.86502269, %.preheader816.preheader ], [ %.10652.lcssa, %bb.ar ] ; 3 uses
  %.96951351 = phi ptr [ %.86942268, %.preheader816.preheader ], [ %.10696.lcssa, %bb.ar ] ; 4 uses
  %i.hv = icmp ult i32 %.91354, 3
  br i1 %i.hv, label %.lr.ph1225, label %bb.ar

.lr.ph1225:                                       ; preds = %.preheader816
  %i.hw = icmp eq i32 %.96511352, 0
  br i1 %i.hw, label %.loopexit, label %._crit_edge1226

._crit_edge1226:                                  ; preds = %.lr.ph1225
  %i.hx = or disjoint i32 %.91354, 8
  %i.hy = add i32 %.96511352, -1
  %i.hz = getelementptr inbounds nuw i8, ptr %.96951351, i64 1
  %i.ia = load i8, ptr %.96951351, align 1, !tbaa !34
  %i.ib = zext i8 %i.ia to i64
  %i.ic = zext nneg i32 %.91354 to i64
  %i.id = shl nuw nsw i64 %i.ib, %i.ic
  %i.ie = add i64 %i.id, %.96081353
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge1226, %.preheader816
  %.10696.lcssa = phi ptr [ %i.hz, %._crit_edge1226 ], [ %.96951351, %.preheader816 ] ; 2 uses
  %.10652.lcssa = phi i32 [ %i.hy, %._crit_edge1226 ], [ %.96511352, %.preheader816 ] ; 2 uses
  %.10609.lcssa = phi i64 [ %i.ie, %._crit_edge1226 ], [ %.96081353, %.preheader816 ] ; 2 uses
  %.10.lcssa = phi i32 [ %i.hx, %._crit_edge1226 ], [ %.91354, %.preheader816 ]
  %i.if = trunc i64 %.10609.lcssa to i16
  %i.ig = and i16 %i.if, 7
  %indvars.iv.next2141.a = add nuw nsw i64 %indvars.iv2140.a, 1 ; 3 uses
  %i.ih = trunc nuw i64 %indvars.iv.next2141.a to i32
  store i32 %i.ih, ptr %i.af, align 4, !tbaa !33
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr @inflate64.order, i64 %indvars.iv2140.a
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !43
  %i.ik = zext i16 %i.ij to i64
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ik
  store i16 %i.ig, ptr %i.il, align 2, !tbaa !43
  %i.im = lshr i64 %.10609.lcssa, 3               ; 2 uses
  %i.in = add i32 %.10.lcssa, -3                  ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next2141.a, %wide.trip.count
  br i1 %exitcond.not, label %.preheader833, label %.preheader816

.lr.ph1361:                                       ; preds = %.lr.ph1361.preheader, %.lr.ph1361
  %indvars.iv2143 = phi i64 [ %i.hu, %.lr.ph1361.preheader ], [ %indvars.iv.next2144.a, %.lr.ph1361 ] ; 2 uses
  %indvars.iv.next2144.a = add nuw nsw i64 %indvars.iv2143, 1 ; 2 uses
  %i.io = getelementptr inbounds nuw [2 x i8], ptr @inflate64.order, i64 %indvars.iv2143
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !43
  %i.iq = zext i16 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.iq
  store i16 0, ptr %i.ir, align 2, !tbaa !43
  %i.is = and i64 %indvars.iv.next2144.a, 4294967295
  %exitcond2146.not = icmp eq i64 %i.is, 19
  br i1 %exitcond2146.not, label %._crit_edge1362, label %.lr.ph1361

._crit_edge1362:                                  ; preds = %.lr.ph1361
  store i32 19, ptr %i.af, align 4, !tbaa !33
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge1362, %.preheader833
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !21
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !23
  store i32 7, ptr %i.ak, align 8, !tbaa !37
  %i.it = tail call fastcc i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %i.ag, i32 noundef 19, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al) ; 2 uses
  %.not759 = icmp eq i32 %i.it, 0
  br i1 %.not759, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 27, ptr %i.c, align 8, !tbaa !27
  br label %.thread

bb.au:                                            ; preds = %bb.as
  store i32 0, ptr %i.af, align 4, !tbaa !33
  store i32 17, ptr %i.c, align 8, !tbaa !27
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge2214, %bb.au
  %.promoted1426 = phi i32 [ 0, %bb.au ], [ %.promoted1426.pre, %._crit_edge2214 ] ; 2 uses
  %.11697 = phi ptr [ %.9695.lcssa, %bb.au ], [ %.0686, %._crit_edge2214 ] ; 2 uses
  %.11653 = phi i32 [ %.9651.lcssa, %bb.au ], [ %.0642, %._crit_edge2214 ] ; 2 uses
  %.11610 = phi i64 [ %.9608.lcssa, %bb.au ], [ %.0599, %._crit_edge2214 ] ; 2 uses
  %.11 = phi i32 [ %.9.lcssa, %bb.au ], [ %.0590, %._crit_edge2214 ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.au ], [ %.0, %._crit_edge2214 ] ; 6 uses
  %i.iu = load i32, ptr %i.ac, align 4, !tbaa !40 ; 2 uses
  %i.iv = load i32, ptr %i.ad, align 8, !tbaa !41
  %i.iw = add i32 %i.iv, %i.iu                    ; 3 uses
  %i.ix = icmp ult i32 %.promoted1426, %i.iw
  br i1 %i.ix, label %.preheader814.lr.ph, label %._crit_edge1434

.preheader814.lr.ph:                              ; preds = %bb.av
  %i.iy = load ptr, ptr %i.aj, align 8, !tbaa !23 ; 3 uses
  %i.iz = load i32, ptr %i.ak, align 8, !tbaa !37
  %notmask = shl nsw i32 -1, %i.iz
  %i.ja = xor i32 %notmask, -1                    ; 2 uses
  br label %.preheader814

.preheader814:                                    ; preds = %.preheader814.lr.ph, %bb.bf
  %.121433 = phi i32 [ %.11, %.preheader814.lr.ph ], [ %.19, %bb.bf ] ; 4 uses
  %.126111432 = phi i64 [ %.11610, %.preheader814.lr.ph ], [ %.19618, %bb.bf ] ; 4 uses
  %.126541431 = phi i32 [ %.11653, %.preheader814.lr.ph ], [ %.19661, %bb.bf ] ; 5 uses
  %.126981430 = phi ptr [ %.11697, %.preheader814.lr.ph ], [ %.19705, %bb.bf ] ; 3 uses
  %.lcssa141414271429 = phi i32 [ %.promoted1426, %.preheader814.lr.ph ], [ %.lcssa14141428, %bb.bf ] ; 11 uses
  %i.jb = trunc i64 %.126111432 to i32
  %i.jc = and i32 %i.ja, %i.jb
  %i.jd = zext nneg i32 %i.jc to i64              ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.jd
  %.sroa.18.0..sroa_idx1366 = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %.sroa.18.0.copyload1367 = load i8, ptr %.sroa.18.0..sroa_idx1366, align 1, !tbaa !34 ; 2 uses
  %i.jf = zext i8 %.sroa.18.0.copyload1367 to i32 ; 2 uses
  %.not7601368 = icmp ult i32 %.121433, %i.jf
  br i1 %.not7601368, label %.lr.ph1373.preheader, label %._crit_edge1374

.lr.ph1373.preheader:                             ; preds = %.preheader814
  %i.jg = icmp eq i32 %.126541431, 0
  br i1 %i.jg, label %.loopexit.loopexit2272, label %.lr.ph2939

.lr.ph2939:                                       ; preds = %.lr.ph1373.preheader
  %i.jh = zext nneg i32 %.121433 to i64
  br label %bb.aw

.lr.ph1373:                                       ; preds = %bb.aw
  %i.ji = icmp eq i32 %i.jj, 0
  br i1 %i.ji, label %.loopexit.loopexit2272, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph2939, %.lr.ph1373
  %.1369913692938 = phi ptr [ %.126981430, %.lr.ph2939 ], [ %i.jk, %.lr.ph1373 ] ; 2 uses
  %.1365513702937 = phi i32 [ %.126541431, %.lr.ph2939 ], [ %i.jj, %.lr.ph1373 ]
  %.1361213712936 = phi i64 [ %.126111432, %.lr.ph2939 ], [ %i.jo, %.lr.ph1373 ]
  %indvars.iv21472935 = phi i64 [ %i.jh, %.lr.ph2939 ], [ %indvars.iv.next2148.a, %.lr.ph1373 ] ; 2 uses
  %i.jj = add i32 %.1365513702937, -1             ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.1369913692938, i64 1 ; 2 uses
  %i.jl = load i8, ptr %.1369913692938, align 1, !tbaa !34
  %i.jm = zext i8 %i.jl to i64
  %i.jn = shl i64 %i.jm, %indvars.iv21472935
  %i.jo = add i64 %i.jn, %.1361213712936          ; 4 uses
  %indvars.iv.next2148.a = add nuw nsw i64 %indvars.iv21472935, 8 ; 3 uses
  %i.jp = trunc i64 %i.jo to i32
  %i.jq = and i32 %i.ja, %i.jp
  %i.jr = zext nneg i32 %i.jq to i64              ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.jr
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %.sroa.18.0.copyload = load i8, ptr %.sroa.18.0..sroa_idx, align 1, !tbaa !34 ; 3 uses
  %i.jt = zext i8 %.sroa.18.0.copyload to i64
  %.not760 = icmp samesign ult i64 %indvars.iv.next2148.a, %i.jt
  br i1 %.not760, label %.lr.ph1373, label %._crit_edge1374.loopexit

._crit_edge1374.loopexit:                         ; preds = %bb.aw
  %i.ju = zext i8 %.sroa.18.0.copyload to i32
  %i.jv = trunc nuw nsw i64 %indvars.iv.next2148.a to i32
  br label %._crit_edge1374

._crit_edge1374:                                  ; preds = %._crit_edge1374.loopexit, %.preheader814
  %i.jw = phi i64 [ %i.jd, %.preheader814 ], [ %i.jr, %._crit_edge1374.loopexit ]
  %.lcssa1364 = phi i32 [ %i.jf, %.preheader814 ], [ %i.ju, %._crit_edge1374.loopexit ] ; 7 uses
  %.13699.lcssa = phi ptr [ %.126981430, %.preheader814 ], [ %i.jk, %._crit_edge1374.loopexit ] ; 7 uses
  %.13655.lcssa = phi i32 [ %.126541431, %.preheader814 ], [ %i.jj, %._crit_edge1374.loopexit ] ; 7 uses
  %.13612.lcssa = phi i64 [ %.126111432, %.preheader814 ], [ %i.jo, %._crit_edge1374.loopexit ] ; 7 uses
  %.13.lcssa = phi i32 [ %.121433, %.preheader814 ], [ %i.jv, %._crit_edge1374.loopexit ] ; 10 uses
  %.sroa.18.0.copyload.lcssa = phi i8 [ %.sroa.18.0.copyload1367, %.preheader814 ], [ %.sroa.18.0.copyload, %._crit_edge1374.loopexit ] ; 4 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.jw
  %.sroa.41.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  %.sroa.41.0.copyload.le = load i16, ptr %.sroa.41.0..sroa_idx.le, align 2, !tbaa !43 ; 3 uses
  %i.jy = icmp ult i16 %.sroa.41.0.copyload.le, 16
  br i1 %i.jy, label %._crit_edge1421, label %bb.ax

._crit_edge1421:                                  ; preds = %._crit_edge1374
  %i.jz = zext nneg i8 %.sroa.18.0.copyload.lcssa to i64
  %i.ka = lshr i64 %.13612.lcssa, %i.jz
  %i.kb = sub nuw i32 %.13.lcssa, %.lcssa1364
  %i.kc = add i32 %.lcssa141414271429, 1          ; 2 uses
  store i32 %i.kc, ptr %i.af, align 4, !tbaa !33
  %i.kd = zext i32 %.lcssa141414271429 to i64
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.kd
  store i16 %.sroa.41.0.copyload.le, ptr %i.ke, align 2, !tbaa !43
  br label %bb.bf

bb.ax:                                            ; preds = %._crit_edge1374
  switch i16 %.sroa.41.0.copyload.le, label %.preheader808 [
    i16 16, label %.preheader810
    i16 17, label %.preheader812
  ]

.preheader812:                                    ; preds = %bb.ax
  %i.kf = add nuw nsw i32 %.lcssa1364, 3          ; 2 uses
  %i.kg = icmp ult i32 %.13.lcssa, %i.kf
  br i1 %i.kg, label %.lr.ph1387.preheader, label %._crit_edge1388

.lr.ph1387.preheader:                             ; preds = %.preheader812
  %i.kh = zext nneg i32 %.13.lcssa to i64
  %i.ki = zext nneg i32 %i.kf to i64
  br label %.lr.ph1387

.preheader810:                                    ; preds = %bb.ax
  %i.kj = add nuw nsw i32 %.lcssa1364, 2          ; 2 uses
  %i.kk = icmp ult i32 %.13.lcssa, %i.kj
  br i1 %i.kk, label %.lr.ph1397.preheader, label %._crit_edge1398

.lr.ph1397.preheader:                             ; preds = %.preheader810
  %i.kl = zext nneg i32 %.13.lcssa to i64
  %i.km = zext nneg i32 %i.kj to i64
  br label %.lr.ph1397

.preheader808:                                    ; preds = %bb.ax
  %i.kn = add nuw nsw i32 %.lcssa1364, 7          ; 2 uses
  %i.ko = icmp ult i32 %.13.lcssa, %i.kn
  br i1 %i.ko, label %.lr.ph1407.preheader, label %._crit_edge1408

.lr.ph1407.preheader:                             ; preds = %.preheader808
  %i.kp = zext nneg i32 %.13.lcssa to i64
  %i.kq = zext nneg i32 %i.kn to i64
  br label %.lr.ph1407

.lr.ph1397:                                       ; preds = %.lr.ph1397.preheader, %bb.ay
  %indvars.iv2153 = phi i64 [ %i.kl, %.lr.ph1397.preheader ], [ %indvars.iv.next2154, %bb.ay ] ; 3 uses
  %.156141395 = phi i64 [ %.13612.lcssa, %.lr.ph1397.preheader ], [ %i.kx, %bb.ay ] ; 2 uses
  %.156571394 = phi i32 [ %.13655.lcssa, %.lr.ph1397.preheader ], [ %i.ks, %bb.ay ] ; 2 uses
  %.157011393 = phi ptr [ %.13699.lcssa, %.lr.ph1397.preheader ], [ %i.kt, %bb.ay ] ; 3 uses
  %i.kr = icmp eq i32 %.156571394, 0
  br i1 %i.kr, label %.loopexit.loopexit1791, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph1397
  %i.ks = add i32 %.156571394, -1                 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.157011393, i64 1 ; 2 uses
  %i.ku = load i8, ptr %.157011393, align 1, !tbaa !34
  %i.kv = zext i8 %i.ku to i64
  %i.kw = shl i64 %i.kv, %indvars.iv2153
  %i.kx = add i64 %i.kw, %.156141395              ; 2 uses
  %indvars.iv.next2154 = add nuw nsw i64 %indvars.iv2153, 8 ; 3 uses
  %i.ky = icmp samesign ult i64 %indvars.iv.next2154, %i.km
  br i1 %i.ky, label %.lr.ph1397, label %._crit_edge1398.loopexit

._crit_edge1398.loopexit:                         ; preds = %bb.ay
  %i.kz = trunc nuw nsw i64 %indvars.iv.next2154 to i32
  br label %._crit_edge1398

._crit_edge1398:                                  ; preds = %._crit_edge1398.loopexit, %.preheader810
  %.15701.lcssa = phi ptr [ %.13699.lcssa, %.preheader810 ], [ %i.kt, %._crit_edge1398.loopexit ] ; 2 uses
  %.15657.lcssa = phi i32 [ %.13655.lcssa, %.preheader810 ], [ %i.ks, %._crit_edge1398.loopexit ] ; 2 uses
  %.15614.lcssa = phi i64 [ %.13612.lcssa, %.preheader810 ], [ %i.kx, %._crit_edge1398.loopexit ]
  %.15.lcssa = phi i32 [ %.13.lcssa, %.preheader810 ], [ %i.kz, %._crit_edge1398.loopexit ]
  %i.la = zext nneg i8 %.sroa.18.0.copyload.lcssa to i64
  %i.lb = lshr i64 %.15614.lcssa, %i.la           ; 3 uses
  %i.lc = sub nuw i32 %.15.lcssa, %.lcssa1364     ; 2 uses
  %i.ld = icmp eq i32 %.lcssa141414271429, 0
  br i1 %i.ld, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %._crit_edge1398
  store i32 27, ptr %i.c, align 8, !tbaa !27
  br label %.thread

bb.ba:                                            ; preds = %._crit_edge1398
  %i.le = add i32 %.lcssa141414271429, -1
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.lf
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !43
  %i.li = trunc i64 %i.lb to i32
  %i.lj = and i32 %i.li, 3
  %i.lk = add nuw nsw i32 %i.lj, 3
  %i.ll = lshr i64 %i.lb, 2
  %i.lm = add i32 %i.lc, -2
  br label %bb.bd

.lr.ph1387:                                       ; preds = %.lr.ph1387.preheader, %bb.bb
  %indvars.iv2150 = phi i64 [ %i.kh, %.lr.ph1387.preheader ], [ %indvars.iv.next2151, %bb.bb ] ; 3 uses
  %.166151385 = phi i64 [ %.13612.lcssa, %.lr.ph1387.preheader ], [ %i.lt, %bb.bb ] ; 2 uses
  %.166581384 = phi i32 [ %.13655.lcssa, %.lr.ph1387.preheader ], [ %i.lo, %bb.bb ] ; 2 uses
  %.167021383 = phi ptr [ %.13699.lcssa, %.lr.ph1387.preheader ], [ %i.lp, %bb.bb ] ; 3 uses
  %i.ln = icmp eq i32 %.166581384, 0
  br i1 %i.ln, label %.loopexit.loopexit1792, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph1387
  %i.lo = add i32 %.166581384, -1                 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.167021383, i64 1 ; 2 uses
  %i.lq = load i8, ptr %.167021383, align 1, !tbaa !34
  %i.lr = zext i8 %i.lq to i64
  %i.ls = shl i64 %i.lr, %indvars.iv2150
  %i.lt = add i64 %i.ls, %.166151385              ; 2 uses
  %indvars.iv.next2151 = add nuw nsw i64 %indvars.iv2150, 8 ; 3 uses
  %i.lu = icmp samesign ult i64 %indvars.iv.next2151, %i.ki
  br i1 %i.lu, label %.lr.ph1387, label %._crit_edge1388.loopexit

._crit_edge1388.loopexit:                         ; preds = %bb.bb
  %i.lv = trunc nuw nsw i64 %indvars.iv.next2151 to i32
  br label %._crit_edge1388

._crit_edge1388:                                  ; preds = %._crit_edge1388.loopexit, %.preheader812
  %.16702.lcssa = phi ptr [ %.13699.lcssa, %.preheader812 ], [ %i.lp, %._crit_edge1388.loopexit ]
  %.16658.lcssa = phi i32 [ %.13655.lcssa, %.preheader812 ], [ %i.lo, %._crit_edge1388.loopexit ]
  %.16615.lcssa = phi i64 [ %.13612.lcssa, %.preheader812 ], [ %i.lt, %._crit_edge1388.loopexit ]
  %.16.lcssa = phi i32 [ %.13.lcssa, %.preheader812 ], [ %i.lv, %._crit_edge1388.loopexit ]
  %i.lw = zext nneg i8 %.sroa.18.0.copyload.lcssa to i64
  %i.lx = lshr i64 %.16615.lcssa, %i.lw           ; 2 uses
  %i.ly = trunc i64 %i.lx to i32
  %i.lz = and i32 %i.ly, 7
  %i.ma = add nuw nsw i32 %i.lz, 3
  %i.mb = lshr i64 %i.lx, 3
  %reass.sub = sub i32 %.16.lcssa, %.lcssa1364
  %i.mc = add i32 %reass.sub, -3
  br label %bb.bd

.lr.ph1407:                                       ; preds = %.lr.ph1407.preheader, %bb.bc
  %indvars.iv2156 = phi i64 [ %i.kp, %.lr.ph1407.preheader ], [ %indvars.iv.next2157.a, %bb.bc ] ; 3 uses
  %.176161405 = phi i64 [ %.13612.lcssa, %.lr.ph1407.preheader ], [ %i.mj, %bb.bc ] ; 2 uses
  %.176591404 = phi i32 [ %.13655.lcssa, %.lr.ph1407.preheader ], [ %i.me, %bb.bc ] ; 2 uses
  %.177031403 = phi ptr [ %.13699.lcssa, %.lr.ph1407.preheader ], [ %i.mf, %bb.bc ] ; 3 uses
  %i.md = icmp eq i32 %.176591404, 0
  br i1 %i.md, label %.loopexit.loopexit1790, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph1407
  %i.me = add i32 %.176591404, -1                 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.177031403, i64 1 ; 2 uses
  %i.mg = load i8, ptr %.177031403, align 1, !tbaa !34
  %i.mh = zext i8 %i.mg to i64
  %i.mi = shl i64 %i.mh, %indvars.iv2156
  %i.mj = add i64 %i.mi, %.176161405              ; 2 uses
  %indvars.iv.next2157.a = add nuw nsw i64 %indvars.iv2156, 8 ; 3 uses
  %i.mk = icmp samesign ult i64 %indvars.iv.next2157.a, %i.kq
  br i1 %i.mk, label %.lr.ph1407, label %._crit_edge1408.loopexit

._crit_edge1408.loopexit:                         ; preds = %bb.bc
  %i.ml = trunc nuw nsw i64 %indvars.iv.next2157.a to i32
  br label %._crit_edge1408

._crit_edge1408:                                  ; preds = %._crit_edge1408.loopexit, %.preheader808
  %.17703.lcssa = phi ptr [ %.13699.lcssa, %.preheader808 ], [ %i.mf, %._crit_edge1408.loopexit ]
  %.17659.lcssa = phi i32 [ %.13655.lcssa, %.preheader808 ], [ %i.me, %._crit_edge1408.loopexit ]
  %.17616.lcssa = phi i64 [ %.13612.lcssa, %.preheader808 ], [ %i.mj, %._crit_edge1408.loopexit ]
  %.17.lcssa = phi i32 [ %.13.lcssa, %.preheader808 ], [ %i.ml, %._crit_edge1408.loopexit ]
  %i.mm = zext nneg i8 %.sroa.18.0.copyload.lcssa to i64
  %i.mn = lshr i64 %.17616.lcssa, %i.mm           ; 2 uses
  %i.mo = trunc i64 %i.mn to i32
  %i.mp = and i32 %i.mo, 127
  %i.mq = add nuw nsw i32 %i.mp, 11
  %i.mr = lshr i64 %i.mn, 7
  %reass.sub1788 = sub i32 %.17.lcssa, %.lcssa1364
  %i.ms = add i32 %reass.sub1788, -7
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge1388, %._crit_edge1408, %bb.ba
  %.18704 = phi ptr [ %.15701.lcssa, %bb.ba ], [ %.16702.lcssa, %._crit_edge1388 ], [ %.17703.lcssa, %._crit_edge1408 ] ; 2 uses
  %.18660 = phi i32 [ %.15657.lcssa, %bb.ba ], [ %.16658.lcssa, %._crit_edge1388 ], [ %.17659.lcssa, %._crit_edge1408 ] ; 2 uses
  %.18617 = phi i64 [ %i.ll, %bb.ba ], [ %i.mb, %._crit_edge1388 ], [ %i.mr, %._crit_edge1408 ] ; 2 uses
  %.18 = phi i32 [ %i.lm, %bb.ba ], [ %i.mc, %._crit_edge1388 ], [ %i.ms, %._crit_edge1408 ] ; 2 uses
  %.2579 = phi i32 [ %i.lk, %bb.ba ], [ %i.ma, %._crit_edge1388 ], [ %i.mq, %._crit_edge1408 ] ; 12 uses
  %.0573 = phi i16 [ %i.lh, %bb.ba ], [ 0, %._crit_edge1388 ], [ 0, %._crit_edge1408 ] ; 7 uses
  %i.mt = add i32 %.2579, %.lcssa141414271429
  %i.mu = icmp ugt i32 %i.mt, %i.iw
  br i1 %i.mu, label %bb.be, label %iter.check3110

iter.check3110:                                   ; preds = %bb.bd
  %min.iters.check3098 = icmp ult i32 %.2579, 4
  %i.mv = sub nsw i32 0, %.2579
  %i.mw = icmp ugt i32 %.lcssa141414271429, %i.mv
  %or.cond3127 = select i1 %min.iters.check3098, i1 true, i1 %i.mw
  br i1 %or.cond3127, label %.preheader806.preheader, label %vector.main.loop.iter.check3099

vector.main.loop.iter.check3099:                  ; preds = %iter.check3110
  %min.iters.check3100 = icmp ult i32 %.2579, 16
  br i1 %min.iters.check3100, label %vec.epilog.ph3114, label %vector.ph3101

vector.ph3101:                                    ; preds = %vector.main.loop.iter.check3099
  %i.mx = and i32 %.2579, 12
  %n.vec3102 = and i32 %.2579, -16                ; 4 uses
  %i.my = and i32 %.2579, 15
  %i.mz = add i32 %.lcssa141414271429, %n.vec3102 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.0573, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body3103

vector.body3103:                                  ; preds = %vector.body3103, %vector.ph3101
  %index3104 = phi i32 [ 0, %vector.ph3101 ], [ %index.next3105, %vector.body3103 ] ; 2 uses
  %i.na = add i32 %.lcssa141414271429, %index3104
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.nb ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.nc, align 2, !tbaa !43
  store <8 x i16> %broadcast.splat, ptr %i.nd, align 2, !tbaa !43
  %index.next3105 = add nuw i32 %index3104, 16    ; 2 uses
  %i.ne = icmp eq i32 %index.next3105, %n.vec3102
  br i1 %i.ne, label %middle.block3106, label %vector.body3103, !llvm.loop !45

middle.block3106:                                 ; preds = %vector.body3103
  %cmp.n3107 = icmp eq i32 %.2579, %n.vec3102
  br i1 %cmp.n3107, label %.loopexit807, label %vec.epilog.iter.check3112

vec.epilog.iter.check3112:                        ; preds = %middle.block3106
  %min.epilog.iters.check3113 = icmp eq i32 %i.mx, 0
  br i1 %min.epilog.iters.check3113, label %.preheader806.preheader, label %vec.epilog.ph3114, !prof !48

vec.epilog.ph3114:                                ; preds = %vector.main.loop.iter.check3099, %vec.epilog.iter.check3112
  %vec.epilog.resume.val3108 = phi i32 [ %n.vec3102, %vec.epilog.iter.check3112 ], [ 0, %vector.main.loop.iter.check3099 ]
  %n.vec3115 = and i32 %.2579, -4                 ; 3 uses
  %i.nf = and i32 %.2579, 3
  %i.ng = add i32 %.lcssa141414271429, %n.vec3115 ; 2 uses
  %broadcast.splatinsert3116 = insertelement <4 x i16> poison, i16 %.0573, i64 0
  %broadcast.splat3117 = shufflevector <4 x i16> %broadcast.splatinsert3116, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3118

vec.epilog.vector.body3118:                       ; preds = %vec.epilog.vector.body3118, %vec.epilog.ph3114
  %index3119 = phi i32 [ %vec.epilog.resume.val3108, %vec.epilog.ph3114 ], [ %index.next3120, %vec.epilog.vector.body3118 ] ; 2 uses
  %i.nh = add i32 %.lcssa141414271429, %index3119
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ni
  store <4 x i16> %broadcast.splat3117, ptr %i.nj, align 2, !tbaa !43
  %index.next3120 = add nuw i32 %index3119, 4     ; 2 uses
  %i.nk = icmp eq i32 %index.next3120, %n.vec3115
  br i1 %i.nk, label %vec.epilog.middle.block3121, label %vec.epilog.vector.body3118, !llvm.loop !49

vec.epilog.middle.block3121:                      ; preds = %vec.epilog.vector.body3118
  %cmp.n3122 = icmp eq i32 %.2579, %n.vec3115
  br i1 %cmp.n3122, label %.loopexit807, label %.preheader806.preheader

.preheader806.preheader:                          ; preds = %iter.check3110, %vec.epilog.iter.check3112, %vec.epilog.middle.block3121
  %.35801415.ph = phi i32 [ %.2579, %iter.check3110 ], [ %i.my, %vec.epilog.iter.check3112 ], [ %i.nf, %vec.epilog.middle.block3121 ] ; 4 uses
  %.ph = phi i32 [ %.lcssa141414271429, %iter.check3110 ], [ %i.mz, %vec.epilog.iter.check3112 ], [ %i.ng, %vec.epilog.middle.block3121 ] ; 2 uses
  %i.nl = add nsw i32 %.35801415.ph, -1
  %xtraiter = and i32 %.35801415.ph, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader806.prol.loopexit, label %.preheader806.prol

.preheader806.prol:                               ; preds = %.preheader806.preheader, %.preheader806.prol
  %.35801415.prol = phi i32 [ %i.nn, %.preheader806.prol ], [ %.35801415.ph, %.preheader806.preheader ]
  %i.nm = phi i32 [ %i.no, %.preheader806.prol ], [ %.ph, %.preheader806.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader806.prol ], [ 0, %.preheader806.preheader ]
  %i.nn = add i32 %.35801415.prol, -1             ; 2 uses
  %i.no = add i32 %i.nm, 1                        ; 3 uses
  %i.np = zext i32 %i.nm to i64
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.np
  store i16 %.0573, ptr %i.nq, align 2, !tbaa !43
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader806.prol.loopexit, label %.preheader806.prol, !llvm.loop !50

.preheader806.prol.loopexit:                      ; preds = %.preheader806.prol, %.preheader806.preheader
  %.lcssa3190.unr = phi i32 [ poison, %.preheader806.preheader ], [ %i.no, %.preheader806.prol ]
  %.35801415.unr = phi i32 [ %.35801415.ph, %.preheader806.preheader ], [ %i.nn, %.preheader806.prol ]
  %.unr = phi i32 [ %.ph, %.preheader806.preheader ], [ %i.no, %.preheader806.prol ]
  %i.nr = icmp ult i32 %i.nl, 3
  br i1 %i.nr, label %.loopexit807, label %.preheader806

bb.be:                                            ; preds = %bb.bd
  store i32 27, ptr %i.c, align 8, !tbaa !27
  br label %.thread

.preheader806:                                    ; preds = %.preheader806.prol.loopexit, %.preheader806
  %.35801415 = phi i32 [ %i.oc, %.preheader806 ], [ %.35801415.unr, %.preheader806.prol.loopexit ]
  %i.ns = phi i32 [ %i.od, %.preheader806 ], [ %.unr, %.preheader806.prol.loopexit ] ; 5 uses
  %i.nt = add i32 %i.ns, 1
  %i.nu = zext i32 %i.ns to i64
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.nu
  store i16 %.0573, ptr %i.nv, align 2, !tbaa !43
  %i.nw = add i32 %i.ns, 2
  %i.nx = zext i32 %i.nt to i64
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.nx
  store i16 %.0573, ptr %i.ny, align 2, !tbaa !43
  %i.nz = add i32 %i.ns, 3
  %i.oa = zext i32 %i.nw to i64
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.oa
  store i16 %.0573, ptr %i.ob, align 2, !tbaa !43
  %i.oc = add i32 %.35801415, -4                  ; 2 uses
  %i.od = add i32 %i.ns, 4                        ; 2 uses
  %i.oe = zext i32 %i.nz to i64
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.oe
  store i16 %.0573, ptr %i.of, align 2, !tbaa !43
  %.not761.3 = icmp eq i32 %i.oc, 0
  br i1 %.not761.3, label %.loopexit807, label %.preheader806, !llvm.loop !52

.loopexit807:                                     ; preds = %.preheader806.prol.loopexit, %.preheader806, %vec.epilog.middle.block3121, %middle.block3106
  %.lcssa2659 = phi i32 [ %i.ng, %vec.epilog.middle.block3121 ], [ %i.mz, %middle.block3106 ], [ %.lcssa3190.unr, %.preheader806.prol.loopexit ], [ %i.od, %.preheader806 ] ; 2 uses
  store i32 %.lcssa2659, ptr %i.af, align 4, !tbaa !33
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit807, %._crit_edge1421
  %.lcssa14141428 = phi i32 [ %i.kc, %._crit_edge1421 ], [ %.lcssa2659, %.loopexit807 ] ; 2 uses
  %.19705 = phi ptr [ %.13699.lcssa, %._crit_edge1421 ], [ %.18704, %.loopexit807 ] ; 2 uses
  %.19661 = phi i32 [ %.13655.lcssa, %._crit_edge1421 ], [ %.18660, %.loopexit807 ] ; 2 uses
  %.19618 = phi i64 [ %i.ka, %._crit_edge1421 ], [ %.18617, %.loopexit807 ] ; 2 uses
  %.19 = phi i32 [ %i.kb, %._crit_edge1421 ], [ %.18, %.loopexit807 ] ; 2 uses
  %i.og = icmp ult i32 %.lcssa14141428, %i.iw
  br i1 %i.og, label %.preheader814, label %._crit_edge1434

._crit_edge1434:                                  ; preds = %bb.bf, %bb.av
  %.12698.lcssa = phi ptr [ %.11697, %bb.av ], [ %.19705, %bb.bf ] ; 3 uses
  %.12654.lcssa = phi i32 [ %.11653, %bb.av ], [ %.19661, %bb.bf ] ; 3 uses
  %.12611.lcssa = phi i64 [ %.11610, %bb.av ], [ %.19618, %bb.bf ] ; 3 uses
  %.12.lcssa = phi i32 [ %.11, %bb.av ], [ %.19, %bb.bf ] ; 3 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !21
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !23
  store i32 9, ptr %i.ak, align 8, !tbaa !37
  %i.oh = tail call fastcc i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %i.ag, i32 noundef %i.iu, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al) ; 2 uses
  %.not762 = icmp eq i32 %i.oh, 0
  br i1 %.not762, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge1434
  store i32 27, ptr %i.c, align 8, !tbaa !27
  br label %.thread

bb.bh:                                            ; preds = %._crit_edge1434
  %i.oi = load ptr, ptr %i.ai, align 8, !tbaa !21
  store ptr %i.oi, ptr %i.am, align 8, !tbaa !22
  store i32 6, ptr %i.an, align 4, !tbaa !39
  %i.oj = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ok = zext i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ok
  %i.om = load i32, ptr %i.ad, align 8, !tbaa !41
  %i.on = tail call fastcc i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %i.ol, i32 noundef %i.om, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.an, ptr noundef nonnull %i.al) ; 2 uses
  %.not763 = icmp eq i32 %i.on, 0
  br i1 %.not763, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 27, ptr %i.c, align 8, !tbaa !27
  br label %.thread

bb.bj:                                            ; preds = %bb.bh
  store i32 18, ptr %i.c, align 8, !tbaa !27
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.h
  %.21707 = phi ptr [ %.12698.lcssa, %bb.bj ], [ %.0686, %bb.h ] ; 3 uses
  %.21663 = phi i32 [ %.12654.lcssa, %bb.bj ], [ %.0642, %bb.h ] ; 5 uses
  %.21620 = phi i64 [ %.12611.lcssa, %bb.bj ], [ %.0599, %bb.h ] ; 4 uses
  %.21 = phi i32 [ %.12.lcssa, %bb.bj ], [ %.0590, %bb.h ] ; 4 uses
  %.2 = phi i32 [ 0, %bb.bj ], [ %.0, %bb.h ]     ; 6 uses
  %i.oo = load ptr, ptr %i.aj, align 8, !tbaa !23 ; 4 uses
  %i.op = load i32, ptr %i.ak, align 8, !tbaa !37
  %notmask764 = shl nsw i32 -1, %i.op
  %i.oq = xor i32 %notmask764, -1                 ; 2 uses
  %i.or = trunc i64 %.21620 to i32
  %i.os = and i32 %i.oq, %i.or
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.ot ; 2 uses
  %.sroa.18.0..sroa_idx441441 = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  %.sroa.18.0.copyload451442 = load i8, ptr %.sroa.18.0..sroa_idx441441, align 1, !tbaa !34 ; 2 uses
  %i.ov = zext i8 %.sroa.18.0.copyload451442 to i32 ; 2 uses
  %.not7651443 = icmp ult i32 %.21, %i.ov
  br i1 %.not7651443, label %.lr.ph1449.preheader, label %._crit_edge1450

.lr.ph1449.preheader:                             ; preds = %bb.bk
  %i.ow = icmp eq i32 %.21663, 0
  br i1 %i.ow, label %.loopexit.loopexit2278, label %.lr.ph2959

.lr.ph2959:                                       ; preds = %.lr.ph1449.preheader
  %i.ox = zext nneg i32 %.21 to i64
  br label %bb.bl

.lr.ph1449:                                       ; preds = %bb.bl
  %i.oy = icmp eq i32 %i.oz, 0
  br i1 %i.oy, label %.loopexit.loopexit2278, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph2959, %.lr.ph1449
  %.2270814442958 = phi ptr [ %.21707, %.lr.ph2959 ], [ %i.pa, %.lr.ph1449 ] ; 2 uses
  %.2266414452957 = phi i32 [ %.21663, %.lr.ph2959 ], [ %i.oz, %.lr.ph1449 ]
  %.2262114462956 = phi i64 [ %.21620, %.lr.ph2959 ], [ %i.pe, %.lr.ph1449 ]
  %indvars.iv21622955 = phi i64 [ %i.ox, %.lr.ph2959 ], [ %indvars.iv.next2163, %.lr.ph1449 ] ; 2 uses
  %i.oz = add i32 %.2266414452957, -1             ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.2270814442958, i64 1 ; 2 uses
  %i.pb = load i8, ptr %.2270814442958, align 1, !tbaa !34
  %i.pc = zext i8 %i.pb to i64
  %i.pd = shl i64 %i.pc, %indvars.iv21622955
  %i.pe = add i64 %i.pd, %.2262114462956          ; 4 uses
  %indvars.iv.next2163 = add nuw nsw i64 %indvars.iv21622955, 8 ; 3 uses
  %i.pf = trunc i64 %i.pe to i32
  %i.pg = and i32 %i.oq, %i.pf
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.ph ; 2 uses
  %.sroa.18.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.pi, i64 1
  %.sroa.18.0.copyload45 = load i8, ptr %.sroa.18.0..sroa_idx44, align 1, !tbaa !34 ; 3 uses
  %i.pj = zext i8 %.sroa.18.0.copyload45 to i64
  %.not765 = icmp samesign ult i64 %indvars.iv.next2163, %i.pj
  br i1 %.not765, label %.lr.ph1449, label %._crit_edge1450.loopexit

._crit_edge1450.loopexit:                         ; preds = %bb.bl
  %i.pk = zext i8 %.sroa.18.0.copyload45 to i32
  %i.pl = trunc nuw nsw i64 %indvars.iv.next2163 to i32
  br label %._crit_edge1450

._crit_edge1450:                                  ; preds = %._crit_edge1450.loopexit, %bb.bk
  %.lcssa1440 = phi ptr [ %i.ou, %bb.bk ], [ %i.pi, %._crit_edge1450.loopexit ] ; 2 uses
  %.22708.lcssa = phi ptr [ %.21707, %bb.bk ], [ %i.pa, %._crit_edge1450.loopexit ] ; 4 uses
  %.22664.lcssa = phi i32 [ %.21663, %bb.bk ], [ %i.oz, %._crit_edge1450.loopexit ] ; 6 uses
  %.22621.lcssa = phi i64 [ %.21620, %bb.bk ], [ %i.pe, %._crit_edge1450.loopexit ] ; 5 uses
  %.22.lcssa = phi i32 [ %.21, %bb.bk ], [ %i.pl, %._crit_edge1450.loopexit ] ; 5 uses
  %.sroa.18.0.copyload45.lcssa = phi i8 [ %.sroa.18.0.copyload451442, %bb.bk ], [ %.sroa.18.0.copyload45, %._crit_edge1450.loopexit ] ; 2 uses
  %.lcssa943 = phi i32 [ %i.ov, %bb.bk ], [ %i.pk, %._crit_edge1450.loopexit ] ; 6 uses
  %.sroa.41.0..sroa_idx72.le = getelementptr inbounds nuw i8, ptr %.lcssa1440, i64 2
  %.sroa.41.0.copyload73.le = load i16, ptr %.sroa.41.0..sroa_idx72.le, align 2, !tbaa !43 ; 2 uses
  %.sroa.031.0.copyload40 = load i8, ptr %.lcssa1440, align 2, !tbaa !34 ; 3 uses
  %i.pm = add i8 %.sroa.031.0.copyload40, -1
  %or.cond793 = icmp ult i8 %i.pm, 15
  br i1 %or.cond793, label %.preheader830, label %bb.bn

.preheader830:                                    ; preds = %._crit_edge1450
  %i.pn = zext nneg i8 %.sroa.031.0.copyload40 to i32
  %i.po = zext i16 %.sroa.41.0.copyload73.le to i32 ; 2 uses
  %i.pp = add nuw nsw i32 %.lcssa943, %i.pn
  %notmask767 = shl nsw i32 -1, %i.pp
  %i.pq = xor i32 %notmask767, -1                 ; 2 uses
  %i.pr = trunc i64 %.22621.lcssa to i32
  %i.ps = and i32 %i.pr, %i.pq
  %i.pt = lshr i32 %i.ps, %.lcssa943
  %i.pu = add nuw i32 %i.pt, %i.po
  %i.pv = zext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.pv ; 2 uses
  %.sroa.18.0..sroa_idx461460 = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  %.sroa.18.0.copyload471461 = load i8, ptr %.sroa.18.0..sroa_idx461460, align 1, !tbaa !34 ; 2 uses
  %i.px = zext i8 %.sroa.18.0.copyload471461 to i32
  %i.py = add nuw nsw i32 %.lcssa943, %i.px
  %.not7681462 = icmp ugt i32 %i.py, %.22.lcssa
  br i1 %.not7681462, label %.lr.ph1467.preheader, label %._crit_edge1468

.lr.ph1467.preheader:                             ; preds = %.preheader830
  %i.pz = icmp eq i32 %.22664.lcssa, 0
  br i1 %i.pz, label %.loopexit.loopexit2277, label %.lr.ph2980

.lr.ph2980:                                       ; preds = %.lr.ph1467.preheader
  %i.qa = zext nneg i32 %.22.lcssa to i64
  br label %bb.bm

.lr.ph1467:                                       ; preds = %bb.bm
  %i.qb = icmp eq i32 %i.qc, 0
  br i1 %i.qb, label %.loopexit.loopexit2277, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph2980, %.lr.ph1467
  %.2370914632979 = phi ptr [ %.22708.lcssa, %.lr.ph2980 ], [ %i.qd, %.lr.ph1467 ] ; 2 uses
  %.2366514642978 = phi i32 [ %.22664.lcssa, %.lr.ph2980 ], [ %i.qc, %.lr.ph1467 ]
  %.2362214652977 = phi i64 [ %.22621.lcssa, %.lr.ph2980 ], [ %i.qh, %.lr.ph1467 ]
  %indvars.iv21662976 = phi i64 [ %i.qa, %.lr.ph2980 ], [ %indvars.iv.next2167, %.lr.ph1467 ] ; 2 uses
  %i.qc = add i32 %.2366514642978, -1             ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.2370914632979, i64 1 ; 2 uses
  %i.qe = load i8, ptr %.2370914632979, align 1, !tbaa !34
  %i.qf = zext i8 %i.qe to i64
  %i.qg = shl i64 %i.qf, %indvars.iv21662976
  %i.qh = add i64 %i.qg, %.2362214652977          ; 4 uses
  %indvars.iv.next2167 = add nuw nsw i64 %indvars.iv21662976, 8 ; 3 uses
  %i.qi = trunc i64 %i.qh to i32
  %i.qj = and i32 %i.qi, %i.pq
  %i.qk = lshr i32 %i.qj, %.lcssa943
  %i.ql = add nuw i32 %i.qk, %i.po
  %i.qm = zext i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.qm ; 2 uses
  %.sroa.18.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.qn, i64 1
  %.sroa.18.0.copyload47 = load i8, ptr %.sroa.18.0..sroa_idx46, align 1, !tbaa !34 ; 2 uses
  %i.qo = zext i8 %.sroa.18.0.copyload47 to i32
  %i.qp = add nuw nsw i32 %.lcssa943, %i.qo
  %i.qq = zext nneg i32 %i.qp to i64
  %.not768 = icmp samesign ult i64 %indvars.iv.next2167, %i.qq
  br i1 %.not768, label %.lr.ph1467, label %._crit_edge1468.loopexit

._crit_edge1468.loopexit:                         ; preds = %bb.bm
  %i.qr = trunc nuw nsw i64 %indvars.iv.next2167 to i32
  br label %._crit_edge1468

._crit_edge1468:                                  ; preds = %._crit_edge1468.loopexit, %.preheader830
  %.23709.lcssa = phi ptr [ %.22708.lcssa, %.preheader830 ], [ %i.qd, %._crit_edge1468.loopexit ]
  %.23665.lcssa = phi i32 [ %.22664.lcssa, %.preheader830 ], [ %i.qc, %._crit_edge1468.loopexit ]
  %.23622.lcssa = phi i64 [ %.22621.lcssa, %.preheader830 ], [ %i.qh, %._crit_edge1468.loopexit ]
  %.23.lcssa = phi i32 [ %.22.lcssa, %.preheader830 ], [ %i.qr, %._crit_edge1468.loopexit ]
  %.lcssa956 = phi ptr [ %i.pw, %.preheader830 ], [ %i.qn, %._crit_edge1468.loopexit ] ; 2 uses
  %.sroa.18.0.copyload47.lcssa = phi i8 [ %.sroa.18.0.copyload471461, %.preheader830 ], [ %.sroa.18.0.copyload47, %._crit_edge1468.loopexit ]
  %.sroa.41.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %.lcssa956, i64 2
  %.sroa.41.0.copyload75 = load i16, ptr %.sroa.41.0..sroa_idx74, align 2, !tbaa !43
  %.sroa.031.0.copyload41 = load i8, ptr %.lcssa956, align 2, !tbaa !34
  %i.qs = zext nneg i8 %.sroa.18.0.copyload45.lcssa to i64
  %i.qt = lshr i64 %.23622.lcssa, %i.qs
  %i.qu = sub nuw i32 %.23.lcssa, %.lcssa943
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge1450, %._crit_edge1468
  %.24710 = phi ptr [ %.23709.lcssa, %._crit_edge1468 ], [ %.22708.lcssa, %._crit_edge1450 ] ; 4 uses
  %.24666 = phi i32 [ %.23665.lcssa, %._crit_edge1468 ], [ %.22664.lcssa, %._crit_edge1450 ] ; 4 uses
  %.24623 = phi i64 [ %i.qt, %._crit_edge1468 ], [ %.22621.lcssa, %._crit_edge1450 ]
  %.24 = phi i32 [ %i.qu, %._crit_edge1468 ], [ %.22.lcssa, %._crit_edge1450 ]
  %.sroa.41.0 = phi i16 [ %.sroa.41.0.copyload75, %._crit_edge1468 ], [ %.sroa.41.0.copyload73.le, %._crit_edge1450 ]
  %.sroa.18.0 = phi i8 [ %.sroa.18.0.copyload47.lcssa, %._crit_edge1468 ], [ %.sroa.18.0.copyload45.lcssa, %._crit_edge1450 ] ; 2 uses
  %.sroa.031.0 = phi i8 [ %.sroa.031.0.copyload41, %._crit_edge1468 ], [ %.sroa.031.0.copyload40, %._crit_edge1450 ] ; 2 uses
  %i.qv = zext i8 %.sroa.18.0 to i32
end_hunk_1
begin_hunk_2_@inflate64:bb.a
  %i.xi = getelementptr inbounds nuw i8, ptr %.1684, i64 1
  store i8 %i.xh, ptr %.1684, align 1, !tbaa !34
  %i.xj = getelementptr inbounds nuw i8, ptr %.2576, i64 2
  %i.xk = load i8, ptr %i.xg, align 1, !tbaa !34
  %i.xl = getelementptr inbounds nuw i8, ptr %.1684, i64 2
  store i8 %i.xk, ptr %i.xi, align 1, !tbaa !34
  %i.xm = getelementptr inbounds nuw i8, ptr %.2576, i64 3
  %i.xn = load i8, ptr %i.xj, align 1, !tbaa !34
  %i.xo = getelementptr inbounds nuw i8, ptr %.1684, i64 3
  store i8 %i.xn, ptr %i.xl, align 1, !tbaa !34
  %i.xp = getelementptr inbounds nuw i8, ptr %.2576, i64 4
  %i.xq = load i8, ptr %i.xm, align 1, !tbaa !34
  %i.xr = getelementptr inbounds nuw i8, ptr %.1684, i64 4
  store i8 %i.xq, ptr %i.xo, align 1, !tbaa !34
  %i.xs = getelementptr inbounds nuw i8, ptr %.2576, i64 5
  %i.xt = load i8, ptr %i.xp, align 1, !tbaa !34
  %i.xu = getelementptr inbounds nuw i8, ptr %.1684, i64 5
  store i8 %i.xt, ptr %i.xr, align 1, !tbaa !34
  %i.xv = getelementptr inbounds nuw i8, ptr %.2576, i64 6
  %i.xw = load i8, ptr %i.xs, align 1, !tbaa !34
  %i.xx = getelementptr inbounds nuw i8, ptr %.1684, i64 6
  store i8 %i.xw, ptr %i.xu, align 1, !tbaa !34
  %i.xy = getelementptr inbounds nuw i8, ptr %.2576, i64 7
  %i.xz = load i8, ptr %i.xv, align 1, !tbaa !34
  %i.ya = getelementptr inbounds nuw i8, ptr %.1684, i64 7
  store i8 %i.xz, ptr %i.xx, align 1, !tbaa !34
  %i.yb = getelementptr inbounds nuw i8, ptr %.2576, i64 8
  %i.yc = load i8, ptr %i.xy, align 1, !tbaa !34
  %i.yd = getelementptr inbounds nuw i8, ptr %.1684, i64 8 ; 2 uses
  store i8 %i.yc, ptr %i.ya, align 1, !tbaa !34
  %i.ye = add i32 %.7584, -8                      ; 2 uses
  %.not780.7 = icmp eq i32 %i.ye, 0
  br i1 %.not780.7, label %.loopexit3125, label %vec.epilog.scalar.ph, !llvm.loop !62

.loopexit3125:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa2723 = phi ptr [ %i.wv, %vec.epilog.middle.block ], [ %i.wo, %middle.block ], [ %.lcssa3294.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.yd, %vec.epilog.scalar.ph ] ; 2 uses
  %i.yf = sub i32 %.0640, %spec.select795         ; 2 uses
  %i.yg = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.yh = icmp eq i32 %i.yg, 0
  br i1 %i.yh, label %bb.cn, label %.thread

bb.cn:                                            ; preds = %.loopexit3125
  store i32 18, ptr %i.c, align 8, !tbaa !27
  br label %.thread

bb.co:                                            ; preds = %bb.h
  %i.yi = icmp eq i32 %.0640, 0
  br i1 %i.yi, label %.loopexit.loopexit1806, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.yj = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.yk = trunc i32 %i.yj to i8
  %i.yl = getelementptr inbounds nuw i8, ptr %.0683, i64 1
  store i8 %i.yk, ptr %.0683, align 1, !tbaa !34
  %i.ym = add i32 %.0640, -1
  store i32 18, ptr %i.c, align 8, !tbaa !27
  br label %.thread

bb.cq:                                            ; preds = %bb.h
  %i.yn = load i32, ptr %i.w, align 8, !tbaa !14
  %.not756 = icmp eq i32 %i.yn, 0
  br i1 %.not756, label %bb.cy, label %.preheader836

.preheader836:                                    ; preds = %bb.cq
  %i.yo = icmp ult i32 %.0590, 32
  br i1 %i.yo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader836
  %i.yp = zext nneg i32 %.0590 to i64             ; 6 uses
  %i.yq = icmp eq i32 %.0642, 0
  br i1 %i.yq, label %.loopexit.loopexit1804, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.preheader
  %i.yr = add i32 %.0642, -1                      ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.0686, i64 1 ; 3 uses
  %i.yt = load i8, ptr %.0686, align 1, !tbaa !34
  %i.yu = zext i8 %i.yt to i64
  %i.yv = shl nuw nsw i64 %i.yu, %i.yp
  %i.yw = add i64 %i.yv, %.0599                   ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %i.yp, 8     ; 3 uses
  %i.yx = icmp ult i32 %.0590, 24
  br i1 %i.yx, label %.lr.ph.1, label %._crit_edge.loopexit

.lr.ph.1:                                         ; preds = %bb.cr
  %i.yy = icmp eq i32 %i.yr, 0
  br i1 %i.yy, label %.loopexit.loopexit1804, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.1
  %i.yz = add i32 %.0642, -2                      ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.0686, i64 2 ; 3 uses
  %i.zb = load i8, ptr %i.ys, align 1, !tbaa !34
  %i.zc = zext i8 %i.zb to i64
  %i.zd = shl nuw nsw i64 %i.zc, %indvars.iv.next
  %i.ze = add i64 %i.zd, %i.yw                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %i.yp, 16  ; 3 uses
  %i.zf = icmp ult i32 %.0590, 16
  br i1 %i.zf, label %.lr.ph.2, label %._crit_edge.loopexit

.lr.ph.2:                                         ; preds = %bb.cs
  %i.zg = icmp eq i32 %i.yz, 0
  br i1 %i.zg, label %.loopexit.loopexit1804, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.2
  %i.zh = add i32 %.0642, -3                      ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.0686, i64 3 ; 3 uses
  %i.zj = load i8, ptr %i.za, align 1, !tbaa !34
  %i.zk = zext i8 %i.zj to i64
  %i.zl = shl nuw nsw i64 %i.zk, %indvars.iv.next.1
  %i.zm = add i64 %i.zl, %i.ze                    ; 3 uses
  %indvars.iv.next.2 = add nuw nsw i64 %i.yp, 24  ; 3 uses
  %i.zn = icmp ult i32 %.0590, 8
  br i1 %i.zn, label %.lr.ph.3, label %._crit_edge.loopexit

.lr.ph.3:                                         ; preds = %bb.ct
  %i.zo = icmp eq i32 %i.zh, 0
  br i1 %i.zo, label %.loopexit.loopexit1804, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.3
  %i.zp = add i32 %.0642, -4
  %i.zq = getelementptr inbounds nuw i8, ptr %.0686, i64 4
  %i.zr = load i8, ptr %i.zi, align 1, !tbaa !34
  %i.zs = zext i8 %i.zr to i64
  %i.zt = shl nuw nsw i64 %i.zs, %indvars.iv.next.2
  %i.zu = add i64 %i.zt, %i.zm
  %indvars.iv.next.3 = or disjoint i64 %i.yp, 32
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cr
  %.lcssa3149 = phi i32 [ %i.yr, %bb.cr ], [ %i.yz, %bb.cs ], [ %i.zh, %bb.ct ], [ %i.zp, %bb.cu ]
  %.lcssa3148 = phi ptr [ %i.ys, %bb.cr ], [ %i.za, %bb.cs ], [ %i.zi, %bb.ct ], [ %i.zq, %bb.cu ]
  %.lcssa3147 = phi i64 [ %i.yw, %bb.cr ], [ %i.ze, %bb.cs ], [ %i.zm, %bb.ct ], [ %i.zu, %bb.cu ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %bb.cr ], [ %indvars.iv.next.1, %bb.cs ], [ %indvars.iv.next.2, %bb.ct ], [ %indvars.iv.next.3, %bb.cu ]
  %i.zv = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader836
  %.36722.lcssa = phi ptr [ %.0686, %.preheader836 ], [ %.lcssa3148, %._crit_edge.loopexit ] ; 2 uses
  %.36678.lcssa = phi i32 [ %.0642, %.preheader836 ], [ %.lcssa3149, %._crit_edge.loopexit ] ; 2 uses
  %.36635.lcssa = phi i64 [ %.0599, %.preheader836 ], [ %.lcssa3147, %._crit_edge.loopexit ] ; 2 uses
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
  %.pre2211 = load i64, ptr %i.z, align 8, !tbaa !35 ; 2 uses
  br i1 %.not757, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge
  %i.aac = sub nsw i64 0, %i.zx
  %i.aad = getelementptr inbounds i8, ptr %.0683, i64 %i.aac
  %i.aae = tail call i64 @adler32(i64 noundef %.pre2211, ptr noundef nonnull %i.aad, i32 noundef %i.zw) #13 ; 3 uses
  store i64 %i.aae, ptr %i.z, align 8, !tbaa !35
  store i64 %i.aae, ptr %i.aa, align 8, !tbaa !19
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %._crit_edge
  %i.aaf = phi i64 [ %i.aae, %bb.cv ], [ %.pre2211, %._crit_edge ]
  %trunc = trunc i64 %.36635.lcssa to i32
  %rev = tail call i32 @llvm.bswap.i32(i32 %trunc)
  %i.aag = zext i32 %rev to i64
  %.not758 = icmp eq i64 %i.aaf, %i.aag
  br i1 %.not758, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i32 27, ptr %i.c, align 8, !tbaa !27
  br label %.thread

bb.cy:                                            ; preds = %bb.cw, %bb.cq
  %.37723 = phi ptr [ %.0686, %bb.cq ], [ %.36722.lcssa, %bb.cw ]
  %.37679 = phi i32 [ %.0642, %bb.cq ], [ %.36678.lcssa, %bb.cw ]
  %.37636 = phi i64 [ %.0599, %bb.cq ], [ 0, %bb.cw ]
  %.37 = phi i32 [ %.0590, %bb.cq ], [ 0, %bb.cw ]
  %.1586 = phi i32 [ %.0585, %bb.cq ], [ %.0640, %bb.cw ]
  store i32 26, ptr %i.c, align 8, !tbaa !27
  br label %.loopexit

.thread:                                          ; preds = %bb.az, %bb.be, %.loopexit3125, %bb.cn, %bb.cx, %bb.cp, %bb.ce, %bb.ca, %bb.bs, %bb.bq, %bb.bo, %bb.bi, %bb.bg, %bb.at, %bb.ao, %bb.an, %bb.aj, %bb.ad, %bb.y, %bb.r, %bb.q, %bb.o, %bb.m, %bb.j
  %.39725 = phi ptr [ %.0686, %bb.j ], [ %.1687.lcssa, %bb.m ], [ %.1687.lcssa, %bb.o ], [ %.1687.lcssa, %bb.q ], [ %.1687.lcssa, %bb.r ], [ %.0686, %bb.y ], [ %.4690.lcssa, %bb.ad ], [ %.5691.lcssa, %bb.aj ], [ %i.gl, %bb.an ], [ %.6692, %bb.ao ], [ %.9695.lcssa, %bb.at ], [ %.15701.lcssa, %bb.az ], [ %.12698.lcssa, %bb.bg ], [ %.12698.lcssa, %bb.bi ], [ %.24710, %bb.bo ], [ %.24710, %bb.bq ], [ %.24710, %bb.bs ], [ %.31717, %bb.ca ], [ %.34720, %bb.ce ], [ %.35721, %bb.cn ], [ %.35721, %.loopexit3125 ], [ %.0686, %bb.cp ], [ %.36722.lcssa, %bb.cx ], [ %.18704, %bb.be ]
  %.2685 = phi ptr [ %.0683, %bb.j ], [ %.0683, %bb.m ], [ %.0683, %bb.o ], [ %.0683, %bb.q ], [ %.0683, %bb.r ], [ %.0683, %bb.y ], [ %.0683, %bb.ad ], [ %.0683, %bb.aj ], [ %i.gn, %bb.an ], [ %.0683, %bb.ao ], [ %.0683, %bb.at ], [ %.0683, %bb.az ], [ %.0683, %bb.bg ], [ %.0683, %bb.bi ], [ %.0683, %bb.bo ], [ %.0683, %bb.bq ], [ %.0683, %bb.bs ], [ %.0683, %bb.ca ], [ %.0683, %bb.ce ], [ %.lcssa2723, %bb.cn ], [ %.lcssa2723, %.loopexit3125 ], [ %i.yl, %bb.cp ], [ %.0683, %bb.cx ], [ %.0683, %bb.be ]
  %.39681 = phi i32 [ %.0642, %bb.j ], [ %.1643.lcssa, %bb.m ], [ %.1643.lcssa, %bb.o ], [ %.1643.lcssa, %bb.q ], [ %.1643.lcssa, %bb.r ], [ %.0642, %bb.y ], [ %.4646.lcssa, %bb.ad ], [ %.5647.lcssa, %bb.aj ], [ %i.gk, %bb.an ], [ %.6648, %bb.ao ], [ %.9651.lcssa, %bb.at ], [ %.15657.lcssa, %bb.az ], [ %.12654.lcssa, %bb.bg ], [ %.12654.lcssa, %bb.bi ], [ %.24666, %bb.bo ], [ %.24666, %bb.bq ], [ %.24666, %bb.bs ], [ %.31673, %bb.ca ], [ %.34676, %bb.ce ], [ %.35677, %bb.cn ], [ %.35677, %.loopexit3125 ], [ %.0642, %bb.cp ], [ %.36678.lcssa, %bb.cx ], [ %.18660, %bb.be ]
  %.1641 = phi i32 [ %.0640, %bb.j ], [ %.0640, %bb.m ], [ %.0640, %bb.o ], [ %.0640, %bb.q ], [ %.0640, %bb.r ], [ %.0640, %bb.y ], [ %.0640, %bb.ad ], [ %.0640, %bb.aj ], [ %i.gm, %bb.an ], [ %.0640, %bb.ao ], [ %.0640, %bb.at ], [ %.0640, %bb.az ], [ %.0640, %bb.bg ], [ %.0640, %bb.bi ], [ %.0640, %bb.bo ], [ %.0640, %bb.bq ], [ %.0640, %bb.bs ], [ %.0640, %bb.ca ], [ %.0640, %bb.ce ], [ %i.yf, %bb.cn ], [ %i.yf, %.loopexit3125 ], [ %i.ym, %bb.cp ], [ %.0640, %bb.cx ], [ %.0640, %bb.be ]
  %.39638 = phi i64 [ %.0599, %bb.j ], [ %.1600.lcssa, %bb.m ], [ %.1600.lcssa, %bb.o ], [ %i.cf, %bb.q ], [ 0, %bb.r ], [ %i.ea, %bb.y ], [ %i.eo, %bb.ad ], [ %.5604.lcssa, %bb.aj ], [ %.6605, %bb.an ], [ %.6605, %bb.ao ], [ %.9608.lcssa, %bb.at ], [ %i.lb, %bb.az ], [ %.12611.lcssa, %bb.bg ], [ %.12611.lcssa, %bb.bi ], [ %i.qx, %bb.bo ], [ %i.qx, %bb.bq ], [ %i.qx, %bb.bs ], [ %i.uj, %bb.ca ], [ %.34633, %bb.ce ], [ %.35634, %bb.cn ], [ %.35634, %.loopexit3125 ], [ %.0599, %bb.cp ], [ %.36635.lcssa, %bb.cx ], [ %.18617, %bb.be ]
  %.39 = phi i32 [ %.0590, %bb.j ], [ %.1591.lcssa, %bb.m ], [ %.1591.lcssa, %bb.o ], [ %i.cl, %bb.q ], [ 0, %bb.r ], [ %i.eb, %bb.y ], [ %i.ep, %bb.ad ], [ %.5595.lcssa, %bb.aj ], [ %.6596, %bb.an ], [ %.6596, %bb.ao ], [ %.9.lcssa, %bb.at ], [ %i.lc, %bb.az ], [ %.12.lcssa, %bb.bg ], [ %.12.lcssa, %bb.bi ], [ %i.qy, %bb.bo ], [ %i.qy, %bb.bq ], [ %i.qy, %bb.bs ], [ %i.uk, %bb.ca ], [ %.34, %bb.ce ], [ %.35, %bb.cn ], [ %.35, %.loopexit3125 ], [ %.0590, %bb.cp ], [ %.36.lcssa, %bb.cx ], [ %.18, %bb.be ]
  %.3588 = phi i32 [ %.0585, %bb.j ], [ %.0585, %bb.m ], [ %.0585, %bb.o ], [ %.0585, %bb.q ], [ %.0585, %bb.r ], [ %.0585, %bb.y ], [ %.0585, %bb.ad ], [ %.0585, %bb.aj ], [ %.0585, %bb.an ], [ %.0585, %bb.ao ], [ %.0585, %bb.at ], [ %.0585, %bb.az ], [ %.0585, %bb.bg ], [ %.0585, %bb.bi ], [ %.0585, %bb.bo ], [ %.0585, %bb.bq ], [ %.0585, %bb.bs ], [ %.0585, %bb.ca ], [ %.0585, %bb.ce ], [ %.0585, %bb.cn ], [ %.0585, %.loopexit3125 ], [ %.0585, %bb.cp ], [ %.0640, %bb.cx ], [ %.0585, %bb.be ]
  %.7 = phi i32 [ %.0, %bb.j ], [ %.0, %bb.m ], [ %.0, %bb.o ], [ %.0, %bb.q ], [ %.0, %bb.r ], [ %.0, %bb.y ], [ %.0, %bb.ad ], [ %.0, %bb.aj ], [ %.0, %bb.an ], [ %.0, %bb.ao ], [ %i.it, %bb.at ], [ %.1, %bb.az ], [ %i.oh, %bb.bg ], [ %i.on, %bb.bi ], [ %.2, %bb.bo ], [ %.2, %bb.bq ], [ %.2, %bb.bs ], [ %.4, %bb.ca ], [ %.5, %bb.ce ], [ %.6, %bb.cn ], [ %.6, %.loopexit3125 ], [ %.0, %bb.cp ], [ %.0, %bb.cx ], [ %.1, %bb.be ]
  %.pre = load i32, ptr %i.c, align 8, !tbaa !27
  br label %bb.h

.loopexit.loopexit:                               ; preds = %.lr.ph1783.3, %.lr.ph1783.2, %.lr.ph1783.1, %.lr.ph1783.preheader
  %indvars.iv2208.lcssa = phi i64 [ %i.bd, %.lr.ph1783.preheader ], [ %indvars.iv.next2209, %.lr.ph1783.1 ], [ %indvars.iv.next2209.1, %.lr.ph1783.2 ], [ %indvars.iv.next2209.2, %.lr.ph1783.3 ]
  %.26011781.lcssa = phi i64 [ %.0599, %.lr.ph1783.preheader ], [ %i.cv, %.lr.ph1783.1 ], [ %i.dd, %.lr.ph1783.2 ], [ %i.dl, %.lr.ph1783.3 ]
  %.26881779.lcssa = phi ptr [ %.0686, %.lr.ph1783.preheader ], [ %i.cr, %.lr.ph1783.1 ], [ %i.cz, %.lr.ph1783.2 ], [ %i.dh, %.lr.ph1783.3 ]
  %i.aah = trunc nuw nsw i64 %indvars.iv2208.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1790:                           ; preds = %.lr.ph1407
  %i.aai = trunc nuw nsw i64 %indvars.iv2156 to i32
  br label %.loopexit

.loopexit.loopexit1791:                           ; preds = %.lr.ph1397
  %i.aaj = trunc nuw nsw i64 %indvars.iv2153 to i32
  br label %.loopexit

.loopexit.loopexit1792:                           ; preds = %.lr.ph1387
  %i.aak = trunc nuw nsw i64 %indvars.iv2150 to i32
  br label %.loopexit

.loopexit.loopexit1794:                           ; preds = %.lr.ph1772.1, %.lr.ph1772.preheader
  %indvars.iv2182.lcssa = phi i64 [ %i.bi, %.lr.ph1772.preheader ], [ %indvars.iv.next2183, %.lr.ph1772.1 ]
  %.16001770.lcssa = phi i64 [ %.0599, %.lr.ph1772.preheader ], [ %i.bp, %.lr.ph1772.1 ]
  %.16871768.lcssa = phi ptr [ %.0686, %.lr.ph1772.preheader ], [ %i.bl, %.lr.ph1772.1 ]
  %i.aal = trunc nuw nsw i64 %indvars.iv2182.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1795:                           ; preds = %.lr.ph1535.3, %.lr.ph1535.2, %.lr.ph1535.1, %.lr.ph1535.preheader
  %indvars.iv2180.lcssa = phi i64 [ %i.ew, %.lr.ph1535.preheader ], [ %indvars.iv.next2181, %.lr.ph1535.1 ], [ %indvars.iv.next2181.1, %.lr.ph1535.2 ], [ %indvars.iv.next2181.2, %.lr.ph1535.3 ]
  %.56041532.lcssa = phi i64 [ %i.es, %.lr.ph1535.preheader ], [ %i.fd, %.lr.ph1535.1 ], [ %i.fk, %.lr.ph1535.2 ], [ %i.fs, %.lr.ph1535.3 ]
  %.56911530.lcssa = phi ptr [ %.0686, %.lr.ph1535.preheader ], [ %i.ez, %.lr.ph1535.1 ], [ %i.fg, %.lr.ph1535.2 ], [ %i.fo, %.lr.ph1535.3 ]
  %i.aam = trunc nuw nsw i64 %indvars.iv2180.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1803:                           ; preds = %.lr.ph1215.1, %.lr.ph1215.preheader
  %indvars.iv2137.lcssa = phi i64 [ %i.ba, %.lr.ph1215.preheader ], [ %indvars.iv.next2138.a, %.lr.ph1215.1 ]
  %.76061213.lcssa = phi i64 [ %.0599, %.lr.ph1215.preheader ], [ %i.gv, %.lr.ph1215.1 ]
  %.76931211.lcssa = phi ptr [ %.0686, %.lr.ph1215.preheader ], [ %i.gr, %.lr.ph1215.1 ]
  %i.aan = trunc nuw nsw i64 %indvars.iv2137.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1804:                           ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i64 [ %i.yp, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.next.2, %.lr.ph.3 ]
  %.366351206.lcssa = phi i64 [ %.0599, %.lr.ph.preheader ], [ %i.yw, %.lr.ph.1 ], [ %i.ze, %.lr.ph.2 ], [ %i.zm, %.lr.ph.3 ]
  %.367221204.lcssa = phi ptr [ %.0686, %.lr.ph.preheader ], [ %i.ys, %.lr.ph.1 ], [ %i.za, %.lr.ph.2 ], [ %i.zi, %.lr.ph.3 ]
  %i.aao = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.loopexit

.loopexit.loopexit1806:                           ; preds = %bb.h, %.lr.ph1545, %bb.co, %bb.cg, %bb.am, %bb.w
  %i.aap = phi i32 [ %i.ay, %bb.h ], [ %i.ay, %.lr.ph1545 ], [ 23, %bb.co ], [ 22, %bb.cg ], [ 14, %bb.am ], [ 11, %bb.w ]
  %.0640.lcssa2043 = phi i32 [ %.0640, %bb.h ], [ %.0640, %.lr.ph1545 ], [ 0, %bb.co ], [ 0, %bb.cg ], [ %.0640, %bb.am ], [ %.0640, %bb.w ]
  %.40726.ph = phi ptr [ %.0686, %bb.h ], [ %.0686, %.lr.ph1545 ], [ %.0686, %bb.co ], [ %.35721, %bb.cg ], [ %.6692, %bb.am ], [ %.0686, %bb.w ]
  %.40682.ph = phi i32 [ %.0642, %bb.h ], [ 0, %.lr.ph1545 ], [ %.0642, %bb.co ], [ %.35677, %bb.cg ], [ %.6648, %bb.am ], [ %.0642, %bb.w ]
  %.40639.ph = phi i64 [ %.0599, %bb.h ], [ %.0599, %.lr.ph1545 ], [ %.0599, %bb.co ], [ %.35634, %bb.cg ], [ %.6605, %bb.am ], [ %.0599, %bb.w ]
  %.40.ph = phi i32 [ %.0590, %bb.h ], [ %.0590, %.lr.ph1545 ], [ %.0590, %bb.co ], [ %.35, %bb.cg ], [ %.6596, %bb.am ], [ %.0590, %bb.w ]
  %.8.ph = phi i32 [ -3, %bb.h ], [ %.0, %.lr.ph1545 ], [ %.0, %bb.co ], [ %.6, %bb.cg ], [ %.0, %bb.am ], [ %.0, %bb.w ]
  %i.aaq = icmp samesign ugt i32 %i.aap, 23
  br label %.loopexit

.loopexit.loopexit2272:                           ; preds = %.lr.ph1373.preheader, %.lr.ph1373
  %.136121371.lcssa = phi i64 [ %i.jo, %.lr.ph1373 ], [ %.126111432, %.lr.ph1373.preheader ]
  %i.aar = zext i32 %.126541431 to i64
  %i.aas = shl i32 %.126541431, 3
  %i.aat = add i32 %i.aas, %.121433
  %scevgep.le = getelementptr i8, ptr %.126981430, i64 %i.aar
  br label %.loopexit

.loopexit.loopexit2273:                           ; preds = %.lr.ph1524.preheader, %.lr.ph1524
  %.336321522.lcssa = phi i64 [ %i.uz, %.lr.ph1524 ], [ %.32631, %.lr.ph1524.preheader ]
  %i.aau = shl i32 %.32674, 3
  %i.aav = add i32 %.32, %i.aau
  %i.aaw = zext i32 %.32674 to i64
  %scevgep2179.le = getelementptr i8, ptr %.32718, i64 %i.aaw
  br label %.loopexit

.loopexit.loopexit2274:                           ; preds = %.lr.ph1512.preheader, %.lr.ph1512
  %.306291510.lcssa = phi i64 [ %i.tt, %.lr.ph1512 ], [ %.29628.lcssa, %.lr.ph1512.preheader ]
  %i.aax = zext i32 %.29671.lcssa to i64
  %i.aay = shl i32 %.29671.lcssa, 3
  %i.aaz = add i32 %i.aay, %.29.lcssa
  %scevgep2177.le = getelementptr i8, ptr %.29715.lcssa, i64 %i.aax
  br label %.loopexit

.loopexit.loopexit2275:                           ; preds = %.lr.ph1494.preheader, %.lr.ph1494
  %.296281491.lcssa = phi i64 [ %i.sq, %.lr.ph1494 ], [ %.28627, %.lr.ph1494.preheader ]
  %i.aba = zext i32 %.28670 to i64
  %i.abb = shl i32 %.28670, 3
  %i.abc = add i32 %i.abb, %.28
  %scevgep2173.le = getelementptr i8, ptr %.28714, i64 %i.aba
  br label %.loopexit

.loopexit.loopexit2276:                           ; preds = %.lr.ph1479.preheader, %.lr.ph1479
  %.266251477.lcssa = phi i64 [ %i.rp, %.lr.ph1479 ], [ %.25624, %.lr.ph1479.preheader ]
  %i.abd = shl i32 %.25667, 3
  %i.abe = add i32 %.25, %i.abd
  %i.abf = zext i32 %.25667 to i64
  %scevgep2170.le = getelementptr i8, ptr %.25711, i64 %i.abf
  br label %.loopexit

.loopexit.loopexit2277:                           ; preds = %.lr.ph1467.preheader, %.lr.ph1467
  %.236221465.lcssa = phi i64 [ %i.qh, %.lr.ph1467 ], [ %.22621.lcssa, %.lr.ph1467.preheader ]
  %i.abg = zext i32 %.22664.lcssa to i64
  %i.abh = shl i32 %.22664.lcssa, 3
  %i.abi = add i32 %i.abh, %.22.lcssa
  %scevgep2168.le = getelementptr i8, ptr %.22708.lcssa, i64 %i.abg
  br label %.loopexit

.loopexit.loopexit2278:                           ; preds = %.lr.ph1449.preheader, %.lr.ph1449
  %.226211446.lcssa = phi i64 [ %i.pe, %.lr.ph1449 ], [ %.21620, %.lr.ph1449.preheader ]
  %i.abj = zext i32 %.21663 to i64
  %i.abk = shl i32 %.21663, 3
  %i.abl = add i32 %i.abk, %.21
  %scevgep2164.le = getelementptr i8, ptr %.21707, i64 %i.abj
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.lr.ph1225, %.loopexit.loopexit2278, %.loopexit.loopexit2277, %.loopexit.loopexit2276, %.loopexit.loopexit2275, %.loopexit.loopexit2274, %.loopexit.loopexit2273, %.loopexit.loopexit2272, %.loopexit.loopexit1806, %.loopexit.loopexit1804, %.loopexit.loopexit1803, %.loopexit.loopexit1795, %.loopexit.loopexit1794, %.loopexit.loopexit1792, %.loopexit.loopexit1791, %.loopexit.loopexit1790, %.loopexit.loopexit, %bb.cy
  %2 = phi i1 [ false, %.loopexit.loopexit1792 ], [ false, %.loopexit.loopexit2277 ], [ false, %.loopexit.loopexit2275 ], [ false, %.loopexit.loopexit2276 ], [ false, %.lr.ph1225 ], [ false, %.loopexit.loopexit1790 ], [ false, %.loopexit.loopexit2274 ], [ false, %.loopexit.loopexit1791 ], [ false, %.loopexit.loopexit1803 ], [ %i.aaq, %.loopexit.loopexit1806 ], [ false, %.loopexit.loopexit2278 ], [ true, %.loopexit.loopexit1804 ], [ true, %bb.cy ], [ false, %.loopexit.loopexit1794 ], [ false, %.loopexit.loopexit1795 ], [ false, %.loopexit.loopexit2272 ], [ false, %.loopexit.loopexit2273 ], [ false, %.loopexit.loopexit ], [ true, %bb.h ]
  %.06402050 = phi i32 [ %.0640, %.loopexit.loopexit1792 ], [ %.0640, %.loopexit.loopexit2277 ], [ %.0640, %.loopexit.loopexit2275 ], [ %.0640, %.loopexit.loopexit2276 ], [ %.0640, %.lr.ph1225 ], [ %.0640, %.loopexit.loopexit1790 ], [ %.0640, %.loopexit.loopexit2274 ], [ %.0640, %.loopexit.loopexit1791 ], [ %.0640, %.loopexit.loopexit1803 ], [ %.0640.lcssa2043, %.loopexit.loopexit1806 ], [ %.0640, %.loopexit.loopexit2278 ], [ %.0640, %.loopexit.loopexit1804 ], [ %.0640, %bb.cy ], [ %.0640, %.loopexit.loopexit1794 ], [ %.0640, %.loopexit.loopexit1795 ], [ %.0640, %.loopexit.loopexit2272 ], [ %.0640, %.loopexit.loopexit2273 ], [ %.0640, %.loopexit.loopexit ], [ %.0640, %bb.h ] ; 2 uses
  %.40726 = phi ptr [ %.167021383, %.loopexit.loopexit1792 ], [ %scevgep2168.le, %.loopexit.loopexit2277 ], [ %scevgep2173.le, %.loopexit.loopexit2275 ], [ %scevgep2170.le, %.loopexit.loopexit2276 ], [ %.96951351, %.lr.ph1225 ], [ %.177031403, %.loopexit.loopexit1790 ], [ %scevgep2177.le, %.loopexit.loopexit2274 ], [ %.157011393, %.loopexit.loopexit1791 ], [ %.76931211.lcssa, %.loopexit.loopexit1803 ], [ %.40726.ph, %.loopexit.loopexit1806 ], [ %scevgep2164.le, %.loopexit.loopexit2278 ], [ %.367221204.lcssa, %.loopexit.loopexit1804 ], [ %.37723, %bb.cy ], [ %.16871768.lcssa, %.loopexit.loopexit1794 ], [ %.56911530.lcssa, %.loopexit.loopexit1795 ], [ %scevgep.le, %.loopexit.loopexit2272 ], [ %scevgep2179.le, %.loopexit.loopexit2273 ], [ %.26881779.lcssa, %.loopexit.loopexit ], [ %.0686, %bb.h ]
  %.40682 = phi i32 [ 0, %.loopexit.loopexit1792 ], [ 0, %.loopexit.loopexit2277 ], [ 0, %.loopexit.loopexit2275 ], [ 0, %.loopexit.loopexit2276 ], [ 0, %.lr.ph1225 ], [ 0, %.loopexit.loopexit1790 ], [ 0, %.loopexit.loopexit2274 ], [ 0, %.loopexit.loopexit1791 ], [ 0, %.loopexit.loopexit1803 ], [ %.40682.ph, %.loopexit.loopexit1806 ], [ 0, %.loopexit.loopexit2278 ], [ 0, %.loopexit.loopexit1804 ], [ %.37679, %bb.cy ], [ 0, %.loopexit.loopexit1794 ], [ 0, %.loopexit.loopexit1795 ], [ 0, %.loopexit.loopexit2272 ], [ 0, %.loopexit.loopexit2273 ], [ 0, %.loopexit.loopexit ], [ %.0642, %bb.h ]
  %.40639 = phi i64 [ %.166151385, %.loopexit.loopexit1792 ], [ %.236221465.lcssa, %.loopexit.loopexit2277 ], [ %.296281491.lcssa, %.loopexit.loopexit2275 ], [ %.266251477.lcssa, %.loopexit.loopexit2276 ], [ %.96081353, %.lr.ph1225 ], [ %.176161405, %.loopexit.loopexit1790 ], [ %.306291510.lcssa, %.loopexit.loopexit2274 ], [ %.156141395, %.loopexit.loopexit1791 ], [ %.76061213.lcssa, %.loopexit.loopexit1803 ], [ %.40639.ph, %.loopexit.loopexit1806 ], [ %.226211446.lcssa, %.loopexit.loopexit2278 ], [ %.366351206.lcssa, %.loopexit.loopexit1804 ], [ %.37636, %bb.cy ], [ %.16001770.lcssa, %.loopexit.loopexit1794 ], [ %.56041532.lcssa, %.loopexit.loopexit1795 ], [ %.136121371.lcssa, %.loopexit.loopexit2272 ], [ %.336321522.lcssa, %.loopexit.loopexit2273 ], [ %.26011781.lcssa, %.loopexit.loopexit ], [ %.0599, %bb.h ]
  %.40 = phi i32 [ %i.aak, %.loopexit.loopexit1792 ], [ %i.abi, %.loopexit.loopexit2277 ], [ %i.abc, %.loopexit.loopexit2275 ], [ %i.abe, %.loopexit.loopexit2276 ], [ %.91354, %.lr.ph1225 ], [ %i.aai, %.loopexit.loopexit1790 ], [ %i.aaz, %.loopexit.loopexit2274 ], [ %i.aaj, %.loopexit.loopexit1791 ], [ %i.aan, %.loopexit.loopexit1803 ], [ %.40.ph, %.loopexit.loopexit1806 ], [ %i.abl, %.loopexit.loopexit2278 ], [ %i.aao, %.loopexit.loopexit1804 ], [ %.37, %bb.cy ], [ %i.aal, %.loopexit.loopexit1794 ], [ %i.aam, %.loopexit.loopexit1795 ], [ %i.aat, %.loopexit.loopexit2272 ], [ %i.aav, %.loopexit.loopexit2273 ], [ %i.aah, %.loopexit.loopexit ], [ %.0590, %bb.h ]
  %.4589 = phi i32 [ %.0585, %.loopexit.loopexit1792 ], [ %.0585, %.loopexit.loopexit2277 ], [ %.0585, %.loopexit.loopexit2275 ], [ %.0585, %.loopexit.loopexit2276 ], [ %.0585, %.lr.ph1225 ], [ %.0585, %.loopexit.loopexit1790 ], [ %.0585, %.loopexit.loopexit2274 ], [ %.0585, %.loopexit.loopexit1791 ], [ %.0585, %.loopexit.loopexit1803 ], [ %.0585, %.loopexit.loopexit1806 ], [ %.0585, %.loopexit.loopexit2278 ], [ %.0585, %.loopexit.loopexit1804 ], [ %.1586, %bb.cy ], [ %.0585, %.loopexit.loopexit1794 ], [ %.0585, %.loopexit.loopexit1795 ], [ %.0585, %.loopexit.loopexit2272 ], [ %.0585, %.loopexit.loopexit2273 ], [ %.0585, %.loopexit.loopexit ], [ %.0585, %bb.h ] ; 5 uses
  %.8 = phi i32 [ %.1, %.loopexit.loopexit1792 ], [ %.2, %.loopexit.loopexit2277 ], [ %.4, %.loopexit.loopexit2275 ], [ %.3, %.loopexit.loopexit2276 ], [ %.0, %.lr.ph1225 ], [ %.1, %.loopexit.loopexit1790 ], [ %.4, %.loopexit.loopexit2274 ], [ %.1, %.loopexit.loopexit1791 ], [ %.0, %.loopexit.loopexit1803 ], [ %.8.ph, %.loopexit.loopexit1806 ], [ %.2, %.loopexit.loopexit2278 ], [ %.0, %.loopexit.loopexit1804 ], [ 1, %bb.cy ], [ %.0, %.loopexit.loopexit1794 ], [ %.0, %.loopexit.loopexit1795 ], [ %.1, %.loopexit.loopexit2272 ], [ %.5, %.loopexit.loopexit2273 ], [ %.0, %.loopexit.loopexit ], [ 1, %bb.h ] ; 2 uses
  store ptr %.0683, ptr %i.e, align 8, !tbaa !24
  store i32 %.06402050, ptr %i.o, align 4, !tbaa !28
  store ptr %.40726, ptr %0, align 8, !tbaa !25
  store i32 %.40682, ptr %i.q, align 8, !tbaa !26
  store i64 %.40639, ptr %i.s, align 8, !tbaa !29
  store i32 %.40, ptr %i.u, align 8, !tbaa !30
  %i.abm = load i32, ptr %i.at, align 4, !tbaa !56
  %.not789 = icmp eq i32 %i.abm, 0
  %.not790 = icmp eq i32 %.4589, %.06402050
  %or.cond803 = select i1 %2, i1 true, i1 %.not790
  %or.cond2608 = select i1 %.not789, i1 %or.cond803, i1 false
  br i1 %or.cond2608, label %updatewindow.exit.thread, label %bb.cz

bb.cz:                                            ; preds = %.loopexit
  %i.abn = load ptr, ptr %i.b, align 8, !tbaa !8  ; 11 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 56 ; 3 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !57 ; 2 uses
  %i.abq = icmp eq ptr %i.abp, null
  br i1 %i.abq, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 40
  %i.abs = load i32, ptr %i.abr, align 8, !tbaa !16
  %i.abt = shl nuw i32 1, %i.abs
  %i.abu = zext i32 %i.abt to i64
  %i.abv = tail call ptr @cli_max_calloc(i64 noundef %i.abu, i64 noundef 1) #13 ; 3 uses
  store ptr %i.abv, ptr %i.abo, align 8, !tbaa !57
  %i.abw = icmp eq ptr %i.abv, null
  br i1 %i.abw, label %updatewindow.exit, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.abx = phi ptr [ %i.abv, %bb.da ], [ %i.abp, %bb.cz ] ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abn, i64 44 ; 5 uses
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !56 ; 2 uses
  %i.aca = icmp eq i32 %i.abz, 0
  br i1 %i.aca, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abn, i64 40
  %i.acc = load i32, ptr %i.acb, align 8, !tbaa !16
  %i.acd = shl nuw i32 1, %i.acc                  ; 2 uses
  store i32 %i.acd, ptr %i.aby, align 4, !tbaa !56
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abn, i64 52
  store i32 0, ptr %i.ace, align 4, !tbaa !55
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abn, i64 48
  store i32 0, ptr %i.acf, align 8, !tbaa !54
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.acg = phi i32 [ %i.acd, %bb.dc ], [ %i.abz, %bb.db ] ; 3 uses
  %i.ach = load i32, ptr %i.o, align 4, !tbaa !28
  %i.aci = sub i32 %.4589, %i.ach                 ; 5 uses
  %.not.i = icmp ult i32 %i.aci, %i.acg
  br i1 %.not.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.acj = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.ack = zext i32 %i.acg to i64                 ; 2 uses
  %i.acl = sub nsw i64 0, %i.ack
  %i.acm = getelementptr inbounds i8, ptr %i.acj, i64 %i.acl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.abx, ptr noundef nonnull align 1 dereferenceable(1) %i.acm, i64 %i.ack, i1 false)
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abn, i64 52
  store i32 0, ptr %i.acn, align 4, !tbaa !55
  %i.aco = load i32, ptr %i.aby, align 4, !tbaa !56
  %i.acp = getelementptr inbounds nuw i8, ptr %i.abn, i64 48
  store i32 %i.aco, ptr %i.acp, align 8, !tbaa !54
  br label %updatewindow.exit.thread

bb.df:                                            ; preds = %bb.dd
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abn, i64 52 ; 4 uses
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !55 ; 2 uses
  %i.acs = sub i32 %i.acg, %i.acr                 ; 2 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.acs, i32 %i.aci) ; 4 uses
  %i.act = zext i32 %i.acr to i64
  %i.acu = getelementptr inbounds nuw i8, ptr %i.abx, i64 %i.act
  %i.acv = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.acw = zext i32 %i.aci to i64
  %i.acx = sub nsw i64 0, %i.acw
  %i.acy = getelementptr inbounds i8, ptr %i.acv, i64 %i.acx
  %i.acz = zext i32 %spec.select.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.acu, ptr align 1 %i.acy, i64 %i.acz, i1 false)
  %.not57.not.i = icmp ugt i32 %i.aci, %i.acs
  br i1 %.not57.not.i, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ada = sub i32 %i.aci, %spec.select.i         ; 2 uses
  %i.adb = load ptr, ptr %i.abo, align 8, !tbaa !57
  %i.adc = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.add = zext i32 %i.ada to i64                 ; 2 uses
  %i.ade = sub nsw i64 0, %i.add
  %i.adf = getelementptr inbounds i8, ptr %i.adc, i64 %i.ade
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adb, ptr nonnull align 1 %i.adf, i64 %i.add, i1 false)
  store i32 %i.ada, ptr %i.acq, align 4, !tbaa !55
  %i.adg = load i32, ptr %i.aby, align 4, !tbaa !56
  %i.adh = getelementptr inbounds nuw i8, ptr %i.abn, i64 48
  store i32 %i.adg, ptr %i.adh, align 8, !tbaa !54
  br label %updatewindow.exit.thread

bb.dh:                                            ; preds = %bb.df
  %i.adi = load i32, ptr %i.acq, align 4, !tbaa !55
  %i.adj = add i32 %i.adi, %spec.select.i         ; 2 uses
  %i.adk = load i32, ptr %i.aby, align 4, !tbaa !56 ; 2 uses
  %i.adl = icmp eq i32 %i.adj, %i.adk
  %spec.store.select.i = select i1 %i.adl, i32 0, i32 %i.adj
  store i32 %spec.store.select.i, ptr %i.acq, align 4
  %i.adm = getelementptr inbounds nuw i8, ptr %i.abn, i64 48 ; 2 uses
  %i.adn = load i32, ptr %i.adm, align 8, !tbaa !54 ; 2 uses
  %i.ado = icmp ult i32 %i.adn, %i.adk
  br i1 %i.ado, label %bb.di, label %updatewindow.exit.thread

bb.di:                                            ; preds = %bb.dh
  %i.adp = add i32 %i.adn, %spec.select.i
  store i32 %i.adp, ptr %i.adm, align 8, !tbaa !54
  br label %updatewindow.exit.thread

updatewindow.exit:                                ; preds = %bb.da
  store i32 28, ptr %i.c, align 8, !tbaa !27
  br label %.loopexit840

updatewindow.exit.thread:                         ; preds = %.loopexit, %bb.de, %bb.dh, %bb.di, %bb.dg
  %i.adq = load i32, ptr %i.q, align 8, !tbaa !26 ; 2 uses
  %i.adr = sub i32 %i.r, %i.adq
  %i.ads = load i32, ptr %i.o, align 4, !tbaa !28 ; 3 uses
  %i.adt = sub i32 %.4589, %i.ads                 ; 2 uses
  %i.adu = zext i32 %i.adr to i64
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.adw = load i64, ptr %i.adv, align 8, !tbaa !18
  %i.adx = add i64 %i.adw, %i.adu
  store i64 %i.adx, ptr %i.adv, align 8, !tbaa !18
  %i.ady = zext i32 %i.adt to i64                 ; 3 uses
  %i.adz = load i64, ptr %i.x, align 8, !tbaa !17
  %i.aea = add i64 %i.adz, %i.ady
  store i64 %i.aea, ptr %i.x, align 8, !tbaa !17
  %i.aeb = load i64, ptr %i.y, align 8, !tbaa !63
  %i.aec = add i64 %i.aeb, %i.ady
  store i64 %i.aec, ptr %i.y, align 8, !tbaa !63
  %i.aed = load i32, ptr %i.w, align 8, !tbaa !14
  %i.aee = icmp ne i32 %i.aed, 0
  %i.aef = icmp ne i32 %.4589, %i.ads
  %or.cond = select i1 %i.aee, i1 %i.aef, i1 false
  br i1 %or.cond, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %updatewindow.exit.thread
  %i.aeg = load i64, ptr %i.z, align 8, !tbaa !35
  %i.aeh = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.aei = sub nsw i64 0, %i.ady
  %i.aej = getelementptr inbounds i8, ptr %i.aeh, i64 %i.aei
  %i.aek = tail call i64 @adler32(i64 noundef %i.aeg, ptr noundef %i.aej, i32 noundef %i.adt) #13 ; 2 uses
  store i64 %i.aek, ptr %i.z, align 8, !tbaa !35
  store i64 %i.aek, ptr %i.aa, align 8, !tbaa !19
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %updatewindow.exit.thread
  %i.ael = load i32, ptr %i.u, align 8, !tbaa !30
  %i.aem = load i32, ptr %i.av, align 4, !tbaa !36
  %.not792 = icmp eq i32 %i.aem, 0
  %i.aen = select i1 %.not792, i32 0, i32 64
  %i.aeo = add i32 %i.aen, %i.ael
  %i.aep = load i32, ptr %i.c, align 8, !tbaa !27
  %i.aeq = icmp eq i32 %i.aep, 11
  %i.aer = select i1 %i.aeq, i32 128, i32 0
  %i.aes = add i32 %i.aeo, %i.aer
  %i.aet = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.aes, ptr %i.aet, align 8, !tbaa !64
  %i.aeu = icmp eq i32 %i.r, %i.adq
  %i.aev = icmp eq i32 %.4589, %i.ads
  %or.cond3 = select i1 %i.aeu, i1 %i.aev, i1 false
  %i.aew = icmp eq i32 %1, 4
  %or.cond5 = or i1 %i.aew, %or.cond3
  %i.aex = icmp eq i32 %.8, 0
  %or.cond7 = select i1 %or.cond5, i1 %i.aex, i1 false
  %spec.store.select = select i1 %or.cond7, i32 -5, i32 %.8
  br label %.loopexit840

.loopexit840.loopexit:                            ; preds = %bb.h
  br label %.loopexit840

.loopexit840:                                     ; preds = %bb.h, %.loopexit840.loopexit, %bb.a, %bb.b, %bb.c, %bb.e, %bb.dk, %updatewindow.exit, %.loopexit838
  %.0727 = phi i32 [ -2, %bb.a ], [ -4, %.loopexit840.loopexit ], [ -4, %updatewindow.exit ], [ %spec.store.select, %bb.dk ], [ 2, %.loopexit838 ], [ -2, %bb.e ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.h ]
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !43
  %.not282 = icmp eq i32 %2, 0                    ; 2 uses
  br i1 %.not282, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %.preheader248
  %i.c = load i32, ptr %4, align 4, !tbaa !65
  br label %bb.a

.lr.ph.preheader:                                 ; preds = %.preheader248
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
end_hunk_2
