Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/decoders_dcraw?download=true
inline.NumInlined: 216
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN6LibRaw10getbithuffEiPt:bb.a

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !80   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.ae = icmp ne i32 %i.ad, 0                    ; 2 uses
  %i.af = zext i1 %i.ae to i32
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !8   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.af, ptr %i.ah, align 8, !tbaa !71
  br i1 %i.ae, label %.critedge.loopexit, label %bb.h

.critedge24:                                      ; preds = %bb.f
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !8   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 0, ptr %i.aj, align 8, !tbaa !71
  br label %bb.h

bb.h:                                             ; preds = %.critedge24, %bb.g
  %i.ak = phi ptr [ %i.ai, %.critedge24 ], [ %i.ag, %bb.g ] ; 4 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !79
  %i.am = shl i32 %i.al, 8
  %i.an = and i32 %i.v, 255
  %i.ao = or disjoint i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.ak, align 8, !tbaa !79
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !78
  %i.ar = add nsw i32 %i.aq, 8                    ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !78
  %i.as = icmp slt i32 %i.ar, %1
  br i1 %i.as, label %.lr.ph37, label %.critedge.loopexit, !llvm.loop !84

.critedge.loopexit:                               ; preds = %bb.g, %bb.h, %.lr.ph, %..critedge.loopexit_crit_edge
  %.pre = phi ptr [ %.pre.pre, %..critedge.loopexit_crit_edge ], [ %i.i, %.lr.ph ], [ %i.ak, %bb.h ], [ %i.ag, %bb.g ] ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre29 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %i.at = phi i32 [ %.pre29, %.critedge.loopexit ], [ %i.k, %.preheader ] ; 3 uses
  %i.au = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.i, %.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = icmp eq i32 %i.at, 0
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ax = load i32, ptr %i.au, align 8, !tbaa !79
  %i.ay = sub nsw i32 32, %i.at
  %i.az = shl i32 %i.ax, %i.ay
  %i.ba = sub nuw nsw i32 32, %1
  %i.bb = lshr i32 %i.az, %i.ba
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %i.bc = phi i32 [ %i.bb, %bb.i ], [ 0, %.critedge ] ; 2 uses
  %.not22 = icmp eq ptr %2, null
  br i1 %.not22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !86 ; 2 uses
  %i.bg = lshr i16 %i.bf, 8
  %i.bh = zext nneg i16 %i.bg to i32
  %i.bi = and i16 %i.bf, 255
  %i.bj = zext nneg i16 %i.bi to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pn = phi i32 [ %i.bh, %bb.k ], [ %1, %bb.j ]
  %.0 = phi i32 [ %i.bj, %bb.k ], [ %i.bc, %bb.j ] ; 2 uses
  %.sink = sub nsw i32 %i.at, %.pn                ; 2 uses
  store i32 %.sink, ptr %i.av, align 4, !tbaa !78
  %i.bk = icmp slt i32 %.sink, 0
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.d, %bb.e, %bb.a, %bb.c
  %.016 = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.e ], [ %.0, %bb.m ], [ %.0, %bb.l ]
  ret i32 %.016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87     ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %1, align 8, !tbaa !87
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.e = load i8, ptr %i.d, align 1, !tbaa !88
  %.not31 = icmp eq i8 %i.e, 0
  br i1 %.not31, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.g = load i8, ptr %i.f, align 1, !tbaa !88
  %.not31.1 = icmp eq i8 %i.g, 0
  br i1 %.not31.1, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.i = load i8, ptr %i.h, align 1, !tbaa !88
  %.not31.2 = icmp eq i8 %i.i, 0
  br i1 %.not31.2, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.k = load i8, ptr %i.j, align 1, !tbaa !88
  %.not31.3 = icmp eq i8 %i.k, 0
  br i1 %.not31.3, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.m = load i8, ptr %i.l, align 1, !tbaa !88
  %.not31.4 = icmp eq i8 %i.m, 0
  br i1 %.not31.4, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.o = load i8, ptr %i.n, align 1, !tbaa !88
  %.not31.5 = icmp eq i8 %i.o, 0
  br i1 %.not31.5, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !88
  %.not31.6 = icmp eq i8 %i.q, 0
  br i1 %.not31.6, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i8, ptr %i.r, align 1, !tbaa !88
  %.not31.7 = icmp eq i8 %i.s, 0
  br i1 %.not31.7, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.u = load i8, ptr %i.t, align 1, !tbaa !88
  %.not31.8 = icmp eq i8 %i.u, 0
  br i1 %.not31.8, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.w = load i8, ptr %i.v, align 1, !tbaa !88
  %.not31.9 = icmp eq i8 %i.w, 0
  br i1 %.not31.9, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.y = load i8, ptr %i.x, align 1, !tbaa !88
  %.not31.10 = icmp eq i8 %i.y, 0
  br i1 %.not31.10, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !88
  %.not31.11 = icmp eq i8 %i.aa, 0
  br i1 %.not31.11, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !88
  %.not31.12 = icmp eq i8 %i.ac, 0
  br i1 %.not31.12, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !88
  %.not31.13 = icmp eq i8 %i.ae, 0
  br i1 %.not31.13, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !88
  %.not31.14 = icmp eq i8 %i.ag, 0
  br i1 %.not31.14, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.ah = load i8, ptr %i.a, align 1, !tbaa !88
  %.not31.15 = icmp eq i8 %i.ah, 0                ; 2 uses
  %not..not31.15 = xor i1 %.not31.15, true
  %spec.select52 = zext i1 %not..not31.15 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.not3242 = phi i1 [ false, %bb.i ], [ false, %bb.a ], [ false, %bb.b ], [ %.not31.15, %bb.p ], [ false, %bb.c ], [ false, %bb.k ], [ false, %bb.d ], [ false, %bb.o ], [ false, %bb.e ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.n ], [ false, %bb.g ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.m ]
  %.030.lcssa = phi i32 [ 8, %bb.i ], [ 16, %bb.a ], [ 15, %bb.b ], [ %spec.select52, %bb.p ], [ 14, %bb.c ], [ 6, %bb.k ], [ 13, %bb.d ], [ 2, %bb.o ], [ 12, %bb.e ], [ 7, %bb.j ], [ 11, %bb.f ], [ 3, %bb.n ], [ 10, %bb.g ], [ 5, %bb.l ], [ 9, %bb.h ], [ 4, %bb.m ] ; 5 uses
  %i.ai = shl nuw nsw i32 1, %.030.lcssa          ; 4 uses
  %i.aj = add nuw nsw i32 %i.ai, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ak, i64 noundef 2) ; 5 uses
  %i.am = trunc nuw nsw i32 %.030.lcssa to i16
  store i16 %i.am, ptr %i.al, align 2, !tbaa !86
  br i1 %.not3242, label %._crit_edge, label %.preheader34.preheader

