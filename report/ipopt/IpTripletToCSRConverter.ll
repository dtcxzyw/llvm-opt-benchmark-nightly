Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTripletToCSRConverter?download=true
inline.NumInlined: 206
inline.NumDeleted: 79
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5Ipopt21TripletToCSRConverter19InitializeConverterEiiPKiS2_:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  store i32 %1, ptr %i.p, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %2, ptr %i.q, align 4, !tbaa !53
  %i.r = icmp eq i32 %2, 0
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.s, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.t, align 4, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.u, align 8, !tbaa !20
  br label %bb.bj

bb.m:                                             ; preds = %bb.k
  %i.v = sext i32 %2 to i64                       ; 3 uses
  %i.w = icmp slt i32 %2, 0
  br i1 %i.w, label %.noexc, label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.m
  %i.x = mul nuw nsw i64 %i.v, 12                 ; 3 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #15 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, i8 0, i64 12, i1 false)
  %i.z = add nsw i64 %i.v, -1                     ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.ptr = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.z, 12
  %.add = add nuw nsw i64 %.idx.i.i.i.i.i.i.i, 12 ; 2 uses
  %.ptr364 = getelementptr inbounds nuw i8, ptr %i.y, i64 %.add
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.n
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ptr, %bb.n ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false), !tbaa.struct !29
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %.ptr364
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !36

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.0.i.i.i.i.i.idx = phi i64 [ 12, %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %.add, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.0.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0.i.i.i.i.i.idx ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i32 %2, 1
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.sroa.0252.0283.epil.init = phi ptr [ %i.y, %.lr.ph.preheader ], [ %i.bd, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod499 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod499)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !28 ; 2 uses
  %spec.select.i.epil = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.ag)
  %spec.select12.i.epil = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.ag)
  store i32 %spec.select.i.epil, ptr %.sroa.0252.0283.epil.init, align 4, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283.epil.init, i64 4
  store i32 %spec.select12.i.epil, ptr %i.ah, align 4, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283.epil.init, i64 8
  %i.aj = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %i.ak = udiv exact i64 %.0.i.i.i.i.i.idx, 12
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = xor i64 %i.am, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %i.y, ptr nonnull %.0.i.i.i.i.i.ptr, i64 noundef %i.an)
          to label %.noexc248 unwind label %bb.q

.noexc248:                                        ; preds = %._crit_edge
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr nonnull %i.y, ptr nonnull %.0.i.i.i.i.i.ptr)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit unwind label %bb.q

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.sroa.0252.0283 = phi ptr [ %i.y, %.lr.ph.preheader.new ], [ %i.bd, %.lr.ph ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !28 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !28 ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.ar)
  %spec.select12.i = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.ar)
  store i32 %spec.select.i, ptr %.sroa.0252.0283, align 4, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283, i64 4
  store i32 %spec.select12.i, ptr %i.as, align 4, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283, i64 8
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.au, ptr %i.at, align 4, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283, i64 12
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !28 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !28 ; 2 uses
  %spec.select.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.az)
  %spec.select12.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 %i.az)
  store i32 %spec.select.i.1, ptr %i.av, align 4, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283, i64 16
  store i32 %spec.select12.i.1, ptr %i.ba, align 4, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283, i64 20
  %i.bc = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0252.0283, i64 24 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !37

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.noexc248
  %i.be = shl nuw nsw i64 %i.v, 2                 ; 4 uses
  %i.bf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #15
          to label %bb.o unwind label %bb.r       ; 9 uses

bb.o:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !19
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bj = load i32, ptr %i.p, align 8, !tbaa !52  ; 2 uses
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i32 %i.bj, -1
  %i.bn = shl nsw i64 %i.bl, 2
  %i.bo = select i1 %i.bm, i64 -1, i64 %i.bn
  %i.bp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bo) #15
          to label %bb.t unwind label %bb.s

bb.q:                                             ; preds = %.noexc248, %._crit_edge
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

bb.r:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5Ipopt21TripletToCSRConverter12TripletEntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

bb.s:                                             ; preds = %bb.t, %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

