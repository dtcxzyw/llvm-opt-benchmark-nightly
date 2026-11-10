Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_keysym_to_scancode?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.anon.0 = type { i32, i32 }

@KeySymToSDLScancode = internal unnamed_addr constant [25 x %struct.anon] [%struct.anon { i32 65436, i32 89 }, %struct.anon { i32 65433, i32 90 }, %struct.anon { i32 65435, i32 91 }, %struct.anon { i32 65430, i32 92 }, %struct.anon { i32 65437, i32 93 }, %struct.anon { i32 65432, i32 94 }, %struct.anon { i32 65429, i32 95 }, %struct.anon { i32 65431, i32 96 }, %struct.anon { i32 65434, i32 97 }, %struct.anon { i32 65438, i32 98 }, %struct.anon { i32 65439, i32 99 }, %struct.anon { i32 65378, i32 116 }, %struct.anon { i32 65518, i32 101 }, %struct.anon { i32 65027, i32 230 }, %struct.anon { i32 65056, i32 43 }, %struct.anon { i32 65515, i32 227 }, %struct.anon { i32 65516, i32 231 }, %struct.anon { i32 65406, i32 257 }, %struct.anon { i32 269025125, i32 118 }, %struct.anon { i32 269025153, i32 104 }, %struct.anon { i32 269025093, i32 105 }, %struct.anon { i32 269025094, i32 106 }, %struct.anon { i32 269025095, i32 107 }, %struct.anon { i32 269025096, i32 108 }, %struct.anon { i32 269025097, i32 109 }], align 16
@LinuxKeycodeKeysyms = internal unnamed_addr constant [248 x i32] [i32 0, i32 65307, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 48, i32 45, i32 61, i32 65288, i32 65289, i32 113, i32 119, i32 101, i32 114, i32 116, i32 121, i32 117, i32 105, i32 111, i32 112, i32 91, i32 93, i32 65293, i32 65507, i32 97, i32 115, i32 100, i32 102, i32 103, i32 104, i32 106, i32 107, i32 108, i32 59, i32 39, i32 96, i32 65505, i32 92, i32 122, i32 120, i32 99, i32 118, i32 98, i32 110, i32 109, i32 44, i32 46, i32 47, i32 65506, i32 65450, i32 65513, i32 32, i32 65509, i32 65470, i32 65471, i32 65472, i32 65473, i32 65474, i32 65475, i32 65476, i32 65477, i32 65478, i32 65479, i32 65407, i32 65300, i32 65463, i32 65464, i32 65465, i32 65453, i32 65460, i32 65461, i32 65462, i32 65451, i32 65457, i32 65458, i32 65459, i32 65456, i32 65454, i32 0, i32 0, i32 60, i32 65480, i32 65481, i32 0, i32 65318, i32 65317, i32 65315, i32 65319, i32 65314, i32 0, i32 65421, i32 65508, i32 65455, i32 65301, i32 65514, i32 65290, i32 65360, i32 65362, i32 65365, i32 65361, i32 65363, i32 65367, i32 65364, i32 65366, i32 65379, i32 65535, i32 0, i32 269025042, i32 269025041, i32 269025043, i32 269025066, i32 65469, i32 177, i32 65299, i32 269025098, i32 65452, i32 65329, i32 65332, i32 0, i32 65511, i32 65512, i32 65383, i32 0, i32 65382, i32 268828528, i32 65381, i32 268828529, i32 269025111, i32 269025131, i32 269025133, i32 65384, i32 269025112, i32 65386, i32 65383, i32 269025053, i32 0, i32 269025071, i32 269025067, i32 269025117, i32 269025147, i32 0, i32 269025162, i32 269025089, i32 269025090, i32 269025070, i32 269025114, i32 269025069, i32 269025140, i32 269025151, i32 269025049, i32 269025072, i32 269025075, i32 269025062, i32 269025063, i32 0, i32 269025068, i32 269025068, i32 269025047, i32 269025044, i32 269025046, i32 269025045, i32 269025052, i32 269025086, i32 269025134, i32 0, i32 269025153, i32 269025048, i32 269025139, i32 269025110, i32 0, i32 0, i32 269025144, i32 269025145, i32 0, i32 0, i32 269025128, i32 65382, i32 65482, i32 65483, i32 65484, i32 65485, i32 65486, i32 65487, i32 65488, i32 65489, i32 65490, i32 65491, i32 65492, i32 65493, i32 0, i32 0, i32 0, i32 0, i32 0, i32 269025044, i32 269025073, i32 269025091, i32 269025092, i32 269025099, i32 269025191, i32 269025110, i32 269025044, i32 269025175, i32 0, i32 65377, i32 0, i32 269025167, i32 269025206, i32 0, i32 269025049, i32 269025166, i32 269025051, i32 269025119, i32 269025084, i32 269025118, i32 269025078, i32 0, i32 65385, i32 269025027, i32 269025026, i32 269025074, i32 269025113, i32 269025028, i32 269025030, i32 269025029, i32 269025147, i32 269025138, i32 269025168, i32 269025143, i32 269025115, i32 269025171, i32 269025172, i32 269025173, i32 269025174, i32 0, i32 269024802, i32 269024803, i32 269025031, i32 268964084, i32 268964085, i32 269025204, i32 269025205], align 16
@ExtendedLinuxKeycodeKeysyms = internal unnamed_addr constant [55 x %struct.anon.0] [%struct.anon.0 { i32 269025068, i32 162 }, %struct.anon.0 { i32 269025128, i32 181 }, %struct.anon.0 { i32 65382, i32 182 }, %struct.anon.0 { i32 269025099, i32 204 }, %struct.anon.0 { i32 269025113, i32 227 }, %struct.anon.0 { i32 269025028, i32 228 }, %struct.anon.0 { i32 269025030, i32 229 }, %struct.anon.0 { i32 269025029, i32 230 }, %struct.anon.0 { i32 269025147, i32 231 }, %struct.anon.0 { i32 269025138, i32 232 }, %struct.anon.0 { i32 269025168, i32 233 }, %struct.anon.0 { i32 269025143, i32 234 }, %struct.anon.0 { i32 269025115, i32 235 }, %struct.anon.0 { i32 269025171, i32 236 }, %struct.anon.0 { i32 269025172, i32 237 }, %struct.anon.0 { i32 269025173, i32 238 }, %struct.anon.0 { i32 269025174, i32 239 }, %struct.anon.0 { i32 269024802, i32 241 }, %struct.anon.0 { i32 269024803, i32 242 }, %struct.anon.0 { i32 269025031, i32 243 }, %struct.anon.0 { i32 269025204, i32 246 }, %struct.anon.0 { i32 269025205, i32 247 }, %struct.anon.0 { i32 269025202, i32 248 }, %struct.anon.0 { i32 269025180, i32 371 }, %struct.anon.0 { i32 269025208, i32 372 }, %struct.anon.0 { i32 269025159, i32 393 }, %struct.anon.0 { i32 269025056, i32 397 }, %struct.anon.0 { i32 269025177, i32 410 }, %struct.anon.0 { i32 269025118, i32 417 }, %struct.anon.0 { i32 269025163, i32 418 }, %struct.anon.0 { i32 269025164, i32 419 }, %struct.anon.0 { i32 269025161, i32 421 }, %struct.anon.0 { i32 269025116, i32 423 }, %struct.anon.0 { i32 269025129, i32 427 }, %struct.anon.0 { i32 269025166, i32 430 }, %struct.anon.0 { i32 269025121, i32 433 }, %struct.anon.0 { i32 36, i32 434 }, %struct.anon.0 { i32 8364, i32 435 }, %struct.anon.0 { i32 269025181, i32 436 }, %struct.anon.0 { i32 269025182, i32 437 }, %struct.anon.0 { i32 65521, i32 497 }, %struct.anon.0 { i32 65522, i32 498 }, %struct.anon.0 { i32 65523, i32 499 }, %struct.anon.0 { i32 65524, i32 500 }, %struct.anon.0 { i32 65525, i32 501 }, %struct.anon.0 { i32 65526, i32 502 }, %struct.anon.0 { i32 65527, i32 503 }, %struct.anon.0 { i32 65528, i32 504 }, %struct.anon.0 { i32 65529, i32 505 }, %struct.anon.0 { i32 65521, i32 506 }, %struct.anon.0 { i32 269025193, i32 530 }, %struct.anon.0 { i32 269025200, i32 531 }, %struct.anon.0 { i32 269025201, i32 532 }, %struct.anon.0 { i32 269025207, i32 561 }, %struct.anon.0 { i32 65032, i32 584 }], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetScancodeFromKeySym(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 65436, label %bb.c
    i32 65433, label %.fold.split
    i32 65435, label %.fold.split83
    i32 65430, label %.fold.split84
    i32 65437, label %.fold.split85
    i32 65432, label %.fold.split86
    i32 65429, label %.fold.split87
    i32 65431, label %.fold.split88
    i32 65434, label %.fold.split89
    i32 65438, label %.fold.split90
    i32 65439, label %.fold.split91
    i32 65378, label %.fold.split92
    i32 65518, label %.fold.split93
    i32 65027, label %.fold.split94
    i32 65056, label %.fold.split95
    i32 65515, label %.fold.split96
    i32 65516, label %.fold.split97
    i32 65406, label %.fold.split98
    i32 269025125, label %.fold.split99
    i32 269025153, label %.fold.split100
    i32 269025093, label %.fold.split101
    i32 269025094, label %.fold.split102
    i32 269025095, label %.fold.split103
    i32 269025096, label %.fold.split104
    i32 269025097, label %.fold.split105
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, -65
  %or.cond = icmp ult i32 %i.a, 26
  br i1 %or.cond, label %bb.d, label %bb.e

.fold.split:                                      ; preds = %bb.a
  br label %bb.c

.fold.split83:                                    ; preds = %bb.a
  br label %bb.c

.fold.split84:                                    ; preds = %bb.a
  br label %bb.c

.fold.split85:                                    ; preds = %bb.a
  br label %bb.c

.fold.split86:                                    ; preds = %bb.a
  br label %bb.c

.fold.split87:                                    ; preds = %bb.a
  br label %bb.c

.fold.split88:                                    ; preds = %bb.a
  br label %bb.c

.fold.split89:                                    ; preds = %bb.a
  br label %bb.c

.fold.split90:                                    ; preds = %bb.a
  br label %bb.c

.fold.split91:                                    ; preds = %bb.a
  br label %bb.c

.fold.split92:                                    ; preds = %bb.a
  br label %bb.c

.fold.split93:                                    ; preds = %bb.a
  br label %bb.c

.fold.split94:                                    ; preds = %bb.a
  br label %bb.c

.fold.split95:                                    ; preds = %bb.a
  br label %bb.c

.fold.split96:                                    ; preds = %bb.a
  br label %bb.c

.fold.split97:                                    ; preds = %bb.a
  br label %bb.c

.fold.split98:                                    ; preds = %bb.a
  br label %bb.c

.fold.split99:                                    ; preds = %bb.a
  br label %bb.c

.fold.split100:                                   ; preds = %bb.a
  br label %bb.c

.fold.split101:                                   ; preds = %bb.a
  br label %bb.c

.fold.split102:                                   ; preds = %bb.a
  br label %bb.c

.fold.split103:                                   ; preds = %bb.a
  br label %bb.c

.fold.split104:                                   ; preds = %bb.a
  br label %bb.c

.fold.split105:                                   ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.fold.split105, %.fold.split104, %.fold.split103, %.fold.split102, %.fold.split101, %.fold.split100, %.fold.split99, %.fold.split98, %.fold.split97, %.fold.split96, %.fold.split95, %.fold.split94, %.fold.split93, %.fold.split92, %.fold.split91, %.fold.split90, %.fold.split89, %.fold.split88, %.fold.split87, %.fold.split86, %.fold.split85, %.fold.split84, %.fold.split83, %.fold.split
  %.lcssa63 = phi i64 [ 0, %bb.a ], [ 23, %.fold.split104 ], [ 1, %.fold.split ], [ 2, %.fold.split83 ], [ 3, %.fold.split84 ], [ 4, %.fold.split85 ], [ 5, %.fold.split86 ], [ 6, %.fold.split87 ], [ 7, %.fold.split88 ], [ 8, %.fold.split89 ], [ 9, %.fold.split90 ], [ 10, %.fold.split91 ], [ 11, %.fold.split92 ], [ 12, %.fold.split93 ], [ 13, %.fold.split94 ], [ 14, %.fold.split95 ], [ 15, %.fold.split96 ], [ 16, %.fold.split97 ], [ 17, %.fold.split98 ], [ 18, %.fold.split99 ], [ 19, %.fold.split100 ], [ 20, %.fold.split101 ], [ 21, %.fold.split102 ], [ 22, %.fold.split103 ], [ 24, %.fold.split105 ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @KeySymToSDLScancode, i64 %.lcssa63
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.e = or disjoint i32 %0, 32
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.f = and i32 %0, -4096
  %or.cond3 = icmp eq i32 %i.f, 268963840
  br i1 %or.cond3, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.g = add nsw i32 %0, -268963840               ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.e, %bb.d, %bb.f
  %.04154 = phi i32 [ 268963840, %bb.f ], [ %0, %bb.e ], [ %i.e, %bb.d ] ; 4 uses
  %i.h = add i32 %1, -8                           ; 3 uses
  %i.i = icmp ult i32 %i.h, 248
  br i1 %i.i, label %bb.g, label %vector.ph

bb.g:                                             ; preds = %.thread
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @LinuxKeycodeKeysyms, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %.04154, %i.l
  br i1 %i.m, label %.loopexit55, label %vector.ph

vector.ph:                                        ; preds = %.thread, %bb.g
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.04154, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim.1, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body.interim.1 ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @LinuxKeycodeKeysyms, i64 %index
  %wide.load = load <4 x i32>, ptr %i.n, align 16
  %i.o = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %i.p = freeze <4 x i1> %i.o                     ; 2 uses
  %i.q = bitcast <4 x i1> %i.p to i4
  %.not159 = icmp eq i4 %i.q, 0
  br i1 %.not159, label %vector.body.interim, label %.loopexit55.loopexit

vector.body.interim:                              ; preds = %vector.body
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @LinuxKeycodeKeysyms, i64 %index.next
  %wide.load.1 = load <4 x i32>, ptr %i.r, align 16
  %i.s = icmp eq <4 x i32> %broadcast.splat, %wide.load.1
  %i.t = freeze <4 x i1> %i.s                     ; 2 uses
  %i.u = bitcast <4 x i1> %i.t to i4
  %.not159.1 = icmp eq i4 %i.u, 0
  br i1 %.not159.1, label %vector.body.interim.1, label %.loopexit55.loopexit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.v = icmp eq i64 %index.next.1, 248
  br i1 %i.v, label %.preheader.preheader, label %vector.body, !llvm.loop !3

.loopexit55.loopexit:                             ; preds = %vector.body.interim, %vector.body
  %index.lcssa = phi i64 [ %index, %vector.body ], [ %index.next, %vector.body.interim ]
  %.lcssa160 = phi <4 x i1> [ %i.p, %vector.body ], [ %i.t, %vector.body.interim ]
  %i.w = tail call i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1> %.lcssa160, i1 false)
  %i.x = add i64 %index.lcssa, %i.w
  %i.y = trunc nuw nsw i64 %i.x to i32
  br label %.loopexit55

.loopexit55:                                      ; preds = %.loopexit55.loopexit, %bb.g
  %.1 = phi i32 [ %i.h, %bb.g ], [ %i.y, %.loopexit55.loopexit ] ; 2 uses
  %.not49 = icmp eq i32 %.1, 0
  br i1 %.not49, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %vector.body.interim.1, %.loopexit55
  switch i32 %.04154, label %.preheader.42 [
    i32 269025068, label %bb.h
    i32 269025128, label %.fold.split106
    i32 65382, label %.fold.split107
    i32 269025099, label %.fold.split108
    i32 269025113, label %.fold.split109
    i32 269025028, label %.fold.split110
    i32 269025030, label %.fold.split111
    i32 269025029, label %.fold.split112
    i32 269025147, label %.fold.split113
    i32 269025138, label %.fold.split114
    i32 269025168, label %.fold.split115
    i32 269025143, label %.fold.split116
    i32 269025115, label %.fold.split117
    i32 269025171, label %.fold.split118
    i32 269025172, label %.fold.split119
    i32 269025173, label %.fold.split120
    i32 269025174, label %.fold.split121
    i32 269024802, label %.fold.split122
    i32 269024803, label %.fold.split123
    i32 269025031, label %.fold.split124
    i32 269025204, label %.fold.split125
    i32 269025205, label %.fold.split126
    i32 269025202, label %.fold.split127
    i32 269025180, label %.fold.split128
    i32 269025208, label %.fold.split129
    i32 269025159, label %.fold.split130
    i32 269025056, label %.fold.split131
    i32 269025177, label %.fold.split132
    i32 269025118, label %.fold.split133
    i32 269025163, label %.fold.split134
    i32 269025164, label %.fold.split135
    i32 269025161, label %.fold.split136
    i32 269025116, label %.fold.split137
    i32 269025129, label %.fold.split138
    i32 269025166, label %.fold.split139
    i32 269025121, label %.fold.split140
    i32 36, label %.fold.split141
    i32 8364, label %.fold.split142
    i32 269025181, label %.fold.split143
    i32 269025182, label %.fold.split144
    i32 65521, label %.fold.split145
    i32 65522, label %.fold.split146
  ]

.preheader.42:                                    ; preds = %.preheader.preheader
  switch i32 %.04154, label %.loopexit [
    i32 65523, label %bb.h
    i32 65524, label %.fold.split147
    i32 65525, label %.fold.split148
    i32 65526, label %.fold.split149
    i32 65527, label %.fold.split150
    i32 65528, label %.fold.split151
    i32 65529, label %.fold.split152
    i32 269025193, label %.fold.split153
    i32 269025200, label %.fold.split154
    i32 269025201, label %.fold.split155
    i32 269025207, label %.fold.split156
    i32 65032, label %.fold.split157
  ]

.fold.split106:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split107:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split108:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split109:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split110:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split111:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split112:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split113:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split114:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split115:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split116:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split117:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split118:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split119:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split120:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split121:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split122:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split123:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split124:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split125:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split126:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split127:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split128:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split129:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split130:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split131:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split132:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split133:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split134:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split135:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split136:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split137:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split138:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split139:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split140:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split141:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split142:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split143:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split144:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split145:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split146:                                   ; preds = %.preheader.preheader
  br label %bb.h

.fold.split147:                                   ; preds = %.preheader.42
  br label %bb.h

.fold.split148:                                   ; preds = %.preheader.42
  br label %bb.h

.fold.split149:                                   ; preds = %.preheader.42
  br label %bb.h

.fold.split150:                                   ; preds = %.preheader.42
  br label %bb.h

.fold.split151:                                   ; preds = %.preheader.42
  br label %bb.h

.fold.split152:                                   ; preds = %.preheader.42
  br label %bb.h

.fold.split153:                                   ; preds = %.preheader.42
  br label %bb.h

.fold.split154:                                   ; preds = %.preheader.42
  br label %bb.h

.fold.split155:                                   ; preds = %.preheader.42
  br label %bb.h

.fold.split156:                                   ; preds = %.preheader.42
  br label %bb.h

.fold.split157:                                   ; preds = %.preheader.42
  br label %bb.h

bb.h:                                             ; preds = %.preheader.42, %.fold.split157, %.fold.split156, %.fold.split155, %.fold.split154, %.fold.split153, %.fold.split152, %.fold.split151, %.fold.split150, %.fold.split149, %.fold.split148, %.fold.split147, %.preheader.preheader, %.fold.split146, %.fold.split145, %.fold.split144, %.fold.split143, %.fold.split142, %.fold.split141, %.fold.split140, %.fold.split139, %.fold.split138, %.fold.split137, %.fold.split136, %.fold.split135, %.fold.split134, %.fold.split133, %.fold.split132, %.fold.split131, %.fold.split130, %.fold.split129, %.fold.split128, %.fold.split127, %.fold.split126, %.fold.split125, %.fold.split124, %.fold.split123, %.fold.split122, %.fold.split121, %.fold.split120, %.fold.split119, %.fold.split118, %.fold.split117, %.fold.split116, %.fold.split115, %.fold.split114, %.fold.split113, %.fold.split112, %.fold.split111, %.fold.split110, %.fold.split109, %.fold.split108, %.fold.split107, %.fold.split106
  %.lcssa = phi i64 [ 0, %.preheader.preheader ], [ 52, %.fold.split155 ], [ 1, %.fold.split106 ], [ 2, %.fold.split107 ], [ 3, %.fold.split108 ], [ 4, %.fold.split109 ], [ 5, %.fold.split110 ], [ 6, %.fold.split111 ], [ 7, %.fold.split112 ], [ 8, %.fold.split113 ], [ 9, %.fold.split114 ], [ 10, %.fold.split115 ], [ 11, %.fold.split116 ], [ 12, %.fold.split117 ], [ 13, %.fold.split118 ], [ 14, %.fold.split119 ], [ 15, %.fold.split120 ], [ 16, %.fold.split121 ], [ 17, %.fold.split122 ], [ 18, %.fold.split123 ], [ 19, %.fold.split124 ], [ 20, %.fold.split125 ], [ 21, %.fold.split126 ], [ 22, %.fold.split127 ], [ 23, %.fold.split128 ], [ 24, %.fold.split129 ], [ 25, %.fold.split130 ], [ 26, %.fold.split131 ], [ 27, %.fold.split132 ], [ 28, %.fold.split133 ], [ 29, %.fold.split134 ], [ 30, %.fold.split135 ], [ 31, %.fold.split136 ], [ 32, %.fold.split137 ], [ 33, %.fold.split138 ], [ 34, %.fold.split139 ], [ 35, %.fold.split140 ], [ 36, %.fold.split141 ], [ 37, %.fold.split142 ], [ 38, %.fold.split143 ], [ 39, %.fold.split144 ], [ 40, %.fold.split145 ], [ 42, %.preheader.42 ], [ 41, %.fold.split146 ], [ 43, %.fold.split147 ], [ 44, %.fold.split148 ], [ 45, %.fold.split149 ], [ 46, %.fold.split150 ], [ 47, %.fold.split151 ], [ 53, %.fold.split156 ], [ 48, %.fold.split152 ], [ 50, %.fold.split153 ], [ 51, %.fold.split154 ], [ 54, %.fold.split157 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @ExtendedLinuxKeycodeKeysyms, i64 %.lcssa
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.42, %bb.f, %bb.h, %.loopexit55
  %.2 = phi i32 [ %.1, %.loopexit55 ], [ %i.ab, %bb.h ], [ 0, %.preheader.42 ], [ %i.g, %bb.f ]
  %i.ac = tail call i32 @SDL_GetScancodeFromTable(i32 noundef 1, i32 noundef %.2) #3
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.c
  %.040 = phi i32 [ %i.d, %bb.c ], [ %i.ac, %.loopexit ]
  ret i32 %.040
}

declare i32 @SDL_GetScancodeFromTable(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1>, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{!3, !4, !5, !6}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"llvm.loop.isvectorized", i32 1}
!6 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
