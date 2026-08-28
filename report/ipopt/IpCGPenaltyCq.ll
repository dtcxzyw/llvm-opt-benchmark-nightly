Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpCGPenaltyCq?download=true
inline.NumInlined: 1282
inline.NumDeleted: 350
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5Ipopt11CGPenaltyCqD2Ev:bb.a
  br label %_ZN5Ipopt13CachedResultsIdED2Ev.exit100

_ZN5Ipopt13CachedResultsIdED2Ev.exit100:          ; preds = %_ZN5Ipopt13CachedResultsIdED2Ev.exit80, %._crit_edge.i92, %_ZNSt7__cxx1110_List_baseIPN5Ipopt15DependentResultIdEESaIS4_EED2Ev.exit.i99
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt13CachedResultsIdEE, i64 16), ptr %i.bu, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !26 ; 5 uses
  %.not.i101 = icmp eq ptr %i.bw, null
  br i1 %.not.i101, label %_ZN5Ipopt13CachedResultsIdED2Ev.exit120, label %.preheader.i102

.preheader.i102:                                  ; preds = %_ZN5Ipopt13CachedResultsIdED2Ev.exit100
  %.sroa.02.06.i103 = load ptr, ptr %i.bw, align 8, !tbaa !28 ; 3 uses
  %.not57.i104 = icmp eq ptr %.sroa.02.06.i103, %i.bw
  br i1 %.not57.i104, label %._crit_edge.thread.i113, label %.lr.ph.i105

._crit_edge.i112:                                 ; preds = %bb.o
  %i.bx = icmp eq ptr %.pr.i109, null
  br i1 %i.bx, label %_ZN5Ipopt13CachedResultsIdED2Ev.exit120, label %._crit_edge.i112.._crit_edge.thread.i113_crit_edge

._crit_edge.i112.._crit_edge.thread.i113_crit_edge: ; preds = %._crit_edge.i112
  %.pre146 = load ptr, ptr %.pr.i109, align 8, !tbaa !28
  br label %._crit_edge.thread.i113

.lr.ph.i105:                                      ; preds = %.preheader.i102, %bb.o
  %.pr9.i106 = phi ptr [ %.pr.i109, %bb.o ], [ %i.bw, %.preheader.i102 ]
  %.sroa.02.08.i107 = phi ptr [ %.sroa.02.0.i110, %bb.o ], [ %.sroa.02.06.i103, %.preheader.i102 ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i107, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !31 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i105
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(96) %i.bz) #19, !inline_history !36
  %.pr.pre.i108 = load ptr, ptr %i.bv, align 8, !tbaa !26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i105
  %.pr.i109 = phi ptr [ %.pr9.i106, %.lr.ph.i105 ], [ %.pr.pre.i108, %bb.n ] ; 5 uses
  %.sroa.02.0.i110 = load ptr, ptr %.sroa.02.08.i107, align 8, !tbaa !28 ; 2 uses
  %.not5.i111 = icmp eq ptr %.sroa.02.0.i110, %.pr.i109
  br i1 %.not5.i111, label %._crit_edge.i112, label %.lr.ph.i105, !llvm.loop !33

._crit_edge.thread.i113:                          ; preds = %._crit_edge.i112.._crit_edge.thread.i113_crit_edge, %.preheader.i102
  %i.ce = phi ptr [ %.pre146, %._crit_edge.i112.._crit_edge.thread.i113_crit_edge ], [ %.sroa.02.06.i103, %.preheader.i102 ] ; 2 uses
  %.lcssa14.i114 = phi ptr [ %.pr.i109, %._crit_edge.i112.._crit_edge.thread.i113_crit_edge ], [ %i.bw, %.preheader.i102 ] ; 3 uses
  %.not8.i.i.i115 = icmp eq ptr %i.ce, %.lcssa14.i114
  br i1 %.not8.i.i.i115, label %_ZNSt7__cxx1110_List_baseIPN5Ipopt15DependentResultIdEESaIS4_EED2Ev.exit.i119, label %.lr.ph.i.i.i116

.lr.ph.i.i.i116:                                  ; preds = %._crit_edge.thread.i113, %.lr.ph.i.i.i116
  %.09.i.i.i117 = phi ptr [ %i.cf, %.lr.ph.i.i.i116 ], [ %i.ce, %._crit_edge.thread.i113 ] ; 2 uses
  %i.cf = load ptr, ptr %.09.i.i.i117, align 8, !tbaa !28 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i117, i64 noundef 24) #20, !inline_history !36
  %.not.i.i.i118 = icmp eq ptr %i.cf, %.lcssa14.i114
  br i1 %.not.i.i.i118, label %_ZNSt7__cxx1110_List_baseIPN5Ipopt15DependentResultIdEESaIS4_EED2Ev.exit.i119, label %.lr.ph.i.i.i116, !llvm.loop !35

_ZNSt7__cxx1110_List_baseIPN5Ipopt15DependentResultIdEESaIS4_EED2Ev.exit.i119: ; preds = %.lr.ph.i.i.i116, %._crit_edge.thread.i113
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa14.i114, i64 noundef 24) #20, !inline_history !36
  br label %_ZN5Ipopt13CachedResultsIdED2Ev.exit120

_ZN5Ipopt13CachedResultsIdED2Ev.exit120:          ; preds = %_ZN5Ipopt13CachedResultsIdED2Ev.exit100, %._crit_edge.i112, %_ZNSt7__cxx1110_List_baseIPN5Ipopt15DependentResultIdEESaIS4_EED2Ev.exit.i119
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt13CachedResultsIdEE, i64 16), ptr %i.cg, align 8, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !26 ; 5 uses
  %.not.i121 = icmp eq ptr %i.ci, null
  br i1 %.not.i121, label %_ZN5Ipopt13CachedResultsIdED2Ev.exit140, label %.preheader.i122

.preheader.i122:                                  ; preds = %_ZN5Ipopt13CachedResultsIdED2Ev.exit120
  %.sroa.02.06.i123 = load ptr, ptr %i.ci, align 8, !tbaa !28 ; 3 uses
  %.not57.i124 = icmp eq ptr %.sroa.02.06.i123, %i.ci
  br i1 %.not57.i124, label %._crit_edge.thread.i133, label %.lr.ph.i125

