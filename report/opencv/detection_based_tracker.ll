inline.NumInlined: 1007
inline.NumDeleted: 494
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK2cv21DetectionBasedTracker10getObjectsERSt6vectorINS0_9ExtObjectESaIS2_EE:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !131
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE5clearEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE5clearEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit
  %i.k = phi ptr [ %i.e, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit ] ; 8 uses
  %i.l = phi ptr [ %i.i, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit ]
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.m = trunc i64 %.015 to i32
  %i.n = call { i64, i64 } @_ZNK2cv21DetectionBasedTracker31calcTrackedObjectPositionToShowEiRNS0_12ObjectStatusE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %.015
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !179  ; 2 uses
  %i.t = load i32, ptr %i.a, align 4, !tbaa !207  ; 2 uses
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !209
  %.not.i.i7 = icmp eq ptr %i.k, %i.u
  br i1 %.not.i.i7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.s, ptr %i.k, align 4, !tbaa !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i64 %i.p, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 %i.t, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !207
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  store ptr %i.w, ptr %i.c, align 8, !tbaa !206
  br label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %1, align 8, !tbaa !203    ; 5 uses
  %i.y = ptrtoint ptr %i.k to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.e, label %_ZNKSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #27
  unreachable

_ZNKSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ac = sdiv exact i64 %i.aa, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 384307168202282325)
  %i.ag = select i1 %i.ae, i64 384307168202282325, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = mul nuw nsw i64 %i.ag, 24
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #30 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 4 uses
  store i32 %i.s, ptr %i.aj, align 4, !tbaa !56
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx9, align 4
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i64 %i.p, ptr %.sroa.6.0..sroa_idx11, align 4
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store i32 %i.t, ptr %.sroa.7.0..sroa_idx13, align 4, !tbaa !207
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !210, !alias.scope !211
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !215

_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #28
  br label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ai, ptr %1, align 8, !tbaa !203
  store ptr %i.am, ptr %i.c, align 8, !tbaa !206
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.an, ptr %i.j, align 8, !tbaa !209
  br label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ao = phi ptr [ %i.w, %bb.c ], [ %i.am, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ap = add nuw i64 %.015, 1                    ; 2 uses
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !131
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !130 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 40
  %i.aw = icmp ult i64 %i.ap, %i.av
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !216
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_ZNK2cv21DetectionBasedTracker31calcTrackedObjectPositionToShowEiRNS0_12ObjectStatusE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !131
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = trunc i64 %i.i to i32
  %.not = icmp slt i32 %1, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 3, ptr %2, align 4, !tbaa !207
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !154
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !182
  %.not73 = icmp sgt i32 %i.n, %i.p
  br i1 %.not73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !207
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !170
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !217
  %i.u = icmp sgt i32 %i.r, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %2, align 4, !tbaa !207
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !52   ; 5 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = lshr exact i64 %i.aa, 4                 ; 4 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %2, align 4, !tbaa !207
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !127
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !129 ; 4 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = lshr exact i64 %i.ak, 2
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !127
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !129 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = lshr i64 %i.at, 2
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ac)
  %i.aw = icmp sgt i32 %i.am, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %bb.k