bb.t:                                             ; preds = %bb.p, %bb.o
  %.0206 = phi ptr [ null, %bb.o ], [ %i.bp, %bb.p ] ; 12 uses
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !52  ; 2 uses
  %i.bu = add nsw i32 %i.bt, 1
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i32 %i.bt, -1
  %i.bx = shl nsw i64 %i.bv, 2
  %i.by = select i1 %i.bw, i64 -1, i64 %i.bx
  %i.bz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #15
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !21
  %i.ca = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #15
          to label %bb.v unwind label %bb.y       ; 6 uses

bb.v:                                             ; preds = %bb.u
  %i.cb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #15
          to label %bb.w unwind label %bb.z       ; 10 uses

bb.w:                                             ; preds = %bb.v
  %i.cc = ptrtoaddr ptr %i.cb to i64              ; 2 uses
  %i.cd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #15
          to label %bb.x unwind label %bb.aa      ; 10 uses

bb.x:                                             ; preds = %bb.w
  %i.ce = ptrtoaddr ptr %i.cd to i64              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 11 uses
  store i32 0, ptr %i.cf, align 8, !tbaa !26
  %i.cg = load i32, ptr %i.bg, align 8, !tbaa !19 ; 3 uses
  %5 = icmp eq i32 %i.cg, 1                       ; 3 uses
  br i1 %5, label %.preheader280, label %.loopexit281

.preheader280:                                    ; preds = %bb.x
  %i.ch = load i32, ptr %i.p, align 8, !tbaa !52  ; 2 uses
  %.not285 = icmp slt i32 %i.ch, 0
  br i1 %.not285, label %.loopexit281, label %.lr.ph287.preheader

.lr.ph287.preheader:                              ; preds = %.preheader280
  %i.ci = add nuw i32 %i.ch, 1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.0206, i8 0, i64 %i.ck, i1 false), !tbaa !28
  br label %.loopexit281

bb.y:                                             ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

bb.z:                                             ; preds = %bb.v
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

.loopexit281:                                     ; preds = %.lr.ph287.preheader, %.preheader280, %bb.x
  %i.co = load i32, ptr %i.y, align 4, !tbaa !32
  %i.cp = icmp sgt i32 %i.co, 1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !21  ; 4 uses
  br i1 %i.cp, label %.lr.ph290, label %._crit_edge291

.lr.ph290:                                        ; preds = %.loopexit281, %.lr.ph290
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %.lr.ph290 ], [ 1, %.loopexit281 ] ; 2 uses
  %i.cq = getelementptr [4 x i8], ptr %.pre, i64 %indvars.iv374
  %i.cr = getelementptr i8, ptr %i.cq, i64 -4
  store i32 0, ptr %i.cr, align 4, !tbaa !28
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 3 uses
  %i.cs = load i32, ptr %i.y, align 4, !tbaa !32
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next375, %i.ct
  br i1 %i.cu, label %.lr.ph290, label %._crit_edge291.loopexit, !llvm.loop !38

._crit_edge291.loopexit:                          ; preds = %.lr.ph290
  %i.cv = trunc nuw nsw i64 %indvars.iv.next375 to i32
  br label %._crit_edge291

