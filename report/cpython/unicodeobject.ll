inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@PyUnicode_AppendAndDel:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !205    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %.not.i.i, label %bb.c, label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr %1, align 8, !tbaa !205
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @_PyUnicode_ScanIdentifier(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !207 ; 8 uses
  %i.b = icmp eq i64 %.val, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = lshr i32 %i.d, 2
  %i.f = and i32 %i.e, 7                          ; 2 uses
  %i.g = and i32 %i.d, 32
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.d, 64
  %.not.i.i = icmp eq i32 %i.h, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.i, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %.0.i.i, %bb.c ], [ %.val4.i, %bb.d ] ; 6 uses
  switch i32 %i.f, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.j = load i8, ptr %.0.i, align 1, !tbaa !205
  %i.k = zext i8 %i.j to i32
  br label %PyUnicode_READ.exit

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.l = load i16, ptr %.0.i, align 2, !tbaa !208
  %i.m = zext i16 %i.l to i32
  br label %PyUnicode_READ.exit

bb.g:                                             ; preds = %_PyUnicode_DATA.exit
  %i.n = load i32, ptr %.0.i, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.e, %bb.f, %bb.g
  %.0.i20 = phi i32 [ %i.k, %bb.e ], [ %i.m, %bb.f ], [ %i.n, %bb.g ] ; 2 uses
  %i.o = tail call i32 @_PyUnicode_IsXidStart(i32 noundef %.0.i20) #33
  %i.p = icmp eq i32 %i.o, 0
  %i.q = icmp ne i32 %.0.i20, 95
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %PyUnicode_READ.exit
  %i.r = icmp sgt i64 %.val, 1
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  switch i32 %i.f, label %PyUnicode_READ.exit22 [
    i32 1, label %PyUnicode_READ.exit22.us
    i32 2, label %PyUnicode_READ.exit22.us28
  ]

PyUnicode_READ.exit22.us:                         ; preds = %.lr.ph, %bb.h
  %.01823.us = phi i64 [ %i.w, %bb.h ], [ 1, %.lr.ph ] ; 3 uses
  %i.s = getelementptr i8, ptr %.0.i, i64 %.01823.us
  %i.t = load i8, ptr %i.s, align 1, !tbaa !205
  %i.u = zext i8 %i.t to i32
  %i.v = tail call i32 @_PyUnicode_IsXidContinue(i32 noundef %i.u) #33
  %.not.us = icmp eq i32 %i.v, 0
  br i1 %.not.us, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %PyUnicode_READ.exit22.us
  %i.w = add nuw nsw i64 %.01823.us, 1            ; 2 uses
  %exitcond39.not = icmp eq i64 %i.w, %.val
  br i1 %exitcond39.not, label %.loopexit, label %PyUnicode_READ.exit22.us, !llvm.loop !597

PyUnicode_READ.exit22.us28:                       ; preds = %.lr.ph, %bb.i
  %.01823.us27 = phi i64 [ %i.ab, %bb.i ], [ 1, %.lr.ph ] ; 3 uses
  %i.x = getelementptr [2 x i8], ptr %.0.i, i64 %.01823.us27
  %i.y = load i16, ptr %i.x, align 2, !tbaa !208
  %i.z = zext i16 %i.y to i32
  %i.aa = tail call i32 @_PyUnicode_IsXidContinue(i32 noundef %i.z) #33
  %.not.us30 = icmp eq i32 %i.aa, 0
  br i1 %.not.us30, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %PyUnicode_READ.exit22.us28
  %i.ab = add nuw nsw i64 %.01823.us27, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %.val
  br i1 %exitcond.not, label %.loopexit, label %PyUnicode_READ.exit22.us28, !llvm.loop !597

PyUnicode_READ.exit22:                            ; preds = %.lr.ph, %bb.j
  %.01823 = phi i64 [ %i.af, %bb.j ], [ 1, %.lr.ph ] ; 3 uses
  %i.ac = getelementptr [4 x i8], ptr %.0.i, i64 %.01823
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = tail call i32 @_PyUnicode_IsXidContinue(i32 noundef %i.ad) #33
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %PyUnicode_READ.exit22
  %i.af = add nuw nsw i64 %.01823, 1              ; 2 uses
  %exitcond40.not = icmp eq i64 %i.af, %.val
  br i1 %exitcond40.not, label %.loopexit, label %PyUnicode_READ.exit22, !llvm.loop !597

.loopexit:                                        ; preds = %bb.i, %PyUnicode_READ.exit22.us28, %bb.h, %PyUnicode_READ.exit22.us, %bb.j, %PyUnicode_READ.exit22, %.preheader, %PyUnicode_READ.exit, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %PyUnicode_READ.exit ], [ 1, %.preheader ], [ %.val, %bb.j ], [ %.val, %bb.h ], [ %.01823, %PyUnicode_READ.exit22 ], [ %.01823.us, %PyUnicode_READ.exit22.us ], [ %.01823.us27, %PyUnicode_READ.exit22.us28 ], [ %.val, %bb.i ]
  ret i64 %.1
}

