inline.NumInlined: 286
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 49
begin_hunk_0_@Dau_CollectNpnFunctions:bb.a
  %i.ir = icmp eq i64 %index.next230, %n.vec217
  br i1 %i.ir, label %Abc_TtSwapAdjacent.exit.us, label %vector.body226, !llvm.loop !168

scalar.ph214:                                     ; preds = %.lr.ph64.i.us
  %i.is = load i64, ptr %i.m, align 8, !tbaa !15  ; 3 uses
  %i.it = and i64 %i.is, %i.hv
  %i.iu = and i64 %i.is, %i.hx
  %i.iv = shl i64 %i.iu, %i.hy
  %i.iw = or i64 %i.iv, %i.it
  %i.ix = and i64 %i.is, %i.ia
  %i.iy = lshr i64 %i.ix, %i.hy
  %i.iz = or i64 %i.iw, %i.iy
  store i64 %i.iz, ptr %i.m, align 8, !tbaa !15
  br i1 %exitcond74.not.i.us, label %Abc_TtSwapAdjacent.exit.us, label %scalar.ph214.1

scalar.ph214.1:                                   ; preds = %scalar.ph214
  %i.ja = load i64, ptr %i.fg, align 8, !tbaa !15 ; 3 uses
  %i.jb = and i64 %i.ja, %i.hv
  %i.jc = and i64 %i.ja, %i.hx
  %i.jd = shl i64 %i.jc, %i.hy
  %i.je = or i64 %i.jd, %i.jb
  %i.jf = and i64 %i.ja, %i.ia
  %i.jg = lshr i64 %i.jf, %i.hy
  %i.jh = or i64 %i.je, %i.jg
  store i64 %i.jh, ptr %i.fg, align 8, !tbaa !15
  br i1 %exitcond74.not.i.us.1, label %Abc_TtSwapAdjacent.exit.us, label %scalar.ph214.2

scalar.ph214.2:                                   ; preds = %scalar.ph214.1
  %i.ji = load i64, ptr %i.fh, align 8, !tbaa !15 ; 3 uses
  %i.jj = and i64 %i.ji, %i.hv
  %i.jk = and i64 %i.ji, %i.hx
  %i.jl = shl i64 %i.jk, %i.hy
  %i.jm = or i64 %i.jl, %i.jj
  %i.jn = and i64 %i.ji, %i.ia
  %i.jo = lshr i64 %i.jn, %i.hy
  %i.jp = or i64 %i.jm, %i.jo
  store i64 %i.jp, ptr %i.fh, align 8, !tbaa !15
  br label %Abc_TtSwapAdjacent.exit.us

Abc_TtSwapAdjacent.exit.us:                       ; preds = %._crit_edge.us.i103.us, %.lr.ph.i104.us, %vector.body226, %scalar.ph214, %scalar.ph214.1, %scalar.ph214.2, %bb.m, %bb.l, %.preheader.lr.ph.i95.us, %bb.k
  %i.jq = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.f, ptr noundef %i.m) ; 0 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %._crit_edge116.us, label %Abc_TtCopy.exit94.us, !llvm.loop !169

._crit_edge116.us:                                ; preds = %Abc_TtSwapAdjacent.exit.us
  %i.jr = add nuw nsw i32 %.058117.us, 1          ; 2 uses
  %exitcond134.not = icmp eq i32 %i.jr, %.val67
  br i1 %exitcond134.not, label %._crit_edge120, label %.lr.ph119.split.us, !llvm.loop !170

._crit_edge120:                                   ; preds = %._crit_edge116.us, %.lr.ph119, %bb.i
  %.not63 = icmp eq ptr %i.am, null
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge120
  call void @free(ptr noundef nonnull %i.am) #27
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge120, %bb.n
  %.not64 = icmp eq ptr %i.an, null
  br i1 %.not64, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.an) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.not65 = icmp eq ptr %i.m, null
  br i1 %.not65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.m) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val = load i32, ptr %i.eu, align 4, !tbaa !87
  %i.js = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %.val) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.jt = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #27
  %i.ju = icmp slt i32 %i.jt, 0
  br i1 %i.ju, label %Abc_Clock.exit106, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jv = load i64, ptr %3, align 8, !tbaa !8
  %i.jw = mul nsw i64 %i.jv, 1000000
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !11
  %i.jz = sdiv i64 %i.jy, 1000
  %i.ka = add nsw i64 %i.jz, %i.jw
  br label %Abc_Clock.exit106

