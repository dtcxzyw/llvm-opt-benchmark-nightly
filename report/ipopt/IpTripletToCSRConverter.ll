inline.NumInlined: 206
inline.NumDeleted: 79
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5Ipopt21TripletToCSRConverter19InitializeConverterEiiPKiS2_:bb.a
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store i32 %1, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %2, ptr %i.q, align 4, !tbaa !26
  %i.r = icmp eq i32 %2, 0
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.t, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.u, align 8, !tbaa !19
  br label %bb.bi

bb.m:                                             ; preds = %bb.k
  %i.v = sext i32 %2 to i64                       ; 3 uses
  %i.w = icmp slt i32 %2, 0
  br i1 %i.w, label %.noexc, label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.m
  %i.x = mul nuw nsw i64 %i.v, 12                 ; 3 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #15 ; 20 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, i8 0, i64 12, i1 false)
  %i.z = add nsw i64 %i.v, -1                     ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.ptr = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.z, 12  ; 2 uses
  %.add = add nuw nsw i64 %.idx.i.i.i.i.i.i.i, 12 ; 3 uses
  %.ptr366 = getelementptr inbounds nuw i8, ptr %i.y, i64 %.add
  %i.ab = add nsw i64 %.idx.i.i.i.i.i.i.i, -12    ; 2 uses
  %i.ac = udiv i64 %i.ab, 12
  %i.ad = add nuw nsw i64 %i.ac, 1
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.ptr, %bb.n ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.n ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false), !tbaa.struct !29
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 12 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !31

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.n
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.ptr, %bb.n ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.af = icmp ult i64 %i.ab, 36
  br i1 %i.af, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false), !tbaa.struct !29
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false), !tbaa.struct !29
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false), !tbaa.struct !29
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false), !tbaa.struct !29
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.aj, %.ptr366
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !33

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.0.i.i.i.i.i.idx = phi i64 [ 12, %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %.add, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.add, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.0.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0.i.i.i.i.i.idx ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter510 = and i64 %wide.trip.count, 1
  %i.ak = icmp eq i32 %2, 1
  br i1 %i.ak, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod511.not = icmp eq i64 %xtraiter510, 0
  br i1 %lcmp.mod511.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.sroa.0252.0283.epil.init = phi ptr [ %i.y, %.lr.ph.preheader ], [ %i.bl, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod512 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod512)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.am = load i32, ptr %i.al, align 4, !tbaa !30 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !30 ; 2 uses
  %spec.select.i.epil = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ao)
  %spec.select12.i.epil = tail call i32 @llvm.smax.i32(i32 %i.am, i32 %i.ao)
  store i32 %spec.select.i.epil, ptr %.sroa.0252.0283.epil.init, align 4, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283.epil.init, i64 4
  store i32 %spec.select12.i.epil, ptr %i.ap, align 4, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283.epil.init, i64 8
  %i.ar = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !38
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %i.as = udiv exact i64 %.0.i.i.i.i.i.idx, 12
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.as, i1 true)
  %i.au = shl nuw nsw i64 %i.at, 1
  %i.av = xor i64 %i.au, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %i.y, ptr nonnull %.0.i.i.i.i.i.ptr, i64 noundef %i.av)
          to label %.noexc248 unwind label %bb.q

.noexc248:                                        ; preds = %._crit_edge
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr nonnull %i.y, ptr nonnull %.0.i.i.i.i.i.ptr)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit unwind label %bb.q

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.sroa.0252.0283 = phi ptr [ %i.y, %.lr.ph.preheader.new ], [ %i.bl, %.lr.ph ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !30 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !30 ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.az)
  %spec.select12.i = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 %i.az)
  store i32 %spec.select.i, ptr %.sroa.0252.0283, align 4, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283, i64 4
  store i32 %spec.select12.i, ptr %i.ba, align 4, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283, i64 8
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !38
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283, i64 12
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !30 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !30 ; 2 uses
  %spec.select.i.1 = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.bh)
  %spec.select12.i.1 = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 %i.bh)
  store i32 %spec.select.i.1, ptr %i.bd, align 4, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283, i64 16
  store i32 %spec.select12.i.1, ptr %i.bi, align 4, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283, i64 20
  %i.bk = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !38
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283, i64 24 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !39

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.noexc248
  %i.bm = shl nuw nsw i64 %i.v, 2                 ; 4 uses
  %i.bn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bm) #15
          to label %bb.o unwind label %bb.r       ; 9 uses