._crit_edge.i132:                                 ; preds = %bb.q
  %i.cj = icmp eq ptr %.pr.i129, null
  br i1 %i.cj, label %_ZN5Ipopt13CachedResultsIdED2Ev.exit140, label %._crit_edge.i132.._crit_edge.thread.i133_crit_edge

._crit_edge.i132.._crit_edge.thread.i133_crit_edge: ; preds = %._crit_edge.i132
  %.pre147 = load ptr, ptr %.pr.i129, align 8, !tbaa !28
  br label %._crit_edge.thread.i133

.lr.ph.i125:                                      ; preds = %.preheader.i122, %bb.q
  %.pr9.i126 = phi ptr [ %.pr.i129, %bb.q ], [ %i.ci, %.preheader.i122 ]
  %.sroa.02.08.i127 = phi ptr [ %.sroa.02.0.i130, %bb.q ], [ %.sroa.02.06.i123, %.preheader.i122 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i127, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !31 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i125
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(96) %i.cl) #19, !inline_history !36
  %.pr.pre.i128 = load ptr, ptr %i.ch, align 8, !tbaa !26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i125
  %.pr.i129 = phi ptr [ %.pr9.i126, %.lr.ph.i125 ], [ %.pr.pre.i128, %bb.p ] ; 5 uses
  %.sroa.02.0.i130 = load ptr, ptr %.sroa.02.08.i127, align 8, !tbaa !28 ; 2 uses
  %.not5.i131 = icmp eq ptr %.sroa.02.0.i130, %.pr.i129
  br i1 %.not5.i131, label %._crit_edge.i132, label %.lr.ph.i125, !llvm.loop !33

._crit_edge.thread.i133:                          ; preds = %._crit_edge.i132.._crit_edge.thread.i133_crit_edge, %.preheader.i122
  %i.cq = phi ptr [ %.pre147, %._crit_edge.i132.._crit_edge.thread.i133_crit_edge ], [ %.sroa.02.06.i123, %.preheader.i122 ] ; 2 uses
  %.lcssa14.i134 = phi ptr [ %.pr.i129, %._crit_edge.i132.._crit_edge.thread.i133_crit_edge ], [ %i.ci, %.preheader.i122 ] ; 3 uses
  %.not8.i.i.i135 = icmp eq ptr %i.cq, %.lcssa14.i134
  br i1 %.not8.i.i.i135, label %_ZNSt7__cxx1110_List_baseIPN5Ipopt15DependentResultIdEESaIS4_EED2Ev.exit.i139, label %.lr.ph.i.i.i136

.lr.ph.i.i.i136:                                  ; preds = %._crit_edge.thread.i133, %.lr.ph.i.i.i136
  %.09.i.i.i137 = phi ptr [ %i.cr, %.lr.ph.i.i.i136 ], [ %i.cq, %._crit_edge.thread.i133 ] ; 2 uses
  %i.cr = load ptr, ptr %.09.i.i.i137, align 8, !tbaa !28 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i137, i64 noundef 24) #20, !inline_history !36
  %.not.i.i.i138 = icmp eq ptr %i.cr, %.lcssa14.i134
  br i1 %.not.i.i.i138, label %_ZNSt7__cxx1110_List_baseIPN5Ipopt15DependentResultIdEESaIS4_EED2Ev.exit.i139, label %.lr.ph.i.i.i136, !llvm.loop !35

_ZNSt7__cxx1110_List_baseIPN5Ipopt15DependentResultIdEESaIS4_EED2Ev.exit.i139: ; preds = %.lr.ph.i.i.i136, %._crit_edge.thread.i133
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa14.i134, i64 noundef 24) #20, !inline_history !36
  br label %_ZN5Ipopt13CachedResultsIdED2Ev.exit140

_ZN5Ipopt13CachedResultsIdED2Ev.exit140:          ; preds = %_ZN5Ipopt13CachedResultsIdED2Ev.exit120, %._crit_edge.i132, %_ZNSt7__cxx1110_List_baseIPN5Ipopt15DependentResultIdEESaIS4_EED2Ev.exit.i139
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Ipopt11CGPenaltyCqD0Ev(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5Ipopt11CGPenaltyCqD1Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 248) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5Ipopt11CGPenaltyCq15RegisterOptionsERKNS_8SmartPtrINS_17RegisteredOptionsEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN5Ipopt11CGPenaltyCq10InitializeERKNS_10JournalistERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(241) initializes((240, 241)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 1, ptr %i.a, align 8, !tbaa !27
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN5Ipopt11CGPenaltyCq16curr_jac_cd_normEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(241) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Ipopt::SmartPtr", align 8   ; 8 uses
  %3 = alloca %"class.Ipopt::SmartPtr", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  call void @_ZN5Ipopt25IpoptCalculatedQuantities10curr_jac_cEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(2185) %i.b)
  %i.c = load ptr, ptr %2, align 8, !tbaa !37
  %i.d = invoke noundef i32 @_ZN5Ipopt13TripletHelper16GetNumberEntriesERKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(69) %i.c)
          to label %bb.b unwind label %bb.d       ; 8 uses

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %i.f = icmp slt i32 %i.d, 0
  %i.g = shl nuw nsw i64 %i.e, 3
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #21
          to label %bb.c unwind label %bb.e       ; 10 uses

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !37
  invoke void @_ZN5Ipopt13TripletHelper10FillValuesEiRKNS_6MatrixEPd(i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(69) %i.j, ptr noundef nonnull %i.i)
          to label %.preheader70 unwind label %bb.e

.preheader70:                                     ; preds = %bb.c
  %i.k = icmp sgt i32 %i.d, 1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader70
  switch i32 %1, label %._crit_edge [
    i32 3, label %.thread.us.preheader
    i32 1, label %.lr.ph.split.us76.preheader
  ]

.lr.ph.split.us76.preheader:                      ; preds = %.lr.ph
  %i.l = add nsw i64 %i.e, -1                     ; 2 uses
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.m = add nsw i32 %i.d, -2
  %i.n = icmp ult i32 %i.m, 3
  br i1 %i.n, label %.lr.ph.split.us76.epil.preheader, label %.lr.ph.split.us76.preheader.new

.lr.ph.split.us76.preheader.new:                  ; preds = %.lr.ph.split.us76.preheader
  %unroll_iter = and i64 %i.l, -4
  br label %.lr.ph.split.us76

