Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/KAZEFeatures?download=true
inline.NumInlined: 921
inline.NumDeleted: 296
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv11xfeatures2d12KAZEFeatures28Create_Nonlinear_Scale_SpaceERKNS_3MatE:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.ez = getelementptr inbounds nuw [1688 x i8], ptr %i.ey, i64 %.02580
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1040
  %i.fb = load ptr, ptr %i.cy, align 8, !tbaa !83
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.db
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !78
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !14
  invoke void @_ZN2cv15nld_step_scalarERNS_3MatERKS0_S1_f(ptr noundef nonnull align 8 dereferenceable(208) %i.fa, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %7, float noundef %i.ff)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fg = load ptr, ptr %i.cx, align 8, !tbaa !41
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.db
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !12
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next, %i.fj
  br i1 %i.fk, label %.lr.ph, label %._crit_edge, !llvm.loop !152

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.l
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aa, %bb.x, %bb.u, %bb.t, %bb.s, %bb.r
  %.pn71 = phi { ptr, i32 } [ %i.dy, %bb.r ], [ %i.eb, %bb.u ], [ %i.eg, %bb.x ], [ %i.el, %bb.aa ], [ %i.ea, %bb.t ], [ %i.dz, %bb.s ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #22
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %bb.j
  %.pn71.pn = phi { ptr, i32 } [ %.pn71, %.loopexit.split-lp ], [ %.pn49, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.body
  %.pn71.pn.pn = phi { ptr, i32 } [ %.pn71.pn, %bb.ad ], [ %i.ap, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn, %bb.ae ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn71.pn.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !158
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !105
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !94
  %i.g = load i64, ptr %i.a, align 8, !tbaa !105
  store i64 %i.g, ptr %i.b, align 8, !tbaa !95
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !95
  store i8 %i.i, ptr %i.h, align 1, !tbaa !95
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !159
  %i.l = load ptr, ptr %0, align 8, !tbaa !94
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN2cv23gaussian_2D_convolutionERKNS_3MatERS0_iif(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d12KAZEFeatures17Compute_KContrastERKNS_3MatERKf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) initializes((32, 36)) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load float, ptr %2, align 4, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load float, ptr %i.b, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !101
  %i.f = tail call noundef float @_ZN2cv20compute_k_percentileERKNS_3MatEffiii(ptr noundef nonnull align 8 dereferenceable(208) %1, float noundef %i.a, float noundef %i.c, i32 noundef %i.e, i32 noundef 0, i32 noundef 0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.f, ptr %i.g, align 8, !tbaa !102
  ret void
}

declare void @_ZN2cv6ScharrERKNS_11_InputArrayERKNS_12_OutputArrayEiiiddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN2cv5pm_g1ERKNS_11_InputArrayES2_RKNS_12_OutputArrayEf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), float noundef) local_unnamed_addr #4

declare void @_ZN2cv5pm_g2ERKNS_11_InputArrayES2_RKNS_12_OutputArrayEf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), float noundef) local_unnamed_addr #4

declare void @_ZN2cv20weickert_diffusivityERKNS_11_InputArrayES2_RKNS_12_OutputArrayEf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), float noundef) local_unnamed_addr #4

declare void @_ZN2cv15nld_step_scalarERNS_3MatERKS0_S1_f(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), float noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #7

declare noundef float @_ZN2cv20compute_k_percentileERKNS_3MatEffiii(ptr noundef nonnull align 8 dereferenceable(208), float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d12KAZEFeatures25Compute_Detector_ResponseEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Range", align 4         ; 6 uses
  %2 = alloca %"class.cv::xfeatures2d::MultiscaleDerivativesKAZEInvoker", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 1688
  %i.i = trunc i64 %i.h to i32
  store i32 0, ptr %1, align 4, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.i, ptr %i.j, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv11xfeatures2d32MultiscaleDerivativesKAZEInvokerE, i64 16), ptr %2, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.k, align 8, !tbaa !112
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef -1.000000e+00)
          to label %_ZN2cv11xfeatures2d12KAZEFeatures30Compute_Multiscale_DerivativesEv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.l

_ZN2cv11xfeatures2d12KAZEFeatures30Compute_Multiscale_DerivativesEv.exit: ; preds = %bb.a
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 1688
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %._crit_edge29.split, label %.preheader24.lr.ph

.preheader24.lr.ph:                               ; preds = %_ZN2cv11xfeatures2d12KAZEFeatures30Compute_Multiscale_DerivativesEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !48   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader24.lr.ph.split, label %._crit_edge29.split