._crit_edge291:                                   ; preds = %._crit_edge291.loopexit, %.loopexit281
  %.0199.lcssa = phi i32 [ 1, %.loopexit281 ], [ %i.cv, %._crit_edge291.loopexit ] ; 4 uses
  %i.cw = add nsw i32 %.0199.lcssa, -1
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.cx
  store i32 0, ptr %i.cy, align 4, !tbaa !28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !33 ; 3 uses
  store i32 %i.da, ptr %i.bf, align 4, !tbaa !28
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !54
  store i32 %i.dc, ptr %i.ca, align 4, !tbaa !28
  br i1 %5, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %._crit_edge291
  %i.dd = getelementptr inbounds [4 x i8], ptr %.0206, i64 %i.cx ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !28
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !28
  %.not230 = icmp eq i32 %.0199.lcssa, %i.da
  br i1 %.not230, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = sext i32 %i.da to i64
  %i.dh = getelementptr [4 x i8], ptr %.0206, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -4     ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !28
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %._crit_edge291
  %.0202 = phi i32 [ 2, %bb.ac ], [ 1, %bb.ab ], [ 0, %._crit_edge291 ] ; 2 uses
  %.not274293 = icmp eq i64 %.0.i.i.i.i.i.idx, 12
  br i1 %.not274293, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %bb.ad
  %.sroa.0252.1292 = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %6 = icmp ne i32 %i.cg, 1
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph301, %bb.am
  %.sroa.0252.1299 = phi ptr [ %.sroa.0252.1292, %.lr.ph301 ], [ %.sroa.0252.1, %bb.am ] ; 3 uses
  %.0193298 = phi i32 [ 0, %.lr.ph301 ], [ %.1194, %bb.am ] ; 3 uses
  %.0195297 = phi i32 [ 0, %.lr.ph301 ], [ %.1196, %bb.am ] ; 4 uses
  %.1200296 = phi i32 [ %.0199.lcssa, %.lr.ph301 ], [ %.2201, %bb.am ] ; 6 uses
  %.1203295 = phi i32 [ %.0202, %.lr.ph301 ], [ %.3205, %bb.am ] ; 4 uses
  %.pn294 = phi ptr [ %i.y, %.lr.ph301 ], [ %.sroa.0252.1299, %bb.am ] ; 3 uses
  %i.dl = load i32, ptr %.sroa.0252.1299, align 4, !tbaa !32 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.pn294, i64 16
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !33 ; 5 uses
  %i.do = icmp eq i32 %.1200296, %i.dl            ; 2 uses
  br i1 %i.do, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dp = load i32, ptr %i.cf, align 8, !tbaa !26 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !28
  %i.dt = icmp eq i32 %i.ds, %i.dn
  br i1 %i.dt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.du = getelementptr inbounds nuw i8, ptr %.pn294, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !54
  %i.dw = sext i32 %.0195297 to i64               ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.dw
  store i32 %i.dv, ptr %i.dx, align 4, !tbaa !28
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.dw
  store i32 %i.dp, ptr %i.dy, align 4, !tbaa !28
  %i.dz = add nsw i32 %.0195297, 1
  %.not246 = icmp eq i32 %.1200296, %i.dn
  %or.cond = or i1 %6, %.not246
  %spec.select.v = select i1 %or.cond, i32 1, i32 2
  %spec.select = add nsw i32 %spec.select.v, %.0193298
  br label %bb.am

bb.ah:                                            ; preds = %bb.af, %bb.ae
  br i1 %5, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ea = add nsw i32 %.1203295, 1
  %i.eb = sext i32 %i.dn to i64
  %i.ec = getelementptr [4 x i8], ptr %.0206, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 -4     ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !28
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !28
  %.not244 = icmp eq i32 %i.dl, %i.dn
  br i1 %.not244, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eg = add nsw i32 %.1203295, 2
  %i.eh = sext i32 %i.dl to i64
  %i.ei = getelementptr [4 x i8], ptr %.0206, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -4     ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !28
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ah
  %.2204 = phi i32 [ %i.eg, %bb.aj ], [ %i.ea, %bb.ai ], [ %.1203295, %bb.ah ] ; 2 uses
  %i.em = load i32, ptr %i.cf, align 8, !tbaa !26
  %i.en = add nsw i32 %i.em, 1                    ; 3 uses
  store i32 %i.en, ptr %i.cf, align 8, !tbaa !26
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.eo
  store i32 %i.dn, ptr %i.ep, align 4, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn294, i64 20
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !54
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.eo
  store i32 %i.er, ptr %i.es, align 4, !tbaa !28
  br i1 %i.do, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = sext i32 %.1200296 to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.et
  store i32 %i.en, ptr %i.eu, align 4, !tbaa !28
  %i.ev = add nsw i32 %.1200296, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ag, %bb.ak, %bb.al
  %.3205 = phi i32 [ %.2204, %bb.al ], [ %.2204, %bb.ak ], [ %.1203295, %bb.ag ] ; 2 uses
  %.2201 = phi i32 [ %i.ev, %bb.al ], [ %.1200296, %bb.ak ], [ %.1200296, %bb.ag ] ; 2 uses
  %.1196 = phi i32 [ %.0195297, %bb.al ], [ %.0195297, %bb.ak ], [ %i.dz, %bb.ag ] ; 2 uses
  %.1194 = phi i32 [ %.0193298, %bb.al ], [ %.0193298, %bb.ak ], [ %spec.select, %bb.ag ] ; 2 uses
  %.sroa.0252.1 = getelementptr inbounds nuw i8, ptr %.sroa.0252.1299, i64 12 ; 2 uses
  %.not274 = icmp eq ptr %.sroa.0252.1, %.0.i.i.i.i.i.ptr
  br i1 %.not274, label %._crit_edge302, label %bb.ae, !llvm.loop !39