.thread.us.preheader:                             ; preds = %.lr.ph
  %i.o = add nsw i64 %i.e, -1                     ; 3 uses
  %xtraiter143 = and i64 %i.o, 1
  %i.p = icmp eq i32 %i.d, 2
  br i1 %i.p, label %.thread.us.epil.preheader, label %.thread.us.preheader.new

.thread.us.preheader.new:                         ; preds = %.thread.us.preheader
  %unroll_iter148 = and i64 %i.o, -2
  br label %.thread.us

.thread.us:                                       ; preds = %.thread.us, %.thread.us.preheader.new
  %indvars.iv115 = phi i64 [ 1, %.thread.us.preheader.new ], [ %indvars.iv.next116.1, %.thread.us ] ; 3 uses
  %.04971.us = phi double [ 0.000000e+00, %.thread.us.preheader.new ], [ %.sroa.speculated.i.us.1, %.thread.us ] ; 2 uses
  %niter149 = phi i64 [ 0, %.thread.us.preheader.new ], [ %niter149.next.1, %.thread.us ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv115
  %i.r = load double, ptr %i.q, align 8, !tbaa !40
  %i.s = call noundef double @llvm.fabs.f64(double %i.r) ; 2 uses
  %i.t = fcmp olt double %.04971.us, %i.s
  %.sroa.speculated.i.us = select i1 %i.t, double %i.s, double %.04971.us ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv115
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !40
  %i.x = call noundef double @llvm.fabs.f64(double %i.w) ; 2 uses
  %i.y = fcmp olt double %.sroa.speculated.i.us, %i.x
  %.sroa.speculated.i.us.1 = select i1 %i.y, double %i.x, double %.sroa.speculated.i.us ; 3 uses
  %indvars.iv.next116.1 = add nuw nsw i64 %indvars.iv115, 2 ; 2 uses
  %niter149.next.1 = add nuw i64 %niter149, 2     ; 2 uses
  %niter149.ncmp.1 = icmp eq i64 %niter149.next.1, %unroll_iter148
  br i1 %niter149.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.thread.us, !llvm.loop !41

.lr.ph.split.us76:                                ; preds = %.lr.ph.split.us76, %.lr.ph.split.us76.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.split.us76.preheader.new ], [ %indvars.iv.next.3, %.lr.ph.split.us76 ] ; 5 uses
  %.04971.us79 = phi double [ 0.000000e+00, %.lr.ph.split.us76.preheader.new ], [ %i.ar, %.lr.ph.split.us76 ]
  %niter = phi i64 [ 0, %.lr.ph.split.us76.preheader.new ], [ %niter.next.3, %.lr.ph.split.us76 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.aa = load double, ptr %i.z, align 8, !tbaa !40
  %i.ab = call noundef double @llvm.fabs.f64(double %i.aa)
  %i.ac = fadd double %.04971.us79, %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !40
  %i.ag = call noundef double @llvm.fabs.f64(double %i.af)
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !40
  %i.al = call noundef double @llvm.fabs.f64(double %i.ak)
  %i.am = fadd double %i.ah, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !40
  %i.aq = call noundef double @llvm.fabs.f64(double %i.ap)
  %i.ar = fadd double %i.am, %i.aq                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit139.unr-lcssa, label %.lr.ph.split.us76, !llvm.loop !41

bb.d:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.thread.us
  %lcmp.mod145.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod145.not, label %._crit_edge, label %.thread.us.epil.preheader

.thread.us.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.thread.us.preheader
  %indvars.iv115.epil.init = phi i64 [ 1, %.thread.us.preheader ], [ %indvars.iv.next116.1, %._crit_edge.loopexit.unr-lcssa ]
  %.04971.us.epil.init = phi double [ 0.000000e+00, %.thread.us.preheader ], [ %.sroa.speculated.i.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod147 = trunc i64 %i.o to i1
  call void @llvm.assume(i1 %lcmp.mod147)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv115.epil.init
  %i.av = load double, ptr %i.au, align 8, !tbaa !40
  %i.aw = call noundef double @llvm.fabs.f64(double %i.av) ; 2 uses
  %i.ax = fcmp olt double %.04971.us.epil.init, %i.aw
  %.sroa.speculated.i.us.epil = select i1 %i.ax, double %i.aw, double %.04971.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit139.unr-lcssa:                ; preds = %.lr.ph.split.us76
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us76.epil.preheader

.lr.ph.split.us76.epil.preheader:                 ; preds = %._crit_edge.loopexit139.unr-lcssa, %.lr.ph.split.us76.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.split.us76.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit139.unr-lcssa ]
  %.04971.us79.epil.init = phi double [ 0.000000e+00, %.lr.ph.split.us76.preheader ], [ %i.ar, %._crit_edge.loopexit139.unr-lcssa ]
  %lcmp.mod142 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod142)
  br label %.lr.ph.split.us76.epil

.lr.ph.split.us76.epil:                           ; preds = %.lr.ph.split.us76.epil, %.lr.ph.split.us76.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.split.us76.epil ], [ %indvars.iv.epil.init, %.lr.ph.split.us76.epil.preheader ] ; 2 uses
  %.04971.us79.epil = phi double [ %i.bb, %.lr.ph.split.us76.epil ], [ %.04971.us79.epil.init, %.lr.ph.split.us76.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us76.epil ], [ 0, %.lr.ph.split.us76.epil.preheader ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.az = load double, ptr %i.ay, align 8, !tbaa !40
  %i.ba = call noundef double @llvm.fabs.f64(double %i.az)
  %i.bb = fadd double %.04971.us79.epil, %i.ba    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.us76.epil, !llvm.loop !42

._crit_edge:                                      ; preds = %._crit_edge.loopexit139.unr-lcssa, %.lr.ph.split.us76.epil, %.thread.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.lr.ph, %.preheader70
  %.049.lcssa = phi double [ 0.000000e+00, %.preheader70 ], [ %.sroa.speculated.i.us.epil, %.thread.us.epil.preheader ], [ 0.000000e+00, %.lr.ph ], [ %.sroa.speculated.i.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ar, %._crit_edge.loopexit139.unr-lcssa ], [ %i.bb, %.lr.ph.split.us76.epil ] ; 6 uses
  %.039.lcssa = phi i32 [ 1, %.preheader70 ], [ 1, %.thread.us.epil.preheader ], [ 1, %.lr.ph ], [ 1, %._crit_edge.loopexit.unr-lcssa ], [ %i.d, %.lr.ph.split.us76.epil ], [ %i.d, %._crit_edge.loopexit139.unr-lcssa ] ; 5 uses
  call void @_ZdaPv(ptr noundef nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !24
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities10curr_jac_dEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(2185) %i.bc)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %._crit_edge
  %i.bd = load ptr, ptr %3, align 8, !tbaa !37
  %i.be = invoke noundef i32 @_ZN5Ipopt13TripletHelper16GetNumberEntriesERKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(69) %i.bd)
          to label %bb.g unwind label %bb.j       ; 7 uses

