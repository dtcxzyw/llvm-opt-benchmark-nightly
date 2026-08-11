inline.NumInlined: 129
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 21
begin_hunk_0_@Abc_SopDecoderLog:bb.a
  br label %Vec_StrGrow.exit11.sink.split.i.us

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #25
  br label %Vec_StrGrow.exit11.sink.split.i.us

bb.h:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !101  ; 2 uses
  %.not9.i.i.us = icmp eq ptr %i.u, null
  br i1 %.not9.i.i.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.u, i64 noundef 16) #24
  br label %Vec_StrGrow.exit11.sink.split.i.us

bb.j:                                             ; preds = %bb.h
  %i.w = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  br label %Vec_StrGrow.exit11.sink.split.i.us

Vec_StrGrow.exit11.sink.split.i.us:               ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %storemerge36.us = phi ptr [ %i.w, %bb.j ], [ %i.v, %bb.i ], [ %i.s, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %spec.select.sink.i.us = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i.us, %bb.f ], [ %spec.select.i.us, %bb.g ]
  store ptr %storemerge36.us, ptr %i.h, align 8, !tbaa !101
  store i32 %spec.select.sink.i.us, ptr %i.e, align 8, !tbaa !100
  br label %Vec_StrPush.exit.us

Vec_StrPush.exit.us:                              ; preds = %.Vec_StrPush.exit.us_crit_edge, %Vec_StrGrow.exit11.sink.split.i.us, %bb.d
  %i.x = phi ptr [ %.pre, %.Vec_StrPush.exit.us_crit_edge ], [ %storemerge36.us, %Vec_StrGrow.exit11.sink.split.i.us ], [ %.pre41, %bb.d ]
  %i.y = add nsw i32 %i.l, 1
  store i32 %i.y, ptr %i.f, align 4, !tbaa !97
  %i.z = sext i32 %i.l to i64
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.z
  store i8 32, ptr %i.aa, align 1, !tbaa !8
  %i.ab = add nuw nsw i32 %.01837.us, 1           ; 2 uses
  %i.ac = icmp samesign ugt i32 %i.d, %i.ab
  %i.ad = select i1 %i.a, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.b, label %._crit_edge.us, !llvm.loop !112

bb.k:                                             ; preds = %._crit_edge.us
  %i.ae = icmp slt i32 %i.as, 16
  br i1 %i.ae, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = icmp samesign ult i32 %i.as, 1073741823
  %i.ag = shl nuw nsw i32 %i.as, 1
  %spec.select.i19.us = select i1 %i.af, i32 %i.ag, i32 2147483647 ; 4 uses
  %.not.i9.i20.us = icmp samesign ult i32 %i.as, %spec.select.i19.us
  %.pre43 = load ptr, ptr %i.h, align 8, !tbaa !101 ; 3 uses
  br i1 %.not.i9.i20.us, label %bb.m, label %Vec_StrPush.exit26.us

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i21.us = icmp eq ptr %.pre43, null
  %i.ah = zext nneg i32 %spec.select.i19.us to i64 ; 2 uses
  br i1 %.not9.i10.i21.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = tail call ptr @realloc(ptr noundef nonnull %.pre43, i64 noundef %i.ah) #24
  br label %Vec_StrGrow.exit11.sink.split.i22.us

bb.o:                                             ; preds = %bb.m
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ah) #25
  br label %Vec_StrGrow.exit11.sink.split.i22.us

bb.p:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !101 ; 2 uses
  %.not9.i.i24.us = icmp eq ptr %i.ak, null
  br i1 %.not9.i.i24.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ak, i64 noundef 16) #24
  br label %Vec_StrGrow.exit11.sink.split.i22.us

bb.r:                                             ; preds = %bb.p
  %i.am = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  br label %Vec_StrGrow.exit11.sink.split.i22.us

Vec_StrGrow.exit11.sink.split.i22.us:             ; preds = %bb.r, %bb.q, %bb.o, %bb.n
  %storemerge35.us = phi ptr [ %i.am, %bb.r ], [ %i.al, %bb.q ], [ %i.ai, %bb.n ], [ %i.aj, %bb.o ] ; 2 uses
  %spec.select.sink.i23.us = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i19.us, %bb.n ], [ %spec.select.i19.us, %bb.o ]
  store ptr %storemerge35.us, ptr %i.h, align 8, !tbaa !101
  store i32 %spec.select.sink.i23.us, ptr %i.e, align 8, !tbaa !100
  br label %Vec_StrPush.exit26.us

