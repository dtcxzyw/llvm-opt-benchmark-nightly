Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_Py_GetErrorHandler:bb.a
  br i1 %i.k, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.5) #34
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(18) @.str.6) #34
  %i.o = icmp eq i32 %i.n, 0
  %. = select i1 %i.o, i32 7, i32 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 6, %bb.g ], [ 1, %bb.a ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ %., %bb.h ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @_PyUnicode_CheckConsistency(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !229
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val95 = load i64, ptr %i.b, align 8, !tbaa !234
  %i.c = and i64 %.val95, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 596, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = lshr i32 %i.e, 2
  %i.g = and i32 %i.f, 7                          ; 5 uses
  %i.h = and i32 %i.e, 64
  %.not86 = icmp eq i32 %i.h, 0                   ; 4 uses
  %i.i = and i32 %i.e, 32
  %.not87 = icmp eq i32 %i.i, 0                   ; 2 uses
  %i.j = and i32 %i.e, 96
  %or.cond94.not = icmp eq i32 %i.j, 96
  br i1 %or.cond94.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.g, 1
  br i1 %i.k, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 602, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 56         ; 2 uses
  br i1 %.not87, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %i.g, label %bb.h [
    i32 4, label %bb.i
    i32 2, label %bb.i
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 612, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g
  br i1 %.not86, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef 613, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.m = getelementptr i8, ptr %0, i64 48
  %.val99 = load ptr, ptr %i.m, align 8, !tbaa !236 ; 2 uses
  %.not92 = icmp eq ptr %.val99, %i.l
  br i1 %.not92, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef 614, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !237  ; 2 uses
  switch i32 %i.g, label %bb.n [
    i32 4, label %bb.o
    i32 2, label %bb.o
    i32 1, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 622, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.m, %bb.m
  %.not89 = icmp eq ptr %i.n, null
  br i1 %.not89, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef 624, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.o = getelementptr i8, ptr %0, i64 48
  %.val97 = load ptr, ptr %i.o, align 8, !tbaa !236 ; 2 uses
  %.not91 = icmp eq ptr %.val97, %i.n             ; 2 uses
  br i1 %.not86, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not91, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 626, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.p = getelementptr i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !238
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !239
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %.thread126, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, i32 noundef 627, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.v:                                             ; preds = %bb.q
  br i1 %.not91, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef 630, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.k
  %.val96 = phi ptr [ %.val99, %bb.k ], [ %.val97, %bb.v ]
  %i.u = icmp eq ptr %.val96, null
  br i1 %i.u, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.v = getelementptr i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !238
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.8, i32 noundef 635, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.d
  %.not93 = icmp eq i32 %1, 0
  br i1 %.not93, label %bb.as, label %bb.ab

.thread126:                                       ; preds = %bb.t
  %.not93127 = icmp eq i32 %1, 0
  br i1 %.not93127, label %bb.as, label %.thread128

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not87, label %.thread128, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.0.v.i.i = select i1 %.not86, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

.thread128:                                       ; preds = %.thread126, %bb.ab
  %i.y = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.y, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.ac, %.thread128
  %.0.i = phi ptr [ %.0.i.i, %bb.ac ], [ %.val4.i, %.thread128 ] ; 9 uses
  %i.z = getelementptr i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !239 ; 14 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit
  %min.iters.check153 = icmp ult i64 %i.aa, 8     ; 3 uses
  switch i32 %i.g, label %PyUnicode_READ.exit.preheader [
    i32 1, label %PyUnicode_READ.exit.us.preheader
    i32 2, label %PyUnicode_READ.exit.us111.preheader
  ]

PyUnicode_READ.exit.us111.preheader:              ; preds = %.lr.ph
  br i1 %min.iters.check153, label %PyUnicode_READ.exit.us111.preheader173, label %vector.ph

vector.ph:                                        ; preds = %PyUnicode_READ.exit.us111.preheader
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %2, %vector.body ]
  %vec.phi134 = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %3, %vector.body ]
  %i.ac = getelementptr [2 x i8], ptr %.0.i, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %wide.load = load <4 x i16>, ptr %i.ac, align 2, !tbaa !240
  %wide.load135 = load <4 x i16>, ptr %i.ad, align 2, !tbaa !240
  %2 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load, <4 x i16> %vec.phi) ; 2 uses
  %3 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load135, <4 x i16> %vec.phi134) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !333

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %2, <4 x i16> %3)
  %4 = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %rdx.minmax)
  %5 = zext i16 %4 to i32                         ; 2 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread131, label %PyUnicode_READ.exit.us111.preheader173

PyUnicode_READ.exit.us111.preheader173:           ; preds = %PyUnicode_READ.exit.us111.preheader, %middle.block
  %.0105.us109.ph = phi i32 [ 0, %PyUnicode_READ.exit.us111.preheader ], [ %5, %middle.block ]
  %.081104.us110.ph = phi i64 [ 0, %PyUnicode_READ.exit.us111.preheader ], [ %n.vec, %middle.block ]
  br label %PyUnicode_READ.exit.us111

PyUnicode_READ.exit.us.preheader:                 ; preds = %.lr.ph
  br i1 %min.iters.check153, label %PyUnicode_READ.exit.us.preheader170, label %vector.ph138