declare i32 @_PyUnicode_IsXidStart(i32 noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_IsXidContinue(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @PyUnicode_IsIdentifier(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @_PyUnicode_ScanIdentifier(ptr noundef %0)
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !207 ; 2 uses
  %i.c = icmp ne i64 %.val, 0
  %i.d = icmp eq i64 %i.a, %.val
  %i.e = select i1 %i.c, i1 %i.d, i1 false
  %i.f = zext i1 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_XStrip(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7                          ; 2 uses
  %i.e = and i32 %i.b, 32
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 6 uses
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val51 = load i64, ptr %i.h, align 8, !tbaa !207 ; 5 uses
  %i.i = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.i, align 8, !tbaa !207 ; 12 uses
  %i.j = getelementptr i8, ptr %2, i64 32
  %i.k = load i32, ptr %i.j, align 8              ; 5 uses
  %i.l = lshr i32 %i.k, 2
  %i.m = and i32 %i.l, 7                          ; 3 uses
  %i.n = and i32 %i.k, 32
  %.not.i53 = icmp eq i32 %i.n, 0                 ; 3 uses
  br i1 %.not.i53, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.o = and i32 %i.k, 64
  %.not.i.i54 = icmp eq i32 %i.o, 0
  %.0.v.i.i55 = select i1 %.not.i.i54, i64 56, i64 40
  %.0.i.i56 = getelementptr i8, ptr %2, i64 %.0.v.i.i55
  br label %_PyUnicode_DATA.exit59

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.p = getelementptr i8, ptr %2, i64 56
  %.val4.i58 = load ptr, ptr %i.p, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit59

_PyUnicode_DATA.exit59:                           ; preds = %bb.d, %bb.e
  %.0.i57 = phi ptr [ %.0.i.i56, %bb.d ], [ %.val4.i58, %bb.e ] ; 10 uses
  switch i32 %i.m, label %17 [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 4, label %bb.h
  ]

bb.f:                                             ; preds = %_PyUnicode_DATA.exit59
  %.not3243.i = icmp eq i64 %.val, 0
  br i1 %.not3243.i, label %make_bloom_mask.exit, label %.lr.ph46.i.preheader

.lr.ph46.i.preheader:                             ; preds = %bb.f
  %xtraiter.a = and i64 %.val, 3                  ; 3 uses
  %i.q = icmp ult i64 %.val, 4
  br i1 %i.q, label %.lr.ph46.i.epil.preheader, label %.lr.ph46.i.preheader.new

.lr.ph46.i.preheader.new:                         ; preds = %.lr.ph46.i.preheader
  %unroll_iter.a = and i64 %.val, -4
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i, %.lr.ph46.i.preheader.new
  %.045.i = phi i64 [ 0, %.lr.ph46.i.preheader.new ], [ %i.an, %.lr.ph46.i ]
  %.02844.i = phi ptr [ %.0.i57, %.lr.ph46.i.preheader.new ], [ %i.ao, %.lr.ph46.i ] ; 5 uses
  %niter.a = phi i64 [ 0, %.lr.ph46.i.preheader.new ], [ %niter.next.3.a, %.lr.ph46.i ]
  %i.r = load i8, ptr %.02844.i, align 1, !tbaa !205
  %i.s = and i8 %i.r, 63
  %i.t = zext nneg i8 %i.s to i64
  %i.u = shl nuw i64 1, %i.t
  %i.v = or i64 %i.u, %.045.i
  %i.w = getelementptr i8, ptr %.02844.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !205
  %i.y = and i8 %i.x, 63
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = or i64 %i.aa, %i.v
  %i.ac = getelementptr i8, ptr %.02844.i, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !205
  %i.ae = and i8 %i.ad, 63
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.ab
  %i.ai = getelementptr i8, ptr %.02844.i, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !205
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = or i64 %i.am, %i.ah                     ; 3 uses
  %i.ao = getelementptr i8, ptr %.02844.i, i64 4  ; 2 uses
  %niter.next.3.a = add i64 %niter.a, 4           ; 2 uses
  %niter.ncmp.3.a = icmp eq i64 %niter.next.3.a, %unroll_iter.a
  br i1 %niter.ncmp.3.a, label %make_bloom_mask.exit.loopexit.unr-lcssa, label %.lr.ph46.i, !llvm.loop !598

bb.g:                                             ; preds = %_PyUnicode_DATA.exit59
  %.idx48.i = shl i64 %.val, 1                    ; 3 uses
  %i.ap = getelementptr i8, ptr %.0.i57, i64 %.idx48.i
  %.not3138.i = icmp eq i64 %.idx48.i, 0
  br i1 %.not3138.i, label %make_bloom_mask.exit, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %bb.g
  %i.aq = add i64 %.idx48.i, -2                   ; 2 uses
  %i.ar = lshr exact i64 %i.aq, 1
  %i.as = add nuw i64 %i.ar, 1                    ; 2 uses
  %min.iters.check222 = icmp ult i64 %i.aq, 6
  br i1 %min.iters.check222, label %.lr.ph41.i.preheader253, label %vector.ph223

vector.ph223:                                     ; preds = %.lr.ph41.i.preheader
  %n.vec225 = and i64 %i.as, -4                   ; 3 uses
  %i.at = shl i64 %n.vec225, 1
  %i.au = getelementptr i8, ptr %.0.i57, i64 %i.at
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph223
  %index227 = phi i64 [ 0, %vector.ph223 ], [ %index.next233, %vector.body226 ] ; 2 uses
  %vec.phi228 = phi <2 x i64> [ zeroinitializer, %vector.ph223 ], [ %i.bd, %vector.body226 ]
  %vec.phi229 = phi <2 x i64> [ zeroinitializer, %vector.ph223 ], [ %i.be, %vector.body226 ]
  %i.av = shl i64 %index227, 1
  %next.gep230 = getelementptr i8, ptr %.0.i57, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep230, i64 4
  %wide.load231 = load <2 x i16>, ptr %next.gep230, align 2, !tbaa !208
  %wide.load232 = load <2 x i16>, ptr %i.aw, align 2, !tbaa !208
  %i.ax = and <2 x i16> %wide.load231, splat (i16 63)
  %i.ay = and <2 x i16> %wide.load232, splat (i16 63)
  %i.az = zext nneg <2 x i16> %i.ax to <2 x i64>
  %i.ba = zext nneg <2 x i16> %i.ay to <2 x i64>
  %i.bb = shl nuw <2 x i64> splat (i64 1), %i.az
  %i.bc = shl nuw <2 x i64> splat (i64 1), %i.ba
  %i.bd = or <2 x i64> %i.bb, %vec.phi228         ; 2 uses
  %i.be = or <2 x i64> %i.bc, %vec.phi229         ; 2 uses
  %index.next233 = add nuw i64 %index227, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next233, %n.vec225
  br i1 %i.bf, label %middle.block234, label %vector.body226, !llvm.loop !599

middle.block234:                                  ; preds = %vector.body226
  %bin.rdx235 = or <2 x i64> %i.be, %i.bd
  %i.bg = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx235) ; 2 uses
  %cmp.n236 = icmp eq i64 %i.as, %n.vec225
  br i1 %cmp.n236, label %make_bloom_mask.exit, label %.lr.ph41.i.preheader253

.lr.ph41.i.preheader253:                          ; preds = %.lr.ph41.i.preheader, %middle.block234
  %.140.i.ph = phi i64 [ 0, %.lr.ph41.i.preheader ], [ %i.bg, %middle.block234 ]
  %.03039.i.ph = phi ptr [ %.0.i57, %.lr.ph41.i.preheader ], [ %i.au, %middle.block234 ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader253, %.lr.ph41.i
  %.140.i = phi i64 [ %i.bl, %.lr.ph41.i ], [ %.140.i.ph, %.lr.ph41.i.preheader253 ]
  %.03039.i = phi ptr [ %i.bm, %.lr.ph41.i ], [ %.03039.i.ph, %.lr.ph41.i.preheader253 ] ; 2 uses
  %i.bh = load i16, ptr %.03039.i, align 2, !tbaa !208
  %i.bi = and i16 %i.bh, 63
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = or i64 %i.bk, %.140.i                   ; 2 uses
  %i.bm = getelementptr i8, ptr %.03039.i, i64 2  ; 2 uses
  %.not31.i = icmp eq ptr %i.bm, %i.ap
  br i1 %.not31.i, label %make_bloom_mask.exit, label %.lr.ph41.i, !llvm.loop !600

bb.h:                                             ; preds = %_PyUnicode_DATA.exit59
  %.idx.i = shl i64 %.val, 2                      ; 3 uses
  %3 = getelementptr i8, ptr %.0.i57, i64 %.idx.i
  %.not35.i = icmp eq i64 %.idx.i, 0
  br i1 %.not35.i, label %make_bloom_mask.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  %i.bn = add i64 %.idx.i, -4                     ; 2 uses
  %i.bo = lshr exact i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bn, 12
  br i1 %min.iters.check, label %.lr.ph.i.preheader258, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bp, 9223372036854775804     ; 3 uses
  %4 = shl i64 %n.vec, 2
  %5 = getelementptr i8, ptr %.0.i57, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %12, %vector.body ]
  %vec.phi219 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %13, %vector.body ]
  %i.bq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.i57, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load220 = load <2 x i32>, ptr %i.br, align 4, !tbaa !7
  %6 = and <2 x i32> %wide.load, splat (i32 63)
  %7 = and <2 x i32> %wide.load220, splat (i32 63)
  %8 = zext nneg <2 x i32> %6 to <2 x i64>
  %9 = zext nneg <2 x i32> %7 to <2 x i64>
  %10 = shl nuw <2 x i64> splat (i64 1), %8
  %11 = shl nuw <2 x i64> splat (i64 1), %9
  %12 = or <2 x i64> %10, %vec.phi                ; 2 uses
  %13 = or <2 x i64> %11, %vec.phi219             ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !601

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %13, %12
  %14 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %make_bloom_mask.exit, label %.lr.ph.i.preheader258

.lr.ph.i.preheader258:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.237.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %14, %middle.block ]
  %.02936.i.ph = phi ptr [ %.0.i57, %.lr.ph.i.preheader ], [ %5, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader258, %.lr.ph.i
  %.237.i.a = phi i64 [ %i.bv, %.lr.ph.i ], [ %.237.i.ph, %.lr.ph.i.preheader258 ]
  %.02936.i.a = phi ptr [ %i.bw, %.lr.ph.i ], [ %.02936.i.ph, %.lr.ph.i.preheader258 ] ; 2 uses
  %15 = load i32, ptr %.02936.i.a, align 4, !tbaa !7
  %16 = and i32 %15, 63
  %i.bt = zext nneg i32 %16 to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = or i64 %i.bu, %.237.i.a                 ; 2 uses
  %i.bw = getelementptr i8, ptr %.02936.i.a, i64 4 ; 2 uses
  %.not.i60 = icmp eq ptr %i.bw, %3
  br i1 %.not.i60, label %make_bloom_mask.exit, label %.lr.ph.i, !llvm.loop !602

17:                                               ; preds = %_PyUnicode_DATA.exit59
  unreachable

make_bloom_mask.exit.loopexit.unr-lcssa:          ; preds = %.lr.ph46.i
  %lcmp.mod.not = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not, label %make_bloom_mask.exit, label %.lr.ph46.i.epil.preheader

.lr.ph46.i.epil.preheader:                        ; preds = %make_bloom_mask.exit.loopexit.unr-lcssa, %.lr.ph46.i.preheader
  %.045.i.epil.init = phi i64 [ 0, %.lr.ph46.i.preheader ], [ %i.an, %make_bloom_mask.exit.loopexit.unr-lcssa ]
  %.02844.i.epil.init = phi ptr [ %.0.i57, %.lr.ph46.i.preheader ], [ %i.ao, %make_bloom_mask.exit.loopexit.unr-lcssa ]
  %lcmp.mod264 = icmp ne i64 %xtraiter.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod264)
  br label %.lr.ph46.i.epil

.lr.ph46.i.epil:                                  ; preds = %.lr.ph46.i.epil, %.lr.ph46.i.epil.preheader
  %.045.i.epil = phi i64 [ %i.bz, %.lr.ph46.i.epil ], [ %.045.i.epil.init, %.lr.ph46.i.epil.preheader ]
  %.02844.i.epil = phi ptr [ %i.ca, %.lr.ph46.i.epil ], [ %.02844.i.epil.init, %.lr.ph46.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph46.i.epil ], [ 0, %.lr.ph46.i.epil.preheader ]
  %18 = load i8, ptr %.02844.i.epil, align 1, !tbaa !205
  %19 = and i8 %18, 63
  %i.bx = zext nneg i8 %19 to i64
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = or i64 %i.by, %.045.i.epil              ; 2 uses
  %i.ca = getelementptr i8, ptr %.02844.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter.a
  br i1 %epil.iter.cmp.not, label %make_bloom_mask.exit, label %.lr.ph46.i.epil, !llvm.loop !603

make_bloom_mask.exit:                             ; preds = %.lr.ph.i, %.lr.ph41.i, %make_bloom_mask.exit.loopexit.unr-lcssa, %.lr.ph46.i.epil, %middle.block, %middle.block234, %bb.f, %bb.g, %bb.h
  %.3.i = phi i64 [ %i.bl, %.lr.ph41.i ], [ %i.bz, %.lr.ph46.i.epil ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %i.bg, %middle.block234 ], [ %14, %middle.block ], [ %i.an, %make_bloom_mask.exit.loopexit.unr-lcssa ], [ %i.bv, %.lr.ph.i ] ; 2 uses
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %make_bloom_mask.exit..thread99_crit_edge, label %.preheader

make_bloom_mask.exit..thread99_crit_edge:         ; preds = %make_bloom_mask.exit
  %.pre = shl i64 %.val, 1
  %.pre154 = tail call i64 @llvm.smax.i64(i64 %.pre, i64 0)
  %.pre155 = and i32 %i.k, 64
  br label %.thread99

.preheader:                                       ; preds = %make_bloom_mask.exit
  %i.cb = icmp slt i64 %.val, 0
  %i.cc = shl i64 %.val, 1
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.cc, i64 0) ; 2 uses
  %.028.i = select i1 %i.cb, i64 %spec.store.select.i, i64 %.val
  %.028.i.fr = freeze i64 %.028.i                 ; 7 uses
  %i.cd = icmp eq i64 %.028.i.fr, 0
  %i.ce = and i32 %i.k, 64                        ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ce, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %2, i64 %.0.v.i.i.i
  %i.cf = getelementptr i8, ptr %2, i64 56
  %i.cg = icmp samesign ugt i64 %.028.i.fr, 15    ; 2 uses
  br i1 %i.cd, label %.thread, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %smax = tail call i64 @llvm.smax.i64(i64 %.val51, i64 0) ; 3 uses
  %exitcond.not206 = icmp slt i64 %.val51, 1
  br i1 %exitcond.not206, label %.thread, label %.lr.ph