.preheader24.lr.ph.split:                         ; preds = %.preheader24.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !49   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.preheader24.preheader, label %._crit_edge29.split

.preheader24.preheader:                           ; preds = %.preheader24.lr.ph.split
  %wide.trip.count35 = zext nneg i32 %i.t to i64  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.w to i64    ; 6 uses
  %i.y = shl nuw nsw i64 %wide.trip.count, 2      ; 4 uses
  %i.z = add nsw i64 %wide.trip.count35, -1       ; 4 uses
  %min.iters.check = icmp ult i32 %i.w, 12
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.aa = add nsw i64 %wide.trip.count, -1
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %._crit_edge27
  %.02328 = phi i64 [ %i.cl, %._crit_edge27 ], [ 0, %.preheader24.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [1688 x i8], ptr %i.n, i64 %.02328 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 440
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 544
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 648
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 752
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 856
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 960
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 1480
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 1584
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !113 ; 3 uses
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !105 ; 3 uses
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !113 ; 3 uses
  %i.an = load i64, ptr %i.af, align 8, !tbaa !105 ; 3 uses
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !113 ; 3 uses
  %i.ap = load i64, ptr %i.ah, align 8, !tbaa !105 ; 3 uses
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !113 ; 5 uses
  %i.ar = load i64, ptr %i.aj, align 8, !tbaa !105 ; 5 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.y
  %i.as = mul i64 %i.z, %i.ar
  %scevgep41 = getelementptr i8, ptr %scevgep, i64 %i.as ; 3 uses
  %scevgep42 = getelementptr i8, ptr %i.ak, i64 %i.y
  %i.at = mul i64 %i.z, %i.al
  %scevgep43 = getelementptr i8, ptr %scevgep42, i64 %i.at
  %scevgep44 = getelementptr i8, ptr %i.am, i64 %i.y
  %i.au = mul i64 %i.z, %i.an
  %scevgep45 = getelementptr i8, ptr %scevgep44, i64 %i.au
  %scevgep46 = getelementptr i8, ptr %i.ao, i64 %i.y
  %i.av = mul i64 %i.z, %i.ap
  %scevgep47 = getelementptr i8, ptr %scevgep46, i64 %i.av
  %bound0 = icmp ult ptr %i.aq, %scevgep43
  %bound1 = icmp ult ptr %i.ak, %scevgep41
  %found.conflict = and i1 %bound0, %bound1
  %i.aw = or i64 %i.al, %i.ar
  %i.ax = icmp slt i64 %i.aw, 0
  %i.ay = or i1 %found.conflict, %i.ax
  %bound049 = icmp ult ptr %i.aq, %scevgep45
  %bound150 = icmp ult ptr %i.am, %scevgep41
  %found.conflict51 = and i1 %bound049, %bound150
  %3 = or i64 %i.an, %i.ar
  %i.az = icmp slt i64 %3, 0
  %i.ba = or i1 %found.conflict51, %i.az
  %conflict.rdx = or i1 %i.ay, %i.ba
  %bound054 = icmp ult ptr %i.aq, %scevgep47
  %bound155 = icmp ult ptr %i.ao, %scevgep41
  %found.conflict56 = and i1 %bound054, %bound155
  %4 = or i64 %i.ap, %i.ar
  %i.bb = icmp slt i64 %4, 0
  %i.bc = or i1 %found.conflict56, %i.bb
  %conflict.rdx59 = or i1 %conflict.rdx, %i.bc
  br label %.preheader

._crit_edge29.split:                              ; preds = %._crit_edge27, %.preheader24.lr.ph, %.preheader24.lr.ph.split, %_ZN2cv11xfeatures2d12KAZEFeatures30Compute_Multiscale_DerivativesEv.exit
  ret void

.preheader:                                       ; preds = %.preheader24, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.preheader24 ], [ %indvars.iv.next33, %._crit_edge ] ; 5 uses
  %i.bd = mul i64 %i.al, %indvars.iv32
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bd ; 4 uses
  %i.bf = mul i64 %i.an, %indvars.iv32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bf ; 4 uses
  %i.bh = mul i64 %i.ap, %indvars.iv32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bh ; 4 uses
  %i.bj = mul i64 %i.ar, %indvars.iv32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bj ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx59
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <4 x float>, ptr %i.bl, align 4, !tbaa !14, !alias.scope !169
  %wide.load60.a = load <4 x float>, ptr %i.bm, align 4, !tbaa !14, !alias.scope !169
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load61.a = load <4 x float>, ptr %i.bn, align 4, !tbaa !14, !alias.scope !170 ; 2 uses
  %wide.load62.a = load <4 x float>, ptr %i.bo, align 4, !tbaa !14, !alias.scope !170 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load63 = load <4 x float>, ptr %i.bp, align 4, !tbaa !14, !alias.scope !171
  %wide.load64 = load <4 x float>, ptr %i.bq, align 4, !tbaa !14, !alias.scope !171
  %i.br = fneg <4 x float> %wide.load61.a
  %i.bs = fneg <4 x float> %wide.load62.a
  %i.bt = fmul <4 x float> %wide.load61.a, %i.br
  %i.bu = fmul <4 x float> %wide.load62.a, %i.bs
  %i.bv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load63, <4 x float> %i.bt)
  %i.bw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load60.a, <4 x float> %wide.load64, <4 x float> %i.bu)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <4 x float> %i.bv, ptr %i.bx, align 4, !tbaa !14, !alias.scope !172, !noalias !173
  store <4 x float> %i.bw, ptr %i.by, align 4, !tbaa !14, !alias.scope !172, !noalias !173
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 7 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.ph
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !14
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.ph
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !14 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.ph
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !14
  %i.cg = fneg float %i.cd
  %i.ch = fmul float %i.cd, %i.cg
  %i.ci = call float @llvm.fmuladd.f32(float %i.cb, float %i.cf, float %i.ch)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.ph
  store float %i.ci, ptr %i.cj, align 4, !tbaa !14
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ck = icmp eq i64 %indvars.iv.ph, %i.aa
  br i1 %i.ck, label %._crit_edge, label %scalar.ph