bb.g:                                             ; preds = %bb.f
  %i.bf = zext i32 %i.be to i64                   ; 3 uses
  %i.bg = icmp slt i32 %i.be, 0
  %i.bh = shl nuw nsw i64 %i.bf, 3
  %i.bi = select i1 %i.bg, i64 -1, i64 %i.bh
  %i.bj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #21
          to label %bb.h unwind label %bb.j       ; 10 uses

bb.h:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %3, align 8, !tbaa !37
  invoke void @_ZN5Ipopt13TripletHelper10FillValuesEiRKNS_6MatrixEPd(i32 noundef %i.be, ptr noundef nonnull align 8 dereferenceable(69) %i.bk, ptr noundef nonnull %i.bj)
          to label %.preheader unwind label %bb.j

.preheader:                                       ; preds = %bb.h
  %i.bl = icmp sgt i32 %i.be, 1
  br i1 %i.bl, label %.lr.ph89, label %._crit_edge90

.lr.ph89:                                         ; preds = %.preheader
  switch i32 %1, label %._crit_edge90 [
    i32 3, label %.thread68.us.preheader
    i32 1, label %.lr.ph89.split.us95.preheader
  ]

.lr.ph89.split.us95.preheader:                    ; preds = %.lr.ph89
  %i.bm = add nsw i64 %i.bf, -1                   ; 2 uses
  %xtraiter150 = and i64 %i.bm, 3                 ; 3 uses
  %i.bn = add nsw i32 %i.be, -2
  %i.bo = icmp ult i32 %i.bn, 3
  br i1 %i.bo, label %.lr.ph89.split.us95.epil.preheader, label %.lr.ph89.split.us95.preheader.new

.lr.ph89.split.us95.preheader.new:                ; preds = %.lr.ph89.split.us95.preheader
  %unroll_iter155 = and i64 %i.bm, -4
  br label %.lr.ph89.split.us95

.thread68.us.preheader:                           ; preds = %.lr.ph89
  %i.bp = add nsw i64 %i.bf, -1                   ; 3 uses
  %xtraiter157 = and i64 %i.bp, 1
  %i.bq = icmp eq i32 %i.be, 2
  br i1 %i.bq, label %.thread68.us.epil.preheader, label %.thread68.us.preheader.new

.thread68.us.preheader.new:                       ; preds = %.thread68.us.preheader
  %unroll_iter162 = and i64 %i.bp, -2
  br label %.thread68.us