.lr.ph.preheader:                                 ; preds = %bb.j
  %.sroa.speculated186 = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ac) ; 3 uses
  %i.ax = and i64 %i.ab, 2147483647
  %wide.trip.count = zext nneg i32 %.sroa.speculated186 to i64 ; 2 uses
  %i.ay = getelementptr [16 x i8], ptr %i.x, i64 %i.ax ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.az = icmp eq i32 %.sroa.speculated186, 1
  br i1 %i.az, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.066201.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cu, %._crit_edge.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cs, %._crit_edge.unr-lcssa ]
  %lcmp.mod239 = trunc i32 %.sroa.speculated186 to i1
  tail call void @llvm.assume(i1 %lcmp.mod239)
  %i.ba = xor i64 %indvars.iv.epil.init, -1
  %i.bb = getelementptr [16 x i8], ptr %i.ay, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.epil.init
  %i.be = load float, ptr %i.bd, align 4, !tbaa !119 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.bc, align 4, !tbaa !56
  %i.bg = sitofp <2 x i32> %i.bf to <2 x float>
  %i.bh = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.bi, %i.bg
  %i.bk = fpext <2 x float> %i.bj to <2 x double>
  %i.bl = fadd <2 x double> %.epil.init, %i.bk
  %i.bm = fpext float %i.be to double
  %i.bn = fadd double %.066201.epil.init, %i.bm
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa236 = phi <2 x double> [ %i.cs, %._crit_edge.unr-lcssa ], [ %i.bl, %.lr.ph.epil.preheader ]
  %.lcssa235 = phi double [ %i.cu, %._crit_edge.unr-lcssa ], [ %i.bn, %.lr.ph.epil.preheader ]
  %i.bo = insertelement <2 x double> poison, double %.lcssa235, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fdiv <2 x double> %.lcssa236, %i.bp
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.066201 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.cu, %.lr.ph ]
  %i.br = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.cs, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bs = xor i64 %indvars.iv, -1
  %i.bt = getelementptr [16 x i8], ptr %i.ay, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !119 ; 2 uses
  %i.bx = load <2 x i32>, ptr %i.bu, align 4, !tbaa !56
  %i.by = sitofp <2 x i32> %i.bx to <2 x float>
  %i.bz = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.ca, %i.by
  %i.cc = fpext <2 x float> %i.cb to <2 x double>
  %i.cd = fadd <2 x double> %i.br, %i.cc
  %i.ce = fpext float %i.bw to double
  %i.cf = fadd double %.066201, %i.ce
  %i.cg = xor i64 %indvars.iv, -2
  %i.ch = getelementptr [16 x i8], ptr %i.ay, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !119 ; 2 uses
  %i.cm = load <2 x i32>, ptr %i.ci, align 4, !tbaa !56
  %i.cn = sitofp <2 x i32> %i.cm to <2 x float>
  %i.co = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.cp, %i.cn
  %i.cr = fpext <2 x float> %i.cq to <2 x double>
  %i.cs = fadd <2 x double> %i.cd, %i.cr          ; 3 uses
  %i.ct = fpext float %i.cl to double
  %i.cu = fadd double %i.cf, %i.ct                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !218

bb.k:                                             ; preds = %bb.j
  %i.cv = add nuw nsw i64 %i.ab, 4294967295
  %i.cw = and i64 %i.cv, 4294967295
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load <2 x i32>, ptr %i.cy, align 4, !tbaa !56
  %i.da = sitofp <2 x i32> %i.cz to <2 x double>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.db = phi <2 x double> [ %i.bq, %._crit_edge ], [ %i.da, %bb.k ] ; 3 uses
  %i.dc = icmp sgt i32 %i.av, 0
  br i1 %i.dc, label %.lr.ph209.preheader, label %bb.m

.lr.ph209.preheader:                              ; preds = %bb.l
  %i.dd = and i64 %i.ab, 2147483647
  %wide.trip.count221 = zext nneg i32 %.sroa.speculated to i64
  %i.de = getelementptr [16 x i8], ptr %i.x, i64 %i.dd
  br label %.lr.ph209

._crit_edge210:                                   ; preds = %.lr.ph209
  %i.df = fdiv double 1.000000e+00, %i.ec
  %i.dg = fptrunc double %i.df to float
  %i.dh = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.ea, %i.di
  br label %bb.n

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %.lr.ph209
  %indvars.iv217 = phi i64 [ 0, %.lr.ph209.preheader ], [ %indvars.iv.next218, %.lr.ph209 ] ; 3 uses
  %.068208 = phi double [ 0.000000e+00, %.lr.ph209.preheader ], [ %i.ec, %.lr.ph209 ]
  %.sroa.0169.0206 = phi <2 x float> [ zeroinitializer, %.lr.ph209.preheader ], [ %i.ea, %.lr.ph209 ]
  %i.dk = xor i64 %indvars.iv217, -1
  %i.dl = getelementptr [16 x i8], ptr %i.de, i64 %i.dk ; 2 uses
  %i.dm = load <2 x i32>, ptr %i.dl, align 4      ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv217
  %i.dp = load float, ptr %i.do, align 4, !tbaa !119 ; 2 uses
  %i.dq = load <2 x i32>, ptr %i.dn, align 4, !tbaa !56
  %i.dr = add nsw <2 x i32> %i.dq, %i.dm
  %i.ds = sitofp <2 x i32> %i.dm to <2 x float>
  %i.dt = fmul nnan <2 x float> %i.ds, splat (float 5.000000e-01)
  %i.du = sitofp <2 x i32> %i.dr to <2 x float>
  %i.dv = fmul nnan <2 x float> %i.du, splat (float 5.000000e-01)
  %i.dw = fadd <2 x float> %i.dt, %i.dv
  %i.dx = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dy, %i.dw
  %i.ea = fadd <2 x float> %.sroa.0169.0206, %i.dz ; 2 uses
  %i.eb = fpext float %i.dp to double
  %i.ec = fadd double %.068208, %i.eb             ; 2 uses
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge210, label %.lr.ph209, !llvm.loop !219