._crit_edge302:                                   ; preds = %bb.am, %bb.ad
  %.1203.lcssa = phi i32 [ %.0202, %bb.ad ], [ %.3205, %bb.am ] ; 4 uses
  %.1200.lcssa = phi i32 [ %.0199.lcssa, %bb.ad ], [ %.2201, %bb.am ] ; 2 uses
  %.0195.lcssa = phi i32 [ 0, %bb.ad ], [ %.1196, %bb.am ] ; 11 uses
  %.0193.lcssa = phi i32 [ 0, %bb.ad ], [ %.1194, %bb.am ] ; 3 uses
  %i.ew = load i32, ptr %i.cf, align 8, !tbaa !26 ; 2 uses
  %i.ex = add nsw i32 %i.ew, 1                    ; 3 uses
  store i32 %i.ex, ptr %i.cf, align 8, !tbaa !26
  %i.ey = load i32, ptr %i.p, align 8, !tbaa !52  ; 2 uses
  %.not231307 = icmp sgt i32 %.1200.lcssa, %i.ey
  br i1 %.not231307, label %._crit_edge311, label %.lr.ph310.preheader

.lr.ph310.preheader:                              ; preds = %._crit_edge302
  %i.ez = sext i32 %.1200.lcssa to i64
  br label %.lr.ph310

._crit_edge311:                                   ; preds = %.lr.ph310, %._crit_edge302
  %.lcssa282 = phi i32 [ %i.ey, %._crit_edge302 ], [ %i.fc, %.lr.ph310 ] ; 2 uses
  %i.fa = icmp eq i32 %i.cg, 0
  br i1 %i.fa, label %bb.an, label %bb.au

.lr.ph310:                                        ; preds = %.lr.ph310.preheader, %.lr.ph310
  %indvars.iv377 = phi i64 [ %i.ez, %.lr.ph310.preheader ], [ %indvars.iv.next378, %.lr.ph310 ] ; 3 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %.pre, i64 %indvars.iv377
  store i32 %i.ex, ptr %i.fb, align 4, !tbaa !28
  %indvars.iv.next378 = add nsw i64 %indvars.iv377, 1
  %i.fc = load i32, ptr %i.p, align 8, !tbaa !52  ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %.not231.not = icmp slt i64 %indvars.iv377, %i.fd
  br i1 %.not231.not, label %.lr.ph310, label %._crit_edge311, !llvm.loop !40

bb.an:                                            ; preds = %._crit_edge311
  %i.fe = sext i32 %i.ex to i64
  %i.ff = icmp slt i32 %i.ew, -1
  %i.fg = shl nsw i64 %i.fe, 2
  %i.fh = select i1 %i.ff, i64 -1, i64 %i.fg
  %i.fi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fh) #15
          to label %bb.ao unwind label %bb.ap     ; 4 uses

bb.ao:                                            ; preds = %bb.an
  store ptr %i.fi, ptr %i.d, align 8, !tbaa !22
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !18
  %i.fl = icmp eq i32 %i.fk, 0
  %i.fm = load i32, ptr %i.cf, align 8, !tbaa !26 ; 4 uses
  %i.fn = icmp sgt i32 %i.fm, 0                   ; 2 uses
  br i1 %i.fl, label %.preheader, label %.preheader278