bb.o:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !18 ; 2 uses
  %i.bq = icmp ne i32 %i.bp, 1                    ; 5 uses
  %.pre = load i32, ptr %i.p, align 8, !tbaa !25  ; 9 uses
  %.pre438 = add i32 %.pre, 1                     ; 5 uses
  %.pre439 = sext i32 %.pre438 to i64             ; 2 uses
  br i1 %i.bq, label %._crit_edge437, label %bb.p

._crit_edge437:                                   ; preds = %bb.o
  %.pre441 = shl nsw i64 %.pre439, 2
  br label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.br = icmp slt i32 %.pre, -1
  %i.bs = shl nsw i64 %.pre439, 2                 ; 2 uses
  %i.bt = select i1 %i.br, i64 -1, i64 %i.bs
  %i.bu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #15
          to label %bb.t unwind label %bb.s

bb.q:                                             ; preds = %.noexc248, %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

bb.r:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

bb.s:                                             ; preds = %bb.t, %bb.p
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

bb.t:                                             ; preds = %._crit_edge437, %bb.p
  %.pre-phi442 = phi i64 [ %.pre441, %._crit_edge437 ], [ %i.bs, %bb.p ]
  %.0206 = phi ptr [ null, %._crit_edge437 ], [ %i.bu, %bb.p ] ; 12 uses
  %i.by = icmp slt i32 %.pre, -1
  %i.bz = select i1 %i.by, i64 -1, i64 %.pre-phi442 ; 2 uses
  %i.ca = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bz) #15
          to label %bb.u unwind label %bb.s       ; 8 uses

bb.u:                                             ; preds = %bb.t
  store ptr %i.ca, ptr %i.a, align 8, !tbaa !20
  %i.cb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bm) #15
          to label %bb.v unwind label %bb.y       ; 6 uses

bb.v:                                             ; preds = %bb.u
  %i.cc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bm) #15
          to label %bb.w unwind label %bb.z       ; 6 uses

bb.w:                                             ; preds = %bb.v
  %i.cd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bm) #15
          to label %bb.x unwind label %bb.aa      ; 6 uses

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  store i32 0, ptr %i.ce, align 8, !tbaa !27
  %.not285 = icmp slt i32 %.pre, 0                ; 2 uses
  %or.cond365 = or i1 %i.bq, %.not285
  br i1 %or.cond365, label %.loopexit281, label %.lr.ph287.preheader

.lr.ph287.preheader:                              ; preds = %bb.x
  %i.cf = zext i32 %.pre438 to i64
  %i.cg = shl nuw nsw i64 %i.cf, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0206, i8 0, i64 %i.cg, i1 false), !tbaa !30
  br label %.loopexit281

bb.y:                                             ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

bb.z:                                             ; preds = %bb.v
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

bb.aa:                                            ; preds = %bb.w
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

.loopexit281:                                     ; preds = %.lr.ph287.preheader, %bb.x
  %i.ck = load i32, ptr %i.y, align 4, !tbaa !35  ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 1
  br i1 %i.cl, label %.lr.ph290.preheader, label %._crit_edge291

.lr.ph290.preheader:                              ; preds = %.loopexit281
  %i.cm = add nsw i32 %i.ck, -1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ca, i8 0, i64 %i.co, i1 false), !tbaa !30
  br label %._crit_edge291