vector.ph138:                                     ; preds = %PyUnicode_READ.exit.us.preheader
  %n.vec139 = and i64 %i.aa, 9223372036854775800  ; 3 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body140 ] ; 2 uses
  %vec.phi142 = phi <4 x i8> [ zeroinitializer, %vector.ph138 ], [ %6, %vector.body140 ]
  %vec.phi143 = phi <4 x i8> [ zeroinitializer, %vector.ph138 ], [ %7, %vector.body140 ]
  %i.af = getelementptr i8, ptr %.0.i, i64 %index141 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %wide.load144 = load <4 x i8>, ptr %i.af, align 1, !tbaa !237
  %wide.load145 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !237
  %6 = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load144, <4 x i8> %vec.phi142) ; 2 uses
  %7 = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load145, <4 x i8> %vec.phi143) ; 2 uses
  %index.next146 = add nuw i64 %index141, 8       ; 2 uses
  %i.ah = icmp eq i64 %index.next146, %n.vec139
  br i1 %i.ah, label %middle.block147, label %vector.body140, !llvm.loop !334

middle.block147:                                  ; preds = %vector.body140
  %rdx.minmax148 = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %6, <4 x i8> %7)
  %8 = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %rdx.minmax148)
  %9 = zext i8 %8 to i32                          ; 2 uses
  %cmp.n149 = icmp eq i64 %i.aa, %n.vec139
  br i1 %cmp.n149, label %._crit_edge.thread, label %PyUnicode_READ.exit.us.preheader170

PyUnicode_READ.exit.us.preheader170:              ; preds = %PyUnicode_READ.exit.us.preheader, %middle.block147
  %.0105.us.ph = phi i32 [ 0, %PyUnicode_READ.exit.us.preheader ], [ %9, %middle.block147 ]
  %.081104.us.ph = phi i64 [ 0, %PyUnicode_READ.exit.us.preheader ], [ %n.vec139, %middle.block147 ]
  br label %PyUnicode_READ.exit.us

PyUnicode_READ.exit.preheader:                    ; preds = %.lr.ph
  br i1 %min.iters.check153, label %PyUnicode_READ.exit.preheader168, label %vector.ph154

vector.ph154:                                     ; preds = %PyUnicode_READ.exit.preheader
  %n.vec155 = and i64 %i.aa, 9223372036854775800  ; 3 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next162, %vector.body156 ] ; 2 uses
  %vec.phi158 = phi <4 x i32> [ zeroinitializer, %vector.ph154 ], [ %i.ak, %vector.body156 ]
  %vec.phi159 = phi <4 x i32> [ zeroinitializer, %vector.ph154 ], [ %i.al, %vector.body156 ]
  %i.ai = getelementptr [4 x i8], ptr %.0.i, i64 %index157 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %wide.load160 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !43
  %wide.load161 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !43
  %i.ak = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load160, <4 x i32> %vec.phi158) ; 2 uses
  %i.al = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load161, <4 x i32> %vec.phi159) ; 2 uses
  %index.next162 = add nuw i64 %index157, 8       ; 2 uses
  %i.am = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.am, label %middle.block163, label %vector.body156, !llvm.loop !335

middle.block163:                                  ; preds = %vector.body156
  %rdx.minmax164 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ak, <4 x i32> %i.al)
  %i.an = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax164) ; 2 uses
  %cmp.n165 = icmp eq i64 %i.aa, %n.vec155
  br i1 %cmp.n165, label %._crit_edge, label %PyUnicode_READ.exit.preheader168

PyUnicode_READ.exit.preheader168:                 ; preds = %PyUnicode_READ.exit.preheader, %middle.block163
  %.0105.ph = phi i32 [ 0, %PyUnicode_READ.exit.preheader ], [ %i.an, %middle.block163 ]
  %.081104.ph = phi i64 [ 0, %PyUnicode_READ.exit.preheader ], [ %n.vec155, %middle.block163 ]
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit.us:                           ; preds = %PyUnicode_READ.exit.us.preheader170, %PyUnicode_READ.exit.us
  %.0105.us = phi i32 [ %spec.select.us, %PyUnicode_READ.exit.us ], [ %.0105.us.ph, %PyUnicode_READ.exit.us.preheader170 ]
  %.081104.us = phi i64 [ %i.ar, %PyUnicode_READ.exit.us ], [ %.081104.us.ph, %PyUnicode_READ.exit.us.preheader170 ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.0.i, i64 %.081104.us
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !237
  %i.aq = zext i8 %i.ap to i32
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %i.aq, i32 %.0105.us) ; 2 uses
  %i.ar = add nuw nsw i64 %.081104.us, 1          ; 2 uses
  %exitcond120.not = icmp eq i64 %i.ar, %i.aa
  br i1 %exitcond120.not, label %._crit_edge.thread, label %PyUnicode_READ.exit.us, !llvm.loop !336