.thread68.us:                                     ; preds = %.thread68.us, %.thread68.us.preheader.new
  %indvars.iv125 = phi i64 [ 1, %.thread68.us.preheader.new ], [ %indvars.iv.next126.1, %.thread68.us ] ; 3 uses
  %.35286.us = phi double [ %.049.lcssa, %.thread68.us.preheader.new ], [ %.sroa.speculated.i60.us.1, %.thread68.us ] ; 2 uses
  %niter163 = phi i64 [ 0, %.thread68.us.preheader.new ], [ %niter163.next.1, %.thread68.us ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv125
  %i.bs = load double, ptr %i.br, align 8, !tbaa !40
  %i.bt = call noundef double @llvm.fabs.f64(double %i.bs) ; 2 uses
  %i.bu = fcmp olt double %.35286.us, %i.bt
  %.sroa.speculated.i60.us = select i1 %i.bu, double %i.bt, double %.35286.us ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv125
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !40
  %i.by = call noundef double @llvm.fabs.f64(double %i.bx) ; 2 uses
  %i.bz = fcmp olt double %.sroa.speculated.i60.us, %i.by
  %.sroa.speculated.i60.us.1 = select i1 %i.bz, double %i.by, double %.sroa.speculated.i60.us ; 3 uses
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter163.next.1 = add nuw i64 %niter163, 2     ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %._crit_edge90.loopexit.unr-lcssa, label %.thread68.us, !llvm.loop !44

.lr.ph89.split.us95:                              ; preds = %.lr.ph89.split.us95, %.lr.ph89.split.us95.preheader.new
  %indvars.iv120 = phi i64 [ 1, %.lr.ph89.split.us95.preheader.new ], [ %indvars.iv.next121.3, %.lr.ph89.split.us95 ] ; 5 uses
  %.35286.us98 = phi double [ %.049.lcssa, %.lr.ph89.split.us95.preheader.new ], [ %i.cs, %.lr.ph89.split.us95 ]
  %niter156 = phi i64 [ 0, %.lr.ph89.split.us95.preheader.new ], [ %niter156.next.3, %.lr.ph89.split.us95 ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv120
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !40
  %i.cc = call noundef double @llvm.fabs.f64(double %i.cb)
  %i.cd = fadd double %.35286.us98, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv120
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !40
  %i.ch = call noundef double @llvm.fabs.f64(double %i.cg)
  %i.ci = fadd double %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv120
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !40
  %i.cm = call noundef double @llvm.fabs.f64(double %i.cl)
  %i.cn = fadd double %i.ci, %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv120
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !40
  %i.cr = call noundef double @llvm.fabs.f64(double %i.cq)
  %i.cs = fadd double %i.cn, %i.cr                ; 3 uses
  %indvars.iv.next121.3 = add nuw nsw i64 %indvars.iv120, 4 ; 2 uses
  %niter156.next.3 = add nuw i64 %niter156, 4     ; 2 uses
  %niter156.ncmp.3 = icmp eq i64 %niter156.next.3, %unroll_iter155
  br i1 %niter156.ncmp.3, label %._crit_edge90.loopexit106.unr-lcssa, label %.lr.ph89.split.us95, !llvm.loop !44

bb.i:                                             ; preds = %._crit_edge
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit64

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !37    ; 4 uses
  %.not.i.i63 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i63, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit64, label %bb.o

._crit_edge90.loopexit106.unr-lcssa:              ; preds = %.lr.ph89.split.us95
  %lcmp.mod152.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod152.not, label %._crit_edge90.loopexit106, label %.lr.ph89.split.us95.epil.preheader

.lr.ph89.split.us95.epil.preheader:               ; preds = %._crit_edge90.loopexit106.unr-lcssa, %.lr.ph89.split.us95.preheader
  %indvars.iv120.epil.init = phi i64 [ 1, %.lr.ph89.split.us95.preheader ], [ %indvars.iv.next121.3, %._crit_edge90.loopexit106.unr-lcssa ]
  %.35286.us98.epil.init = phi double [ %.049.lcssa, %.lr.ph89.split.us95.preheader ], [ %i.cs, %._crit_edge90.loopexit106.unr-lcssa ]
  %lcmp.mod154 = icmp ne i64 %xtraiter150, 0
  call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph89.split.us95.epil

.lr.ph89.split.us95.epil:                         ; preds = %.lr.ph89.split.us95.epil, %.lr.ph89.split.us95.epil.preheader
  %indvars.iv120.epil = phi i64 [ %indvars.iv.next121.epil, %.lr.ph89.split.us95.epil ], [ %indvars.iv120.epil.init, %.lr.ph89.split.us95.epil.preheader ] ; 2 uses
  %.35286.us98.epil = phi double [ %i.cz, %.lr.ph89.split.us95.epil ], [ %.35286.us98.epil.init, %.lr.ph89.split.us95.epil.preheader ]
  %epil.iter151 = phi i64 [ %epil.iter151.next, %.lr.ph89.split.us95.epil ], [ 0, %.lr.ph89.split.us95.epil.preheader ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv120.epil
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !40
  %i.cy = call noundef double @llvm.fabs.f64(double %i.cx)
  %i.cz = fadd double %.35286.us98.epil, %i.cy    ; 2 uses
  %indvars.iv.next121.epil = add nuw nsw i64 %indvars.iv120.epil, 1
  %epil.iter151.next = add i64 %epil.iter151, 1   ; 2 uses
  %epil.iter151.cmp.not = icmp eq i64 %epil.iter151.next, %xtraiter150
  br i1 %epil.iter151.cmp.not, label %._crit_edge90.loopexit106, label %.lr.ph89.split.us95.epil, !llvm.loop !45

._crit_edge90.loopexit106:                        ; preds = %.lr.ph89.split.us95.epil, %._crit_edge90.loopexit106.unr-lcssa
  %.lcssa = phi double [ %i.cs, %._crit_edge90.loopexit106.unr-lcssa ], [ %i.cz, %.lr.ph89.split.us95.epil ]
  %i.da = add nuw i32 %.039.lcssa, %i.be
  %i.db = add i32 %i.da, -1
  br label %._crit_edge90

._crit_edge90.loopexit.unr-lcssa:                 ; preds = %.thread68.us
  %lcmp.mod159.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod159.not, label %._crit_edge90, label %.thread68.us.epil.preheader

.thread68.us.epil.preheader:                      ; preds = %._crit_edge90.loopexit.unr-lcssa, %.thread68.us.preheader
  %indvars.iv125.epil.init = phi i64 [ 1, %.thread68.us.preheader ], [ %indvars.iv.next126.1, %._crit_edge90.loopexit.unr-lcssa ]
  %.35286.us.epil.init = phi double [ %.049.lcssa, %.thread68.us.preheader ], [ %.sroa.speculated.i60.us.1, %._crit_edge90.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod161 = trunc i64 %i.bp to i1
  call void @llvm.assume(i1 %lcmp.mod161)
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv125.epil.init
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !40
  %i.de = call noundef double @llvm.fabs.f64(double %i.dd) ; 2 uses
  %i.df = fcmp olt double %.35286.us.epil.init, %i.de
  %.sroa.speculated.i60.us.epil = select i1 %i.df, double %i.de, double %.35286.us.epil.init
  br label %._crit_edge90

._crit_edge90:                                    ; preds = %.thread68.us.epil.preheader, %._crit_edge90.loopexit.unr-lcssa, %.lr.ph89, %._crit_edge90.loopexit106, %.preheader
  %.352.lcssa = phi double [ %.049.lcssa, %.preheader ], [ %.lcssa, %._crit_edge90.loopexit106 ], [ %.049.lcssa, %.lr.ph89 ], [ %.sroa.speculated.i60.us.1, %._crit_edge90.loopexit.unr-lcssa ], [ %.sroa.speculated.i60.us.epil, %.thread68.us.epil.preheader ] ; 2 uses
  %.2.lcssa = phi i32 [ %.039.lcssa, %.preheader ], [ %i.db, %._crit_edge90.loopexit106 ], [ %.039.lcssa, %.lr.ph89 ], [ %.039.lcssa, %._crit_edge90.loopexit.unr-lcssa ], [ %.039.lcssa, %.thread68.us.epil.preheader ]
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #20
  %i.dg = load ptr, ptr %3, align 8, !tbaa !37    ; 4 uses
  %.not.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge90
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !8
  %i.dj = add nsw i32 %i.di, -1                   ; 2 uses
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !8
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.l, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(69) %i.dg) #19, !inline_history !46
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit:        ; preds = %._crit_edge90, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.do = load ptr, ptr %2, align 8, !tbaa !37    ; 4 uses
  %.not.i.i61 = icmp eq ptr %i.do, null
  br i1 %.not.i.i61, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit62, label %bb.m

bb.m:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !8
  %i.dr = add nsw i32 %i.dq, -1                   ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !8
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.n, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit62

bb.n:                                             ; preds = %bb.m
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(69) %i.do) #19, !inline_history !46
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit62

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit62:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit, %bb.m, %bb.n
  %i.dw = icmp eq i32 %1, 1
  %i.dx = sitofp i32 %.2.lcssa to double
  %i.dy = fdiv double %.352.lcssa, %i.dx
  %.6 = select i1 %i.dw, double %i.dy, double %.352.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret double %.6

bb.o:                                             ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !8
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !8
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.p, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit64

bb.p:                                             ; preds = %bb.o
  %i.ed = load ptr, ptr %i.cv, align 8, !tbaa !10
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(69) %i.cv) #19, !inline_history !46
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit64

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit64:      ; preds = %bb.p, %bb.o, %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.i ], [ %i.cu, %bb.j ], [ %i.cu, %bb.o ], [ %i.cu, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit64, %bb.d
  %.pn56.pn.pn = phi { ptr, i32 } [ %i.as, %bb.d ], [ %i.at, %bb.e ], [ %.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit64 ]
  %i.eg = load ptr, ptr %2, align 8, !tbaa !37    ; 4 uses
  %.not.i.i65 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i65, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit66, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !8
  %i.ej = add nsw i32 %i.ei, -1                   ; 2 uses
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !8
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.s, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit66

bb.s:                                             ; preds = %bb.r
  %i.el = load ptr, ptr %i.eg, align 8, !tbaa !10
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(69) %i.eg) #19, !inline_history !46
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit66

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit66:      ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn56.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare void @_ZN5Ipopt25IpoptCalculatedQuantities10curr_jac_cEv(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr") align 8, ptr noundef nonnull align 8 dereferenceable(2185)) local_unnamed_addr #6

declare noundef i32 @_ZN5Ipopt13TripletHelper16GetNumberEntriesERKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(69)) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