.preheader278:                                    ; preds = %bb.ao
  br i1 %i.fn, label %.lr.ph350.preheader, label %.preheader276

.lr.ph350.preheader:                              ; preds = %.preheader278
  %i.fo = zext nneg i32 %i.fm to i64
  %i.fp = shl nuw nsw i64 %i.fo, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fi, ptr nonnull align 4 %i.bf, i64 %i.fp, i1 false), !tbaa !28
  br label %.preheader276

.preheader:                                       ; preds = %bb.ao
  br i1 %i.fn, label %.lr.ph355.preheader, label %.loopexit

.lr.ph355.preheader:                              ; preds = %.preheader
  %wide.trip.count419 = zext nneg i32 %i.fm to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.fm, 8
  br i1 %min.iters.check, label %.lr.ph355.preheader491, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph355.preheader
  %n.vec = and i64 %wide.trip.count419, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %wide.load = load <4 x i32>, ptr %i.fq, align 4, !tbaa !28
  %wide.load469 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !28
  %i.fs = add nsw <4 x i32> %wide.load, splat (i32 -1)
  %i.ft = add nsw <4 x i32> %wide.load469, splat (i32 -1)
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store <4 x i32> %i.fs, ptr %i.fu, align 4, !tbaa !28
  store <4 x i32> %i.ft, ptr %i.fv, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count419
  br i1 %cmp.n, label %.loopexit, label %.lr.ph355.preheader491

.lr.ph355.preheader491:                           ; preds = %.lr.ph355.preheader, %middle.block
  %indvars.iv416.ph = phi i64 [ 0, %.lr.ph355.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph355

bb.ap:                                            ; preds = %bb.as, %._crit_edge359, %.loopexit, %bb.an
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt21TripletToCSRConverter12TripletEntryESaIS2_EED2Ev.exit251

.lr.ph355:                                        ; preds = %.lr.ph355.preheader491, %.lr.ph355
  %indvars.iv416 = phi i64 [ %indvars.iv.next417, %.lr.ph355 ], [ %indvars.iv416.ph, %.lr.ph355.preheader491 ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv416
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !28
  %i.ga = add nsw i32 %i.fz, -1
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv416
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !28
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 1 ; 2 uses
  %exitcond420.not = icmp eq i64 %indvars.iv.next417, %wide.trip.count419
  br i1 %exitcond420.not, label %.loopexit, label %.lr.ph355, !llvm.loop !42

.preheader276:                                    ; preds = %.lr.ph350.preheader, %.preheader278
  %i.gc = load i32, ptr %i.p, align 8, !tbaa !52
  %.not235351 = icmp slt i32 %i.gc, 0
  br i1 %.not235351, label %.loopexit, label %.lr.ph353

.lr.ph353:                                        ; preds = %.preheader276
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph353, %bb.aq
  %indvars.iv413 = phi i64 [ 0, %.lr.ph353 ], [ %indvars.iv.next414, %bb.aq ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv413 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !28
  %i.gg = add nsw i32 %i.gf, 1
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !28
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1
  %i.gh = load i32, ptr %i.p, align 8, !tbaa !52
  %i.gi = sext i32 %i.gh to i64
  %.not235.not = icmp slt i64 %indvars.iv413, %i.gi
  br i1 %.not235.not, label %bb.aq, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %bb.aq, %.lr.ph355, %middle.block, %.preheader276, %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.bf) #12
  %i.gj = load i32, ptr %i.cf, align 8, !tbaa !26 ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i32 %i.gj, 0
  %i.gm = shl nsw i64 %i.gk, 2
  %i.gn = select i1 %i.gl, i64 -1, i64 %i.gm
  %i.go = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gn) #15
          to label %bb.ar unwind label %bb.ap     ; 2 uses

bb.ar:                                            ; preds = %.loopexit
  store ptr %i.go, ptr %i.g, align 8, !tbaa !23
  %i.gp = load i32, ptr %i.cf, align 8, !tbaa !26 ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph358.preheader, label %._crit_edge359

.lr.ph358.preheader:                              ; preds = %bb.ar
  %i.gr = zext nneg i32 %i.gp to i64
end_hunk_0