PyUnicode_READ.exit.us111:                        ; preds = %PyUnicode_READ.exit.us111.preheader173, %PyUnicode_READ.exit.us111
  %.0105.us109 = phi i32 [ %spec.select.us113, %PyUnicode_READ.exit.us111 ], [ %.0105.us109.ph, %PyUnicode_READ.exit.us111.preheader173 ]
  %.081104.us110 = phi i64 [ %i.av, %PyUnicode_READ.exit.us111 ], [ %.081104.us110.ph, %PyUnicode_READ.exit.us111.preheader173 ] ; 2 uses
  %i.as = getelementptr [2 x i8], ptr %.0.i, i64 %.081104.us110
  %i.at = load i16, ptr %i.as, align 2, !tbaa !240
  %i.au = zext i16 %i.at to i32
  %spec.select.us113 = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %.0105.us109) ; 2 uses
  %i.av = add nuw nsw i64 %.081104.us110, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %i.aa
  br i1 %exitcond.not, label %._crit_edge.thread131, label %PyUnicode_READ.exit.us111, !llvm.loop !337

PyUnicode_READ.exit:                              ; preds = %PyUnicode_READ.exit.preheader168, %PyUnicode_READ.exit
  %.0105 = phi i32 [ %spec.select, %PyUnicode_READ.exit ], [ %.0105.ph, %PyUnicode_READ.exit.preheader168 ]
  %.081104 = phi i64 [ %i.ay, %PyUnicode_READ.exit ], [ %.081104.ph, %PyUnicode_READ.exit.preheader168 ] ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %.0.i, i64 %.081104
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !43
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 %.0105) ; 2 uses
  %i.ay = add nuw nsw i64 %.081104, 1             ; 2 uses
  %exitcond121.not = icmp eq i64 %i.ay, %i.aa
  br i1 %exitcond121.not, label %._crit_edge, label %PyUnicode_READ.exit, !llvm.loop !338

._crit_edge:                                      ; preds = %PyUnicode_READ.exit, %middle.block163, %_PyUnicode_DATA.exit
  %.0.lcssa = phi i32 [ 0, %_PyUnicode_DATA.exit ], [ %i.an, %middle.block163 ], [ %spec.select, %PyUnicode_READ.exit ] ; 4 uses
  switch i32 %i.g, label %bb.am [
    i32 1, label %._crit_edge.thread
    i32 2, label %._crit_edge.thread131
  ]

._crit_edge.thread:                               ; preds = %PyUnicode_READ.exit.us, %middle.block147, %._crit_edge
  %.0.lcssa130 = phi i32 [ %.0.lcssa, %._crit_edge ], [ %9, %middle.block147 ], [ %spec.select.us, %PyUnicode_READ.exit.us ] ; 3 uses
  br i1 %.not86, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %._crit_edge.thread
  %i.az = icmp ugt i32 %.0.lcssa130, 127
  br i1 %i.az, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ba = icmp ult i32 %.0.lcssa130, 256
  br i1 %i.ba, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8, i32 noundef 656, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.ah:                                            ; preds = %._crit_edge.thread
  %i.bb = icmp ult i32 %.0.lcssa130, 128
  br i1 %i.bb, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8, i32 noundef 659, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

._crit_edge.thread131:                            ; preds = %PyUnicode_READ.exit.us111, %middle.block, %._crit_edge
  %.0.lcssa133 = phi i32 [ %.0.lcssa, %._crit_edge ], [ %5, %middle.block ], [ %spec.select.us113, %PyUnicode_READ.exit.us111 ] ; 2 uses
  %i.bc = icmp ugt i32 %.0.lcssa133, 255
  br i1 %i.bc, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.thread131
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8, i32 noundef 662, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.ak:                                            ; preds = %._crit_edge.thread131
  %i.bd = icmp ult i32 %.0.lcssa133, 65536
  br i1 %i.bd, label %.thread103, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.8, i32 noundef 663, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.am:                                            ; preds = %._crit_edge
  %i.be = icmp ugt i32 %.0.lcssa, 65535
  br i1 %i.be, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.8, i32 noundef 666, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.bf = icmp ult i32 %.0.lcssa, 1114112
  br i1 %i.bf, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.8, i32 noundef 667, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

.thread:                                          ; preds = %bb.af, %bb.ah
  %i.bg = getelementptr i8, ptr %.0.i, i64 %i.aa
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !237
  %i.bi = zext i8 %i.bh to i32
  br label %PyUnicode_READ.exit102

.thread103:                                       ; preds = %bb.ak
  %i.bj = getelementptr [2 x i8], ptr %.0.i, i64 %i.aa
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !240
  %i.bl = zext i16 %i.bk to i32
  br label %PyUnicode_READ.exit102

bb.aq:                                            ; preds = %bb.ao
  %i.bm = getelementptr [4 x i8], ptr %.0.i, i64 %i.aa
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !43
  br label %PyUnicode_READ.exit102

PyUnicode_READ.exit102:                           ; preds = %.thread, %.thread103, %bb.aq
  %.0.i101 = phi i32 [ %i.bi, %.thread ], [ %i.bl, %.thread103 ], [ %i.bn, %bb.aq ]
  %i.bo = icmp eq i32 %.0.i101, 0
  br i1 %i.bo, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %PyUnicode_READ.exit102
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 669, ptr noundef nonnull @__func__._PyUnicode_CheckConsistency) #35
  unreachable

bb.as:                                            ; preds = %.thread126, %PyUnicode_READ.exit102, %bb.aa
  ret i32 1
}