.preheader.split:                                 ; preds = %PyUnicode_FindChar.exit
  %i.ch = add nuw i64 %.0207, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, %smax
  br i1 %exitcond.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split.preheader, %.preheader.split
  %.0207 = phi i64 [ %i.ch, %.preheader.split ], [ 0, %.preheader.split.preheader ] ; 14 uses
  switch i32 %i.d, label %bb.k [
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph
  %i.ci = getelementptr i8, ptr %.0.i, i64 %.0207
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !205
  %i.ck = zext i8 %i.cj to i32
  br label %PyUnicode_READ.exit

bb.j:                                             ; preds = %.lr.ph
  %i.cl = getelementptr [2 x i8], ptr %.0.i, i64 %.0207
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !208
  %i.cn = zext i16 %i.cm to i32
  br label %PyUnicode_READ.exit

bb.k:                                             ; preds = %.lr.ph
  %i.co = getelementptr [4 x i8], ptr %.0.i, i64 %.0207
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.i, %bb.j, %bb.k
  %.0.i61 = phi i32 [ %i.ck, %bb.i ], [ %i.cn, %bb.j ], [ %i.cp, %bb.k ] ; 8 uses
  %i.cq = and i32 %.0.i61, 63
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = and i64 %i.cs, %.3.i
  %.not43 = icmp eq i64 %i.ct, 0
  br i1 %.not43, label %.thread, label %bb.l

bb.l:                                             ; preds = %PyUnicode_READ.exit
  br i1 %.not.i53, label %bb.m, label %_PyUnicode_DATA.exit.i

bb.m:                                             ; preds = %bb.l
  %.val4.i.i = load ptr, ptr %i.cf, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.l, %bb.m
  %.0.i.i64 = phi ptr [ %.val4.i.i, %bb.m ], [ %.0.i.i.i, %bb.l ] ; 13 uses
  switch i32 %i.m, label %bb.aa [
    i32 1, label %bb.n
    i32 2, label %bb.t
    i32 4, label %bb.v
  ]

bb.n:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.cu = trunc i32 %.0.i61 to i8
  %.not26.i = icmp ult i32 %.0.i61, 256
  br i1 %.not26.i, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr i8, ptr %.0.i.i64, i64 %.028.i.fr ; 2 uses
  br i1 %i.cg, label %bb.p, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o
  %i.cw = icmp ult ptr %.0.i.i64, %i.cv
  br i1 %i.cw, label %.lr.ph.i.i, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cx = tail call ptr @memchr(ptr noundef %.0.i.i64, i32 noundef %.0.i61, i64 noundef %.028.i.fr) #34 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i83, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %.0.i.i64 to i64
  %i.da = sub i64 %i.cy, %i.cz
  br label %PyUnicode_FindChar.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.s
  %.01721.i.i = phi ptr [ %i.dg, %bb.s ], [ %.0.i.i64, %.preheader.i.i ] ; 3 uses
  %i.db = load i8, ptr %.01721.i.i, align 1, !tbaa !205
  %i.dc = icmp eq i8 %i.db, %i.cu
  br i1 %i.dc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.dd = ptrtoint ptr %.01721.i.i to i64
  %i.de = ptrtoint ptr %.0.i.i64 to i64
  %i.df = sub i64 %i.dd, %i.de
  br label %PyUnicode_FindChar.exit

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.dg = getelementptr i8, ptr %.01721.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.dg, %i.cv
  br i1 %exitcond.not.i.i, label %.thread, label %.lr.ph.i.i, !llvm.loop !483

bb.t:                                             ; preds = %_PyUnicode_DATA.exit.i
  %.not.i82 = icmp ult i32 %.0.i61, 65536
  br i1 %.not.i82, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.dh = trunc nuw i32 %.0.i61 to i16
  %i.di = tail call fastcc i64 @ucs2lib_find_char(ptr noundef %.0.i.i64, i64 noundef %.028.i.fr, i16 noundef zeroext %i.dh)
  br label %PyUnicode_FindChar.exit

bb.v:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.dj = getelementptr [4 x i8], ptr %.0.i.i64, i64 %.028.i.fr ; 2 uses
  br i1 %i.cg, label %bb.w, label %.preheader.i31.i

.preheader.i31.i:                                 ; preds = %bb.v
  %i.dk = icmp ult ptr %.0.i.i64, %i.dj
  br i1 %i.dk, label %.lr.ph.i33.i, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.dl = tail call ptr @wmemchr(ptr noundef %.0.i.i64, i32 noundef %.0.i61, i64 noundef %.028.i.fr) #34 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.dl, null
  br i1 %.not.i35.i, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %.0.i.i64 to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 2
  br label %PyUnicode_FindChar.exit

.lr.ph.i33.i:                                     ; preds = %.preheader.i31.i, %bb.z
  %.01721.i34.i = phi ptr [ %i.dw, %bb.z ], [ %.0.i.i64, %.preheader.i31.i ] ; 3 uses
  %i.dq = load i32, ptr %.01721.i34.i, align 4, !tbaa !7
  %i.dr = icmp eq i32 %i.dq, %.0.i61
  br i1 %i.dr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i33.i
  %i.ds = ptrtoint ptr %.01721.i34.i to i64
  %i.dt = ptrtoint ptr %.0.i.i64 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  br label %PyUnicode_FindChar.exit

bb.z:                                             ; preds = %.lr.ph.i33.i
  %i.dw = getelementptr i8, ptr %.01721.i34.i, i64 4 ; 2 uses
  %i.dx = icmp ult ptr %i.dw, %i.dj
  br i1 %i.dx, label %.lr.ph.i33.i, label %.thread, !llvm.loop !485

bb.aa:                                            ; preds = %_PyUnicode_DATA.exit.i
  unreachable

PyUnicode_FindChar.exit:                          ; preds = %bb.y, %bb.x, %bb.u, %bb.r, %bb.q
  %.0.i65 = phi i64 [ %i.di, %bb.u ], [ %i.dv, %bb.y ], [ %i.df, %bb.r ], [ %i.dp, %bb.x ], [ %i.da, %bb.q ]
  %i.dy = icmp slt i64 %.0.i65, 0
  br i1 %i.dy, label %.thread, label %.preheader.split

.thread:                                          ; preds = %bb.w, %.preheader.i.i, %bb.p, %bb.n, %bb.t, %.preheader.i31.i, %PyUnicode_FindChar.exit, %PyUnicode_READ.exit, %.preheader.split, %bb.z, %bb.s, %.preheader.split.preheader, %.preheader
  %.0131 = phi i64 [ %.0207, %bb.z ], [ 0, %.preheader ], [ %.0207, %bb.s ], [ %smax, %.preheader.split.preheader ], [ %.0207, %PyUnicode_READ.exit ], [ %.0207, %PyUnicode_FindChar.exit ], [ %.0207, %.preheader.i31.i ], [ %.0207, %bb.t ], [ %.0207, %bb.n ], [ %.0207, %bb.p ], [ %.0207, %.preheader.i.i ], [ %.0207, %bb.w ], [ %smax, %.preheader.split ] ; 2 uses
  %.not44 = icmp eq i32 %1, 0
  br i1 %.not44, label %.thread106, label %.thread99

.thread99:                                        ; preds = %make_bloom_mask.exit..thread99_crit_edge, %.thread
  %.pre-phi156 = phi i32 [ %.pre155, %make_bloom_mask.exit..thread99_crit_edge ], [ %i.ce, %.thread ]
  %spec.store.select.i79.pre-phi = phi i64 [ %.pre154, %make_bloom_mask.exit..thread99_crit_edge ], [ %spec.store.select.i, %.thread ]
  %.2102 = phi i64 [ 0, %make_bloom_mask.exit..thread99_crit_edge ], [ %.0131, %.thread ] ; 13 uses
  %i.dz = icmp slt i64 %.val, 0
  %.028.i69 = select i1 %i.dz, i64 %spec.store.select.i79.pre-phi, i64 %.val
  %.028.i69.fr = freeze i64 %.028.i69             ; 7 uses
  %i.ea = icmp eq i64 %.028.i69.fr, 0
  %.not.i.i.i72 = icmp eq i32 %.pre-phi156, 0
  %.0.v.i.i.i73 = select i1 %.not.i.i.i72, i64 56, i64 40
  %.0.i.i.i74 = getelementptr i8, ptr %2, i64 %.0.v.i.i.i73
  %i.eb = getelementptr i8, ptr %2, i64 56
  %i.ec = icmp samesign ugt i64 %.028.i69.fr, 15  ; 2 uses
  br i1 %i.ea, label %.thread106, label %.thread99.split

.thread99.split:                                  ; preds = %.thread99, %PyUnicode_FindChar.exit80
  %.040.in = phi i64 [ %.040, %PyUnicode_FindChar.exit80 ], [ %.val51, %.thread99 ] ; 12 uses
end_hunk_0
begin_hunk_1_@ucs4lib_fastsearch:bb.a
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert165 = insertelement <2 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat166 = shufflevector <2 x i32> %broadcast.splatinsert165, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.co, %vector.body ]
  %vec.phi167 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.cv, %vector.body ]
  %i.cj = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.cu, %vector.body ]
  %i.ck = getelementptr [4 x i8], ptr %2, i64 %index
  %wide.load = load <2 x i32>, ptr %i.ck, align 4, !tbaa !7 ; 2 uses
  %i.cl = and <2 x i32> %wide.load, splat (i32 63)
  %i.cm = zext nneg <2 x i32> %i.cl to <2 x i64>
  %i.cn = shl nuw <2 x i64> splat (i64 1), %i.cm
  %i.co = or <2 x i64> %i.cn, %vec.phi            ; 2 uses
  %i.cp = icmp eq <2 x i32> %wide.load, %broadcast.splat166
  %i.cq = freeze <2 x i1> %i.cp                   ; 2 uses
  %i.cr = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.cs = add nsw <2 x i64> %broadcast.splat, %i.cr
  %i.ct = bitcast <2 x i1> %i.cq to i2
  %.not216 = icmp eq i2 %i.ct, 0                  ; 2 uses
  %i.cu = select i1 %.not216, <2 x i1> %i.cj, <2 x i1> %i.cq ; 2 uses
  %i.cv = select i1 %.not216, <2 x i64> %vec.phi167, <2 x i64> %i.cs ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !856