._crit_edge291:                                   ; preds = %.lr.ph290.preheader, %.loopexit281
  %.0199.lcssa = phi i32 [ 1, %.loopexit281 ], [ %i.ck, %.lr.ph290.preheader ] ; 4 uses
  %i.cp = add nsw i32 %.0199.lcssa, -1
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cq
  store i32 0, ptr %i.cr, align 4, !tbaa !30
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !37 ; 3 uses
  store i32 %i.ct, ptr %i.bn, align 4, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !38
  store i32 %i.cv, ptr %i.cb, align 4, !tbaa !30
  br i1 %i.bq, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge291
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.0206, i64 %i.cq ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !30
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !30
  %.not230 = icmp eq i32 %.0199.lcssa, %i.ct
  br i1 %.not230, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = sext i32 %i.ct to i64
  %i.da = getelementptr [4 x i8], ptr %.0206, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 -4     ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !30
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %._crit_edge291
  %.0202 = phi i32 [ 2, %bb.ac ], [ 1, %bb.ab ], [ 0, %._crit_edge291 ] ; 2 uses
  %.not274293 = icmp eq i64 %.0.i.i.i.i.i.idx, 12
  br i1 %.not274293, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %bb.ad
  %.sroa.0252.1292 = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph301, %bb.am
  %i.de = phi i32 [ 0, %.lr.ph301 ], [ %i.eo, %bb.am ] ; 4 uses
  %.sroa.0252.1299 = phi ptr [ %.sroa.0252.1292, %.lr.ph301 ], [ %.sroa.0252.1, %bb.am ] ; 3 uses
  %.0193298 = phi i32 [ 0, %.lr.ph301 ], [ %.1194, %bb.am ] ; 3 uses
  %.0195297 = phi i32 [ 0, %.lr.ph301 ], [ %.1196, %bb.am ] ; 4 uses
  %.1200296 = phi i32 [ %.0199.lcssa, %.lr.ph301 ], [ %.2201, %bb.am ] ; 6 uses
  %.1203295 = phi i32 [ %.0202, %.lr.ph301 ], [ %.3205, %bb.am ] ; 4 uses
  %.pn294 = phi ptr [ %i.y, %.lr.ph301 ], [ %.sroa.0252.1299, %bb.am ] ; 3 uses
  %i.df = load i32, ptr %.sroa.0252.1299, align 4, !tbaa !35 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn294, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !37 ; 5 uses
  %i.di = icmp eq i32 %.1200296, %i.df            ; 2 uses
  br i1 %i.di, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dj = sext i32 %i.de to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !30
  %i.dm = icmp eq i32 %i.dl, %i.dh
  br i1 %i.dm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dn = getelementptr inbounds nuw i8, ptr %.pn294, i64 20
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !38
  %i.dp = sext i32 %.0195297 to i64               ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.dp
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !30
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.dp
  store i32 %i.de, ptr %i.dr, align 4, !tbaa !30
  %i.ds = add nsw i32 %.0195297, 1
  %.not246 = icmp eq i32 %.1200296, %i.dh
  %or.cond = or i1 %i.bq, %.not246
  %spec.select.v = select i1 %or.cond, i32 1, i32 2
  %spec.select = add nsw i32 %spec.select.v, %.0193298
  br label %bb.am

bb.ah:                                            ; preds = %bb.af, %bb.ae
  br i1 %i.bq, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dt = add nsw i32 %.1203295, 1
  %i.du = sext i32 %i.dh to i64
  %i.dv = getelementptr [4 x i8], ptr %.0206, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 -4     ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !30
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !30
  %.not244 = icmp eq i32 %i.df, %i.dh
  br i1 %.not244, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dz = add nsw i32 %.1203295, 2
  %i.ea = sext i32 %i.df to i64
  %i.eb = getelementptr [4 x i8], ptr %.0206, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 -4     ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZN5Ipopt21TripletToCSRConverter19InitializeConverterEiiPKiS2_:bb.a