Abc_Clock.exit106:                                ; preds = %bb.t, %bb.u
  %.0.i105 = phi i64 [ %i.ka, %bb.u ], [ -1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.kb = add i64 %.0.i105, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.3)
  %i.kc = sitofp i64 %i.kb to double
  %i.kd = fdiv double %i.kc, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.34, double noundef %i.kd)
  %i.ke = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.kf = call i32 @fflush(ptr noundef %i.ke)     ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %Abc_Clock.exit106, %bb.s
  ret ptr %i.f
}

; Function Attrs: inlinehint nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Vec_MemAllocForTTSimple(i32 noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = icmp slt i32 %0, 7
  %i.b = add nsw i32 %0, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c
  %i.e = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #28 ; 7 uses
  store i32 %i.d, ptr %i.e, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 12, ptr %i.f, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 4095, ptr %i.g, align 4, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 -1, ptr %i.h, align 4, !tbaa !83
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.a
  %.012.i.i = phi i32 [ 9999, %bb.a ], [ %i.i, %.critedge.i.i.backedge ] ; 3 uses
  %i.i = add i32 %.012.i.i, 1                     ; 7 uses
  %i.j = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.i, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.l = mul nuw nsw i32 %i.k, %i.k
  %.not.i.i = icmp ugt i32 %i.l, %i.i
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !84

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.b
  %.01116.i.i = phi i32 [ %i.k, %bb.b ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.m = urem i32 %i.i, %.01116.i.i
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge.i.i.backedge, label %bb.b

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.b
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 4 uses
  %or.cond.i.i.i = icmp samesign ult i32 %.012.i.i, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.i ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.o, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = zext nneg i32 %spec.store.select.i.i.i to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #29 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !25
  store i32 %i.i, ptr %i.p, align 4, !tbaa !21
  %.not.i3.i = icmp eq ptr %i.s, null
  br i1 %.not.i3.i, label %Vec_MemHashAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_PrimeCudd.exit.i
  %i.u = zext nneg i32 %i.i to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 -1, i64 %i.v, i1 false)
  br label %Vec_MemHashAlloc.exit

Vec_MemHashAlloc.exit:                            ; preds = %Abc_PrimeCudd.exit.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.o, ptr %i.w, align 8, !tbaa !85
  %i.x = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 0, ptr %i.y, align 4, !tbaa !21
  store i32 10000, ptr %i.x, align 8, !tbaa !24
  %i.z = tail call noalias dereferenceable_or_null(40000) ptr @malloc(i64 noundef 40000) #29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !86
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Dau_CollectBoothFunctions(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = add nsw i32 %0, 1                        ; 9 uses
  %i.b = icmp slt i32 %0, 6                       ; 3 uses
  %i.c = add nsw i32 %0, -5                       ; 3 uses
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d
  %i.f = add nsw i32 %0, -1                       ; 3 uses
  %i.g = shl nuw i32 1, %i.f                      ; 3 uses
  %i.h = tail call fastcc ptr @Vec_MemAllocForTTSimple(i32 noundef %i.a) ; 3 uses
  %i.i = shl i32 %i.e, %i.f
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #28 ; 7 uses
  %.not59 = icmp eq i32 %i.a, 31
  br i1 %.not59, label %.lr.ph, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.a
  %i.l = shl nuw i32 1, %i.a
  %i.m = icmp sgt i32 %0, 1
  %i.n = shl nuw i32 1, %0                        ; 2 uses
  %i.o = select i1 %i.b, i32 0, i32 %i.c          ; 2 uses
  %smax64 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1) ; 2 uses
  br i1 %i.m, label %.lr.ph.us.preheader, label %.lr.ph57.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph57
  %1 = add nsw i32 %0, -1                         ; 3 uses
  %xtraiter = and i32 %1, 1
  %i.p = icmp eq i32 %0, 2
  %unroll_iter = and i32 %1, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod83 = trunc i32 %1 to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.c
  %.04655.us = phi i32 [ %i.an, %bb.c ], [ 0, %.lr.ph.us.preheader ] ; 8 uses
  %i.q = and i32 %.04655.us, 1                    ; 2 uses
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.054.us = phi i32 [ %.1.us.1, %.lr.ph.us.new ], [ %i.q, %.lr.ph.us ]
  %.04553.us = phi i32 [ %i.aa, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.r = shl nuw i32 1, %.04553.us
  %i.s = and i32 %i.r, %.04655.us
  %.not51.us = icmp eq i32 %i.s, 0
  %i.t = add nsw i32 %.04553.us, -1
  %i.u = shl nuw i32 1, %i.t
  %i.v = select i1 %.not51.us, i32 0, i32 %i.u
  %.1.us = add nsw i32 %i.v, %.054.us
  %i.w = shl nuw i32 2, %.04553.us
  %i.x = and i32 %i.w, %.04655.us
  %.not51.us.1 = icmp eq i32 %i.x, 0
  %i.y = shl nuw i32 1, %.04553.us
  %i.z = select i1 %.not51.us.1, i32 0, i32 %i.y
  %.1.us.1 = add nsw i32 %i.z, %.1.us             ; 3 uses
  %i.aa = add nuw nsw i32 %.04553.us, 2           ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !171

bb.b:                                             ; preds = %._crit_edge.us
  %spec.select.us = sub nsw i32 %.1.us.lcssa, %i.au
  %spec.select52.us = tail call i32 @llvm.abs.i32(i32 %spec.select.us, i1 true)
  %i.ab = add nsw i32 %spec.select52.us, -1
  %i.ac = shl i32 %i.ab, %i.o
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ad
  %i.af = and i32 %.04655.us, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = lshr i32 %.04655.us, 6
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !15
  %i.am = or i64 %i.al, %i.ah
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.us
  %i.an = add nuw nsw i32 %.04655.us, 1           ; 2 uses
  %exitcond65.not = icmp eq i32 %i.an, %smax64
  br i1 %exitcond65.not, label %.preheader, label %.lr.ph.us, !llvm.loop !172

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.054.us.epil.init = phi i32 [ %i.q, %.lr.ph.us ], [ %.1.us.1, %._crit_edge.us.unr-lcssa ]
  %.04553.us.epil.init = phi i32 [ 1, %.lr.ph.us ], [ %i.aa, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.ao = shl nuw i32 1, %.04553.us.epil.init
  %i.ap = and i32 %i.ao, %.04655.us
  %.not51.us.epil = icmp eq i32 %i.ap, 0
  %i.aq = add nsw i32 %.04553.us.epil.init, -1
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = select i1 %.not51.us.epil, i32 0, i32 %i.ar
  %.1.us.epil = add nsw i32 %i.as, %.054.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.1.us.lcssa = phi i32 [ %.1.us.1, %._crit_edge.us.unr-lcssa ], [ %.1.us.epil, %.epil.preheader ] ; 2 uses
  %i.at = and i32 %.04655.us, %i.n
  %.not50.us = icmp eq i32 %i.at, 0
  %i.au = select i1 %.not50.us, i32 0, i32 %i.g   ; 2 uses
  %i.av = icmp eq i32 %.1.us.lcssa, %i.au
  br i1 %i.av, label %bb.c, label %bb.b

.preheader:                                       ; preds = %bb.e, %bb.c
  %.not60 = icmp eq i32 %i.f, 31
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.preheader
  %i.aw = icmp slt i32 %0, 5
  %i.ax = icmp eq i32 %i.a, 0
  %i.ay = icmp ult i32 %i.a, 2
  %i.az = icmp ult i32 %i.a, 3
  %i.ba = icmp ult i32 %i.a, 4
  %i.bb = icmp ult i32 %i.a, 5
  %i.bc = icmp ult i32 %i.a, 6
  %i.bd = select i1 %i.b, i32 0, i32 %i.c
  %smax69 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  br i1 %i.aw, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %smax69 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !15 ; 7 uses
  %i.bg = trunc i64 %i.bf to i1
  %i.bh = select i1 %i.bg, i64 3, i64 0
  %i.bi = and i64 %i.bf, 3
  %i.bj = select i1 %i.ax, i64 %i.bh, i64 %i.bi
  %i.bk = mul nuw nsw i64 %i.bj, 5
  %.126.i.us = select i1 %i.ay, i64 %i.bk, i64 %i.bf
  %i.bl = and i64 %.126.i.us, 15
  %i.bm = mul nuw nsw i64 %i.bl, 17
  %.227.i.us = select i1 %i.az, i64 %i.bm, i64 %i.bf
  %i.bn = and i64 %.227.i.us, 255
  %i.bo = mul nuw nsw i64 %i.bn, 257
  %.328.i.us = select i1 %i.ba, i64 %i.bo, i64 %i.bf
  %i.bp = and i64 %.328.i.us, 65535
  %i.bq = mul nuw nsw i64 %i.bp, 65537
  %.429.i.us = select i1 %i.bb, i64 %i.bq, i64 %i.bf
  %i.br = and i64 %.429.i.us, 4294967295
  %i.bs = mul nuw i64 %i.br, 4294967297
  %.5.i.us = select i1 %i.bc, i64 %i.bs, i64 %i.bf
  store i64 %.5.i.us, ptr %i.be, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.bu = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.h, ptr noundef %i.bt) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond70.not, label %._crit_edge.thread, label %.lr.ph.split.us, !llvm.loop !173

.lr.ph57.split:                                   ; preds = %.lr.ph57, %bb.e
  %.04655 = phi i32 [ %i.cl, %bb.e ], [ 0, %.lr.ph57 ] ; 5 uses
  %i.bv = and i32 %.04655, 1                      ; 2 uses
  %i.bw = and i32 %.04655, %i.n
  %.not50 = icmp eq i32 %i.bw, 0
  %i.bx = select i1 %.not50, i32 0, i32 %i.g      ; 2 uses
  %i.by = icmp eq i32 %i.bv, %i.bx
  br i1 %i.by, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph57.split
  %spec.select = sub nsw i32 %i.bv, %i.bx
  %spec.select52 = tail call i32 @llvm.abs.i32(i32 %spec.select, i1 true)
  %i.bz = add nsw i32 %spec.select52, -1
  %i.ca = shl i32 %i.bz, %i.o
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cb
  %i.cd = and i32 %.04655, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = lshr i32 %.04655, 6
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ch ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !15
  %i.ck = or i64 %i.cj, %i.cf
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph57.split, %bb.d
  %i.cl = add nuw nsw i32 %.04655, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %smax64
  br i1 %exitcond.not, label %.preheader, label %.lr.ph57.split, !llvm.loop !172

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.04458 = phi i32 [ %i.cq, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.cm = shl i32 %.04458, %i.bd
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cn
  %i.cp = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.h, ptr noundef %i.co) ; 0 uses
  %i.cq = add nuw nsw i32 %.04458, 1              ; 2 uses
  %exitcond67.not = icmp eq i32 %i.cq, %smax69
  br i1 %exitcond67.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !173

._crit_edge:                                      ; preds = %.lr.ph.split, %.preheader
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.f, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.us, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.k) #27
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %._crit_edge.thread
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define void @Dau_PrintNpnFunction(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(address) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %3, 7
  %i.b = add nsw i32 %3, -6
  %i.c = shl nuw i32 1, %i.b                      ; 3 uses
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 11 uses
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %1) ; 0 uses
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.lr.ph.i, label %Abc_TtPrintBits2.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.0.in4.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %3, %bb.b ] ; 2 uses
  %.0.i = add nsw i32 %.0.in4.i, -1               ; 2 uses
  %i.g = and i32 %.0.i, 31
  %i.h = lshr i32 %4, %i.g
  %i.i = and i32 %i.h, 1
end_hunk_0