._crit_edge27:                                    ; preds = %._crit_edge
  %i.cl = add nuw i64 %.02328, 1                  ; 2 uses
  %exitcond37.not = icmp eq i64 %i.cl, %i.r
  br i1 %exitcond37.not, label %._crit_edge29.split, label %.preheader24, !llvm.loop !166

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %._crit_edge27, label %.preheader, !llvm.loop !167

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !14
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  %i.cp = load float, ptr %i.co, align 4, !tbaa !14 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !14
  %i.cs = fneg float %i.cp
  %i.ct = fmul float %i.cp, %i.cs
  %i.cu = call float @llvm.fmuladd.f32(float %i.cn, float %i.cr, float %i.ct)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  store float %i.cu, ptr %i.cv, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !14
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !14 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next
  %i.db = load float, ptr %i.da, align 4, !tbaa !14
  %i.dc = fneg float %i.cz
  %i.dd = fmul float %i.cz, %i.dc
  %i.de = call float @llvm.fmuladd.f32(float %i.cx, float %i.db, float %i.dd)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next
  store float %i.de, ptr %i.df, align 4, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !168
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d12KAZEFeatures30Compute_Multiscale_DerivativesEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Range", align 4         ; 6 uses
  %2 = alloca %"class.cv::xfeatures2d::MultiscaleDerivativesKAZEInvoker", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 1688
  %i.i = trunc i64 %i.h to i32
  store i32 0, ptr %1, align 4, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.i, ptr %i.j, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv11xfeatures2d32MultiscaleDerivativesKAZEInvokerE, i64 16), ptr %2, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.k, align 8, !tbaa !112
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef -1.000000e+00)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.l
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d12KAZEFeatures17Feature_DetectionERSt6vectorINS_8KeyPointESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !88     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !114
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i
  tail call void @_ZN2cv11xfeatures2d12KAZEFeatures25Compute_Detector_ResponseEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  tail call void @_ZN2cv11xfeatures2d12KAZEFeatures19Determinant_HessianERSt6vectorINS_8KeyPointESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @_ZN2cv11xfeatures2d12KAZEFeatures22Do_Subpixel_RefinementERSt6vectorINS_8KeyPointESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d12KAZEFeatures19Determinant_HessianERSt6vectorINS_8KeyPointESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.23", align 8    ; 12 uses
  %3 = alloca %"class.cv::Range", align 4         ; 6 uses
  %4 = alloca %"class.cv::xfeatures2d::FindExtremumKAZEInvoker", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %.not191 = icmp eq ptr %i.c, %i.d
  br i1 %.not191, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit, %bb.a
  %.lcssa166 = phi ptr [ %i.c, %bb.a ], [ %i.ah, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit ] ; 2 uses
  %.lcssa165 = phi ptr [ %i.d, %bb.a ], [ %i.ag, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %.lcssa166, %.lcssa165
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i.i ], [ %.lcssa165, %._crit_edge ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !88 ; 3 uses
end_hunk_0