bb.m:                                             ; preds = %bb.l
  %i.ed = shl i64 %i.aa, 28
  %sext = add i64 %i.ed, -4294967296
  %i.ee = ashr i64 %sext, 32
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.ee ; 2 uses
  %i.eg = load <2 x i32>, ptr %i.ef, align 4      ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load <2 x i32>, ptr %i.eh, align 4, !tbaa !56
  %i.ej = add nsw <2 x i32> %i.ei, %i.eg
  %i.ek = sitofp <2 x i32> %i.eg to <2 x float>
  %i.el = fmul nnan <2 x float> %i.ek, splat (float 5.000000e-01)
  %i.em = sitofp <2 x i32> %i.ej to <2 x float>
  %i.en = fmul nnan <2 x float> %i.em, splat (float 5.000000e-01)
  %i.eo = fadd <2 x float> %i.el, %i.en
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge210
  %.sroa.0169.1 = phi <2 x float> [ %i.dj, %._crit_edge210 ], [ %i.eo, %bb.m ]
  %i.ep = fptrunc <2 x double> %i.db to <2 x float>
  %i.eq = fmul <2 x float> %i.ep, splat (float 5.000000e-01)
  %i.er = fsub <2 x float> %.sroa.0169.1, %i.eq   ; 2 uses
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.et = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.es)
  %i.eu = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ev = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.eu)
  %i.ew = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.db)
  %i.ex = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ey = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ex)
  %.sroa.7.8.insert.ext = zext i32 %i.ew to i64
  %.sroa.7.12.insert.ext = zext i32 %i.ey to i64
  %.sroa.7.12.insert.shift = shl nuw i64 %.sroa.7.12.insert.ext, 32
  %.sroa.7.12.insert.insert = or disjoint i64 %.sroa.7.12.insert.shift, %.sroa.7.8.insert.ext
  store i32 1, ptr %2, align 4, !tbaa !207
  %i.ez = zext i32 %i.ev to i64
  %i.fa = shl nuw i64 %i.ez, 32
  %i.fb = zext i32 %i.et to i64
  %i.fc = or disjoint i64 %i.fa, %i.fb
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.g, %bb.e, %bb.c
  %.sroa.7.1 = phi i64 [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.i ], [ %.sroa.7.12.insert.insert, %bb.n ]
  %.sroa.0198.sroa.6.1 = phi i64 [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.i ], [ %i.fc, %bb.n ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0198.sroa.6.1, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN2cv21DetectionBasedTracker3runEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN2cv21DetectionBasedTracker21SeparateDetectionWork3runEv(ptr noundef nonnull align 8 dereferenceable(432) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !56
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !231

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !87

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !56
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !56
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !87

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !56
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !56
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #28
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !158
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !163
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8, !tbaa !161
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !130    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #27
  unreachable

_ZNKSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !184
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !184
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53
  store ptr %i.u, ptr %i.s, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %i.w, i64 12, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !184, !alias.scope !235, !noalias !232
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !184, !alias.scope !232, !noalias !235
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53, !alias.scope !235, !noalias !232
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !53, !alias.scope !232, !noalias !235
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !235, !noalias !232
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %i.ac, i64 12, i1 false), !alias.scope !237
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !238

_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.an, %.lr.ph.i.i.i17 ], [ %i.af, %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.am, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.ag = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !184, !alias.scope !242, !noalias !239
  store <2 x ptr> %i.ag, ptr %.012.i.i.i18, align 8, !tbaa !184, !alias.scope !239, !noalias !242
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53, !alias.scope !242, !noalias !239
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !53, !alias.scope !239, !noalias !242
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !242, !noalias !239
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, ptr noundef nonnull align 8 dereferenceable(12) %i.al, i64 12, i1 false), !alias.scope !244
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !238