Vec_StrPush.exit26.us:                            ; preds = %._crit_edge.us.Vec_StrPush.exit26.us_crit_edge, %Vec_StrGrow.exit11.sink.split.i22.us, %bb.l
  %i.an = phi ptr [ %.pre42, %._crit_edge.us.Vec_StrPush.exit26.us_crit_edge ], [ %storemerge35.us, %Vec_StrGrow.exit11.sink.split.i22.us ], [ %.pre43, %bb.l ]
  %i.ao = add nsw i32 %i.as, 1
  store i32 %i.ao, ptr %i.f, align 4, !tbaa !97
  %i.ap = sext i32 %i.as to i64
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap
  store i8 10, ptr %i.aq, align 1, !tbaa !8
  %i.ar = add nuw nsw i32 %.038.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %1
  br i1 %exitcond.not, label %._crit_edge39, label %.preheader.us, !llvm.loop !113

._crit_edge.us:                                   ; preds = %Vec_StrPush.exit.us
  tail call fastcc void @Vec_StrPrintNum(ptr noundef nonnull %i.e, i32 noundef %.038.us)
  %i.as = load i32, ptr %i.f, align 4, !tbaa !97  ; 7 uses
  %i.at = load i32, ptr %i.e, align 8, !tbaa !100
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %bb.k, label %._crit_edge.us.Vec_StrPush.exit26.us_crit_edge

._crit_edge.us.Vec_StrPush.exit26.us_crit_edge:   ; preds = %._crit_edge.us
  %.pre42 = load ptr, ptr %i.h, align 8, !tbaa !101
  br label %Vec_StrPush.exit26.us

._crit_edge39:                                    ; preds = %Vec_StrPush.exit26.us
  %.pre44 = load i32, ptr %i.f, align 4, !tbaa !97 ; 4 uses
  %.pre45 = load i32, ptr %i.e, align 8, !tbaa !100 ; 5 uses
  %i.av = icmp eq i32 %.pre44, %.pre45
  br i1 %i.av, label %bb.s, label %._crit_edge39.Vec_StrFree.exit_crit_edge

._crit_edge39.Vec_StrFree.exit_crit_edge:         ; preds = %bb.a, %._crit_edge39
  %i.aw = phi i32 [ %.pre44, %._crit_edge39 ], [ 0, %bb.a ]
  %.pre46 = load ptr, ptr %i.h, align 8, !tbaa !101
  br label %Vec_StrFree.exit

bb.s:                                             ; preds = %._crit_edge39
  %i.ax = icmp slt i32 %.pre45, 16
  br i1 %i.ax, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !101 ; 2 uses
  %.not9.i.i32 = icmp eq ptr %i.ay, null
  br i1 %.not9.i.i32, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef 16) #24
  br label %Vec_StrGrow.exit11.sink.split.i30

bb.v:                                             ; preds = %bb.t
  %i.ba = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  br label %Vec_StrGrow.exit11.sink.split.i30

bb.w:                                             ; preds = %bb.s
  %i.bb = icmp samesign ult i32 %.pre45, 1073741823
  %i.bc = shl nuw nsw i32 %.pre45, 1
  %spec.select.i27 = select i1 %i.bb, i32 %i.bc, i32 2147483647 ; 4 uses
  %.not.i9.i28 = icmp samesign ult i32 %.pre45, %spec.select.i27
  %.pre47 = load ptr, ptr %i.h, align 8, !tbaa !101 ; 3 uses
  br i1 %.not.i9.i28, label %bb.x, label %Vec_StrFree.exit

bb.x:                                             ; preds = %bb.w
  %.not9.i10.i29 = icmp eq ptr %.pre47, null
  %i.bd = zext nneg i32 %spec.select.i27 to i64   ; 2 uses
  br i1 %.not9.i10.i29, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = tail call ptr @realloc(ptr noundef nonnull %.pre47, i64 noundef %i.bd) #24
  br label %Vec_StrGrow.exit11.sink.split.i30