declare void @_ZN5Ipopt13TripletHelper10FillValuesEiRKNS_6MatrixEPd(i32 noundef, ptr noundef nonnull align 8 dereferenceable(69), ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

declare void @_ZN5Ipopt25IpoptCalculatedQuantities10curr_jac_dEv(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr") align 8, ptr noundef nonnull align 8 dereferenceable(2185)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef double @_ZN5Ipopt11CGPenaltyCq21curr_penalty_functionEv(ptr noundef nonnull align 8 dereferenceable(241) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 10 uses
  %1 = alloca %"class.std::vector.29", align 8    ; 11 uses
  %2 = alloca %"class.std::vector.34", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47, !noalias !50 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt9IpoptData4currEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !8, !noalias !50
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !8, !noalias !50
  br label %_ZNK5Ipopt9IpoptData4currEv.exit

_ZNK5Ipopt9IpoptData4currEv.exit:                 ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53, !noalias !56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61, !noalias !56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64, !noalias !56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67, !noalias !56 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not3.i.i.i, label %_ZNK5Ipopt14IteratesVector1xEv.exit, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt9IpoptData4currEv.exit
  %.0.i3.i.i.i = phi ptr [ %i.k, %_ZNK5Ipopt9IpoptData4currEv.exit ], [ %i.n, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !8, !noalias !69
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !8, !noalias !69
  br label %_ZNK5Ipopt14IteratesVector1xEv.exit

_ZNK5Ipopt14IteratesVector1xEv.exit:              ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i
  %storemerge.i.i = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ], [ %.0.i3.i.i.i, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i ] ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !8
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !8
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit: ; preds = %_ZNK5Ipopt14IteratesVector1xEv.exit
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(280) %i.e) #19, !inline_history !72
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !23
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre58 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47, !noalias !73, !nonnull !76, !noundef !76
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.thread: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit, %_ZNK5Ipopt14IteratesVector1xEv.exit
  %i.y = phi ptr [ %.pre58, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit ], [ %i.e, %_ZNK5Ipopt14IteratesVector1xEv.exit ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !8, !noalias !73
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !8, !noalias !73
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 208
end_hunk_0
begin_hunk_1_@_ZN5Ipopt11CGPenaltyCq23compute_curr_cg_penaltyEd:bb.a
  store i32 %i.afl, ptr %i.afj, align 8, !tbaa !8
  %i.afm = icmp eq i32 %i.afl, 0
  br i1 %i.afm, label %bb.fc, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit440

bb.fc:                                            ; preds = %bb.fb
  %i.afn = load ptr, ptr %i.hq, align 8, !tbaa !10
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 8
  %i.afp = load ptr, ptr %i.afo, align 8
  call void %i.afp(ptr noundef nonnull align 8 dereferenceable(205) %i.hq) #19, !inline_history !543
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit440

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit440:      ; preds = %bb.fc, %bb.fb, %bb.cd
  %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.sp, %bb.cd ], [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fb ], [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fc ] ; 3 uses
  %i.afq = load ptr, ptr %5, align 8, !tbaa !67   ; 4 uses
  %.not.i.i441 = icmp eq ptr %i.afq, null
  br i1 %.not.i.i441, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit442, label %bb.fd

bb.fd:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit440
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 8 ; 2 uses
  %i.afs = load i32, ptr %i.afr, align 8, !tbaa !8
  %i.aft = add nsw i32 %i.afs, -1                 ; 2 uses
  store i32 %i.aft, ptr %i.afr, align 8, !tbaa !8
  %i.afu = icmp eq i32 %i.aft, 0
  br i1 %i.afu, label %bb.fe, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit442

bb.fe:                                            ; preds = %bb.fd
  %i.afv = load ptr, ptr %i.afq, align 8, !tbaa !10
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.afx = load ptr, ptr %i.afw, align 8
  call void %i.afx(ptr noundef nonnull align 8 dereferenceable(205) %i.afq) #19, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit442

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit442:     ; preds = %bb.fe, %bb.fd, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit440, %bb.cc
  %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.so, %bb.cc ], [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit440 ], [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fd ], [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fe ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.afy = load ptr, ptr %4, align 8, !tbaa !67   ; 4 uses
  %.not.i.i443 = icmp eq ptr %i.afy, null
  br i1 %.not.i.i443, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit444, label %bb.ff

bb.ff:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit442
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 8 ; 2 uses
  %i.aga = load i32, ptr %i.afz, align 8, !tbaa !8
  %i.agb = add nsw i32 %i.aga, -1                 ; 2 uses
  store i32 %i.agb, ptr %i.afz, align 8, !tbaa !8
  %i.agc = icmp eq i32 %i.agb, 0
  br i1 %i.agc, label %bb.fg, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit444

bb.fg:                                            ; preds = %bb.ff
  %i.agd = load ptr, ptr %i.afy, align 8, !tbaa !10
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %i.agf = load ptr, ptr %i.age, align 8
  call void %i.agf(ptr noundef nonnull align 8 dereferenceable(205) %i.afy) #19, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit444

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit444:     ; preds = %bb.fg, %bb.ff, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit442, %bb.cb
  %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.sn, %bb.cb ], [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit442 ], [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ff ], [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.fh

bb.fh:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit316, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit444, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit314
  %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn80, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit314 ], [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit444 ], [ %.pn82, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit316 ]
  %.not.i.i445 = icmp eq ptr %storemerge.i.i168, null
  br i1 %.not.i.i445, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit446, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.agg = getelementptr inbounds nuw i8, ptr %storemerge.i.i168, i64 8 ; 2 uses
  %i.agh = load i32, ptr %i.agg, align 8, !tbaa !8
  %i.agi = add nsw i32 %i.agh, -1                 ; 2 uses
  store i32 %i.agi, ptr %i.agg, align 8, !tbaa !8
  %i.agj = icmp eq i32 %i.agi, 0
  br i1 %i.agj, label %bb.fj, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit446