.critedge.loopexit461.split.loop.exit465:         ; preds = %.lr.ph320.split
  %i.lc = trunc nsw i64 %indvars.iv389 to i32
  %i.ld = trunc nsw i64 %indvars.iv391 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.be, %bb.bd, %.critedge.loopexit461.split.loop.exit465, %.critedge.loopexit.split.loop.exit468, %bb.bc
  %.2185.lcssa = phi i32 [ %.0195.lcssa, %bb.bd ], [ %.1184329, %bb.bc ], [ %i.lb, %.critedge.loopexit.split.loop.exit468 ], [ %i.ld, %.critedge.loopexit461.split.loop.exit465 ], [ %.0195.lcssa, %bb.be ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.kg, %bb.bd ], [ %.1330, %bb.bc ], [ %i.la, %.critedge.loopexit.split.loop.exit468 ], [ %i.lc, %.critedge.loopexit461.split.loop.exit465 ], [ %i.kd, %bb.be ] ; 2 uses
  %i.le = add nsw i32 %i.jp, 1
  store i32 %i.le, ptr %i.jh, align 4, !tbaa !30
  %.not233 = icmp eq i64 %indvars.iv408, %i.jw
  br i1 %.not233, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.critedge
  %i.lf = sext i32 %i.jm to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.lf ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !30 ; 2 uses
  %i.li = sext i32 %i.lh to i64                   ; 2 uses
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.li
  store i32 %i.jj, ptr %i.lj, align 4, !tbaa !30
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.li
  store i32 %i.jt, ptr %i.lk, align 4, !tbaa !30
  %i.ll = add nsw i32 %i.lh, 1
  store i32 %i.ll, ptr %i.lg, align 4, !tbaa !30
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.critedge
  %indvars.iv.next406 = add nsw i64 %indvars.iv405, 1 ; 2 uses
  %i.lm = load i32, ptr %i.jd, align 4, !tbaa !30 ; 2 uses
  %i.ln = sext i32 %i.lm to i64
  %i.lo = icmp slt i64 %indvars.iv.next406, %i.ln
  br i1 %i.lo, label %bb.bc, label %.loopexit279, !llvm.loop !53

._crit_edge343:                                   ; preds = %.loopexit279, %bb.ba
  tail call void @_ZdaPv(ptr noundef nonnull %i.bn) #12
  tail call void @_ZdaPv(ptr noundef nonnull %i.cb) #12
  tail call void @_ZdaPv(ptr noundef nonnull %i.cc) #12
  tail call void @_ZdaPv(ptr noundef nonnull %i.cd) #12
  %i.lp = load i32, ptr %i.p, align 8, !tbaa !25
  %.not232344 = icmp slt i32 %i.lp, 0
  br i1 %.not232344, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %._crit_edge343
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.lr = load ptr, ptr %i.a, align 8, !tbaa !20
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph347, %bb.bh
  %indvars.iv413 = phi i64 [ 0, %.lr.ph347 ], [ %indvars.iv.next414, %bb.bh ] ; 4 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv413
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !30
  %i.lu = load i32, ptr %i.lq, align 4, !tbaa !12
  %i.lv = add nsw i32 %i.lu, %i.lt
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv413
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !30
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1
  %i.lx = load i32, ptr %i.p, align 8, !tbaa !25
  %i.ly = sext i32 %i.lx to i64
  %.not232.not = icmp slt i64 %indvars.iv413, %i.ly
  br i1 %.not232.not, label %bb.bh, label %._crit_edge348, !llvm.loop !54

._crit_edge348:                                   ; preds = %bb.bh, %._crit_edge343
  tail call void @_ZdaPv(ptr noundef nonnull %i.ha) #12
  store i32 %.1203.lcssa, ptr %i.ce, align 8, !tbaa !27
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit: ; preds = %._crit_edge348, %._crit_edge363
  %.0193.lcssa.sink = phi i32 [ %.0193.lcssa, %._crit_edge348 ], [ %i.gz, %._crit_edge363 ]
  %i.lz = phi i32 [ %.1203.lcssa, %._crit_edge348 ], [ %i.gy, %._crit_edge363 ]
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.0193.lcssa.sink, ptr %i.ma, align 4, !tbaa !28
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.mb, align 8, !tbaa !19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.x) #12
  br label %bb.bi

_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251: ; preds = %bb.r, %bb.y, %bb.aa, %bb.av, %bb.ap, %bb.z, %bb.s, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.q ], [ %i.bw, %bb.r ], [ %i.bx, %bb.s ], [ %i.ch, %bb.y ], [ %i.ci, %bb.z ], [ %i.cj, %bb.aa ], [ %i.fs, %bb.ap ], [ %i.hh, %bb.av ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.x) #12
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