bb.z:                                             ; preds = %bb.x
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.bd) #25
  br label %Vec_StrGrow.exit11.sink.split.i30

Vec_StrGrow.exit11.sink.split.i30:                ; preds = %bb.y, %bb.z, %bb.u, %bb.v
  %storemerge = phi ptr [ %i.ba, %bb.v ], [ %i.az, %bb.u ], [ %i.be, %bb.y ], [ %i.bf, %bb.z ] ; 2 uses
  %spec.select.sink.i31 = phi i32 [ 16, %bb.v ], [ 16, %bb.u ], [ %spec.select.i27, %bb.y ], [ %spec.select.i27, %bb.z ]
  store ptr %storemerge, ptr %i.h, align 8, !tbaa !101
  store i32 %spec.select.sink.i31, ptr %i.e, align 8, !tbaa !100
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %._crit_edge39.Vec_StrFree.exit_crit_edge, %bb.w, %Vec_StrGrow.exit11.sink.split.i30
  %i.bg = phi i32 [ %i.aw, %._crit_edge39.Vec_StrFree.exit_crit_edge ], [ %.pre44, %bb.w ], [ %.pre44, %Vec_StrGrow.exit11.sink.split.i30 ] ; 2 uses
  %i.bh = phi ptr [ %.pre46, %._crit_edge39.Vec_StrFree.exit_crit_edge ], [ %.pre47, %bb.w ], [ %storemerge, %Vec_StrGrow.exit11.sink.split.i30 ] ; 4 uses
  %i.bi = add nsw i32 %i.bg, 1
  store i32 %i.bi, ptr %i.f, align 4, !tbaa !97
  %i.bj = sext i32 %i.bg to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 %i.bj
  store i8 0, ptr %i.bk, align 1, !tbaa !8
  %i.bl = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bh) #22
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = add i32 %i.bm, 1
  %i.bo = tail call ptr @Mem_FlexEntryFetch(ptr noundef %0, i32 noundef %i.bn) #23 ; 2 uses
  %i.bp = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bo, ptr noundef nonnull readonly dereferenceable(1) %i.bh) #23 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.bh) #23
  tail call void @free(ptr noundef nonnull %i.e) #23
  ret ptr %i.bo
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @Abc_SopToTruth(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi ptr [ %0, %bb.a ], [ %i.b, %bb.c ]  ; 3 uses
  %i.a = load i8, ptr %.0.i, align 1, !tbaa !8
  switch i8 %i.a, label %bb.c [
    i8 10, label %Abc_SopGetVarNum.exit
    i8 0, label %.preheader
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.b, !llvm.loop !61

Abc_SopGetVarNum.exit:                            ; preds = %bb.b
  %i.c = ptrtoint ptr %.0.i to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = add i32 %i.f, -2                         ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %Abc_SopGetVarNum.exit
  %2 = add i32 %i.f, 1
  %invariant.op = add i32 %i.f, -3
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.g, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod64 = trunc i64 %i.e to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv = phi i32 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %.027.us = phi i64 [ 0, %.lr.ph.us.preheader ], [ %i.am, %._crit_edge.us ]
  %i.j = sext i32 %indvars.iv to i64              ; 2 uses
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %bb.i
  %indvars.iv48.a = phi i64 [ %indvars.iv.next49.1.a, %bb.i ], [ 0, %.lr.ph.us ] ; 4 uses
  %indvars.iv.a = phi i64 [ %indvars.iv.next.1, %bb.i ], [ %i.j, %.lr.ph.us ] ; 3 uses
  %.042.us = phi i64 [ %.1.us.1, %bb.i ], [ -1, %.lr.ph.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.i ], [ 0, %.lr.ph.us ]
  %i.k = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.a
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  switch i8 %i.l, label %bb.f [
    i8 49, label %bb.e
    i8 48, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.us.new
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @Abc_SopToTruth.Truth, i64 %indvars.iv48.a
  %i.n = load i64, ptr %i.m, align 16, !tbaa !52
  %i.o = xor i64 %i.n, -1
  %i.p = and i64 %.042.us, %i.o
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.us.new
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @Abc_SopToTruth.Truth, i64 %indvars.iv48.a
  %i.r = load i64, ptr %i.q, align 16, !tbaa !52
  %i.s = and i64 %i.r, %.042.us
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.us.new
  %.1.us = phi i64 [ %i.s, %bb.e ], [ %i.p, %bb.d ], [ %.042.us, %.lr.ph.us.new ] ; 3 uses
  %indvars.iv.next49 = or disjoint i64 %indvars.iv48.a, 1 ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 %indvars.iv.a
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  switch i8 %i.v, label %bb.i [
    i8 49, label %bb.h
    i8 48, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @Abc_SopToTruth.Truth, i64 %indvars.iv.next49
  %i.x = load i64, ptr %i.w, align 8, !tbaa !52
  %i.y = xor i64 %i.x, -1
  %i.z = and i64 %.1.us, %i.y
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @Abc_SopToTruth.Truth, i64 %indvars.iv.next49
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.ac = and i64 %i.ab, %.1.us
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1.us.1 = phi i64 [ %i.ac, %bb.h ], [ %i.z, %bb.g ], [ %.1.us, %bb.f ] ; 3 uses
  %indvars.iv.next49.1.a = add nuw nsw i64 %indvars.iv48.a, 2 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.a, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !114

._crit_edge.us.unr-lcssa:                         ; preds = %bb.i
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv48.epil.init.a = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next49.1.a, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %indvars.iv.epil.init = phi i64 [ %i.j, %.lr.ph.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ]
  %.042.us.epil.init = phi i64 [ -1, %.lr.ph.us ], [ %.1.us.1, %._crit_edge.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.epil.init
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8
  switch i8 %i.ae, label %._crit_edge.us [
    i8 49, label %bb.k
    i8 48, label %bb.j
  ]

bb.j:                                             ; preds = %.epil.preheader
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @Abc_SopToTruth.Truth, i64 %indvars.iv48.epil.init.a
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !52
  %i.ah = xor i64 %i.ag, -1
  %i.ai = and i64 %.042.us.epil.init, %i.ah
  br label %._crit_edge.us

bb.k:                                             ; preds = %.epil.preheader
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @Abc_SopToTruth.Truth, i64 %indvars.iv48.epil.init.a
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !52
  %i.al = and i64 %i.ak, %.042.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.j, %bb.k, %._crit_edge.us.unr-lcssa
  %.1.us.lcssa = phi i64 [ %.1.us.1, %._crit_edge.us.unr-lcssa ], [ %i.al, %bb.k ], [ %i.ai, %bb.j ], [ %.042.us.epil.init, %.epil.preheader ]
  %3 = add i32 %invariant.op, %indvars.iv
  %i.am = or i64 %.1.us.lcssa, %.027.us           ; 2 uses
  %4 = sext i32 %3 to i64
  %5 = getelementptr i8, ptr %0, i64 %4
  %i.an = getelementptr i8, ptr %5, i64 4
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %.not.us = icmp eq i8 %i.ao, 0
  %indvars.iv.next = add i32 %indvars.iv, %2
  br i1 %.not.us, label %.preheader, label %.lr.ph.us, !llvm.loop !115

.preheader:                                       ; preds = %bb.b, %._crit_edge.us, %Abc_SopGetVarNum.exit
  %.us-phi = phi i64 [ -1, %Abc_SopGetVarNum.exit ], [ %i.am, %._crit_edge.us ], [ -1, %bb.b ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.m
  %.0.i31 = phi ptr [ %i.aq, %bb.m ], [ %0, %.preheader ] ; 3 uses
  %i.ap = load i8, ptr %.0.i31, align 1, !tbaa !8
  switch i8 %i.ap, label %bb.m [
    i8 0, label %Abc_SopIsComplement.exit.thread
    i8 10, label %Abc_SopIsComplement.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i31, i64 1
  br label %bb.l, !llvm.loop !69

Abc_SopIsComplement.exit:                         ; preds = %bb.l
  %i.ar = getelementptr inbounds i8, ptr %.0.i31, i64 -1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8   ; 2 uses
  %i.at = icmp ne i8 %i.as, 48
  %i.au = icmp ne i8 %i.as, 110
  %narrow.i.not = and i1 %i.at, %i.au
  %i.av = xor i64 %.us-phi, -1
  %cond.fr = freeze i1 %narrow.i.not
  br i1 %cond.fr, label %Abc_SopIsComplement.exit.thread, label %bb.n

Abc_SopIsComplement.exit.thread:                  ; preds = %bb.l, %Abc_SopIsComplement.exit
  br label %bb.n

bb.n:                                             ; preds = %Abc_SopIsComplement.exit, %Abc_SopIsComplement.exit.thread
  %i.aw = phi i64 [ %.us-phi, %Abc_SopIsComplement.exit.thread ], [ %i.av, %Abc_SopIsComplement.exit ]
  ret i64 %i.aw
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_SopToTruth7(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi ptr [ %0, %bb.a ], [ %i.d, %bb.c ]  ; 3 uses
  %i.a = load i8, ptr %.0.i, align 1, !tbaa !8
  switch i8 %i.a, label %bb.c [
    i8 10, label %Abc_SopGetVarNum.exit
    i8 0, label %Abc_SopGetVarNum.exit.thread
  ]

Abc_SopGetVarNum.exit.thread:                     ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8
  br label %Abc_SopGetVarNum.exit.split

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.b, !llvm.loop !61

Abc_SopGetVarNum.exit:                            ; preds = %bb.b
  %i.e = ptrtoint ptr %.0.i to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = add i32 %i.h, -2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = icmp sgt i32 %i.i, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br i1 %i.k, label %.lr.ph.us.preheader, label %Abc_SopGetVarNum.exit.split

.lr.ph.us.preheader:                              ; preds = %Abc_SopGetVarNum.exit
  %3 = add i32 %i.h, 1
  %invariant.op = add i32 %i.h, -3
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i32 %i.i, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod73 = trunc i64 %i.g to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %i.m = phi <2 x i64> [ zeroinitializer, %.lr.ph.us.preheader ], [ %i.at, %._crit_edge.us ]
  %i.n = sext i32 %.0.us to i64                   ; 2 uses
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %bb.i
  %indvars.iv57.a = phi i64 [ %indvars.iv.next58.1.a, %bb.i ], [ 0, %.lr.ph.us ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.i ], [ %i.n, %.lr.ph.us ] ; 3 uses
  %i.o = phi <2 x i64> [ %i.aj, %bb.i ], [ splat (i64 -1), %.lr.ph.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.i ], [ 0, %.lr.ph.us ]
  %i.p = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  switch i8 %i.q, label %bb.f [
    i8 49, label %bb.e
    i8 48, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.us.new
  %i.r = getelementptr inbounds nuw [16 x i8], ptr @Abc_SopToTruth7.Truth, i64 %indvars.iv57.a
  %i.s = load <2 x i64>, ptr %i.r, align 16, !tbaa !52
  %i.t = xor <2 x i64> %i.s, splat (i64 -1)
  %i.u = and <2 x i64> %i.o, %i.t
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.us.new
  %i.v = getelementptr inbounds nuw [16 x i8], ptr @Abc_SopToTruth7.Truth, i64 %indvars.iv57.a
  %i.w = load <2 x i64>, ptr %i.v, align 16, !tbaa !52
  %i.x = and <2 x i64> %i.w, %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.us.new
  %i.y = phi <2 x i64> [ %i.x, %bb.e ], [ %i.u, %bb.d ], [ %i.o, %.lr.ph.us.new ] ; 3 uses
  %indvars.iv.next58 = or disjoint i64 %indvars.iv57.a, 1 ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.aa = getelementptr i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  switch i8 %i.ab, label %bb.i [
    i8 49, label %bb.h
    i8 48, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr @Abc_SopToTruth7.Truth, i64 %indvars.iv.next58
  %i.ad = load <2 x i64>, ptr %i.ac, align 16, !tbaa !52
  %i.ae = xor <2 x i64> %i.ad, splat (i64 -1)
  %i.af = and <2 x i64> %i.y, %i.ae
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr @Abc_SopToTruth7.Truth, i64 %indvars.iv.next58
  %i.ah = load <2 x i64>, ptr %i.ag, align 16, !tbaa !52
  %i.ai = and <2 x i64> %i.ah, %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.aj = phi <2 x i64> [ %i.ai, %bb.h ], [ %i.af, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  %indvars.iv.next58.1.a = add nuw nsw i64 %indvars.iv57.a, 2 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !116

._crit_edge.us.unr-lcssa:                         ; preds = %bb.i
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv57.epil.init.a = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next58.1.a, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %indvars.iv.epil.init = phi i64 [ %i.n, %.lr.ph.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ]
  %.epil.init = phi <2 x i64> [ splat (i64 -1), %.lr.ph.us ], [ %i.aj, %._crit_edge.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.epil.init
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  switch i8 %i.al, label %._crit_edge.us [
    i8 49, label %bb.k
    i8 48, label %bb.j
  ]

bb.j:                                             ; preds = %.epil.preheader
  %i.am = getelementptr inbounds nuw [16 x i8], ptr @Abc_SopToTruth7.Truth, i64 %indvars.iv57.epil.init.a
  %i.an = load <2 x i64>, ptr %i.am, align 16, !tbaa !52
  %i.ao = xor <2 x i64> %i.an, splat (i64 -1)
  %i.ap = and <2 x i64> %.epil.init, %i.ao
  br label %._crit_edge.us

bb.k:                                             ; preds = %.epil.preheader
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr @Abc_SopToTruth7.Truth, i64 %indvars.iv57.epil.init.a
  %i.ar = load <2 x i64>, ptr %i.aq, align 16, !tbaa !52
  %i.as = and <2 x i64> %i.ar, %.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.j, %bb.k, %._crit_edge.us.unr-lcssa
  %.lcssa = phi <2 x i64> [ %i.aj, %._crit_edge.us.unr-lcssa ], [ %i.as, %bb.k ], [ %i.ap, %bb.j ], [ %.epil.init, %.epil.preheader ]
  %4 = add i32 %invariant.op, %.0.us
  %i.at = or <2 x i64> %i.m, %.lcssa              ; 3 uses
  store <2 x i64> %i.at, ptr %2, align 8, !tbaa !52
  %5 = sext i32 %4 to i64
  %6 = getelementptr i8, ptr %0, i64 %5
  %i.au = getelementptr i8, ptr %6, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %.not.us = icmp eq i8 %i.av, 0
  %indvars.iv.next = add i32 %.0.us, %3
  br i1 %.not.us, label %.preheader.loopexit, label %.lr.ph.us, !llvm.loop !117

Abc_SopGetVarNum.exit.split:                      ; preds = %Abc_SopGetVarNum.exit.thread, %Abc_SopGetVarNum.exit
  %i.aw = phi ptr [ %i.b, %Abc_SopGetVarNum.exit.thread ], [ %i.j, %Abc_SopGetVarNum.exit ] ; 2 uses
  store i64 -1, ptr %2, align 8, !tbaa !52
  store i64 -1, ptr %i.aw, align 8, !tbaa !52
  br label %.preheader

.preheader.loopexit:                              ; preds = %._crit_edge.us
  %i.ax = xor <2 x i64> %i.at, splat (i64 -1)
  br label %.preheader

.preheader:                                       ; preds = %Abc_SopGetVarNum.exit.split, %.preheader.loopexit
  %i.ay = phi ptr [ %i.j, %.preheader.loopexit ], [ %i.aw, %Abc_SopGetVarNum.exit.split ]
  %i.az = phi <2 x i64> [ %i.ax, %.preheader.loopexit ], [ zeroinitializer, %Abc_SopGetVarNum.exit.split ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.m
  %.0.i35 = phi ptr [ %i.bb, %bb.m ], [ %0, %.preheader ] ; 3 uses
  %i.ba = load i8, ptr %.0.i35, align 1, !tbaa !8
  switch i8 %i.ba, label %bb.m [
    i8 0, label %Abc_SopIsComplement.exit.thread
    i8 10, label %Abc_SopIsComplement.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i35, i64 1
  br label %bb.l, !llvm.loop !69

Abc_SopIsComplement.exit:                         ; preds = %bb.l
  %i.bc = getelementptr inbounds i8, ptr %.0.i35, i64 -1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  switch i8 %i.bd, label %Abc_SopIsComplement.exit.thread [
    i8 110, label %bb.n
    i8 48, label %bb.n
  ]

bb.n:                                             ; preds = %Abc_SopIsComplement.exit, %Abc_SopIsComplement.exit
  %i.be = extractelement <2 x i64> %i.az, i64 0
  store i64 %i.be, ptr %2, align 8, !tbaa !52
  %i.bf = extractelement <2 x i64> %i.az, i64 1
  store i64 %i.bf, ptr %i.ay, align 8, !tbaa !52
  br label %Abc_SopIsComplement.exit.thread

Abc_SopIsComplement.exit.thread:                  ; preds = %bb.l, %Abc_SopIsComplement.exit, %bb.n
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Abc_SopToTruthBig(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #17 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi ptr [ %0, %bb.a ], [ %i.b, %bb.c ]  ; 3 uses
  %i.a = load i8, ptr %.0.i, align 1, !tbaa !8
  switch i8 %i.a, label %bb.c [
    i8 10, label %Abc_SopGetVarNum.exit
    i8 0, label %.lr.ph.preheader
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.b, !llvm.loop !61

Abc_SopGetVarNum.exit:                            ; preds = %bb.b
  %i.c = ptrtoint ptr %.0.i to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = add i32 %i.f, -2                         ; 4 uses
  %i.h = icmp slt i32 %i.g, 7
  br i1 %i.h, label %.lr.ph.preheader, label %Abc_SopGetVarNum.exit.thread

Abc_SopGetVarNum.exit.thread:                     ; preds = %Abc_SopGetVarNum.exit
  %i.i = add i32 %i.f, -8                         ; 2 uses
  %i.j = shl nuw i32 1, %i.i
  %.not140 = icmp eq i32 %i.i, 31
  br i1 %.not140, label %.preheader81, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %Abc_SopGetVarNum.exit, %Abc_SopGetVarNum.exit.thread
  %i.k = phi i32 [ %i.j, %Abc_SopGetVarNum.exit.thread ], [ 1, %Abc_SopGetVarNum.exit ], [ 1, %bb.b ]
  %.06.i68135 = phi i32 [ %i.g, %Abc_SopGetVarNum.exit.thread ], [ %i.g, %Abc_SopGetVarNum.exit ], [ -1, %bb.b ]
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, i8 0, i64 %i.m, i1 false), !tbaa !52
  br label %.preheader81

.preheader81:                                     ; preds = %Abc_SopGetVarNum.exit.thread, %.lr.ph.preheader
  %i.n = phi i1 [ true, %.lr.ph.preheader ], [ false, %Abc_SopGetVarNum.exit.thread ] ; 5 uses
  %.06.i68134 = phi i32 [ %.06.i68135, %.lr.ph.preheader ], [ %i.g, %Abc_SopGetVarNum.exit.thread ] ; 3 uses
  %.pre-phi131 = phi i64 [ %i.m, %.lr.ph.preheader ], [ 17179869184, %Abc_SopGetVarNum.exit.thread ]
  %.pre-phi = phi i64 [ %i.l, %.lr.ph.preheader ], [ 2147483648, %Abc_SopGetVarNum.exit.thread ] ; 23 uses
  %i.o = icmp sgt i32 %.06.i68134, 0
  %wide.trip.count118 = zext nneg i32 %.06.i68134 to i64
  %i.p = shl nuw nsw i64 %.pre-phi, 3             ; 4 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.p
  %scevgep145 = getelementptr i8, ptr %3, i64 %i.p ; 3 uses
  %min.iters.check174 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec176 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n185 = icmp eq i64 %.pre-phi, %n.vec176
  %xtraiter = and i64 %.pre-phi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check155 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec157 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n166 = icmp eq i64 %.pre-phi, %n.vec157
  %xtraiter205 = and i64 %.pre-phi, 3             ; 2 uses
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  %min.iters.check = icmp samesign ult i64 %.pre-phi, 4
  %bound0 = icmp ult ptr %4, %scevgep145
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %.pre-phi, 4294967292          ; 3 uses
  %cmp.n = icmp eq i64 %.pre-phi, %n.vec
  %xtraiter207 = and i64 %.pre-phi, 3             ; 2 uses
  %lcmp.mod208.not = icmp eq i64 %xtraiter207, 0
  br label %bb.d

bb.d:                                             ; preds = %.preheader81, %._crit_edge
  %.0 = phi i32 [ %i.dq, %._crit_edge ], [ 0, %.preheader81 ] ; 3 uses
  br i1 %i.n, label %.lr.ph86.preheader, label %.preheader80

.lr.ph86.preheader:                               ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 -1, i64 %.pre-phi131, i1 false), !tbaa !52
  br label %.preheader80

.preheader80:                                     ; preds = %.lr.ph86.preheader, %bb.d
  br i1 %i.o, label %.lr.ph94.preheader, label %.preheader79

.lr.ph94.preheader:                               ; preds = %.preheader80
  %i.q = sext i32 %.0 to i64
  br label %.lr.ph94

.preheader79.loopexit:                            ; preds = %.loopexit
  %i.r = add i32 %.06.i68134, %.0
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.loopexit, %.preheader80
  %.1.lcssa = phi i32 [ %.0, %.preheader80 ], [ %i.r, %.preheader79.loopexit ]
  br i1 %i.n, label %.lr.ph96.preheader, label %._crit_edge

.lr.ph96.preheader:                               ; preds = %.preheader79
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph96.preheader203, label %vector.body

vector.body:                                      ; preds = %.lr.ph96.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph96.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x i64>, ptr %i.s, align 8, !tbaa !52, !alias.scope !118
  %wide.load146 = load <2 x i64>, ptr %i.t, align 8, !tbaa !52, !alias.scope !118
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %wide.load147 = load <2 x i64>, ptr %i.u, align 8, !tbaa !52, !alias.scope !121, !noalias !118
  %wide.load148 = load <2 x i64>, ptr %i.v, align 8, !tbaa !52, !alias.scope !121, !noalias !118
  %i.w = or <2 x i64> %wide.load147, %wide.load
  %i.x = or <2 x i64> %wide.load148, %wide.load146
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !52, !alias.scope !121, !noalias !118
  store <2 x i64> %i.x, ptr %i.v, align 8, !tbaa !52, !alias.scope !121, !noalias !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph96.preheader203

.lr.ph96.preheader203:                            ; preds = %.lr.ph96.preheader, %middle.block
  %indvars.iv120.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph96.preheader ] ; 3 uses
  br i1 %lcmp.mod208.not, label %.lr.ph96.prol.loopexit, label %.lr.ph96.prol

.lr.ph96.prol:                                    ; preds = %.lr.ph96.preheader203, %.lr.ph96.prol
  %indvars.iv120.prol = phi i64 [ %indvars.iv.next121.prol, %.lr.ph96.prol ], [ %indvars.iv120.ph, %.lr.ph96.preheader203 ] ; 3 uses
  %prol.iter209 = phi i64 [ %prol.iter209.next, %.lr.ph96.prol ], [ 0, %.lr.ph96.preheader203 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv120.prol
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv120.prol ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !52
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !52
  %indvars.iv.next121.prol = add nuw nsw i64 %indvars.iv120.prol, 1 ; 2 uses
  %prol.iter209.next = add i64 %prol.iter209, 1   ; 2 uses
  %prol.iter209.cmp.not = icmp eq i64 %prol.iter209.next, %xtraiter207
  br i1 %prol.iter209.cmp.not, label %.lr.ph96.prol.loopexit, label %.lr.ph96.prol, !llvm.loop !124

.lr.ph96.prol.loopexit:                           ; preds = %.lr.ph96.prol, %.lr.ph96.preheader203
  %indvars.iv120.unr = phi i64 [ %indvars.iv120.ph, %.lr.ph96.preheader203 ], [ %indvars.iv.next121.prol, %.lr.ph96.prol ]
  %i.ae = sub nsw i64 %indvars.iv120.ph, %.pre-phi
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %._crit_edge, label %.lr.ph96

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.loopexit
  %indvars.iv113 = phi i64 [ 0, %.lr.ph94.preheader ], [ %indvars.iv.next114, %.loopexit ] ; 3 uses
  %indvars.iv111 = phi i64 [ %i.q, %.lr.ph94.preheader ], [ %indvars.iv.next112, %.loopexit ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %indvars.iv111
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  switch i8 %i.ah, label %.loopexit [
    i8 49, label %.preheader76
    i8 48, label %.preheader77
  ]

end_hunk_0