bb.fj:                                            ; preds = %bb.fi
  %i.agk = load ptr, ptr %storemerge.i.i168, align 8, !tbaa !10
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 8
  %i.agm = load ptr, ptr %i.agl, align 8
  call void %i.agm(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i168) #19, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit446

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit446:     ; preds = %bb.fj, %bb.fi, %bb.fh
  %.not.i.i447 = icmp eq ptr %storemerge.i.i157, null
  br i1 %.not.i.i447, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit448, label %bb.fk

bb.fk:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit446
  %i.agn = getelementptr inbounds nuw i8, ptr %storemerge.i.i157, i64 8 ; 2 uses
  %i.ago = load i32, ptr %i.agn, align 8, !tbaa !8
  %i.agp = add nsw i32 %i.ago, -1                 ; 2 uses
  store i32 %i.agp, ptr %i.agn, align 8, !tbaa !8
  %i.agq = icmp eq i32 %i.agp, 0
  br i1 %i.agq, label %bb.fl, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit448

bb.fl:                                            ; preds = %bb.fk
  %i.agr = load ptr, ptr %storemerge.i.i157, align 8, !tbaa !10
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %i.agt = load ptr, ptr %i.ags, align 8
  call void %i.agt(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i157) #19, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit448

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit448:     ; preds = %bb.fl, %bb.fk, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit446
  %.not.i.i449 = icmp eq ptr %storemerge.i.i147, null
  br i1 %.not.i.i449, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit450, label %bb.fm

bb.fm:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit448
  %i.agu = getelementptr inbounds nuw i8, ptr %storemerge.i.i147, i64 8 ; 2 uses
  %i.agv = load i32, ptr %i.agu, align 8, !tbaa !8
  %i.agw = add nsw i32 %i.agv, -1                 ; 2 uses
  store i32 %i.agw, ptr %i.agu, align 8, !tbaa !8
  %i.agx = icmp eq i32 %i.agw, 0
  br i1 %i.agx, label %bb.fn, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit450

bb.fn:                                            ; preds = %bb.fm
  %i.agy = load ptr, ptr %storemerge.i.i147, align 8, !tbaa !10
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %i.aha = load ptr, ptr %i.agz, align 8
  call void %i.aha(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i147) #19, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit450

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit450:     ; preds = %bb.fn, %bb.fm, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit448
  %.not.i.i451 = icmp eq ptr %storemerge.i.i137, null
  br i1 %.not.i.i451, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit452, label %bb.fo

bb.fo:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit450
  %i.ahb = getelementptr inbounds nuw i8, ptr %storemerge.i.i137, i64 8 ; 2 uses
  %i.ahc = load i32, ptr %i.ahb, align 8, !tbaa !8
  %i.ahd = add nsw i32 %i.ahc, -1                 ; 2 uses
  store i32 %i.ahd, ptr %i.ahb, align 8, !tbaa !8
  %i.ahe = icmp eq i32 %i.ahd, 0
  br i1 %i.ahe, label %bb.fp, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit452

bb.fp:                                            ; preds = %bb.fo
  %i.ahf = load ptr, ptr %storemerge.i.i137, align 8, !tbaa !10
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahh = load ptr, ptr %i.ahg, align 8
  call void %i.ahh(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i137) #19, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit452

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit452:     ; preds = %bb.fp, %bb.fo, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit450
  %.not.i.i453 = icmp eq ptr %storemerge.i.i128, null
  br i1 %.not.i.i453, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit454, label %bb.fq

bb.fq:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit452
  %i.ahi = getelementptr inbounds nuw i8, ptr %storemerge.i.i128, i64 8 ; 2 uses
  %i.ahj = load i32, ptr %i.ahi, align 8, !tbaa !8
  %i.ahk = add nsw i32 %i.ahj, -1                 ; 2 uses
  store i32 %i.ahk, ptr %i.ahi, align 8, !tbaa !8
  %i.ahl = icmp eq i32 %i.ahk, 0
  br i1 %i.ahl, label %bb.fr, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit454

bb.fr:                                            ; preds = %bb.fq
  %i.ahm = load ptr, ptr %storemerge.i.i128, align 8, !tbaa !10
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.aho = load ptr, ptr %i.ahn, align 8
  call void %i.aho(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i128) #19, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit454

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit454:     ; preds = %bb.fr, %bb.fq, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit452
  %.not.i.i455 = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i455, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit456, label %bb.fs

bb.fs:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit454
  %i.ahp = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8 ; 2 uses
  %i.ahq = load i32, ptr %i.ahp, align 8, !tbaa !8
  %i.ahr = add nsw i32 %i.ahq, -1                 ; 2 uses
  store i32 %i.ahr, ptr %i.ahp, align 8, !tbaa !8
  %i.ahs = icmp eq i32 %i.ahr, 0
  br i1 %i.ahs, label %bb.ft, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit456