bb.bi:                                            ; preds = %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit, %bb.l
  %.0197 = phi i32 [ 0, %bb.l ], [ %i.lz, %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit ]
  ret i32 %.0197
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5Ipopt21TripletToCSRConverter13ConvertValuesEiPKdiPd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %i.b, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil
  %i.h = load i32, ptr %i.g, align 4, !tbaa !30
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil
  store double %i.k, ptr %i.l, align 8, !tbaa !55
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.b, !llvm.loop !57

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28   ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph15, label %._crit_edge

.lr.ph15:                                         ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24   ; 3 uses
  %wide.trip.count20 = zext nneg i32 %i.n to i64  ; 2 uses
  %xtraiter25 = and i64 %wide.trip.count20, 1
  %i.t = icmp eq i32 %i.n, 1
  br i1 %i.t, label %.epil.preheader24, label %.lr.ph15.new

.lr.ph15.new:                                     ; preds = %.lr.ph15
  %unroll_iter29 = and i64 %wide.trip.count20, 2147483646
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !30
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store double %i.y, ptr %i.z, align 8, !tbaa !55
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !30
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  store double %i.ae, ptr %i.af, align 8, !tbaa !55
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.1
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !30
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.1
  store double %i.ak, ptr %i.al, align 8, !tbaa !55
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !30
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.2
  store double %i.aq, ptr %i.ar, align 8, !tbaa !55
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !58

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod27.not = icmp eq i64 %xtraiter25, 0
  br i1 %lcmp.mod27.not, label %._crit_edge, label %.epil.preheader24

.epil.preheader24:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph15
  %indvars.iv17.epil.init = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next18.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i32 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv17.epil.init
  %i.at = load i32, ptr %i.as, align 4, !tbaa !30
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %2, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !55
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv17.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !30
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %4, i64 %i.az ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !55
  %i.bc = fadd double %i.aw, %i.bb
  store double %i.bc, ptr %i.ba, align 8, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader24, %._crit_edge.loopexit.unr-lcssa, %.preheader
  ret void