middle.block:                                     ; preds = %vector.body
  %i.cx = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.co) ; 2 uses
  %i.cy = tail call i64 @llvm.experimental.vector.extract.last.active.v2i64(<2 x i64> %i.cv, <2 x i1> %i.cu, i64 %i.cg) ; 2 uses
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %bb.ae, %middle.block
  %.068100.i.ph = phi i64 [ 0, %bb.ae ], [ %n.vec, %middle.block ]
  %.06999.i.ph = phi i64 [ 0, %bb.ae ], [ %i.cx, %middle.block ]
  %.07898.i.ph = phi i64 [ %i.cg, %bb.ae ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i72

._crit_edge.i:                                    ; preds = %.lr.ph.i72, %middle.block
  %.lcssa164 = phi i64 [ %i.cx, %middle.block ], [ %i.en, %.lr.ph.i72 ]
  %.179.i.lcssa = phi i64 [ %i.cy, %middle.block ], [ %.179.i, %.lr.ph.i72 ]
  %i.cz = sub i64 %1, %3                          ; 4 uses
  %i.da = getelementptr [4 x i8], ptr %0, i64 %i.cg ; 3 uses
  %i.db = and i32 %i.ci, 63
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = or i64 %.lcssa164, %i.dd                ; 2 uses
  %.not108.i = icmp slt i64 %i.cz, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.preheader.i

.lr.ph113.split.us.preheader.i:                   ; preds = %._crit_edge.i
  %.not93.i = icmp eq i32 %5, 0
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %bb.ao, %.lr.ph113.split.us.preheader.i
  %.066110.us.i = phi i64 [ %i.ef, %bb.ao ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.ao ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 4 uses
  %i.df = getelementptr [4 x i8], ptr %i.da, i64 %.066110.us.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dh = icmp eq i32 %i.dg, %i.ci
  br i1 %i.dh, label %.preheader.us.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph113.split.us.i
  %i.di = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.di, %i.cz
  br i1 %.not88.us.i, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = getelementptr [4 x i8], ptr %i.da, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !7
  %i.dl = and i32 %i.dk, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.de
  %.not89.us.i = icmp eq i64 %i.do, 0
  %i.dp = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.dp, %.066110.us.i
  br label %bb.ao

bb.ah:                                            ; preds = %.preheader.us.i, %bb.ap
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.eg, %bb.ap ] ; 4 uses
  %i.dq = getelementptr [4 x i8], ptr %i.eh, i64 %.0102.us.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.ds = getelementptr [4 x i8], ptr %2, i64 %.0102.us.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7
  %.not90.us.i = icmp eq i32 %i.dr, %i.dt
  br i1 %.not90.us.i, label %bb.ap, label %._crit_edge104.us.i

._crit_edge104.us.i:                              ; preds = %bb.ah
  %i.du = icmp eq i64 %.0102.us.i, %i.cg
  br i1 %i.du, label %._crit_edge104.us.thread.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge104.us.i
  %i.dv = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.dv, %i.cz
  br i1 %.not91.us.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr [4 x i8], ptr %i.da, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !7
  %i.dy = and i32 %i.dx, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %i.de
  %.not92.us.i = icmp eq i64 %i.eb, 0
  br i1 %.not92.us.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.ak ], [ %3, %bb.aj ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.ao

._crit_edge104.us.thread.i:                       ; preds = %bb.ap, %._crit_edge104.us.i
  br i1 %.not93.i, label %bb.am, label %ucs4lib_find_char.exit

bb.am:                                            ; preds = %._crit_edge104.us.thread.i
  %i.ec = add i64 %.074109.us.i, 1                ; 2 uses
  %i.ed = icmp eq i64 %i.ec, %4
  br i1 %i.ed, label %ucs4lib_find_char.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ee = add i64 %.066110.us.i, %i.cg
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al, %bb.ag, %bb.af
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.af ], [ %.074109.us.i, %bb.ag ], [ %.074109.us.i, %bb.al ], [ %i.ec, %bb.an ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.af ], [ %spec.select.us.i, %bb.ag ], [ %.167.us.i, %bb.al ], [ %i.ee, %bb.an ]
  %i.ef = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.ef, %i.cz
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !857