; Function Attrs: noreturn
declare void @_PyObject_AssertFailed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_Result(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !239
  switch i64 %.val, label %Py_DECREF.exit28 [
    i64 0, label %bb.b
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not26 = icmp eq ptr %0, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26, label %Py_DECREF.exit28, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %0, align 8, !tbaa !237    ; 2 uses
  %.not.i27 = icmp sgt i32 %i.b, -1
  br i1 %.not.i27, label %bb.d, label %Py_DECREF.exit28

bb.d:                                             ; preds = %bb.c
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %0, align 8, !tbaa !237
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %Py_DECREF.exit28.sink.split, label %Py_DECREF.exit28

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = and i32 %i.f, 28
  %.not25 = icmp eq i32 %i.g, 4
  br i1 %.not25, label %bb.f, label %Py_DECREF.exit28

bb.f:                                             ; preds = %bb.e
  %i.h = and i32 %i.f, 32
  %.not.i30 = icmp eq i32 %i.h, 0
  br i1 %.not.i30, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = and i32 %i.f, 64
  %.not.i.i = icmp eq i32 %i.i, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.h:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.j, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %.0.i.i, %bb.g ], [ %.val4.i, %bb.h ]
  %i.k = load i8, ptr %.0.i, align 1, !tbaa !237  ; 2 uses
  %i.l = zext i8 %i.k to i64                      ; 2 uses
  %i.m = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.l
  %i.n = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 -8192
  %i.p = icmp slt i8 %i.k, 0
  %i.q = select i1 %i.p, ptr %i.o, ptr %i.m       ; 5 uses
  %.not = icmp eq ptr %0, %i.q
  br i1 %.not, label %Py_DECREF.exit28, label %bb.i

bb.i:                                             ; preds = %_PyUnicode_DATA.exit
  %i.r = load i32, ptr %0, align 8, !tbaa !237    ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit28

bb.j:                                             ; preds = %bb.i
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !237
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %Py_DECREF.exit28.sink.split, label %Py_DECREF.exit28

Py_DECREF.exit28.sink.split:                      ; preds = %bb.j, %bb.d
  %.1.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.d ], [ %i.q, %bb.j ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #33
  br label %Py_DECREF.exit28

Py_DECREF.exit28:                                 ; preds = %Py_DECREF.exit28.sink.split, %_PyUnicode_DATA.exit, %bb.i, %bb.j, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ %0, %bb.a ], [ %i.q, %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.d ], [ %0, %bb.e ], [ %i.q, %_PyUnicode_DATA.exit ], [ %i.q, %bb.j ], [ %.1.ph, %Py_DECREF.exit28.sink.split ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_ResizeCompact(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.val7.i = load i32, ptr %0, align 8, !tbaa !237
  %.not.i45 = icmp eq i32 %.val7.i, 1
  br i1 %.not.i45, label %bb.b, label %_PyUnicode_IsModifiable.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val8.i = load i64, ptr %i.a, align 8, !tbaa !243
  %.not4.i = icmp eq i64 %.val8.i, -1
  br i1 %.not4.i, label %bb.c, label %_PyUnicode_IsModifiable.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val.i = load i32, ptr %i.b, align 8           ; 5 uses
  %i.c = and i32 %.val.i, 3
  %.not5.i = icmp eq i32 %i.c, 0
  br i1 %.not5.i, label %_PyUnicode_IsModifiable.exit, label %_PyUnicode_IsModifiable.exit.thread

_PyUnicode_IsModifiable.exit:                     ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val9.i = load ptr, ptr %i.d, align 8, !tbaa !229
  %.not10.i.not = icmp eq ptr %.val9.i, @PyUnicode_Type
  br i1 %.not10.i.not, label %bb.h, label %_PyUnicode_IsModifiable.exit.thread

_PyUnicode_IsModifiable.exit.thread:              ; preds = %bb.c, %bb.b, %bb.a, %_PyUnicode_IsModifiable.exit
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val14.i = load i32, ptr %i.e, align 8         ; 2 uses
  %i.f = and i32 %.val14.i, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %PyUnicode_MAX_CHAR_VALUE.exit.i

bb.d:                                             ; preds = %_PyUnicode_IsModifiable.exit.thread
  %i.g = lshr i32 %.val14.i, 2
  %i.h = and i32 %i.g, 7                          ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.h, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.h, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit.i

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %bb.d, %_PyUnicode_IsModifiable.exit.thread
  %.0.i.i = phi i32 [ %switch.select6.i.i, %bb.d ], [ 127, %_PyUnicode_IsModifiable.exit.thread ]
  %i.i = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %.0.i.i) ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.k = getelementptr i8, ptr %0, i64 16
  %.val13.i = load i64, ptr %i.k, align 8, !tbaa !239
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %1, i64 %.val13.i)
  %i.l = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.i, i64 noundef 0, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %spec.select.i, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !237    ; 2 uses
end_hunk_0
begin_hunk_1_@formatter_field_name_split:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val21 = load ptr, ptr %i.b, align 8, !tbaa !229 ; 2 uses
  %i.c = getelementptr i8, ptr %.val21, i64 168
  %.val22 = load i64, ptr %i.c, align 8, !tbaa !234
  %i.d = and i64 %.val22, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !227
  %i.f = getelementptr i8, ptr %.val21, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !261
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.330, ptr noundef %i.g) #33 ; 0 uses
  br label %Py_XDECREF.exit26