bb.d:                                             ; preds = %bb.d, %.lr.ph15.new
  %indvars.iv17 = phi i64 [ 0, %.lr.ph15.new ], [ %indvars.iv.next18.1, %bb.d ] ; 4 uses
  %niter30 = phi i64 [ 0, %.lr.ph15.new ], [ %niter30.next.1, %bb.d ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv17
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !30
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !55
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv17
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !30
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bk ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !55
  %i.bn = fadd double %i.bh, %i.bm
  store double %i.bn, ptr %i.bl, align 8, !tbaa !55
  %indvars.iv.next18 = or disjoint i64 %indvars.iv17, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next18
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !30
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !55
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next18
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !30
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bv ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !55
  %i.by = fadd double %i.bs, %i.bx
  store double %i.by, ptr %i.bw, align 8, !tbaa !55
  %indvars.iv.next18.1 = add nuw nsw i64 %indvars.iv17, 2 ; 2 uses
  %niter30.next.1 = add i64 %niter30, 2           ; 2 uses
  %niter30.ncmp.1 = icmp eq i64 %niter30.next.1, %unroll_iter29
  br i1 %niter30.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !59
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph23

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.h = icmp eq i64 %i.ae, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph23, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge12.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.011.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph23:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1222 = phi ptr [ %.sroa.011.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01321 = phi i64 [ %i.ae, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.ag, %bb.b ], [ %i.c, %.lr.ph ]
  %i.j = udiv i64 %i.i, 24
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %storemerge1222, i64 -12
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_(ptr %0, ptr nonnull %i.e, ptr %i.k, ptr nonnull %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph23
  %.sroa.011.0.i.i = phi ptr [ %i.e, %.lr.ph23 ], [ %i.ad, %bb.g ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1222, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.g ]
  %i.m = load i32, ptr %0, align 4, !tbaa !35     ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i.i, %bb.c
  %.sroa.011.1.i.i = phi ptr [ %.sroa.011.0.i.i, %bb.c ], [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i.i ] ; 11 uses
  %i.n = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !35 ; 2 uses
  %i.o = icmp slt i32 %i.n, %i.m
  br i1 %i.o, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %i.n, %i.m
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i.preheader: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i, %bb.e
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !37
  %i.s = load i32, ptr %i.f, align 4, !tbaa !37
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 12
  br label %bb.d, !llvm.loop !61

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i.backedge ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -12 ; 6 uses
  %i.v = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !35 ; 2 uses
  %i.w = icmp slt i32 %i.m, %i.v
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i.backedge, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i
  %i.x = icmp eq i32 %i.m, %i.v
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit8.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit8.thread15.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit8.i.i: ; preds = %bb.f
  %i.y = load i32, ptr %i.f, align 4, !tbaa !37
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !37
  %i.ab = icmp slt i32 %i.y, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit8.thread15.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i.backedge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit8.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread14.i.i, !llvm.loop !62

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit8.thread15.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit8.i.i, %bb.f
  %i.ac = icmp ult ptr %.sroa.011.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ac, label %bb.g, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit8.thread15.i.i
  %.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.011.1.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.011.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.1.i.i, i64 12, i1 false), !tbaa.struct !29
  store <3 x i32> %.sroa.0.0.copyload, ptr %.sroa.0.1.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 12
  br label %bb.c, !llvm.loop !63

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit8.thread15.i.i
  %i.ae = add nsw i64 %.01321, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.sroa.011.1.i.i, ptr %storemerge1222, i64 noundef %i.ae)
  %i.af = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.ag = sub i64 %i.af, %i.a                     ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 192
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !60

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %scevgep = getelementptr i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 12, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.h ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.h ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.019.i.ptr, align 4, !tbaa !35 ; 5 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !35     ; 2 uses
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.f, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30   ; 3 uses
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.l = load i32, ptr %i.e, align 4, !tbaa !37
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i, %bb.b
  %.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i.ptr, align 4
  %i.n = icmp samesign ugt i64 %.sroa.0.019.i.idx, 12
  br i1 %i.n, label %bb.d, label %bb.e, !prof !64

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !29
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  store <3 x i32> %.sroa.0.0.copyload, ptr %0, align 4
  br label %bb.h

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i, %bb.c
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 20
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread15.i
  %.sroa.09.0.i.i = phi ptr [ %.sroa.0.019.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread15.i ], [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -12 ; 3 uses
  %i.p = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !35 ; 2 uses
  %i.q = icmp slt i32 %i.f, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = icmp eq i32 %i.f, %i.p
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.g
  %i.s = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !37
  %i.u = icmp slt i32 %i.k, %i.t
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.09.0.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i, i64 12, i1 false), !tbaa.struct !29
  br label %bb.f, !llvm.loop !65

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i, %bb.g
  store i32 %i.f, ptr %.sroa.09.0.i.i, align 4, !tbaa !30
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 4
  store i32 %i.k, ptr %.sroa.5.0..sroa_idx5.i.i, align 4, !tbaa !30
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  store i32 %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx7.i.i, align 4, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 12 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 192
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !66

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.not4.i = icmp eq ptr %i.v, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11
  %.sroa.0.05.i = phi ptr [ %i.ad, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11 ], [ %i.v, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit ] ; 4 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.05.i, align 4, !tbaa !30 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 4 ; 2 uses
  %i.w = load <2 x i32>, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !30
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i16, %.lr.ph.i6
  %.sroa.09.0.i.i9 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i10, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i16 ] ; 5 uses
  %.sroa.0.0.i.i10 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i9, i64 -12 ; 3 uses
  %i.x = load i32, ptr %.sroa.0.0.i.i10, align 4, !tbaa !35 ; 2 uses
  %i.y = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.x
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = icmp eq i32 %.sroa.03.0.copyload.i.i, %i.x
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i15: ; preds = %bb.j
  %i.aa = getelementptr inbounds i8, ptr %.sroa.09.0.i.i9, i64 -8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !37
  %i.ac = icmp slt i32 %.sroa.5.0.copyload.i.i, %i.ab
  br i1 %i.ac, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i16: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i15, %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.09.0.i.i9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i10, i64 12, i1 false), !tbaa.struct !29
  br label %bb.i, !llvm.loop !65

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i15, %bb.j
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.09.0.i.i9, align 4, !tbaa !30
  %.sroa.5.0..sroa_idx5.i.i12 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i9, i64 4
  store <2 x i32> %i.w, ptr %.sroa.5.0..sroa_idx5.i.i12, align 4, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 12 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ad, %1
  br i1 %.not.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6, !llvm.loop !67