bb.ap:                                            ; preds = %bb.ah
  %i.eg = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.eg, %i.cg
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i, label %bb.ah, !llvm.loop !858

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.eh = getelementptr [4 x i8], ptr %0, i64 %.066110.us.i
  br label %bb.ah

.lr.ph.i72:                                       ; preds = %.lr.ph.i72.preheader, %.lr.ph.i72
  %.068100.i = phi i64 [ %i.er, %.lr.ph.i72 ], [ %.068100.i.ph, %.lr.ph.i72.preheader ] ; 3 uses
  %.06999.i = phi i64 [ %i.en, %.lr.ph.i72 ], [ %.06999.i.ph, %.lr.ph.i72.preheader ]
  %.07898.i = phi i64 [ %.179.i, %.lr.ph.i72 ], [ %.07898.i.ph, %.lr.ph.i72.preheader ]
  %i.ei = getelementptr [4 x i8], ptr %2, i64 %.068100.i
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !7  ; 2 uses
  %i.ek = and i32 %i.ej, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el
  %i.en = or i64 %i.em, %.06999.i                 ; 2 uses
  %i.eo = icmp eq i32 %i.ej, %i.ci
  %i.ep = xor i64 %.068100.i, -1
  %i.eq = add nsw i64 %i.cg, %i.ep
  %.179.i = select i1 %i.eo, i64 %i.eq, i64 %.07898.i ; 2 uses
  %i.er = add nuw nsw i64 %.068100.i, 1           ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.er, %i.cg
  br i1 %exitcond.not.i73, label %._crit_edge.i, label %.lr.ph.i72, !llvm.loop !859

.loopexit.i:                                      ; preds = %bb.ao, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.ao ]
  %i.es = icmp eq i32 %5, 0
  %i.et = select i1 %i.es, i64 %.377.ph.i, i64 -1
  br label %ucs4lib_find_char.exit

bb.aq:                                            ; preds = %bb.ad
  %i.eu = lshr i64 %3, 2
  %i.ev = mul nuw nsw i64 %i.eu, 3
  %i.ew = lshr i64 %1, 2
  %i.ex = icmp samesign ult i64 %i.ev, %i.ew
  br i1 %i.ex, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ey = icmp eq i32 %5, 1
  br i1 %i.ey, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ez = tail call fastcc i64 @ucs4lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs4lib_find_char.exit

bb.at:                                            ; preds = %bb.ar
  %i.fa = tail call fastcc i64 @ucs4lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs4lib_find_char.exit

bb.au:                                            ; preds = %bb.aq
  %i.fb = tail call fastcc i64 @ucs4lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs4lib_find_char.exit

bb.av:                                            ; preds = %bb.ab
  %i.fc = add nsw i64 %3, -1                      ; 9 uses
  %i.fd = load i32, ptr %2, align 4, !tbaa !7     ; 4 uses
  %i.fe = and i32 %i.fd, 63
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = shl nuw i64 1, %i.ff                    ; 2 uses
  %min.iters.check170 = icmp ult i64 %3, 5
  br i1 %min.iters.check170, label %.lr.ph.i74.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %bb.av
  %n.vec173 = and i64 %i.fc, -4                   ; 2 uses
  %i.fh = and i64 %i.fc, 3
  %i.fi = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.fg, i64 0
  %broadcast.splatinsert174 = insertelement <2 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat175 = shufflevector <2 x i32> %broadcast.splatinsert174, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert176 = insertelement <2 x i64> poison, i64 %i.fc, i64 0
  %broadcast.splat177 = shufflevector <2 x i64> %broadcast.splatinsert176, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fj = add nsw <2 x i64> %broadcast.splat177, <i64 0, i64 -1>
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph171
  %index179 = phi i64 [ 0, %vector.ph171 ], [ %index.next190, %vector.body178 ] ; 2 uses
  %vec.phi180 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph171 ], [ %i.fz, %vector.body178 ]
  %vec.phi181 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph171 ], [ %i.ga, %vector.body178 ]
  %vec.phi182 = phi <2 x i1> [ zeroinitializer, %vector.ph171 ], [ %i.gb, %vector.body178 ]
  %vec.phi183 = phi <2 x i1> [ zeroinitializer, %vector.ph171 ], [ %i.gc, %vector.body178 ]
  %vec.phi184 = phi <2 x i64> [ %i.fi, %vector.ph171 ], [ %i.fv, %vector.body178 ]
  %vec.phi185 = phi <2 x i64> [ zeroinitializer, %vector.ph171 ], [ %i.fw, %vector.body178 ]
  %vec.ind186 = phi <2 x i64> [ %i.fj, %vector.ph171 ], [ %i.gd, %vector.body178 ] ; 3 uses
  %i.fk = add <2 x i64> %vec.ind186, splat (i64 -2)
  %i.fl = sub i64 %i.fc, %index179
  %i.fm = getelementptr [4 x i8], ptr %2, i64 %i.fl ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 -4
  %i.fo = getelementptr i8, ptr %i.fm, i64 -12
  %wide.load187 = load <2 x i32>, ptr %i.fn, align 4, !tbaa !7
  %wide.load188 = load <2 x i32>, ptr %i.fo, align 4, !tbaa !7
  %reverse = shufflevector <2 x i32> %wide.load187, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %reverse189 = shufflevector <2 x i32> %wide.load188, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fp = and <2 x i32> %reverse, splat (i32 63)
  %i.fq = and <2 x i32> %reverse189, splat (i32 63)
  %i.fr = zext nneg <2 x i32> %i.fp to <2 x i64>
  %i.fs = zext nneg <2 x i32> %i.fq to <2 x i64>
  %i.ft = shl nuw <2 x i64> splat (i64 1), %i.fr
  %i.fu = shl nuw <2 x i64> splat (i64 1), %i.fs
  %i.fv = or <2 x i64> %i.ft, %vec.phi184         ; 2 uses
  %i.fw = or <2 x i64> %i.fu, %vec.phi185         ; 2 uses
  %i.fx = icmp eq <2 x i32> %reverse, %broadcast.splat175 ; 2 uses
  %i.fy = icmp eq <2 x i32> %reverse189, %broadcast.splat175 ; 2 uses
  %i.fz = select <2 x i1> %i.fx, <2 x i64> %vec.ind186, <2 x i64> %vec.phi180 ; 2 uses
  %i.ga = select <2 x i1> %i.fy, <2 x i64> %i.fk, <2 x i64> %vec.phi181 ; 2 uses
  %i.gb = or <2 x i1> %vec.phi182, %i.fx          ; 2 uses
  %i.gc = or <2 x i1> %vec.phi183, %i.fy          ; 2 uses
  %index.next190 = add nuw i64 %index179, 4       ; 2 uses
  %i.gd = add <2 x i64> %vec.ind186, splat (i64 -4)
  %i.ge = icmp eq i64 %index.next190, %n.vec173
  br i1 %i.ge, label %middle.block191, label %vector.body178, !llvm.loop !860