bb.ft:                                            ; preds = %bb.fs
  %i.aht = load ptr, ptr %storemerge.i.i, align 8, !tbaa !10
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.ahv = load ptr, ptr %i.ahu, align 8
  call void %i.ahv(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i) #19, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit456

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit456:     ; preds = %bb.ft, %bb.fs, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit454
  resume { ptr, i32 } %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN5Ipopt25IpoptCalculatedQuantities21curr_jac_cT_times_vecERKNS_6VectorE(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.10") align 8, ptr noundef nonnull align 8 dereferenceable(2185), ptr noundef nonnull align 8 dereferenceable(205)) local_unnamed_addr #6

declare void @_ZN5Ipopt25IpoptCalculatedQuantities21curr_jac_dT_times_vecERKNS_6VectorE(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.10") align 8, ptr noundef nonnull align 8 dereferenceable(2185), ptr noundef nonnull align 8 dereferenceable(205)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef double @_ZN5Ipopt11CGPenaltyCq29compute_curr_cg_penalty_scaleEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(241) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 8 dereferenceable(2185) %i.b, i32 noundef 1) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 41
  %i.l = load i8, ptr %i.k, align 1, !tbaa !544, !range !133, !noundef !76
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = fmul double %i.f, 1.000000e+09           ; 2 uses
  %i.n = fcmp olt double %i.m, 1.000000e+13
  %.sroa.speculated.i = select i1 %i.n, double %i.m, double 1.000000e+13
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noundef double @_ZN5Ipopt11CGPenaltyCq16curr_jac_cd_normEi(ptr noundef nonnull align 8 dereferenceable(241) %0, i32 noundef 1)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef double %i.s(ptr noundef nonnull align 8 dereferenceable(2185) %i.p, i32 noundef 0)
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47, !noalias !545 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt9IpoptData4currEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !8, !noalias !545
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !8, !noalias !545
  br label %_ZNK5Ipopt9IpoptData4currEv.exit

_ZNK5Ipopt9IpoptData4currEv.exit:                 ; preds = %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53, !noalias !548 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !61, !noalias !548 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64, !noalias !548
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67, !noalias !548, !nonnull !76, !noundef !76
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt9IpoptData4currEv.exit
  %.0.i3.i.i.i = phi ptr [ %i.ad, %_ZNK5Ipopt9IpoptData4currEv.exit ], [ %i.ah, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !8, !noalias !553
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !8, !noalias !553
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !494
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !556
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !8, !noalias !558
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !8, !noalias !558
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !61, !noalias !561 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i20, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i24, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i21

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i24: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64, !noalias !561
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !67, !noalias !561, !nonnull !76, !noundef !76
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i21

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i21: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i24, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i
  %.0.i3.i.i.i22 = phi ptr [ %i.at, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i ], [ %i.ax, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i24 ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i22, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !8, !noalias !566
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i22, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !494
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !556
  %i.be = add nsw i32 %i.bd, %i.ao
  %i.bf = sitofp i32 %i.be to double
  %i.bg = fdiv double %i.t, %i.bf
  %i.bh = fadd double %i.o, %i.bg
  %i.bi = fmul double %i.bh, 5.000000e-01
  %i.bj = icmp eq i32 %i.az, 0
  br i1 %i.bj, label %bb.e, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.e:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i21
  %i.bk = load ptr, ptr %.0.i3.i.i.i22, align 8, !tbaa !10
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i22) #19, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.e, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i21
  %i.bn = load i32, ptr %i.ap, align 8, !tbaa !8
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.ap, align 8, !tbaa !8
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.f, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

bb.f:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.bq = load ptr, ptr %i.w, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(280) %i.w) #19, !inline_history !72
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit: ; preds = %bb.f, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.bt = load i32, ptr %i.ai, align 8, !tbaa !8
  %i.bu = add nsw i32 %i.bt, -1                   ; 2 uses
  store i32 %i.bu, ptr %i.ai, align 8, !tbaa !8
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.g, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit28

bb.g:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %i.bw = load ptr, ptr %.0.i3.i.i.i, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i) #19, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit28

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit28:      ; preds = %bb.g, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %i.bz = load i32, ptr %i.ap, align 8, !tbaa !8
  %i.ca = add nsw i32 %i.bz, -1                   ; 2 uses
  store i32 %i.ca, ptr %i.ap, align 8, !tbaa !8
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.h, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit30

bb.h:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit28
  %i.cc = load ptr, ptr %i.w, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(280) %i.w) #19, !inline_history !72
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit30

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit30: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit28, %bb.h
  %i.cf = load ptr, ptr %i.g, align 8, !tbaa !23  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2192
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !107 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !569
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 68
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !570 ; 2 uses
  %i.cm = icmp eq i32 %i.cj, %i.cl
  %i.cn = icmp eq i32 %i.cl, 0
  %or.cond = or i1 %i.cm, %i.cn
  br i1 %or.cond, label %bb.i, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit30._crit_edge

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit30._crit_edge: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !571
  br label %bb.j

bb.i:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit30
  %i.co = fcmp olt double %i.f, 1.000000e+00
  %.sroa.speculated.i31 = select i1 %i.co, double %i.f, double 1.000000e+00 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 232
  store double %.sroa.speculated.i31, ptr %i.cp, align 8, !tbaa !571
  br label %bb.j

bb.j:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit30._crit_edge, %bb.i
  %i.cq = phi double [ %.pre, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit30._crit_edge ], [ %.sroa.speculated.i31, %bb.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !572
  %i.ct = tail call double @pow(double noundef 1.000000e+01, double noundef %i.cs) #19
  %i.cu = fmul double %i.ct, 4.000000e-02
  %i.cv = fcmp olt double %i.f, 1.000000e+04
  %.sroa.speculated.i40 = select i1 %i.cv, double %i.f, double 1.000000e+04
  %i.cw = fmul double %i.bi, %i.cu
  %i.cx = fmul double %i.cq, %i.cw
  %i.cy = fdiv double %.sroa.speculated.i40, %i.cx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.0 = phi double [ %i.cy, %bb.j ], [ %.sroa.speculated.i, %bb.b ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN5Ipopt11CGPenaltyCq18curr_scaled_y_AmaxEv(ptr noundef nonnull align 8 dereferenceable(241) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.34", align 8    ; 9 uses
  %2 = alloca %"class.std::vector.34", align 8    ; 9 uses
  %i.a = alloca double, align 8                   ; 11 uses
  %3 = alloca %"class.std::vector.29", align 8    ; 10 uses
  %4 = alloca %"class.Ipopt::SmartPtr.10", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47, !noalias !573 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt9IpoptData4currEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !8, !noalias !573
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !8, !noalias !573
  br label %_ZNK5Ipopt9IpoptData4currEv.exit

_ZNK5Ipopt9IpoptData4currEv.exit:                 ; preds = %bb.a, %bb.b
end_hunk_1