bb.k:                                             ; preds = %bb.a
  %i.ae = icmp eq ptr %0, %1
  br i1 %i.ae, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.k
  %.sroa.0.016.i18 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not17.i19 = icmp eq ptr %.sroa.0.016.i18, %1
  br i1 %.not17.i19, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.preheader.i17
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.s, %.lr.ph.i20
  %.sroa.0.019.i21 = phi ptr [ %.sroa.0.016.i18, %.lr.ph.i20 ], [ %.sroa.0.0.i31, %bb.s ] ; 6 uses
  %.pn18.i22 = phi ptr [ %0, %.lr.ph.i20 ], [ %.sroa.0.019.i21, %bb.s ] ; 4 uses
  %i.ag = load i32, ptr %.sroa.0.019.i21, align 4, !tbaa !35 ; 5 uses
  %i.ah = load i32, ptr %0, align 4, !tbaa !35    ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i36, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = icmp eq i32 %i.ag, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn18.i22, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !30 ; 3 uses
  br i1 %i.aj, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i35, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread15.i23

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i35: ; preds = %bb.m
  %i.am = load i32, ptr %i.af, align 4, !tbaa !37
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i36, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread15.i23

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i36: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i35, %bb.l
  %.sroa.062.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i21, align 4
  %i.ao = ptrtoint ptr %.sroa.0.019.i21 to i64
  %i.ap = sub i64 %i.ao, %i.b                     ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, 12
  br i1 %i.aq, label %bb.n, label %bb.o, !prof !64

bb.n:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i36
  %2 = getelementptr inbounds nuw i8, ptr %.pn18.i22, i64 24
  %.neg27.i38 = udiv exact i64 %i.ap, 12
  %.neg27.neg.i39 = sub nsw i64 0, %.neg27.i38
  %3 = getelementptr inbounds [12 x i8], ptr %2, i64 %.neg27.neg.i39
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ap, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37

bb.o:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i36
  %i.ar = icmp eq i64 %i.ap, 12
  br i1 %i.ar, label %bb.p, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %.pn18.i22, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.as, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !29
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37: ; preds = %bb.p, %bb.o, %bb.n
  store <3 x i32> %.sroa.062.0.copyload, ptr %0, align 4
  br label %bb.s

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread15.i23: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i35, %bb.m
  %.sroa.6.0..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %.pn18.i22, i64 20
  %.sroa.6.0.copyload.i.i25 = load i32, ptr %.sroa.6.0..sroa_idx.i.i24, align 4, !tbaa !30
  br label %bb.q