middle.block191:                                  ; preds = %vector.body178
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.fz, <2 x i64> %i.ga)
  %i.gf = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.gg = add nsw i64 %i.gf, -1
  %bin.rdx = or <2 x i1> %i.gc, %i.gb
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.gh = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not217 = icmp eq i2 %i.gh, 0
  %rdx.select = select i1 %.not217, i64 %i.fc, i64 %i.gg ; 2 uses
  %bin.rdx192 = or <2 x i64> %i.fw, %i.fv
  %i.gi = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx192) ; 2 uses
  %cmp.n193 = icmp eq i64 %i.fc, %n.vec173
  br i1 %cmp.n193, label %.preheader56.i, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %bb.av, %middle.block191
  %.04660.i.ph = phi i64 [ %i.fc, %bb.av ], [ %rdx.select, %middle.block191 ]
  %.04759.i.ph = phi i64 [ %i.fg, %bb.av ], [ %i.gi, %middle.block191 ]
  %.04958.i.ph = phi i64 [ %i.fc, %bb.av ], [ %i.fh, %middle.block191 ]
  br label %.lr.ph.i74

.preheader56.i:                                   ; preds = %.lr.ph.i74, %middle.block191
  %.lcssa162 = phi i64 [ %i.gi, %middle.block191 ], [ %i.hp, %.lr.ph.i74 ] ; 2 uses
  %spec.select.i75.lcssa = phi i64 [ %rdx.select, %middle.block191 ], [ %spec.select.i75, %.lr.ph.i74 ]
  %i.gj = sub i64 %1, %3                          ; 2 uses
  %i.gk = icmp sgt i64 %i.gj, -1
  br i1 %i.gk, label %.lr.ph66.split.us.i, label %ucs4lib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ba
  %.15065.us.i = phi i64 [ %i.hg, %bb.ba ], [ %i.gj, %.preheader56.i ] ; 5 uses
  %i.gl = getelementptr [4 x i8], ptr %0, i64 %.15065.us.i ; 4 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !7
  %i.gn = icmp eq i32 %i.gm, %i.fd
  br i1 %i.gn, label %.preheader.us.i78, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i77 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i77, label %ucs4lib_find_char.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = getelementptr i8, ptr %i.gl, i64 -4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !7
  %i.gq = and i32 %i.gp, 63
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = shl nuw i64 1, %i.gr
  %i.gt = and i64 %i.gs, %.lcssa162
  %.not51.us.i = icmp eq i64 %i.gt, 0
  %i.gu = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ba

.preheader.us.i78:                                ; preds = %.lr.ph66.split.us.i, %bb.bb
  %.04862.us.i = phi i64 [ %i.hi, %bb.bb ], [ %i.fc, %.lr.ph66.split.us.i ] ; 4 uses
  %i.gv = getelementptr [4 x i8], ptr %i.gl, i64 %.04862.us.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !7
  %i.gx = getelementptr [4 x i8], ptr %2, i64 %.04862.us.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !7
  %.not52.us.i = icmp eq i32 %i.gw, %i.gy
  br i1 %.not52.us.i, label %bb.bb, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i78
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.thread.us.i
  %i.gz = getelementptr i8, ptr %i.gl, i64 -4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !7
  %i.hb = and i32 %i.ha, 63
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = shl nuw i64 1, %i.hc
  %i.he = and i64 %i.hd, %.lcssa162
  %.not54.us.i = icmp eq i64 %i.he, 0
  br i1 %.not54.us.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread.us.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i75.lcssa, %bb.az ], [ %i.gu, %bb.ax ], [ %3, %bb.ay ]
  %i.hf = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.hg = add nsw i64 %i.hf, -1
  %i.hh = icmp sgt i64 %i.hf, 0
  br i1 %i.hh, label %.lr.ph66.split.us.i, label %ucs4lib_find_char.exit, !llvm.loop !861

bb.bb:                                            ; preds = %.preheader.us.i78
  %i.hi = add nsw i64 %.04862.us.i, -1
  %i.hj = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.hj, label %.preheader.us.i78, label %ucs4lib_find_char.exit, !llvm.loop !862

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %.lr.ph.i74
  %.04660.i = phi i64 [ %spec.select.i75, %.lr.ph.i74 ], [ %.04660.i.ph, %.lr.ph.i74.preheader ]
  %.04759.i = phi i64 [ %i.hp, %.lr.ph.i74 ], [ %.04759.i.ph, %.lr.ph.i74.preheader ]
  %.04958.i = phi i64 [ %i.hr, %.lr.ph.i74 ], [ %.04958.i.ph, %.lr.ph.i74.preheader ] ; 3 uses
  %i.hk = getelementptr [4 x i8], ptr %2, i64 %.04958.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !7  ; 2 uses
  %i.hm = and i32 %i.hl, 63
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = shl nuw i64 1, %i.hn
  %i.hp = or i64 %i.ho, %.04759.i                 ; 2 uses
  %i.hq = icmp eq i32 %i.hl, %i.fd
  %i.hr = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i75 = select i1 %i.hq, i64 %i.hr, i64 %.04660.i ; 2 uses
  %i.hs = icmp samesign ugt i64 %.04958.i, 1
  br i1 %i.hs, label %.lr.ph.i74, label %.preheader56.i, !llvm.loop !863