_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.af, %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.an, %.lr.ph.i.i.i17 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !133
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #28
  br label %_ZNSt12_Vector_baseIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !130
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !131
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !133
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(none) }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTSN2cv21DetectionBasedTrackerE", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !33, i64 200}
!14 = !{!"_ZTSN2cv21DetectionBasedTracker21SeparateDetectionWorkE", !11, i64 8, !15, i64 16, !21, i64 32, !24, i64 40, !26, i64 80, !26, i64 128, !28, i64 176, !33, i64 200, !33, i64 201, !34, i64 204, !35, i64 208, !42, i64 416, !43, i64 424}
!15 = !{!"_ZTSN2cv3PtrINS_21DetectionBasedTracker9IDetectorEEE", !16, i64 0}
!16 = !{!"_ZTSSt10shared_ptrIN2cv21DetectionBasedTracker9IDetectorEE", !17, i64 0}
!17 = !{!"_ZTSSt12__shared_ptrIN2cv21DetectionBasedTracker9IDetectorELN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0, !19, i64 8}
!18 = !{!"p1 _ZTSN2cv21DetectionBasedTracker9IDetectorE", !12, i64 0}
!19 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0}
!20 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!21 = !{!"_ZTSSt6thread", !22, i64 0}
!22 = !{!"_ZTSNSt6thread2idE", !23, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!"_ZTSSt5mutex", !25, i64 0}
!25 = !{!"_ZTSSt12__mutex_base", !6, i64 0}
!26 = !{!"_ZTSSt18condition_variable", !27, i64 0}
!27 = !{!"_ZTSSt9__condvar", !6, i64 0}
!28 = !{!"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", !29, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!32 = !{!"p1 _ZTSN2cv5Rect_IiEE", !12, i64 0}
!33 = !{!"bool", !6, i64 0}
!34 = !{!"_ZTSN2cv21DetectionBasedTracker21SeparateDetectionWork20StateSeparatedThreadE", !6, i64 0}
!35 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56, !38, i64 64, !39, i64 72, !41, i64 128}
!36 = !{!"p1 omnipotent char", !12, i64 0}
!37 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!38 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!39 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !40, i64 4, !5, i64 8, !6, i64 12}
!40 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!41 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!42 = !{!"long long", !6, i64 0}
!43 = !{!"_ZTSN2cv21DetectionBasedTracker10ParametersE", !5, i64 0, !5, i64 4}
!44 = !{!14, !33, i64 201}
!45 = !{!14, !34, i64 204}
!46 = !{!14, !42, i64 416}
!47 = !{!17, !18, i64 0}
!48 = !{!49, !36, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !50, i64 0, !23, i64 8, !6, i64 16}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!51 = !{!6, !6, i64 0}
!52 = !{!31, !32, i64 0}
!53 = !{!31, !32, i64 16}
!54 = !{!23, !23, i64 0}
!55 = !{!19, !20, i64 0}
!56 = !{!5, !5, i64 0}
!57 = !{!58, !5, i64 8}
!58 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!59 = !{!58, !5, i64 12}
!60 = distinct !{null, null, null, null, null}
!61 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!62 = !{!50, !36, i64 0}
!63 = !{!49, !23, i64 8}
!64 = distinct !{null, null}
!65 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv21DetectionBasedTracker9IDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!66 = !{!67, !68, i64 0}
!67 = !{!"_ZTSSt11unique_lockISt5mutexE", !68, i64 0, !33, i64 8}
!68 = !{!"p1 _ZTSSt5mutex", !12, i64 0}
!69 = !{!67, !33, i64 8}
!70 = !{!22, !23, i64 0}
!71 = !{!72, !12, i64 0}
!72 = !{!"_ZTSSt10_Head_baseILm1EPvLb0EE", !12, i64 0}
!73 = !{!74, !12, i64 0}
!74 = !{!"_ZTSSt10_Head_baseILm0EPFPvS0_ELb0EE", !12, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 _ZTSNSt6thread6_StateE", !12, i64 0}
!77 = distinct !{null, null, null}
!78 = !{i8 0, i8 2}
!79 = !{!80, !80, i64 0}
!80 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!81 = !{!"branch_weights", i32 1, i32 1048575}
!82 = !{}
!83 = !{!31, !32, i64 8}
!84 = distinct !{!84, !85, !86}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"llvm.loop.peeled.count", i32 1}
!87 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!88 = !{i64 0, i64 4, !56, i64 4, i64 4, !56, i64 8, i64 4, !56, i64 12, i64 4, !56}
!89 = distinct !{!89, !85}
!90 = !{!91, !91, i64 0}
!91 = !{!"double", !6, i64 0}
!92 = !{!14, !11, i64 8}
!93 = !{i64 8}
!94 = !{!95, !5, i64 28}
!95 = !{!"_ZTSN2cv21DetectionBasedTrackerE", !96, i64 8, !43, i64 24, !100, i64 32, !5, i64 60, !102, i64 64, !107, i64 88, !107, i64 112, !15, i64 136}
!96 = !{!"_ZTSN2cv3PtrINS_21DetectionBasedTracker21SeparateDetectionWorkEEE", !97, i64 0}
!97 = !{!"_ZTSSt10shared_ptrIN2cv21DetectionBasedTracker21SeparateDetectionWorkEE", !98, i64 0}
!98 = !{!"_ZTSSt12__shared_ptrIN2cv21DetectionBasedTracker21SeparateDetectionWorkELN9__gnu_cxx12_Lock_policyE2EE", !99, i64 0, !19, i64 8}
!99 = !{!"p1 _ZTSN2cv21DetectionBasedTracker21SeparateDetectionWorkE", !12, i64 0}
!100 = !{!"_ZTSN2cv21DetectionBasedTracker15InnerParametersE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !101, i64 16, !101, i64 20, !101, i64 24}
!101 = !{!"float", !6, i64 0}
!102 = !{!"_ZTSSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE", !103, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE", !104, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE12_Vector_implE", !105, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!106 = !{!"p1 _ZTSN2cv21DetectionBasedTracker13TrackedObjectE", !12, i64 0}
!107 = !{!"_ZTSSt6vectorIfSaIfEE", !108, i64 0}
!108 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !109, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !110, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!111 = !{!"p1 float", !12, i64 0}
!112 = !{!39, !5, i64 0}
!113 = !{!114, !5, i64 0}
!114 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !12, i64 8, !115, i64 16}
!115 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!116 = !{!114, !12, i64 8}
!117 = !{!43, !5, i64 0}
!118 = !{!43, !5, i64 4}
!119 = !{!101, !101, i64 0}
!120 = !{!100, !101, i64 24}
!121 = !{!12, !12, i64 0}
!122 = distinct !{null, null, null, null, null, null}
!123 = !{!124, !99, i64 16}
!124 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv21DetectionBasedTracker21SeparateDetectionWorkELN9__gnu_cxx12_Lock_policyE2EE", !58, i64 0, !99, i64 16}
!125 = !{!99, !99, i64 0}
!126 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv21DetectionBasedTracker21SeparateDetectionWorkELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!127 = !{!110, !111, i64 8}
!128 = !{!110, !111, i64 16}
!129 = !{!110, !111, i64 0}
!130 = !{!105, !106, i64 0}
!131 = !{!105, !106, i64 8}
!132 = distinct !{!132, !85}
!133 = !{!105, !106, i64 16}
!134 = !{!35, !5, i64 0}
!135 = !{!98, !99, i64 0}
!136 = !{!95, !101, i64 56}
!137 = !{!138, !140}
!138 = distinct !{!138, !139, !"_ZSt19__relocate_object_aIN2cv5Rect_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!139 = distinct !{!139, !"_ZSt19__relocate_object_aIN2cv5Rect_IiEES2_SaIS2_EEvPT_PT0_RT1_"}
!140 = distinct !{!140, !139, !"_ZSt19__relocate_object_aIN2cv5Rect_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!141 = distinct !{!141, !85}
!142 = distinct !{!142, !85}
!143 = distinct !{!143, !85}
!144 = !{!145, !5, i64 8}
!145 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !146, i64 0, !5, i64 8}
!146 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !12, i64 0}
!147 = !{!95, !101, i64 48}
!148 = !{!95, !101, i64 52}
!149 = !{!150, !152}
!150 = distinct !{!150, !151, !"_ZSt19__relocate_object_aIN2cv5Rect_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!151 = distinct !{!151, !"_ZSt19__relocate_object_aIN2cv5Rect_IiEES2_SaIS2_EEvPT_PT0_RT1_"}
!152 = distinct !{!152, !151, !"_ZSt19__relocate_object_aIN2cv5Rect_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!153 = distinct !{!153, !85}
!154 = !{!155, !5, i64 24}
!155 = !{!"_ZTSN2cv21DetectionBasedTracker13TrackedObjectE", !28, i64 0, !5, i64 24, !5, i64 28, !5, i64 32}
!156 = distinct !{!156, !157}
!157 = !{!"llvm.loop.unroll.disable"}
!158 = !{!159, !160, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !160, i64 0, !160, i64 8, !160, i64 16}
!160 = !{!"p1 int", !12, i64 0}
!161 = !{!159, !160, i64 16}
!162 = distinct !{!162, !85}
!163 = !{!159, !160, i64 8}
end_hunk_1