bb.c:                                             ; preds = %bb.a
  %i.i = tail call ptr @_PyObject_New(ptr noundef nonnull @PyFieldNameIter_Type) #33 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_XDECREF.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %1, align 8, !tbaa !237    ; 2 uses
  %i.l = icmp ugt i32 %i.k, -1073741825
  br i1 %i.l, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr %1, align 8, !tbaa !237
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.e
  %i.n = getelementptr i8, ptr %i.i, i64 16
  store ptr %1, ptr %i.n, align 8, !tbaa !328
  %i.o = getelementptr i8, ptr %1, i64 16
  %.val23 = load i64, ptr %i.o, align 8, !tbaa !239
  %i.p = getelementptr i8, ptr %i.i, i64 24
  %i.q = call fastcc i32 @field_name_split(ptr noundef nonnull %1, i64 noundef 0, i64 noundef %.val23, ptr noundef %2, ptr noundef %i.a, ptr noundef %i.p, ptr noundef null)
  %.not19 = icmp eq i32 %i.q, 0
  br i1 %.not19, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_Py_NewRef.exit
  %i.r = load i64, ptr %i.a, align 8, !tbaa !226  ; 2 uses
  %.not20 = icmp eq i64 %i.r, -1
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.r) #33
  br label %SubString_new_object.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %2, align 8, !tbaa !319    ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %SubString_new_object.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !320
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !321
  %i.z = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %i.t, i64 noundef %i.w, i64 noundef %i.y), !inline_history !329
  br label %SubString_new_object.exit

SubString_new_object.exit:                        ; preds = %bb.i, %bb.g
  %.015 = phi ptr [ %i.s, %bb.g ], [ %i.z, %bb.i ] ; 2 uses
  %i.aa = icmp eq ptr %.015, null
  br i1 %i.aa, label %bb.j, label %SubString_new_object.exit.thread

SubString_new_object.exit.thread:                 ; preds = %bb.h, %SubString_new_object.exit
  %.01528 = phi ptr [ %.015, %SubString_new_object.exit ], [ @_Py_NoneStruct, %bb.h ] ; 2 uses
  %i.ab = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %.01528, ptr noundef nonnull %i.i) #33
  br label %bb.j

bb.j:                                             ; preds = %SubString_new_object.exit.thread, %_Py_NewRef.exit, %SubString_new_object.exit
  %.1 = phi ptr [ null, %SubString_new_object.exit ], [ %.01528, %SubString_new_object.exit.thread ], [ null, %_Py_NewRef.exit ] ; 4 uses
  %.0 = phi ptr [ null, %SubString_new_object.exit ], [ %i.ab, %SubString_new_object.exit.thread ], [ null, %_Py_NewRef.exit ] ; 4 uses
  %i.ac = load i32, ptr %i.i, align 8, !tbaa !237 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i, label %bb.k, label %Py_XDECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.i, align 8, !tbaa !237
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %Py_XDECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.j, %bb.k, %bb.l
  %.not.i24 = icmp eq ptr %.1, null
  br i1 %.not.i24, label %Py_XDECREF.exit26, label %bb.m

bb.m:                                             ; preds = %Py_XDECREF.exit
  %i.af = load i32, ptr %.1, align 8, !tbaa !237  ; 2 uses
  %.not.i.i25 = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i25, label %bb.n, label %Py_XDECREF.exit26

bb.n:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %.1, align 8, !tbaa !237
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %Py_XDECREF.exit26

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1) #33
  br label %Py_XDECREF.exit26

Py_XDECREF.exit26:                                ; preds = %bb.o, %bb.n, %bb.m, %Py_XDECREF.exit, %bb.c, %bb.b
  %.016 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %.0, %Py_XDECREF.exit ], [ %.0, %bb.m ], [ %.0, %bb.n ], [ %.0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %.016
}