ucs4lib_find_char.exit:                           ; preds = %bb.am, %._crit_edge104.us.thread.i, %bb.ba, %bb.aw, %bb.bb, %bb.m, %bb.l, %bb.v, %bb.i, %bb.aa, %bb.z, %.lr.ph.i69, %middle.block211, %.preheader56.i, %.loopexit.i, %bb.x, %bb.s, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.au, %bb.at, %bb.as
  %.0 = phi i64 [ -1, %bb.i ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.ba ], [ %spec.select.i, %.lr.ph.i69 ], [ -1, %.preheader56.i ], [ -1, %bb.v ], [ %i.ez, %bb.as ], [ %i.fa, %bb.at ], [ %i.fb, %bb.au ], [ %i.k, %bb.g ], [ -1, %bb.f ], [ %i.q, %bb.h ], [ -1, %.preheader.i ], [ %i.be, %bb.x ], [ %.15065.us.i, %bb.bb ], [ %i.ar, %bb.s ], [ %4, %bb.z ], [ %i.et, %.loopexit.i ], [ -1, %bb.l ], [ %i.bq, %middle.block211 ], [ %.1.i, %bb.aa ], [ %i.ae, %bb.m ], [ -1, %bb.aw ], [ %.066110.us.i, %._crit_edge104.us.thread.i ], [ %4, %bb.am ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -2305843009213693952, 2305843009213693952) i64 @ucs4lib__two_way_find(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.ucs4lib__pre, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @ucs4lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs4lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #25 {
bb.a:
  %5 = alloca %struct.ucs4lib__pre, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @ucs4lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0193037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0193037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr [4 x i8], ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @ucs4lib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

end_hunk_1
begin_hunk_2_@llvm.experimental.vector.extract.last.active.v2i64
!401 = !{!402}
!402 = distinct !{!402, !403}
!403 = distinct !{!403, !"LVerDomain"}
!404 = !{!405}
!405 = distinct !{!405, !403}
!406 = distinct !{!406, !196, !210, !211}
!407 = distinct !{!407, !196, !210, !211}
!408 = distinct !{!408, !196}
!409 = distinct !{!409, !196, !210}
!410 = !{!411}
!411 = distinct !{!411, !412}
!412 = distinct !{!412, !"LVerDomain"}
!413 = !{!414}
!414 = distinct !{!414, !412}
!415 = distinct !{!415, !196, !210, !211}
!416 = distinct !{!416, !196, !210, !211}
!417 = distinct !{!417, !196}
!418 = distinct !{!418, !196, !210}
!419 = distinct !{!419, !196}
!420 = distinct !{!420, !196}
!421 = distinct !{!421, !196}
!422 = distinct !{!422, !196}
!423 = !{!424}
!424 = distinct !{!424, !425}
!425 = distinct !{!425, !"LVerDomain"}
!426 = !{!427}
!427 = distinct !{!427, !425}
!428 = distinct !{!428, !196, !210, !211}
!429 = distinct !{!429, !196, !210, !211}
!430 = distinct !{!430, !196, !210}
!431 = !{!432}
!432 = distinct !{!432, !433}
!433 = distinct !{!433, !"LVerDomain"}
!434 = !{!435}
!435 = distinct !{!435, !433}
!436 = distinct !{!436, !196, !210, !211}
!437 = distinct !{!437, !196, !210, !211}
!438 = distinct !{!438, !196, !210}
!439 = distinct !{!439, !196}
!440 = !{!441}
!441 = distinct !{!441, !442}
!442 = distinct !{!442, !"LVerDomain"}
!443 = !{!444}
!444 = distinct !{!444, !442}
!445 = distinct !{!445, !196, !210, !211}
!446 = distinct !{!446, !196}
!447 = distinct !{!447, !196, !210}
!448 = !{!449}
!449 = distinct !{!449, !450}
!450 = distinct !{!450, !"LVerDomain"}
!451 = !{!452}
!452 = distinct !{!452, !450}
!453 = distinct !{!453, !196, !210, !211}
!454 = distinct !{!454, !196}
!455 = distinct !{!455, !196, !210}
!456 = distinct !{!456, !196}
!457 = distinct !{!457, !196}
!458 = distinct !{!458, !196}
!459 = distinct !{!459, !196}
!460 = distinct !{!460, !196}
!461 = distinct !{!461, !196}
!462 = distinct !{!462, !196}
!463 = distinct !{!463, !196}
!464 = !{!465}
!465 = distinct !{!465, !466}
!466 = distinct !{!466, !"LVerDomain"}
!467 = !{!468}
!468 = distinct !{!468, !466}
!469 = distinct !{!469, !196, !210, !211}
!470 = distinct !{!470, !196, !210}
!471 = !{!472}
!472 = distinct !{!472, !473}
!473 = distinct !{!473, !"LVerDomain"}
!474 = !{!475}
!475 = distinct !{!475, !473}
!476 = distinct !{!476, !196, !210, !211}
!477 = distinct !{!477, !196, !210}
!478 = distinct !{!478, !196}
!479 = distinct !{!479, !196}
!480 = distinct !{!480, !196}
!481 = distinct !{!481, !196, !210, !211}
!482 = distinct !{!482, !196, !211, !210}
!483 = distinct !{!483, !196}
!484 = distinct !{!484, !196}
!485 = distinct !{!485, !196}
!486 = distinct !{!486, !196}
!487 = distinct !{!487, !196}
!488 = distinct !{!488, !196}
!489 = distinct !{!489, !196}
!490 = distinct !{!490, !196}
!491 = distinct !{!491, !196}
!492 = distinct !{!492, !196}
!493 = distinct !{!493, !196}
!494 = distinct !{!494, !196}
!495 = distinct !{!495, !196}
!496 = distinct !{!496, !196}
!497 = distinct !{!497, !196}
!498 = distinct !{!498, !196}
!499 = distinct !{!499, !196}
!500 = distinct !{!500, !196}
!501 = distinct !{!501, !196}
!502 = distinct !{!502, !196}
!503 = distinct !{!503, !196}
!504 = distinct !{!504, !196}
!505 = distinct !{!505, !196}
!506 = distinct !{!506, !196}
!507 = distinct !{!507, !196}
!508 = !{!509, !13, i64 8}
!509 = !{!"", !13, i64 0, !13, i64 8}
!510 = distinct !{!510, !196}
!511 = distinct !{!511, !196}
!512 = distinct !{!512, !196}
!513 = distinct !{!513, !196}
!514 = !{!515, !8, i64 276}
!515 = !{!"PyBytesWriter", !9, i64 0, !29, i64 256, !17, i64 264, !8, i64 272, !8, i64 276}
!516 = !{!515, !17, i64 264}
!517 = distinct !{!517, !196}
!518 = distinct !{!518, !196}
!519 = distinct !{!519, !196}
!520 = distinct !{!520, !196}
!521 = distinct !{!521, !196}
!522 = distinct !{!522, !196}
!523 = distinct !{!523, !196}
!524 = distinct !{!524, !196}
!525 = !{!526, !8, i64 48}
!526 = !{!"encoding_map", !91, i64 0, !9, i64 16, !8, i64 48, !8, i64 52, !9, i64 56}
!527 = !{!526, !8, i64 52}
!528 = distinct !{!528, !196}
!529 = !{!515, !29, i64 256}
!530 = !{!515, !8, i64 272}
!531 = distinct !{!531, !196}
!532 = distinct !{!532, !196}
!533 = distinct !{!533, !196}
!534 = distinct !{!534, !196}
!535 = distinct !{!535, !196}
!536 = distinct !{!536, !196}
!537 = distinct !{!537, !196}
!538 = distinct !{!538, !196}
!539 = distinct !{!539, !196}
!540 = !{!541, !65, i64 24}
!541 = !{!"", !180, i64 0, !65, i64 24, !17, i64 32}
!542 = distinct !{!542, !196, !543}
!543 = !{!"llvm.loop.peeled.count", i32 1}
!544 = distinct !{!544, !196}
!545 = distinct !{!545, !196}
!546 = distinct !{!546, !196, !543}
!547 = distinct !{!547, !196, !543}
!548 = distinct !{!548, !196, !210, !211}
!549 = distinct !{!549, !196, !210, !211}
!550 = distinct !{!550, !196, !211, !210}
!551 = distinct !{!551, !196, !210, !211}
!552 = distinct !{!552, !196, !211, !210}
!553 = distinct !{!553, !196, !210, !211}
!554 = distinct !{!554, !196, !210, !211}
!555 = distinct !{!555, !196, !211, !210}
!556 = distinct !{!556, !196, !210, !211}
!557 = distinct !{!557, !196, !211, !210}
!558 = distinct !{null}
!559 = distinct !{!559, !196}
!560 = distinct !{null, ptr @_PyUnicode_FromASCII}
!561 = distinct !{null}
!562 = distinct !{!562, !196}
!563 = distinct !{null, null}
!564 = distinct !{null}
!565 = distinct !{!565, !196}
!566 = distinct !{null}
!567 = distinct !{!567, !196}
!568 = distinct !{!568, !196}
!569 = distinct !{!569, !196}
!570 = distinct !{!570, !196}
!571 = distinct !{!571, !196}
!572 = distinct !{!572, !196}
!573 = distinct !{!573, !196}
!574 = distinct !{!574, !196}
!575 = distinct !{!575, !196}
!576 = distinct !{!576, !196}
!577 = !{!578}
!578 = distinct !{!578, !579}
!579 = distinct !{!579, !"LVerDomain"}
!580 = !{!581}
!581 = distinct !{!581, !579}
!582 = distinct !{!582, !196, !210, !211}
!583 = distinct !{!583, !196, !210, !211}
!584 = distinct !{!584, !196}
!585 = distinct !{!585, !196, !210}
!586 = distinct !{!586, !196, !210, !211}
!587 = distinct !{!587, !196}
!588 = distinct !{!588, !196, !211, !210}
!589 = !{!590}
!590 = distinct !{!590, !591}
!591 = distinct !{!591, !"LVerDomain"}
!592 = !{!593}
!593 = distinct !{!593, !591}
!594 = distinct !{!594, !196, !210, !211}
!595 = distinct !{!595, !196}
!596 = distinct !{!596, !196, !210}
!597 = distinct !{!597, !196}
!598 = distinct !{!598, !196}
!599 = distinct !{!599, !196, !210, !211}
!600 = distinct !{!600, !196, !211, !210}
!601 = distinct !{!601, !196, !210, !211}
!602 = distinct !{!602, !196, !211, !210}
!603 = distinct !{!603, !364}
!604 = !{ptr @_PyUnicode_FromASCII}
!605 = distinct !{!605, !196}
!606 = distinct !{!606, !196}
!607 = distinct !{null}
!608 = distinct !{!608, !196}
!609 = distinct !{!609, !196}
!610 = distinct !{null, ptr @_PyUnicode_FromASCII}
!611 = distinct !{!611, !196}
!612 = distinct !{!612, !196}
!613 = distinct !{null}
!614 = distinct !{!614, !196}
!615 = distinct !{!615, !196}
!616 = distinct !{null, null}
!617 = distinct !{!617, !196}
!618 = distinct !{!618, !196}
!619 = distinct !{null}
!620 = distinct !{!620, !196}
!621 = distinct !{!621, !196}
!622 = distinct !{!622, !196}
!623 = distinct !{!623, !196}
!624 = distinct !{null}
!625 = distinct !{!625, !196}
!626 = distinct !{!626, !196}
!627 = distinct !{!627, !196}
!628 = distinct !{!628, !196}
!629 = distinct !{null}
!630 = distinct !{null, null}
!631 = distinct !{!631, !196}
!632 = distinct !{null, null, ptr @_PyUnicode_FromASCII}
!633 = distinct !{!633, !196}
!634 = distinct !{null, ptr @_PyUnicode_FromASCII}
!635 = distinct !{!635, !196}
!636 = distinct !{null}
!637 = distinct !{null, null}
!638 = distinct !{!638, !196}
!639 = distinct !{null, null, null}
!640 = distinct !{!640, !196}
!641 = distinct !{null, null}
!642 = distinct !{!642, !196}
!643 = distinct !{null}
!644 = distinct !{null, null}
!645 = distinct !{!645, !196}
!646 = distinct !{!646, !196}
!647 = distinct !{!647, !196}
!648 = distinct !{null}
!649 = distinct !{null, null}
!650 = distinct !{!650, !196}
!651 = distinct !{!651, !196}
!652 = distinct !{!652, !196}
!653 = distinct !{null}
!654 = distinct !{null, ptr @_PyUnicode_FromASCII}
!655 = distinct !{null}
!656 = distinct !{null, null}
!657 = distinct !{null}
!658 = distinct !{null}
!659 = distinct !{null}
!660 = distinct !{!660, !196}
!661 = distinct !{!661, !196}
!662 = distinct !{!662, !196}
!663 = distinct !{!663, !196}
!664 = distinct !{null, ptr @_PyUnicode_FromASCII}
!665 = distinct !{null}
!666 = distinct !{!666, !196}
!667 = distinct !{!667, !196}
!668 = distinct !{!668, !196}
!669 = distinct !{null, null}
!670 = distinct !{null}
!671 = distinct !{null}
!672 = distinct !{null}
!673 = distinct !{!673, !196}
!674 = distinct !{!674, !196}
!675 = distinct !{null, ptr @_PyUnicode_FromASCII}
!676 = distinct !{!676, !196}
!677 = distinct !{!677, !196}
!678 = distinct !{null}
!679 = distinct !{!679, !196}
!680 = distinct !{!680, !196}
!681 = distinct !{null, null}
!682 = distinct !{!682, !196}
!683 = distinct !{!683, !196}
!684 = distinct !{null}
!685 = distinct !{!685, !196}
!686 = distinct !{!686, !196}
!687 = distinct !{!687, !196}
!688 = distinct !{!688, !196}
!689 = distinct !{null}
!690 = distinct !{!690, !196}
!691 = distinct !{!691, !196}
!692 = distinct !{!692, !196}
!693 = distinct !{!693, !196}
!694 = distinct !{null}
!695 = distinct !{null, null}
!696 = distinct !{!696, !196}
!697 = distinct !{null, null, ptr @_PyUnicode_FromASCII}
!698 = distinct !{!698, !196}
!699 = distinct !{null, ptr @_PyUnicode_FromASCII}
!700 = distinct !{!700, !196}
!701 = distinct !{null}
!702 = distinct !{null, null}
!703 = distinct !{!703, !196}
!704 = distinct !{null, null, null}
!705 = distinct !{!705, !196}
!706 = distinct !{null, null}
!707 = distinct !{!707, !196}
!708 = distinct !{null}
!709 = distinct !{null, null}
!710 = distinct !{!710, !196}
!711 = distinct !{!711, !196}
!712 = distinct !{!712, !196}
!713 = distinct !{null}
!714 = distinct !{null, null}
!715 = distinct !{!715, !196}
!716 = distinct !{!716, !196}
!717 = distinct !{!717, !196}
!718 = distinct !{!718, !196}
!719 = distinct !{!719, !196}
!720 = distinct !{!720, !196}
!721 = distinct !{!721, !196}
!722 = distinct !{!722, !196}
!723 = !{!199, !13, i64 320}
!724 = distinct !{!724, !196}
!725 = distinct !{!725, !196}
!726 = distinct !{!726, !196}
!727 = distinct !{!727, !196}
!728 = !{!729, !17, i64 16}
!729 = !{!"", !91, i64 0, !17, i64 16, !29, i64 24}
!730 = !{!729, !29, i64 24}
!731 = !{!27, !17, i64 8}
!732 = !{!27, !17, i64 0}
!733 = !{!25, !8, i64 272}
!734 = !{!25, !8, i64 28}
!735 = !{!25, !17, i64 256}
!736 = !{!25, !8, i64 24}
!737 = distinct !{null}
!738 = !{!199, !13, i64 304}
!739 = distinct !{null, null}
!740 = !{!741}
!741 = distinct !{!741, !742, !"init_global_interned_strings: argument 0"}
!742 = distinct !{!742, !"init_global_interned_strings"}
!743 = distinct !{!743, !196}
!744 = !{!745, !8, i64 0}
!745 = !{!"", !8, i64 0, !63, i64 8, !63, i64 16, !8, i64 24}
!746 = !{!745, !63, i64 8}
!747 = !{!745, !63, i64 16}
!748 = !{!745, !8, i64 24}
!749 = !{!15, !17, i64 8536}
!750 = distinct !{!750, !196}
!751 = distinct !{!751, !196}
!752 = !{!94, !12, i64 16}
!753 = !{i64 0, i64 4, !7, i64 8, i64 8, !355, i64 16, i64 8, !355, i64 24, i64 4, !7}
!754 = !{!755}
!755 = distinct !{!755, !756, !"init_fs_encoding: argument 0"}
!756 = distinct !{!756, !"init_fs_encoding"}
!757 = !{!36, !37, i64 80}
!758 = !{!759}
!759 = distinct !{!759, !760, !"init_stdio_encoding: argument 0"}
!760 = distinct !{!760, !"init_stdio_encoding"}
!761 = !{!15, !13, i64 11864}
!762 = distinct !{!762, !196}
!763 = distinct !{!763, !196}
!764 = distinct !{!764, !196}
!765 = distinct !{!765, !196}
!766 = distinct !{!766, !196}
!767 = distinct !{!767, !196}
!768 = distinct !{!768, !196}
!769 = distinct !{!769, !196}
!770 = distinct !{!770, !196}
!771 = distinct !{!771, !196}
!772 = distinct !{!772, !196}
!773 = distinct !{!773, !196}
!774 = distinct !{!774, !196}
!775 = distinct !{!775, !196}
!776 = distinct !{!776, !196}
!777 = distinct !{!777, !196}
!778 = distinct !{!778, !196}
!779 = distinct !{!779, !196}
!780 = distinct !{!780, !196}
!781 = !{!782, !63, i64 0}
!782 = !{!"asciilib__pre", !63, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !8, i64 40, !9, i64 44}
!783 = !{!782, !17, i64 8}
!784 = distinct !{!784, !196}
!785 = !{!782, !17, i64 16}
!786 = !{!782, !8, i64 40}
!787 = !{!782, !17, i64 24}
!788 = !{!782, !17, i64 32}
!789 = distinct !{!789, !196}
!790 = distinct !{!790, !196}
!791 = distinct !{!791, !196}
!792 = distinct !{!792, !196}
!793 = distinct !{!793, !196}
!794 = distinct !{!794, !196}
!795 = distinct !{!795, !196, !210, !211}
!796 = distinct !{!796, !196}
!797 = distinct !{!797, !196}
!798 = distinct !{!798, !196, !211, !210}
!799 = distinct !{!799, !196, !210, !211}
!800 = distinct !{!800, !196, !211, !210}
!801 = distinct !{!801, !196}
!802 = distinct !{!802, !196}
end_hunk_2