.preheader34.preheader:                           ; preds = %.critedge
  %i.an = add nuw nsw i32 %.030.lcssa, 1
  %wide.trip.count = zext nneg i32 %i.an to i64
  br label %.preheader34

.preheader34:                                     ; preds = %.preheader34.preheader, %._crit_edge40
  %indvar = phi i32 [ 0, %.preheader34.preheader ], [ %indvar.next, %._crit_edge40 ] ; 2 uses
  %indvars.iv.a = phi i64 [ 1, %.preheader34.preheader ], [ %indvars.iv.next, %._crit_edge40 ] ; 3 uses
  %indvars.iv.in = phi i32 [ %.030.lcssa, %.preheader34.preheader ], [ %indvars.iv, %._crit_edge40 ]
  %.02844 = phi i32 [ 1, %.preheader34.preheader ], [ %.1.lcssa, %._crit_edge40 ] ; 2 uses
  %2 = xor i32 %indvar, -1
  %3 = add i32 %.030.lcssa, %2
  %4 = shl nuw i32 1, %3
  %indvars.iv = add i32 %indvars.iv.in, -1        ; 2 uses
  %5 = shl nuw i32 1, %indvars.iv
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 1) ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.a ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !88
  %.not45 = icmp eq i8 %i.ap, 0
  br i1 %.not45, label %._crit_edge40, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader34
  %indvars.iv49.tr = trunc i64 %indvars.iv.a to i16
  %6 = shl i16 %indvars.iv49.tr, 8                ; 3 uses
  %xtraiter = and i32 %smax, 1
  %7 = icmp slt i32 %4, 2
  %unroll_iter = and i32 %smax, 2147483646
  %i.aq = icmp eq i32 %xtraiter, 0
  %lcmp.mod57 = trunc i32 %smax to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.02739.us = phi i32 [ %i.bm, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.138.us = phi i32 [ %.3.us.lcssa, %._crit_edge.us ], [ %.02844, %.preheader.us.preheader ] ; 2 uses
  br i1 %7, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.t
  %.236.us = phi i32 [ %.3.us.1, %bb.t ], [ %.138.us, %.preheader.us ] ; 4 uses
  %niter = phi i32 [ %niter.next.1, %bb.t ], [ 0, %.preheader.us ]
  %.not33.us = icmp sgt i32 %.236.us, %i.ai
  br i1 %.not33.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.us.new
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !88
  %i.at = zext i8 %i.as to i16
  %i.au = or disjoint i16 %6, %i.at
  %i.av = add nsw i32 %.236.us, 1
  %i.aw = sext i32 %.236.us to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.aw
  store i16 %i.au, ptr %i.ax, align 2, !tbaa !86
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader.us.new
  %.3.us = phi i32 [ %i.av, %bb.q ], [ %.236.us, %.preheader.us.new ] ; 4 uses
  %.not33.us.1 = icmp sgt i32 %.3.us, %i.ai
  br i1 %.not33.us.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = load ptr, ptr %1, align 8, !tbaa !87
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !88
  %i.ba = zext i8 %i.az to i16
  %i.bb = or disjoint i16 %6, %i.ba
  %i.bc = add nsw i32 %.3.us, 1
  %i.bd = sext i32 %.3.us to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.bd
  store i16 %i.bb, ptr %i.be, align 2, !tbaa !86
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.3.us.1 = phi i32 [ %i.bc, %bb.s ], [ %.3.us, %bb.r ] ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !89

._crit_edge.us.unr-lcssa:                         ; preds = %bb.t
  br i1 %i.aq, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %.236.us.epil.init = phi i32 [ %.138.us, %.preheader.us ], [ %.3.us.1, %._crit_edge.us.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod57)
  %.not33.us.epil = icmp sgt i32 %.236.us.epil.init, %i.ai
  br i1 %.not33.us.epil, label %._crit_edge.us, label %bb.u

bb.u:                                             ; preds = %.epil.preheader
  %i.bf = load ptr, ptr %1, align 8, !tbaa !87
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !88
  %i.bh = zext i8 %i.bg to i16
  %i.bi = or disjoint i16 %6, %i.bh
  %i.bj = add nsw i32 %.236.us.epil.init, 1
  %i.bk = sext i32 %.236.us.epil.init to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.bk
  store i16 %i.bi, ptr %i.bl, align 2, !tbaa !86
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.u, %._crit_edge.us.unr-lcssa
  %.3.us.lcssa = phi i32 [ %.3.us.1, %._crit_edge.us.unr-lcssa ], [ %i.bj, %bb.u ], [ %.236.us.epil.init, %.epil.preheader ] ; 2 uses
  %i.bm = add nuw nsw i32 %.02739.us, 1           ; 2 uses
  %i.bn = load ptr, ptr %1, align 8, !tbaa !87
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.bo, ptr %1, align 8, !tbaa !87
  %i.bp = load i8, ptr %i.ao, align 1, !tbaa !88
  %i.bq = zext i8 %i.bp to i32
  %i.br = icmp samesign ult i32 %i.bm, %i.bq
  br i1 %i.br, label %.preheader.us, label %._crit_edge40, !llvm.loop !90

._crit_edge40:                                    ; preds = %._crit_edge.us, %.preheader34
  %.1.lcssa = phi i32 [ %.02844, %.preheader34 ], [ %.3.us.lcssa, %._crit_edge.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond50.not, label %._crit_edge, label %.preheader34, !llvm.loop !91

._crit_edge:                                      ; preds = %._crit_edge40, %.critedge
  ret ptr %i.al
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6LibRaw12make_decoderEPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !87
  %i.b = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15crw_init_tablesEjPPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %1, i32 2)
  %i.c = zext nneg i32 %spec.store.select to i64  ; 2 uses
  %i.d = getelementptr inbounds nuw [29 x i8], ptr @_ZZN6LibRaw15crw_init_tablesEjPPtE10first_tree, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !87
  %i.e = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %2, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw [180 x i8], ptr @_ZZN6LibRaw15crw_init_tablesEjPPtE11second_tree, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8, !tbaa !87
  %i.g = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6LibRaw17canon_has_lowbitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16384) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %indvars.iv = phi i64 [ 540, %bb.a ], [ %indvars.iv.next.2, %bb.h ] ; 4 uses
  %.068 = phi i32 [ 1, %bb.a ], [ %.1.2, %bb.h ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !88
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !88
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %.068, %bb.b ], [ 0, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !88
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !88
  %.not.1 = icmp eq i8 %i.w, 0
  br i1 %.not.1, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %.1, %bb.d ], [ 0, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !88
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !88
  %.not.2 = icmp eq i8 %i.ac, 0
  br i1 %.not.2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.2 = phi i32 [ %.1.1, %bb.f ], [ 0, %bb.g ]  ; 2 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 16383
  br i1 %exitcond.not.2, label %bb.i, label %bb.b, !llvm.loop !93

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.07 = phi i32 [ 1, %bb.c ], [ %.1.2, %bb.h ], [ 1, %bb.e ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.07
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw14canon_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [64 x i32], align 16              ; 8 uses
  %i.e = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381840
  %i.h = load i32, ptr %i.g, align 8, !tbaa !94
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 2)
  %i.i = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.j = getelementptr inbounds nuw [29 x i8], ptr @_ZZN6LibRaw15crw_init_tablesEjPPtE10first_tree, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8, !tbaa !87
  %i.k = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.c) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw [180 x i8], ptr @_ZZN6LibRaw15crw_init_tablesEjPPtE11second_tree, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8, !tbaa !87
  %i.m = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !80   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0, i32 noundef 0), !inline_history !95 ; 0 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !80   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16384), !inline_history !95 ; 0 uses
  br label %.outer

