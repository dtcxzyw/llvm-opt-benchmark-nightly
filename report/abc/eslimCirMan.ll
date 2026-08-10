inline.NumInlined: 2085
inline.NumDeleted: 789
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5eSLIM11eSLIMCirMan9markConesERKSt6vectorIiSaIiEE:bb.a
bb.b:                                             ; preds = %.lr.ph54, %.loopexit49
  %indvars.iv = phi i64 [ %i.y, %.lr.ph54 ], [ %indvars.iv.next, %.loopexit49 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.pre64, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 108
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !213
  %i.ap = icmp eq i32 %i.ao, %i.x
  br i1 %i.ap, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !211
  %i.as = icmp eq i32 %i.ar, %i.x
  br i1 %i.as, label %bb.d, label %.loopexit49

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31 ; 2 uses
  %.not4750 = icmp eq ptr %i.au, %i.aw
  br i1 %.not4750, label %.loopexit49, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.041.051 = phi ptr [ %i.bc, %bb.f ], [ %i.au, %bb.d ] ; 2 uses
  %i.ax = load ptr, ptr %.sroa.041.051, align 8, !tbaa !33 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 108
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !213
  %i.ba = icmp eq i32 %i.az, %i.x
  br i1 %i.ba, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  store i32 %i.x, ptr %i.bb, align 8, !tbaa !211
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.041.051, i64 8 ; 2 uses
  %.not47 = icmp eq ptr %i.bc, %i.aw
  br i1 %.not47, label %.loopexit49, label %.lr.ph

.loopexit49:                                      ; preds = %bb.f, %bb.d, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.z
  br i1 %.not.not, label %bb.b, label %.preheader, !llvm.loop !217

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret void

bb.g:                                             ; preds = %.lr.ph59, %.loopexit
  %indvars.iv61 = phi i64 [ %i.ak, %.lr.ph59 ], [ %indvars.iv.next62, %.loopexit ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.pre64, i64 %indvars.iv61
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !33 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 108
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !213
  %i.bh = icmp eq i32 %i.bg, %i.aj
  br i1 %i.bh, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !31 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31 ; 2 uses
  %.not4855 = icmp eq ptr %i.bj, %i.bl
  br i1 %.not4855, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 116
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph57, %bb.l
  %.sroa.037.056 = phi ptr [ %i.bj, %.lr.ph57 ], [ %i.bu, %bb.l ] ; 2 uses
  %i.bn = load ptr, ptr %.sroa.037.056, align 8, !tbaa !33 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 108
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !213
  %i.bq = icmp eq i32 %i.bp, %i.aj
  br i1 %i.bq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 116
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !212
  %i.bt = icmp eq i32 %i.bs, %i.aj
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.aj, ptr %i.bm, align 4, !tbaa !212
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.037.056, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %i.bu, %i.bl
  br i1 %.not48, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %bb.l, %bb.h, %bb.g
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !218
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN5eSLIM11eSLIMCirMan6sop2ttEPc(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @Abc_SopGetVarNum(ptr noundef %0) #30 ; 2 uses
  %i.b = tail call i64 @Abc_SopToTruth(ptr noundef %0, i32 noundef %i.a) #30
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @__const._ZN5eSLIM11eSLIMCirMan6sop2ttEPc.filters, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !151
  %i.f = and i64 %i.e, %i.b
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN5eSLIM11eSLIMCirMan13ttNegateFaninEmj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [6 x i64], align 16               ; 9 uses
  %i.b = alloca [6 x i64], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 -6148914691236517206, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 -3689348814741910324, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 -1085102592571150096, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 -71777214294589696, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 -281470681808896, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 -4294967296, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 6148914691236517205, ptr %i.b, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 3689348814741910323, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1085102592571150095, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 71777214294589695, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 281470681808895, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 4294967295, ptr %i.l, align 8
  %i.m = zext i32 %1 to i64                       ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !151
  %i.p = and i64 %i.o, %0
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.m
  %i.r = load i64, ptr %i.q, align 8, !tbaa !151
  %i.s = and i64 %i.r, %0
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5eSLIM11eSLIMCirMan13ttNegateFaninEmj.shifts, i64 %i.m
  %i.u = load i32, ptr %i.t, align 4, !tbaa !75
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = lshr i64 %i.p, %i.v
  %i.x = shl i64 %i.s, %i.v
  %i.y = or i64 %i.w, %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i64 %i.y
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @Abc_SopGetVarNum(ptr noundef) local_unnamed_addr #4

declare i64 @Abc_SopToTruth(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN5eSLIM11eSLIMCirMan6tt2sopEmiP11Mem_Flex_t_(i64 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %i.b = trunc nuw nsw i64 %i.a to i32            ; 2 uses
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @Abc_SopCreateConst0(ptr noundef %2) #30
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = shl nuw i32 1, %1                        ; 2 uses
  %i.f = icmp eq i32 %i.e, %i.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @Abc_SopCreateConst1(ptr noundef %2) #30
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @Abc_SopStart(ptr noundef %2, i32 noundef %i.b, i32 noundef %1) #30 ; 5 uses
  %.not58 = icmp eq i32 %1, 31
  br i1 %.not58, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.e
  %i.i = icmp sgt i32 %1, 0
  %i.j = add nsw i32 %1, 3                        ; 4 uses
  %smax69 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %wide.trip.count70 = zext nneg i32 %smax69 to i64 ; 2 uses
  br i1 %i.i, label %.lr.ph56.split.us.preheader, label %.lr.ph56.split

.lr.ph56.split.us.preheader:                      ; preds = %.lr.ph56
  %wide.trip.count64 = zext nneg i32 %1 to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check78 = icmp ult i32 %1, 16
  %i.k = and i64 %wide.trip.count64, 12
  %n.vec = and i64 %wide.trip.count64, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count64
  %min.epilog.iters.check.not.not = icmp eq i64 %i.k, 0
  %n.vec79 = and i64 %wide.trip.count64, 2147483644 ; 3 uses
  %cmp.n88 = icmp eq i64 %n.vec79, %wide.trip.count64
  br label %.lr.ph56.split.us

.lr.ph56.split.us:                                ; preds = %.lr.ph56.split.us.preheader, %bb.f
  %indvars.iv66 = phi i64 [ 0, %.lr.ph56.split.us.preheader ], [ %indvars.iv.next67, %bb.f ] ; 3 uses
  %.04552.us = phi i32 [ 0, %.lr.ph56.split.us.preheader ], [ %.1.us, %bb.f ] ; 3 uses
  %i.l = shl nuw i64 1, %indvars.iv66
  %i.m = and i64 %i.l, %0
  %.not.us = icmp eq i64 %i.m, 0
  br i1 %.not.us, label %bb.f, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %vec.epilog.scalar.ph ], [ %indvars.iv61.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.n = trunc nuw nsw i64 %indvars.iv61 to i32
  %i.o = shl nuw i32 1, %i.n
  %i.p = and i32 %i.o, %i.t
  %.not50.us = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not50.us, i8 48, i8 49
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv61
  store i8 %i.q, ptr %gep, align 1, !tbaa !201
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !219

bb.f:                                             ; preds = %._crit_edge.us, %.lr.ph56.split.us
  %.1.us = phi i32 [ %i.ai, %._crit_edge.us ], [ %.04552.us, %.lr.ph56.split.us ] ; 2 uses
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge57, label %.lr.ph56.split.us, !llvm.loop !220

iter.check:                                       ; preds = %.lr.ph56.split.us
  %i.r = mul nsw i32 %.04552.us, %i.j             ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = trunc nuw nsw i64 %indvars.iv66 to i32   ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.h, i64 %i.s ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.u = shl nuw <16 x i32> splat (i32 1), %vec.ind
  %i.v = and <16 x i32> %i.u, %broadcast.splat
  %i.w = icmp eq <16 x i32> %i.v, zeroinitializer
  %i.x = select <16 x i1> %i.w, <16 x i8> splat (i8 48), <16 x i8> splat (i8 49)
  %i.y = getelementptr i8, ptr %invariant.gep, i64 %index
  store <16 x i8> %i.x, ptr %i.y, align 1, !tbaa !201
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !222

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert80 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat81 = shufflevector <4 x i32> %broadcast.splatinsert80, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aa = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert82 = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat83 = shufflevector <4 x i32> %broadcast.splatinsert82, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat83, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind85 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next87, %vec.epilog.vector.body ] ; 2 uses
  %3 = shl nuw <4 x i32> splat (i32 1), %vec.ind85
  %4 = and <4 x i32> %3, %broadcast.splat81
  %5 = icmp eq <4 x i32> %4, zeroinitializer
  %6 = select <4 x i1> %5, <4 x i8> splat (i8 48), <4 x i8> splat (i8 49)
  %i.ab = getelementptr i8, ptr %invariant.gep, i64 %index84
  store <4 x i8> %6, ptr %i.ab, align 1, !tbaa !201
  %index.next86 = add nuw i64 %index84, 4         ; 2 uses
  %vec.ind.next87 = add <4 x i32> %vec.ind85, splat (i32 4)
  %i.ac = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !223

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n88, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv61.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec79, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ad = add nsw i32 %i.r, %1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.h, i64 %i.ae ; 3 uses
  store i8 32, ptr %i.af, align 1, !tbaa !201
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  store i8 49, ptr %i.ag, align 1, !tbaa !201
  %i.ah = getelementptr i8, ptr %i.af, i64 2
  store i8 10, ptr %i.ah, align 1, !tbaa !201
  %i.ai = add nsw i32 %.04552.us, 1
  br label %bb.f

._crit_edge57:                                    ; preds = %bb.g, %bb.f, %bb.e
  %.pre-phi = phi i32 [ 34, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ]
  %.045.lcssa = phi i32 [ 0, %bb.e ], [ %.1.us, %bb.f ], [ %.1, %bb.g ]
  %i.aj = mul nsw i32 %.045.lcssa, %.pre-phi
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.h, i64 %i.ak
  store i8 0, ptr %i.al, align 1, !tbaa !201
  br label %bb.h

.lr.ph56.split:                                   ; preds = %.lr.ph56, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph56 ] ; 2 uses
  %.04552 = phi i32 [ %.1, %bb.g ], [ 0, %.lr.ph56 ] ; 3 uses
  %i.am = shl nuw i64 1, %indvars.iv
  %i.an = and i64 %i.am, %0
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %.lr.ph56.split
  %i.ao = mul nsw i32 %.04552, %i.j
  %i.ap = add nsw i32 %i.ao, %1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.h, i64 %i.aq ; 3 uses
  store i8 32, ptr %i.ar, align 1, !tbaa !201
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  store i8 49, ptr %i.as, align 1, !tbaa !201
  %i.at = getelementptr i8, ptr %i.ar, i64 2
  store i8 10, ptr %i.at, align 1, !tbaa !201
  %i.au = add nsw i32 %.04552, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph56.split, %.preheader
  %.1 = phi i32 [ %i.au, %.preheader ], [ %.04552, %.lr.ph56.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count70
  br i1 %exitcond.not, label %._crit_edge57, label %.lr.ph56.split, !llvm.loop !220

bb.h:                                             ; preds = %._crit_edge57, %bb.d, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %i.h, %._crit_edge57 ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #11

declare ptr @Abc_SopCreateConst0(ptr noundef) local_unnamed_addr #4

declare ptr @Abc_SopCreateConst1(ptr noundef) local_unnamed_addr #4

declare ptr @Abc_SopStart(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN5eSLIM11eSLIMCirMan10addGiaGateEP10Gia_Man_t_iRSt6vectorIiSaIiEERS3_IbSaIbEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = sext i32 %2 to i64                       ; 9 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !78   ; 2 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.g)
  %i.i = icmp eq i64 %i.h, 3                      ; 3 uses
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i64 %i.g, label %bb.e [
    i64 2, label %bb.f
    i64 4, label %bb.c
    i64 8, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.c
  %.059 = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.a ] ; 2 uses
  %.058 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.a ]
  %.057 = phi i32 [ 1, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = load i32, ptr %i.l, align 8, !tbaa !8    ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !73     ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4, !tbaa !75   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33   ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8    ; 2 uses
  %i.u = sext i32 %i.t to i64                     ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !75   ; 2 uses
  %i.x = load ptr, ptr %4, align 8, !tbaa !224    ; 5 uses
  %i.y = sdiv i32 %i.m, 64
  %.sext = sext i32 %i.y to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.sext
  %i.aa = and i64 %i.n, -9223372036854775745
  %i.ab = icmp ugt i64 %i.aa, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ab, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.z, i64 %storemerge.idx.i.i.i.i.i
  %i.ac = and i64 %i.n, 63
  %i.ad = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !151
  %i.ae = lshr i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 1
  %i.ah = icmp ne i32 %.058, %i.ag                ; 2 uses
  %i.ai = sdiv i32 %i.t, 64
  %.sext98 = sext i32 %i.ai to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.sext98
  %i.ak = and i64 %i.u, -9223372036854775745
  %i.al = icmp ugt i64 %i.ak, -9223372036854775808
  %storemerge.idx.i.i.i.i.i64 = select i1 %i.al, i64 -8, i64 0
  %storemerge.i.i.i.i.i65 = getelementptr inbounds i8, ptr %i.aj, i64 %storemerge.idx.i.i.i.i.i64
  %i.am = and i64 %i.u, 63
  %i.an = load i64, ptr %storemerge.i.i.i.i.i65, align 8, !tbaa !151
  %i.ao = lshr i64 %i.an, %i.am
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 1
  %i.ar = icmp ne i32 %.057, %i.aq                ; 2 uses
  %i.as = icmp eq i32 %i.q, %i.w
  br i1 %i.as, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.at = xor i1 %i.ah, %i.ar
  %or.cond = or i1 %.059, %i.at
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.b ; 2 uses
  br i1 %or.cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.au, align 4, !tbaa !75
  %i.av = sdiv i32 %2, 64
  %.sext100 = sext i32 %i.av to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.sext100
  %i.ax = and i64 %i.b, -9223372036854775745
  %i.ay = icmp ugt i64 %i.ax, -9223372036854775808
  %storemerge.idx.i.i.i.i.i68 = select i1 %i.ay, i64 -8, i64 0
  %storemerge.i.i.i.i.i69 = getelementptr inbounds i8, ptr %i.aw, i64 %storemerge.idx.i.i.i.i.i68 ; 4 uses
  %i.az = and i64 %i.b, 63
  %i.ba = shl nuw i64 1, %i.az                    ; 2 uses
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = load i64, ptr %storemerge.i.i.i.i.i69, align 8, !tbaa !151
  %i.bc = or i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %storemerge.i.i.i.i.i69, align 8, !tbaa !151
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.j:                                             ; preds = %bb.h
  %i.bd = xor i64 %i.ba, -1
  %i.be = load i64, ptr %storemerge.i.i.i.i.i69, align 8, !tbaa !151
  %i.bf = and i64 %i.be, %i.bd
  store i64 %i.bf, ptr %storemerge.i.i.i.i.i69, align 8, !tbaa !151
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.k:                                             ; preds = %bb.g
  store i32 %i.q, ptr %i.au, align 4, !tbaa !75
  %i.bg = load i32, ptr %i.s, align 8, !tbaa !8   ; 2 uses
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = sdiv i32 %i.bg, 64
  %.sext102 = sext i32 %i.bi to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.sext102
  %i.bk = and i64 %i.bh, -9223372036854775745
  %i.bl = icmp ugt i64 %i.bk, -9223372036854775808
  %storemerge.idx.i.i.i.i.i72 = select i1 %i.bl, i64 -8, i64 0
  %storemerge.i.i.i.i.i73 = getelementptr inbounds i8, ptr %i.bj, i64 %storemerge.idx.i.i.i.i.i72
  %i.bm = and i64 %i.bh, 63
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = sdiv i32 %2, 64
  %.sext104 = sext i32 %i.bo to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.sext104
  %i.bq = and i64 %i.b, -9223372036854775745
  %i.br = icmp ugt i64 %i.bq, -9223372036854775808
end_hunk_0
begin_hunk_1_@llvm.smax.i32
!22 = !{!"_ZTSSt15_Rb_tree_header", !23, i64 0, !26, i64 32}
!23 = !{!"_ZTSSt18_Rb_tree_node_base", !24, i64 0, !25, i64 8, !25, i64 16, !25, i64 24}
!24 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!25 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !16, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!13, !14, i64 8}
!28 = !{!13, !14, i64 0}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{!13, !14, i64 16}
!31 = !{!14, !14, i64 0}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTSN5eSLIM11eSLIMCirObjE", !16, i64 0}
!35 = !{!22, !24, i64 0}
!36 = !{!22, !25, i64 8}
!37 = !{!22, !25, i64 16}
!38 = !{!22, !25, i64 24}
!39 = !{!22, !26, i64 32}
!40 = !{!9, !5, i64 100}
!41 = !{!42, !48, i64 48}
!42 = !{!"_ZTSN5eSLIM11eSLIMCirManE", !5, i64 0, !5, i64 4, !43, i64 8, !5, i64 32, !5, i64 36, !5, i64 40, !48, i64 48}
!43 = !{!"_ZTSSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE", !44, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"p1 _ZTSSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS1_EE", !16, i64 0}
!48 = !{!"p1 _ZTSN5eSLIM9TabooListE", !16, i64 0}
!49 = !{!46, !47, i64 0}
!50 = !{!46, !47, i64 8}
!51 = !{!46, !47, i64 16}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZSt11make_uniqueIN5eSLIM11eSLIMCirObjEJiSt6vectorIPS1_SaIS3_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!54 = distinct !{!54, !"_ZSt11make_uniqueIN5eSLIM11eSLIMCirObjEJiSt6vectorIPS1_SaIS3_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!57 = distinct !{!57, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!58 = !{!59}
!59 = distinct !{!59, !57, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!60 = !{!59, !61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!56, !64}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !66, !67, !68}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = distinct !{!69, !66, !67}
!70 = !{!71, !72, i64 8}
!71 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!72 = !{!"p1 int", !16, i64 0}
!73 = !{!71, !72, i64 0}
!74 = !{!72, !72, i64 0}
!75 = !{!5, !5, i64 0}
!76 = !{!9, !5, i64 96}
!77 = distinct !{!77, !66}
!78 = !{!9, !26, i64 80}
!79 = !{!42, !5, i64 4}
!80 = !{!71, !72, i64 16}
!81 = !{!47, !47, i64 0}
!82 = !{!42, !5, i64 40}
!83 = distinct !{!83, !66}
!84 = !{!42, !5, i64 0}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZSt11make_uniqueIN5eSLIM11eSLIMCirObjEJRiSt6vectorIPS1_SaIS4_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!87 = distinct !{!87, !"_ZSt11make_uniqueIN5eSLIM11eSLIMCirObjEJRiSt6vectorIPS1_SaIS4_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!88 = !{!9, !5, i64 88}
!89 = !{!42, !5, i64 32}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!92 = distinct !{!92, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!93 = !{!94}
!94 = distinct !{!94, !92, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!95 = !{!94, !96}
!96 = distinct !{!96, !97}
!97 = distinct !{!97, !"LVerDomain"}
!98 = !{!91, !99}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !66, !67, !68}
!101 = distinct !{!101, !66, !67}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZSt11make_uniqueIN5eSLIM11eSLIMCirObjEJRiSt6vectorIPS1_SaIS4_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!104 = distinct !{!104, !"_ZSt11make_uniqueIN5eSLIM11eSLIMCirObjEJRiSt6vectorIPS1_SaIS4_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!107 = distinct !{!107, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!110 = !{!109, !111}
!111 = distinct !{!111, !112}
!112 = distinct !{!112, !"LVerDomain"}
!113 = !{!106, !114}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !66, !67, !68}
!116 = distinct !{!116, !66, !67}
!117 = !{!25, !25, i64 0}
!118 = distinct !{!118, !66}
!119 = !{!120, !5, i64 24}
!120 = !{!"_ZTS10Gia_Man_t_", !121, i64 0, !121, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !122, i64 32, !72, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !123, i64 64, !123, i64 72, !124, i64 80, !124, i64 96, !5, i64 112, !5, i64 116, !5, i64 120, !124, i64 128, !72, i64 144, !72, i64 152, !123, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !72, i64 184, !125, i64 192, !72, i64 200, !72, i64 208, !72, i64 216, !5, i64 224, !5, i64 228, !72, i64 232, !5, i64 240, !123, i64 248, !123, i64 256, !123, i64 264, !126, i64 272, !126, i64 280, !123, i64 288, !16, i64 296, !123, i64 304, !123, i64 312, !127, i64 320, !121, i64 328, !123, i64 336, !123, i64 344, !123, i64 352, !123, i64 360, !123, i64 368, !128, i64 376, !128, i64 384, !129, i64 392, !124, i64 400, !124, i64 416, !123, i64 432, !123, i64 440, !123, i64 448, !123, i64 456, !123, i64 464, !123, i64 472, !123, i64 480, !123, i64 488, !123, i64 496, !123, i64 504, !123, i64 512, !121, i64 520, !130, i64 528, !131, i64 536, !132, i64 544, !132, i64 552, !123, i64 560, !123, i64 568, !123, i64 576, !123, i64 584, !123, i64 592, !5, i64 600, !133, i64 604, !133, i64 608, !123, i64 616, !72, i64 624, !5, i64 632, !129, i64 640, !129, i64 648, !129, i64 656, !123, i64 664, !123, i64 672, !123, i64 680, !123, i64 688, !123, i64 696, !123, i64 704, !123, i64 712, !123, i64 720, !123, i64 728, !134, i64 736, !132, i64 744, !16, i64 752, !16, i64 760, !16, i64 768, !26, i64 776, !26, i64 784, !16, i64 792, !72, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !135, i64 856, !135, i64 864, !135, i64 872, !135, i64 880, !123, i64 888, !123, i64 896, !123, i64 904, !136, i64 912, !5, i64 920, !5, i64 924, !5, i64 928, !123, i64 936, !5, i64 944, !5, i64 948, !123, i64 952, !123, i64 960, !129, i64 968, !135, i64 976, !123, i64 984, !123, i64 992, !5, i64 1000, !5, i64 1004, !135, i64 1008, !124, i64 1016, !124, i64 1032, !124, i64 1048, !137, i64 1064, !127, i64 1072, !127, i64 1080, !5, i64 1088, !5, i64 1092, !5, i64 1096, !5, i64 1100, !127, i64 1104, !123, i64 1112, !123, i64 1120, !123, i64 1128, !129, i64 1136}
!121 = !{!"p1 omnipotent char", !16, i64 0}
!122 = !{!"p1 _ZTS10Gia_Obj_t_", !16, i64 0}
!123 = !{!"p1 _ZTS10Vec_Int_t_", !16, i64 0}
!124 = !{!"_ZTS10Vec_Int_t_", !5, i64 0, !5, i64 4, !72, i64 8}
!125 = !{!"p1 _ZTS10Gia_Rpr_t_", !16, i64 0}
!126 = !{!"p1 _ZTS10Vec_Wec_t_", !16, i64 0}
!127 = !{!"p1 _ZTS10Vec_Str_t_", !16, i64 0}
!128 = !{!"p1 _ZTS10Abc_Cex_t_", !16, i64 0}
!129 = !{!"p1 _ZTS10Vec_Ptr_t_", !16, i64 0}
!130 = !{!"p1 _ZTS10Gia_Plc_t_", !16, i64 0}
!131 = !{!"p1 _ZTS10Gia_Man_t_", !16, i64 0}
!132 = !{!"p1 _ZTS10Vec_Flt_t_", !16, i64 0}
!133 = !{!"float", !6, i64 0}
!134 = !{!"p1 _ZTS10Vec_Vec_t_", !16, i64 0}
!135 = !{!"p1 _ZTS10Vec_Wrd_t_", !16, i64 0}
!136 = !{!"p1 _ZTS10Vec_Bit_t_", !16, i64 0}
!137 = !{!"p1 _ZTS10Gia_Dat_t_", !16, i64 0}
!138 = !{!120, !122, i64 32}
!139 = !{!140, !5, i64 8}
!140 = !{!"_ZTS10Gia_Obj_t_", !5, i64 0, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 4, !5, i64 7, !5, i64 7, !5, i64 7, !5, i64 8}
!141 = !{!120, !5, i64 16}
!142 = !{!120, !123, i64 64}
!143 = !{!124, !5, i64 4}
!144 = !{!124, !72, i64 8}
!145 = distinct !{!145, !66}
!146 = !{!120, !72, i64 624}
!147 = !{!120, !5, i64 176}
!148 = distinct !{!148, !66}
!149 = !{!120, !123, i64 72}
!150 = distinct !{!150, !66}
!151 = !{!26, !26, i64 0}
!152 = !{!153, !5, i64 140}
!153 = !{!"_ZTS10Abc_Ntk_t_", !154, i64 0, !155, i64 4, !121, i64 8, !121, i64 16, !156, i64 24, !129, i64 32, !129, i64 40, !129, i64 48, !129, i64 56, !129, i64 64, !129, i64 72, !129, i64 80, !129, i64 88, !6, i64 96, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !157, i64 160, !5, i64 168, !158, i64 176, !157, i64 184, !5, i64 192, !5, i64 196, !5, i64 200, !159, i64 208, !5, i64 216, !124, i64 224, !160, i64 240, !161, i64 248, !16, i64 256, !162, i64 264, !16, i64 272, !133, i64 280, !5, i64 284, !123, i64 288, !129, i64 296, !72, i64 304, !128, i64 312, !129, i64 320, !157, i64 328, !16, i64 336, !16, i64 344, !157, i64 352, !16, i64 360, !16, i64 368, !123, i64 376, !123, i64 384, !121, i64 392, !163, i64 400, !129, i64 408, !123, i64 416, !123, i64 424, !129, i64 432, !123, i64 440, !123, i64 448, !123, i64 456}
!154 = !{!"_ZTS13Abc_NtkType_t", !6, i64 0}
!155 = !{!"_ZTS13Abc_NtkFunc_t", !6, i64 0}
!156 = !{!"p1 _ZTS9Nm_Man_t_", !16, i64 0}
!157 = !{!"p1 _ZTS10Abc_Ntk_t_", !16, i64 0}
!158 = !{!"p1 _ZTS10Abc_Des_t_", !16, i64 0}
!159 = !{!"double", !6, i64 0}
!160 = !{!"p1 _ZTS12Mem_Fixed_t_", !16, i64 0}
!161 = !{!"p1 _ZTS11Mem_Step_t_", !16, i64 0}
!162 = !{!"p1 _ZTS14Abc_ManTime_t_", !16, i64 0}
!163 = !{!"p1 float", !16, i64 0}
!164 = !{!153, !72, i64 232}
!165 = !{!153, !129, i64 32}
!166 = !{!167, !5, i64 4}
!167 = !{!"_ZTS10Vec_Ptr_t_", !5, i64 0, !5, i64 4, !15, i64 8}
!168 = !{!124, !5, i64 0}
!169 = !{!153, !5, i64 216}
!170 = !{!171, !172, i64 0}
!171 = !{!"_ZTSSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !172, i64 0, !26, i64 8, !173, i64 16, !26, i64 24, !175, i64 32, !174, i64 48}
!172 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !15, i64 0}
!173 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !174, i64 0}
!174 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!175 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !133, i64 0, !26, i64 8}
!176 = !{!171, !26, i64 8}
!177 = !{!175, !133, i64 0}
!178 = !{!153, !129, i64 40}
!179 = !{!153, !129, i64 48}
!180 = !{!167, !15, i64 8}
!181 = !{!16, !16, i64 0}
!182 = distinct !{!182, !66}
!183 = !{!184, !157, i64 0}
!184 = !{!"_ZTS10Abc_Obj_t_", !157, i64 0, !185, i64 8, !5, i64 16, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !124, i64 24, !124, i64 40, !16, i64 56, !6, i64 64, !6, i64 72}
!185 = !{!"p1 _ZTS10Abc_Obj_t_", !16, i64 0}
!186 = !{!184, !72, i64 32}
!187 = !{!184, !5, i64 16}
!188 = distinct !{!188, !66}
!189 = distinct !{!189, !66}
!190 = !{!171, !26, i64 24}
!191 = !{!173, !174, i64 0}
!192 = distinct !{!192, !66}
!193 = !{!174, !174, i64 0}
!194 = distinct !{!194, !66}
!195 = distinct !{!195, !66}
!196 = !{!171, !174, i64 16}
!197 = distinct !{!197, !66}
!198 = !{!199, !5, i64 4}
!199 = !{!"_ZTSSt4pairIKiiE", !5, i64 0, !5, i64 4}
!200 = distinct !{!200, !66}
!201 = !{!6, !6, i64 0}
!202 = distinct !{!202, !66}
!203 = !{!9, !5, i64 92}
!204 = distinct !{!204, !205}
!205 = !{!"llvm.loop.unroll.disable"}
!206 = distinct !{!206, !66}
!207 = distinct !{!207, !66}
!208 = distinct !{!208, !66}
!209 = !{!42, !5, i64 36}
!210 = !{!9, !5, i64 104}
!211 = !{!9, !5, i64 112}
!212 = !{!9, !5, i64 116}
!213 = !{!9, !5, i64 108}
!214 = !{!9, !5, i64 120}
!215 = distinct !{!215, !66}
!216 = distinct !{!216, !66}
!217 = distinct !{!217, !66}
!218 = distinct !{!218, !66}
!219 = distinct !{!219, !66, !68, !67}
!220 = distinct !{!220, !66}
!221 = distinct !{!221, !66, !67, !68}
!222 = !{!"branch_weights", i32 4, i32 12}
!223 = distinct !{!223, !66, !67, !68}
!224 = !{!225, !226, i64 0}
!225 = !{!"_ZTSSt18_Bit_iterator_base", !226, i64 0, !5, i64 8}
!226 = !{!"p1 long", !16, i64 0}
!227 = !{!120, !72, i64 232}
!228 = !{!120, !5, i64 116}
!229 = !{!120, !5, i64 832}
!230 = !{!120, !135, i64 1008}
!231 = !{!225, !5, i64 8}
!232 = !{!233, !226, i64 32}
!233 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !234, i64 0, !234, i64 16, !226, i64 32}
!234 = !{!"_ZTSSt13_Bit_iterator", !225, i64 0}
!235 = distinct !{!235, !66}
!236 = distinct !{!236, !66}
!237 = distinct !{!237, !66}
!238 = !{!185, !185, i64 0}
!239 = !{!153, !156, i64 24}
!240 = distinct !{!240, !66}
!241 = distinct !{!241, !66}
!242 = !{!153, !16, i64 256}
!243 = distinct !{!243, !66}
!244 = distinct !{!244, !66}
!245 = !{!199, !5, i64 0}
!246 = !{!171, !174, i64 48}
!247 = distinct !{!247, !66}
!248 = distinct !{!248, !66}
!249 = distinct !{!249, !66}
!250 = distinct !{!250, !66}
!251 = !{!252, !252, i64 0}
!252 = !{!"vtable pointer", !7, i64 0}
!253 = !{!254, !266, i64 240}
!254 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !255, i64 0, !263, i64 216, !6, i64 224, !264, i64 225, !265, i64 232, !266, i64 240, !267, i64 248, !268, i64 256}
!255 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !256, i64 24, !257, i64 28, !257, i64 32, !258, i64 40, !259, i64 48, !6, i64 64, !5, i64 192, !260, i64 200, !261, i64 208}
!256 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!257 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!258 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!259 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !26, i64 8}
!260 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!261 = !{!"_ZTSSt6locale", !262, i64 0}
!262 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!263 = !{!"p1 _ZTSSo", !16, i64 0}
!264 = !{!"bool", !6, i64 0}
!265 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!266 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!267 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!268 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!269 = !{!270, !6, i64 56}
!270 = !{!"_ZTSSt5ctypeIcE", !271, i64 0, !272, i64 16, !264, i64 24, !72, i64 32, !72, i64 40, !273, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!271 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!272 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!273 = !{!"p1 short", !16, i64 0}
!274 = distinct !{null, null, null, null}
!275 = distinct !{!275, !66}
!276 = distinct !{!276, !66}
!277 = distinct !{!277, !66}
!278 = !{ptr @_ZN5eSLIM11eSLIMCirMan12processRepPoEPNS_11eSLIMCirObjES2_iRSt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EERS0_RKSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEERKS3_IS2_SaIS2_EE}
!279 = distinct !{!279, !66}
!280 = distinct !{!280, !66}
!281 = distinct !{!281, !66}
!282 = !{!283, !284, i64 0}
!283 = !{!"_ZTSN5eSLIM9TabooListE", !284, i64 0, !285, i64 8, !290, i64 56}
!284 = !{!"p1 _ZTSN5eSLIM11eSLIMCirManE", !16, i64 0}
!285 = !{!"_ZTSSt3setIPN5eSLIM11eSLIMCirObjENS0_9TabooList15eSLIMCirObjCompESaIS2_EE", !286, i64 0}
!286 = !{!"_ZTSSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE", !287, i64 0}
!287 = !{!"_ZTSNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !288, i64 0, !22, i64 8}
!288 = !{!"_ZTSSt20_Rb_tree_key_compareIN5eSLIM9TabooList15eSLIMCirObjCompEE", !289, i64 0}
!289 = !{!"_ZTSN5eSLIM9TabooList15eSLIMCirObjCompE"}
!290 = !{!"_ZTSSt3setIPN5eSLIM11eSLIMCirObjENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE", !291, i64 0}
!291 = !{!"_ZTSSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE", !292, i64 0}
!292 = !{!"_ZTSNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !293, i64 0, !22, i64 8}
!293 = !{!"_ZTSSt20_Rb_tree_key_compareIN5eSLIM9TabooList19eSLIMCirObjCompBaseEE", !294, i64 0}
!294 = !{!"_ZTSN5eSLIM9TabooList19eSLIMCirObjCompBaseE"}
!295 = !{}
!296 = !{i64 8}
!297 = distinct !{!297, !66}
!298 = !{!23, !25, i64 16}
!299 = !{!23, !25, i64 24}
!300 = distinct !{!300, !66}
!301 = distinct !{!301, !66}
!302 = distinct !{!302, !66}
!303 = distinct !{!303, !66}
!304 = distinct !{!304, !66}
!305 = distinct !{!305, !66}
!306 = distinct !{!306, !66}
!307 = distinct !{!307, !66}
!308 = distinct !{!308, !66}
!309 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!310 = !{!311, !172, i64 0}
!311 = !{!"_ZTSSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !172, i64 0, !26, i64 8, !173, i64 16, !26, i64 24, !175, i64 32, !174, i64 48}
!312 = !{!311, !26, i64 8}
!313 = !{!311, !174, i64 48}
!314 = !{!315, !315, i64 0}
!315 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEEE", !16, i64 0}
!316 = distinct !{!316, !66}
!317 = !{!311, !26, i64 24}
!318 = distinct !{!318, !66}
!319 = distinct !{!319, !66}
!320 = !{!311, !174, i64 16}
!321 = distinct !{!321, !66}
!322 = distinct !{!322, !66}
!323 = distinct !{!323, !66}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!326 = distinct !{!326, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!327 = !{!328}
!328 = distinct !{!328, !326, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!329 = !{!328, !330}
!330 = distinct !{!330, !331}
!331 = distinct !{!331, !"LVerDomain"}
!332 = !{!325, !333}
!333 = distinct !{!333, !331}
!334 = distinct !{!334, !66, !67, !68}
!335 = distinct !{!335, !66, !67}
!336 = distinct !{!336, !66}
!337 = distinct !{!337, !66}
!338 = !{!339}
!339 = distinct !{!339, !340, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!340 = distinct !{!340, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!341 = !{!342}
!342 = distinct !{!342, !340, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!343 = !{!342, !344}
!344 = distinct !{!344, !345}
!345 = distinct !{!345, !"LVerDomain"}
!346 = !{!339, !347}
!347 = distinct !{!347, !345}
!348 = distinct !{!348, !66, !67, !68}
!349 = distinct !{!349, !66, !67}
!350 = distinct !{!350, !66}
!351 = distinct !{!351, !66}
!352 = distinct !{!352, !66}
!353 = distinct !{!353, !66}
!354 = distinct !{!354, !66}
!355 = distinct !{!355, !66}
!356 = distinct !{!356, !66}
!357 = !{!120, !5, i64 28}
!358 = !{!120, !5, i64 820}
!359 = !{!120, !72, i64 40}
!360 = distinct !{!360, !66}
!361 = distinct !{!361, !66}
!362 = distinct !{!362, !66}
!363 = distinct !{!363, !66}
!364 = distinct !{!364, !66}
!365 = distinct !{!365, !66}
!366 = distinct !{!366, !66}
!367 = distinct !{!367, !66}
!368 = distinct !{!368, !66}
!369 = distinct !{!369, !66}
!370 = distinct !{!370, !66}
!371 = distinct !{!371, !66}
!372 = !{!373}
!373 = distinct !{!373, !374, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!374 = distinct !{!374, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!375 = !{!376}
!376 = distinct !{!376, !374, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!377 = !{!376, !378}
!378 = distinct !{!378, !379}
!379 = distinct !{!379, !"LVerDomain"}
!380 = !{!373, !381}
!381 = distinct !{!381, !379}
!382 = distinct !{!382, !66, !67, !68}
!383 = distinct !{!383, !66, !67}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!386 = distinct !{!386, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!387 = !{!388}
!388 = distinct !{!388, !386, !"_ZSt19__relocate_object_aISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!389 = !{!388, !390}
!390 = distinct !{!390, !391}
!391 = distinct !{!391, !"LVerDomain"}
!392 = !{!385, !393}
!393 = distinct !{!393, !391}
!394 = distinct !{!394, !66, !67, !68}
!395 = distinct !{!395, !66, !67}
!396 = distinct !{!396, !66}
!397 = distinct !{!397, !66}
!398 = distinct !{!398, !66}
!399 = distinct !{!399, !66}
!400 = distinct !{!400, !66}
!401 = distinct !{!401, !66}
!402 = distinct !{!402, !66}
!403 = distinct !{!403, !66}
!404 = distinct !{!404, !66}
!405 = distinct !{!405, !66}
!406 = distinct !{!406, !66}
!407 = distinct !{!407, !66}
end_hunk_1