; Function Attrs: nounwind uwtable
define internal ptr @formatter_parser(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.a, align 8, !tbaa !229 ; 2 uses
  %i.b = getelementptr i8, ptr %.val11, i64 168
  %.val12 = load i64, ptr %i.b, align 8, !tbaa !234
  %i.c = and i64 %.val12, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !227
  %i.e = getelementptr i8, ptr %.val11, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !261
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.330, ptr noundef %i.f) #33 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @_PyObject_New(ptr noundef nonnull @PyFormatterIter_Type) #33 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %1, align 8, !tbaa !237    ; 2 uses
  %i.k = icmp ugt i32 %i.j, -1073741825
  br i1 %i.k, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %1, align 8, !tbaa !237
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.e
  %i.m = getelementptr i8, ptr %i.h, i64 16
  store ptr %1, ptr %i.m, align 8, !tbaa !331
  %i.n = getelementptr i8, ptr %i.h, i64 24
  %i.o = getelementptr i8, ptr %1, i64 16
  %.val13 = load i64, ptr %i.o, align 8, !tbaa !239
  store ptr %1, ptr %i.n, align 8, !tbaa !319
  %i.p = getelementptr i8, ptr %i.h, i64 32
  store i64 0, ptr %i.p, align 8, !tbaa !320
  %i.q = getelementptr i8, ptr %i.h, i64 40
  store i64 %.val13, ptr %i.q, align 8, !tbaa !321
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_Py_NewRef.exit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %_Py_NewRef.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare ptr @_PyObject_New(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v4i8(<4 x i8>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.and.v4i16(<4 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.smin.v2i64(<2 x i64>) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.vector.extract.last.active.v2i64(<2 x i64>, <2 x i1>, i64) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nounwind }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { noreturn nounwind }

!llvm.module.flags = !{!33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}
!llvm.errno.tbaa = !{!43}

!0 = distinct !{!0, !228}
!1 = distinct !{!1, !228}
!2 = distinct !{!2, !228}
!3 = distinct !{!3, !228}
!4 = distinct !{!4, !228}
!5 = distinct !{!5, !228}
!6 = distinct !{!6, !228}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{!9, !228}
!10 = distinct !{!10, !228}
!11 = distinct !{ptr @PyUnicode_DecodeLatin1, null}
!12 = distinct !{!12, !228}
!13 = distinct !{!13, !228}
!14 = distinct !{!14, !228}
!15 = distinct !{!15, !228}
!16 = distinct !{!16, !228}
!17 = distinct !{!17, !228}
!18 = distinct !{!18, !228}
!19 = distinct !{!19, !228}
!20 = distinct !{!20, !228}
!21 = distinct !{!21, !228}
!22 = distinct !{!22, !228}
!23 = distinct !{!23, !228}
!24 = distinct !{!24, !228}
!25 = distinct !{!25, !228}
!26 = distinct !{!26, !228}
!27 = distinct !{!27, !228}
!28 = distinct !{!28, !228}
!29 = distinct !{!29, !228}
!30 = distinct !{!30, !228}
!31 = distinct !{!31, !228}
!32 = distinct !{!32, !228}
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 8, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 2}
!38 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!39 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"omnipotent char", !40, i64 0}
!42 = !{!"int", !41, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"any pointer", !41, i64 0}
!45 = !{!"p1 _ZTS3_is", !44, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"long", !41, i64 0}
!48 = !{!"p1 _ZTS18_gil_runtime_state", !44, i64 0}
!49 = !{!"p1 _ZTS3_ts", !44, i64 0}
!50 = !{!"PyMutex", !41, i64 0}
!51 = !{!"_pending_calls", !49, i64 0, !50, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !41, i64 24, !42, i64 7224, !42, i64 7228}
!52 = !{!"_ceval_state", !47, i64 0, !42, i64 8, !48, i64 16, !42, i64 24, !51, i64 32}
!53 = !{!"p1 _ZTS18_PyThreadStateImpl", !44, i64 0}
!54 = !{!"pythreads", !47, i64 0, !49, i64 8, !53, i64 16, !49, i64 24, !47, i64 32, !47, i64 40}
!55 = !{!"p1 _ZTS14pyruntimestate", !44, i64 0}
!56 = !{!"", !47, i64 0, !47, i64 8}
!57 = !{!"gc_generation", !56, i64 0, !42, i64 16, !42, i64 20}
!58 = !{!"p1 _ZTS19_PyInterpreterFrame", !44, i64 0}
!59 = !{!"p1 _ZTS7_object", !44, i64 0}
!60 = !{!"_gc_runtime_state", !42, i64 0, !42, i64 4, !57, i64 8, !41, i64 32, !57, i64 80, !41, i64 104, !42, i64 224, !58, i64 232, !59, i64 240, !59, i64 248, !47, i64 256, !47, i64 264, !42, i64 272, !42, i64 276}
!61 = !{!"long long", !41, i64 0}
!62 = !{!"", !50, i64 0, !61, i64 8, !47, i64 16}
!63 = !{!"", !42, i64 0, !47, i64 8, !42, i64 16}
!64 = !{!"_import_state", !59, i64 0, !59, i64 8, !59, i64 16, !42, i64 24, !42, i64 28, !42, i64 32, !59, i64 40, !59, i64 48, !42, i64 56, !59, i64 64, !59, i64 72, !59, i64 80, !62, i64 88, !63, i64 112}
!65 = !{!"_gil_runtime_state", !47, i64 0, !49, i64 8, !42, i64 16, !47, i64 24, !41, i64 32, !41, i64 80, !41, i64 120, !41, i64 168}
!66 = !{!"codecs_state", !59, i64 0, !59, i64 8, !59, i64 16, !42, i64 24}
!67 = !{!"p1 int", !44, i64 0}
!68 = !{!"any p2 pointer", !44, i64 0}
!69 = !{!"p2 int", !68, i64 0}
!70 = !{!"", !47, i64 0, !69, i64 8}
!71 = !{!"PyConfig", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !47, i64 24, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !67, i64 64, !42, i64 72, !42, i64 76, !67, i64 80, !67, i64 88, !67, i64 96, !42, i64 104, !70, i64 112, !70, i64 128, !70, i64 144, !70, i64 160, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !67, i64 232, !67, i64 240, !67, i64 248, !42, i64 256, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !67, i64 288, !67, i64 296, !67, i64 304, !67, i64 312, !42, i64 320, !70, i64 328, !67, i64 344, !67, i64 352, !67, i64 360, !67, i64 368, !67, i64 376, !67, i64 384, !67, i64 392, !42, i64 400, !67, i64 408, !67, i64 416, !67, i64 424, !67, i64 432, !42, i64 440, !42, i64 444, !42, i64 448}
!72 = !{!"p1 _ZTS12_xid_regitem", !44, i64 0}
!73 = !{!"", !42, i64 0, !42, i64 4, !50, i64 8, !72, i64 16}
!74 = !{!"_xid_lookup_state", !73, i64 0}
!75 = !{!"xi_exceptions", !59, i64 0, !59, i64 8, !59, i64 16}
!76 = !{!"", !74, i64 0, !75, i64 24}
!77 = !{!"_warnings_runtime_state", !59, i64 0, !59, i64 8, !59, i64 16, !62, i64 24, !47, i64 48, !59, i64 56}
!78 = !{!"p1 _ZTS15atexit_callback", !44, i64 0}
!79 = !{!"atexit_state", !78, i64 0, !59, i64 8}
!80 = !{!"_Bool", !41, i64 0}
!81 = !{!"", !41, i64 0}
!82 = !{!"_stoptheworld_state", !50, i64 0, !80, i64 1, !80, i64 2, !80, i64 3, !81, i64 4, !47, i64 8, !49, i64 16}
!83 = !{!"p1 _ZTS9_qsbr_pad", !44, i64 0}
!84 = !{!"p1 _ZTS18_qsbr_thread_state", !44, i64 0}
!85 = !{!"_qsbr_shared", !47, i64 0, !47, i64 8, !83, i64 16, !44, i64 24, !47, i64 32, !50, i64 40, !84, i64 48}
!86 = !{!"p1 _ZTS10llist_node", !44, i64 0}
!87 = !{!"llist_node", !86, i64 0, !86, i64 8}
!88 = !{!"p1 _ZTS15_obmalloc_state", !44, i64 0}
!89 = !{!"_Py_freelist", !44, i64 0, !47, i64 8}
!90 = !{!"_Py_freelists", !89, i64 0, !89, i64 16, !89, i64 32, !41, i64 48, !89, i64 368, !89, i64 384, !89, i64 400, !89, i64 416, !89, i64 432, !89, i64 448, !89, i64 464, !89, i64 480, !89, i64 496, !89, i64 512, !89, i64 528, !89, i64 544, !89, i64 560, !89, i64 576, !89, i64 592, !89, i64 608, !89, i64 624, !89, i64 640}
!91 = !{!"_py_object_state", !90, i64 0, !42, i64 656}
!92 = !{!"p1 omnipotent char", !44, i64 0}
!93 = !{!"_Py_unicode_fs_codec", !92, i64 0, !42, i64 8, !92, i64 16, !42, i64 24}
!94 = !{!"p2 _ZTS7_object", !68, i64 0}
!95 = !{!"_Py_unicode_ids", !47, i64 0, !94, i64 8}
!96 = !{!"_Py_unicode_state", !93, i64 0, !44, i64 32, !95, i64 40}
!97 = !{!"_Py_long_state", !42, i64 0}
!98 = !{!"p1 double", !44, i64 0}
!99 = !{!"_dtoa_state", !41, i64 0, !41, i64 64, !41, i64 128, !98, i64 2432}
!100 = !{!"_py_func_state", !42, i64 0, !41, i64 8}
!101 = !{!"p1 _ZTS15_Py_hashtable_t", !44, i64 0}
!102 = !{!"_py_code_state", !50, i64 0, !101, i64 8}
!103 = !{!"_Py_dict_state", !42, i64 0, !41, i64 8}
!104 = !{!"_Py_exc_state", !59, i64 0, !44, i64 8, !42, i64 16, !59, i64 24}
!105 = !{!"_Py_mem_interp_free_queue", !42, i64 0, !50, i64 4, !87, i64 8}
!106 = !{!"ast_state", !81, i64 0, !42, i64 4, !59, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72, !59, i64 80, !59, i64 88, !59, i64 96, !59, i64 104, !59, i64 112, !59, i64 120, !59, i64 128, !59, i64 136, !59, i64 144, !59, i64 152, !59, i64 160, !59, i64 168, !59, i64 176, !59, i64 184, !59, i64 192, !59, i64 200, !59, i64 208, !59, i64 216, !59, i64 224, !59, i64 232, !59, i64 240, !59, i64 248, !59, i64 256, !59, i64 264, !59, i64 272, !59, i64 280, !59, i64 288, !59, i64 296, !59, i64 304, !59, i64 312, !59, i64 320, !59, i64 328, !59, i64 336, !59, i64 344, !59, i64 352, !59, i64 360, !59, i64 368, !59, i64 376, !59, i64 384, !59, i64 392, !59, i64 400, !59, i64 408, !59, i64 416, !59, i64 424, !59, i64 432, !59, i64 440, !59, i64 448, !59, i64 456, !59, i64 464, !59, i64 472, !59, i64 480, !59, i64 488, !59, i64 496, !59, i64 504, !59, i64 512, !59, i64 520, !59, i64 528, !59, i64 536, !59, i64 544, !59, i64 552, !59, i64 560, !59, i64 568, !59, i64 576, !59, i64 584, !59, i64 592, !59, i64 600, !59, i64 608, !59, i64 616, !59, i64 624, !59, i64 632, !59, i64 640, !59, i64 648, !59, i64 656, !59, i64 664, !59, i64 672, !59, i64 680, !59, i64 688, !59, i64 696, !59, i64 704, !59, i64 712, !59, i64 720, !59, i64 728, !59, i64 736, !59, i64 744, !59, i64 752, !59, i64 760, !59, i64 768, !59, i64 776, !59, i64 784, !59, i64 792, !59, i64 800, !59, i64 808, !59, i64 816, !59, i64 824, !59, i64 832, !59, i64 840, !59, i64 848, !59, i64 856, !59, i64 864, !59, i64 872, !59, i64 880, !59, i64 888, !59, i64 896, !59, i64 904, !59, i64 912, !59, i64 920, !59, i64 928, !59, i64 936, !59, i64 944, !59, i64 952, !59, i64 960, !59, i64 968, !59, i64 976, !59, i64 984, !59, i64 992, !59, i64 1000, !59, i64 1008, !59, i64 1016, !59, i64 1024, !59, i64 1032, !59, i64 1040, !59, i64 1048, !59, i64 1056, !59, i64 1064, !59, i64 1072, !59, i64 1080, !59, i64 1088, !59, i64 1096, !59, i64 1104, !59, i64 1112, !59, i64 1120, !59, i64 1128, !59, i64 1136, !59, i64 1144, !59, i64 1152, !59, i64 1160, !59, i64 1168, !59, i64 1176, !59, i64 1184, !59, i64 1192, !59, i64 1200, !59, i64 1208, !59, i64 1216, !59, i64 1224, !59, i64 1232, !59, i64 1240, !59, i64 1248, !59, i64 1256, !59, i64 1264, !59, i64 1272, !59, i64 1280, !59, i64 1288, !59, i64 1296, !59, i64 1304, !59, i64 1312, !59, i64 1320, !59, i64 1328, !59, i64 1336, !59, i64 1344, !59, i64 1352, !59, i64 1360, !59, i64 1368, !59, i64 1376, !59, i64 1384, !59, i64 1392, !59, i64 1400, !59, i64 1408, !59, i64 1416, !59, i64 1424, !59, i64 1432, !59, i64 1440, !59, i64 1448, !59, i64 1456, !59, i64 1464, !59, i64 1472, !59, i64 1480, !59, i64 1488, !59, i64 1496, !59, i64 1504, !59, i64 1512, !59, i64 1520, !59, i64 1528, !59, i64 1536, !59, i64 1544, !59, i64 1552, !59, i64 1560, !59, i64 1568, !59, i64 1576, !59, i64 1584, !59, i64 1592, !59, i64 1600, !59, i64 1608, !59, i64 1616, !59, i64 1624, !59, i64 1632, !59, i64 1640, !59, i64 1648, !59, i64 1656, !59, i64 1664, !59, i64 1672, !59, i64 1680, !59, i64 1688, !59, i64 1696, !59, i64 1704, !59, i64 1712, !59, i64 1720, !59, i64 1728, !59, i64 1736, !59, i64 1744, !59, i64 1752, !59, i64 1760, !59, i64 1768, !59, i64 1776, !59, i64 1784, !59, i64 1792, !59, i64 1800, !59, i64 1808, !59, i64 1816, !59, i64 1824, !59, i64 1832, !59, i64 1840, !59, i64 1848, !59, i64 1856, !59, i64 1864, !59, i64 1872, !59, i64 1880, !59, i64 1888, !59, i64 1896, !59, i64 1904, !59, i64 1912, !59, i64 1920, !59, i64 1928, !59, i64 1936, !59, i64 1944, !59, i64 1952, !59, i64 1960, !59, i64 1968, !59, i64 1976}
!107 = !{!"type_cache", !41, i64 0}
!108 = !{!"", !47, i64 0, !41, i64 8}
!109 = !{!"", !47, i64 0, !47, i64 8, !41, i64 16}
!110 = !{!"types_state", !42, i64 0, !107, i64 8, !108, i64 98312, !109, i64 108016, !50, i64 108512, !41, i64 108520}
!111 = !{!"callable_cache", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24}
!112 = !{!"short", !41, i64 0}
!113 = !{!"_PyOptimizationConfig", !112, i64 0, !112, i64 2, !112, i64 4, !112, i64 6, !80, i64 8, !80, i64 9}
!114 = !{!"p1 _ZTS17_PyExecutorObject", !44, i64 0}
!115 = !{!"_rare_events", !41, i64 0, !41, i64 1, !41, i64 2, !41, i64 3, !41, i64 4}
!116 = !{!"_Py_GlobalMonitors", !41, i64 0}
!117 = !{!"p1 _ZTS11_typeobject", !44, i64 0}
!118 = !{!"_Py_interp_cached_objects", !59, i64 0, !59, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !117, i64 64, !59, i64 72, !59, i64 80}
!119 = !{!"_object", !41, i64 0, !117, i64 8}
!120 = !{!"", !119, i64 0, !44, i64 16, !59, i64 24, !47, i64 32}
!121 = !{!"", !119, i64 0, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !41, i64 64}
!122 = !{!"", !42, i64 0, !56, i64 8, !120, i64 24, !121, i64 64}
!123 = !{!"_Py_interp_static_objects", !122, i64 0}
!124 = !{!"", !42, i64 0, !42, i64 0, !42, i64 0, !42, i64 0, !42, i64 0, !42, i64 0, !42, i64 0, !42, i64 0}
!125 = !{!"p1 _ZTS14_err_stackitem", !44, i64 0}
!126 = !{!"p1 _ZTS12_stack_chunk", !44, i64 0}
end_hunk_1