.outer:                                           ; preds = %.thread, %bb.a
  %indvars.iv.i.ph = phi i64 [ %indvars.iv.next.i203, %.thread ], [ 540, %bb.a ]
  %.not = phi i1 [ true, %.thread ], [ false, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %indvars.iv.i.ph, %.outer ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !88
  %i.z = icmp eq i8 %i.y, -1
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !88
  %.not.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i, label %.thread, label %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread

_ZN6LibRaw17canon_has_lowbitsEv.exit.thread:      ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16383
  br i1 %exitcond.not.i, label %_ZN6LibRaw17canon_has_lowbitsEv.exit, label %bb.b, !llvm.loop !93

.thread:                                          ; preds = %bb.c
  %indvars.iv.next.i203 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i204 = icmp eq i64 %indvars.iv.next.i203, 16383
  br i1 %exitcond.not.i204, label %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread206, label %.outer, !llvm.loop !93

_ZN6LibRaw17canon_has_lowbitsEv.exit.thread206:   ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.e

_ZN6LibRaw17canon_has_lowbitsEv.exit:             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread206, %_ZN6LibRaw17canon_has_lowbitsEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 1023, ptr %i.ad, align 8, !tbaa !96
  br label %bb.f

bb.f:                                             ; preds = %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread, %bb.e, %_ZN6LibRaw17canon_has_lowbitsEv.exit
  %.not117 = phi i1 [ false, %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread ], [ true, %bb.e ], [ false, %_ZN6LibRaw17canon_has_lowbitsEv.exit ]
  %.07.i116 = phi i32 [ 1, %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread ], [ 0, %bb.e ], [ 1, %_ZN6LibRaw17canon_has_lowbitsEv.exit ]
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !80  ; 2 uses
end_hunk_0