bb.q:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i34, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread15.i23
  %.sroa.09.0.i.i26 = phi ptr [ %.sroa.0.019.i21, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread15.i23 ], [ %.sroa.0.0.i.i27, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i34 ] ; 6 uses
  %.sroa.0.0.i.i27 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i26, i64 -12 ; 3 uses
  %i.at = load i32, ptr %.sroa.0.0.i.i27, align 4, !tbaa !35 ; 2 uses
  %i.au = icmp slt i32 %i.ag, %i.at
  br i1 %i.au, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i34, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = icmp eq i32 %i.ag, %i.at
  br i1 %i.av, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i28

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i33: ; preds = %bb.r
  %i.aw = getelementptr inbounds i8, ptr %.sroa.09.0.i.i26, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !37
  %i.ay = icmp slt i32 %i.al, %i.ax
  br i1 %i.ay, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i28

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i.i34: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i33, %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.09.0.i.i26, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i27, i64 12, i1 false), !tbaa.struct !29
  br label %bb.q, !llvm.loop !65

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i28: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5Ipopt21TripletToCSRConverter12TripletEntryENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i33, %bb.r
  store i32 %i.ag, ptr %.sroa.09.0.i.i26, align 4, !tbaa !30
  %.sroa.5.0..sroa_idx5.i.i29 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i26, i64 4
  store i32 %i.al, ptr %.sroa.5.0..sroa_idx5.i.i29, align 4, !tbaa !30
  %.sroa.6.0..sroa_idx7.i.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i26, i64 8
  store i32 %.sroa.6.0.copyload.i.i25, ptr %.sroa.6.0..sroa_idx7.i.i30, align 4, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37
  %.sroa.0.0.i31 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i21, i64 12 ; 2 uses
  %.not.i32 = icmp eq ptr %.sroa.0.0.i31, %1
  br i1 %.not.i32, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.l, !llvm.loop !66

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11, %.preheader.i17, %bb.k, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 12
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -12 ; 4 uses
  %.sroa.04.0.copyload.i = load i64, ptr %i.e, align 4 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !29
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.a                       ; 3 uses
  %i.h = sdiv exact i64 %i.g, 12                  ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %i.j = sdiv i64 %i.i, 2
  %i.k = icmp sgt i64 %i.g, 24
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread42.i.i
  %.044.i.i = phi i64 [ %i.z, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread42.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = shl i64 %.044.i.i, 1                     ; 2 uses
  %i.m = add i64 %i.l, 2                          ; 3 uses
  %i.n = getelementptr inbounds [12 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds [12 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.n, align 4, !tbaa !35   ; 2 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !35   ; 2 uses
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.t = icmp eq i32 %i.q, %i.r
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread42.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37
  %i.y = icmp slt i32 %i.v, %i.x
  %cond.fr.i.i = freeze i1 %i.y
  br i1 %cond.fr.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread42.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i, %.lr.ph.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread42.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread42.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i, %bb.b
  %i.z = phi i64 [ %i.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread.i.i ], [ %i.m, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i ], [ %i.m, %bb.b ] ; 4 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds [12 x i8], ptr %0, i64 %.044.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false), !tbaa.struct !29
  %i.ac = icmp slt i64 %i.z, %i.j
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !68

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread42.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.z, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread42.i.i ] ; 5 uses
  %i.ad = and i64 %i.h, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.af = add nsw i64 %i.h, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = shl nsw i64 %.0.lcssa.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds [12 x i8], ptr %0, i64 %i.aj
  %i.al = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, i64 12, i1 false), !tbaa.struct !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.aj, %bb.d ], [ %.0.lcssa.i.i, %bb.c ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.sroa.013.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.04.0.copyload.i to i32 ; 2 uses
  %.sroa.013.sroa.3.0.extract.shift.i.i.i = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.013.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.013.sroa.3.0.extract.shift.i.i.i to i32
  %i.am = icmp sgt i64 %.1.i.i, 0
  br i1 %i.am, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i.i.i
  %.021.i.i.i = phi i64 [ %.01022.i.i910.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i.i.i ], [ %.1.i.i, %bb.e ] ; 4 uses
  %.01022.in.i.i.i = add nsw i64 %.021.i.i.i, -1
  %.01022.i.i910.i = lshr i64 %.01022.in.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01022.i.i910.i ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !35 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %.sroa.013.sroa.0.0.extract.trunc.i.i.i
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = icmp eq i32 %i.ao, %.sroa.013.sroa.0.0.extract.trunc.i.i.i
  br i1 %i.aq, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i.i.i: ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37
  %i.at = icmp slt i32 %i.as, %.sroa.013.sroa.3.0.extract.trunc.i.i.i
  br i1 %i.at, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i.i.i, %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.021.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.au, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false), !tbaa.struct !29
  %.not.i = icmp eq i64 %.01022.i.i910.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !69

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit: ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.021.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i.i.i ], [ 0, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.thread.i.i.i ], [ %.021.i.i.i, %bb.f ]
  %i.av = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i64 %.sroa.04.0.copyload.i, ptr %i.av, align 4
  %.sroa.4.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i.i.i, align 4, !tbaa !30
  %i.aw = icmp sgt i64 %i.g, 12
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 24
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 12                  ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
end_hunk_1
