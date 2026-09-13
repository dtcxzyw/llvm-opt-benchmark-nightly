Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/detection_based_tracker?download=true
inline.NumInlined: 1007
inline.NumDeleted: 494
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK2cv21DetectionBasedTracker10getObjectsERSt6vectorISt4pairINS_5Rect_IiEEiESaIS5_EE:bb.a
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 40
  %i.bb = icmp ult i64 %i.au, %i.ba
  br i1 %i.bb, label %bb.b, label %._crit_edge, !llvm.loop !198
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv21DetectionBasedTracker10getObjectsERSt6vectorINS0_9ExtObjectESaIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !212    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !213  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv21DetectionBasedTracker9ExtObjectES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv21DetectionBasedTracker9ExtObjectES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !213
  br label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv21DetectionBasedTracker9ExtObjectES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.e = phi ptr [ %i.d, %bb.a ], [ %i.b, %_ZSt8_DestroyIPN2cv21DetectionBasedTracker9ExtObjectES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !102  ; 2 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE5clearEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE5clearEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit
  %i.k = phi ptr [ %i.e, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit ] ; 8 uses
  %i.l = phi ptr [ %i.i, %.lr.ph ], [ %i.au, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit ]
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.as, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.m = trunc i64 %.015 to i32
  %i.n = call { i64, i64 } @_ZNK2cv21DetectionBasedTracker31calcTrackedObjectPositionToShowEiRNS0_12ObjectStatusE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %.015
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !118  ; 2 uses
  %i.t = load i32, ptr %i.a, align 4, !tbaa !122  ; 2 uses
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !214
  %.not.i.i7 = icmp eq ptr %i.k, %i.u
  br i1 %.not.i.i7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.s, ptr %i.k, align 4, !tbaa !60
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i64 %i.p, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 %i.t, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !122
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !213
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  store ptr %i.w, ptr %i.c, align 8, !tbaa !213
  br label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %1, align 8, !tbaa !212    ; 5 uses
  %i.y = ptrtoint ptr %i.k to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
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
  store i32 %i.s, ptr %i.aj, align 4, !tbaa !60
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx9, align 4
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i64 %i.p, ptr %.sroa.6.0..sroa_idx11, align 4
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store i32 %i.t, ptr %.sroa.7.0..sroa_idx13, align 4, !tbaa !122
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !215, !alias.scope !216
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !208

_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !214
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ap) #28
  br label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ai, ptr %1, align 8, !tbaa !212
  store ptr %i.am, ptr %i.c, align 8, !tbaa !213
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !214
  br label %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ar = phi ptr [ %i.w, %bb.c ], [ %i.am, %_ZNSt6vectorIN2cv21DetectionBasedTracker9ExtObjectESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.as = add nuw i64 %.015, 1                    ; 2 uses
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !102 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 40
  %i.az = icmp ult i64 %i.as, %i.ay
  br i1 %i.az, label %bb.b, label %._crit_edge, !llvm.loop !209
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_ZNK2cv21DetectionBasedTracker31calcTrackedObjectPositionToShowEiRNS0_12ObjectStatusE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = trunc i64 %i.i to i32
  %.not = icmp slt i32 %1, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 3, ptr %2, align 4, !tbaa !122
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !110
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !119
  %.not73 = icmp sgt i32 %i.n, %i.p
  br i1 %.not73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !122
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !116
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !219
  %i.u = icmp sgt i32 %i.r, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %2, align 4, !tbaa !122
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !56   ; 5 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 4                 ; 5 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %2, align 4, !tbaa !122
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !99
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 4 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = lshr exact i64 %i.ak, 2
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !99
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !101 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = lshr i64 %i.at, 2
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %i.aw = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.ac)
  %i.ax = icmp sgt i32 %i.am, 0
  br i1 %i.ax, label %.lr.ph.preheader, label %bb.k

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %i.ac) ; 3 uses
  %i.az = and i64 %i.ab, 2147483647
  %wide.trip.count = zext nneg i32 %i.ay to i64   ; 2 uses
  %i.ba = getelementptr [16 x i8], ptr %i.x, i64 %i.az ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bb = icmp eq i32 %i.ay, 1
  br i1 %i.bb, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.066201.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cw, %._crit_edge.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cu, %._crit_edge.unr-lcssa ]
  %lcmp.mod239 = trunc i32 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod239)
  %i.bc = xor i64 %indvars.iv.epil.init, -1
  %i.bd = getelementptr [16 x i8], ptr %i.ba, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.epil.init
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !95 ; 2 uses
  %i.bh = load <2 x i32>, ptr %i.be, align 4, !tbaa !60
  %i.bi = sitofp <2 x i32> %i.bh to <2 x float>
  %i.bj = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.bk, %i.bi
  %i.bm = fpext <2 x float> %i.bl to <2 x double>
  %i.bn = fadd <2 x double> %.epil.init, %i.bm
  %i.bo = fpext float %i.bg to double
  %i.bp = fadd double %.066201.epil.init, %i.bo
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa236 = phi <2 x double> [ %i.cu, %._crit_edge.unr-lcssa ], [ %i.bn, %.lr.ph.epil.preheader ]
  %.lcssa235 = phi double [ %i.cw, %._crit_edge.unr-lcssa ], [ %i.bp, %.lr.ph.epil.preheader ]
  %i.bq = insertelement <2 x double> poison, double %.lcssa235, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fdiv <2 x double> %.lcssa236, %i.br
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.066201 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.cw, %.lr.ph ]
  %i.bt = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.cu, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bu = xor i64 %indvars.iv, -1
  %i.bv = getelementptr [16 x i8], ptr %i.ba, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.by = load float, ptr %i.bx, align 4, !tbaa !95 ; 2 uses
  %i.bz = load <2 x i32>, ptr %i.bw, align 4, !tbaa !60
  %i.ca = sitofp <2 x i32> %i.bz to <2 x float>
  %i.cb = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.cc, %i.ca
  %i.ce = fpext <2 x float> %i.cd to <2 x double>
  %i.cf = fadd <2 x double> %i.bt, %i.ce
  %i.cg = fpext float %i.by to double
  %i.ch = fadd double %.066201, %i.cg
  %i.ci = xor i64 %indvars.iv, -2
  %i.cj = getelementptr [16 x i8], ptr %i.ba, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !95 ; 2 uses
  %i.co = load <2 x i32>, ptr %i.ck, align 4, !tbaa !60
  %i.cp = sitofp <2 x i32> %i.co to <2 x float>
  %i.cq = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cr, %i.cp
  %i.ct = fpext <2 x float> %i.cs to <2 x double>
  %i.cu = fadd <2 x double> %i.cf, %i.ct          ; 3 uses
  %i.cv = fpext float %i.cn to double
  %i.cw = fadd double %i.ch, %i.cv                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !217

bb.k:                                             ; preds = %bb.j
  %i.cx = add nuw nsw i64 %i.ab, 4294967295
  %i.cy = and i64 %i.cx, 4294967295
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load <2 x i32>, ptr %i.da, align 4, !tbaa !60
  %i.dc = sitofp <2 x i32> %i.db to <2 x double>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.dd = phi <2 x double> [ %i.bs, %._crit_edge ], [ %i.dc, %bb.k ] ; 3 uses
  %i.de = icmp sgt i32 %i.av, 0
  br i1 %i.de, label %.lr.ph209.preheader, label %bb.m

.lr.ph209.preheader:                              ; preds = %bb.l
  %i.df = and i64 %i.ab, 2147483647
  %wide.trip.count221 = zext nneg i32 %i.aw to i64
  %i.dg = getelementptr [16 x i8], ptr %i.x, i64 %i.df
  br label %.lr.ph209

._crit_edge210:                                   ; preds = %.lr.ph209
  %i.dh = fdiv double 1.000000e+00, %i.ee
  %i.di = fptrunc double %i.dh to float
  %i.dj = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.ec, %i.dk
  br label %bb.n

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %.lr.ph209
  %indvars.iv217 = phi i64 [ 0, %.lr.ph209.preheader ], [ %indvars.iv.next218, %.lr.ph209 ] ; 3 uses
  %.068208 = phi double [ 0.000000e+00, %.lr.ph209.preheader ], [ %i.ee, %.lr.ph209 ]
  %.sroa.0169.0206 = phi <2 x float> [ zeroinitializer, %.lr.ph209.preheader ], [ %i.ec, %.lr.ph209 ]
  %i.dm = xor i64 %indvars.iv217, -1
  %i.dn = getelementptr [16 x i8], ptr %i.dg, i64 %i.dm ; 2 uses
  %i.do = load <2 x i32>, ptr %i.dn, align 4      ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv217
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !95 ; 2 uses
  %i.ds = load <2 x i32>, ptr %i.dp, align 4, !tbaa !60
  %i.dt = add nsw <2 x i32> %i.ds, %i.do
  %i.du = sitofp <2 x i32> %i.do to <2 x float>
  %i.dv = fmul nnan <2 x float> %i.du, splat (float 5.000000e-01)
  %i.dw = sitofp <2 x i32> %i.dt to <2 x float>
  %i.dx = fmul nnan <2 x float> %i.dw, splat (float 5.000000e-01)
  %i.dy = fadd <2 x float> %i.dv, %i.dx
  %i.dz = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.ea, %i.dy
  %i.ec = fadd <2 x float> %.sroa.0169.0206, %i.eb ; 2 uses
  %i.ed = fpext float %i.dr to double
  %i.ee = fadd double %.068208, %i.ed             ; 2 uses
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge210, label %.lr.ph209, !llvm.loop !218

bb.m:                                             ; preds = %bb.l
  %sext = add nuw nsw i64 %i.ab, 4294967295
  %3 = and i64 %sext, 4294967295
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %3 ; 2 uses
  %i.eg = load <2 x i32>, ptr %i.ef, align 4      ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load <2 x i32>, ptr %i.eh, align 4, !tbaa !60
  %i.ej = add nsw <2 x i32> %i.ei, %i.eg
  %i.ek = sitofp <2 x i32> %i.eg to <2 x float>
  %i.el = fmul nnan <2 x float> %i.ek, splat (float 5.000000e-01)
  %i.em = sitofp <2 x i32> %i.ej to <2 x float>
  %i.en = fmul nnan <2 x float> %i.em, splat (float 5.000000e-01)
  %i.eo = fadd <2 x float> %i.el, %i.en
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge210
  %.sroa.0169.1 = phi <2 x float> [ %i.dl, %._crit_edge210 ], [ %i.eo, %bb.m ]
  %i.ep = fptrunc <2 x double> %i.dd to <2 x float>
  %i.eq = fmul <2 x float> %i.ep, splat (float 5.000000e-01)
  %i.er = fsub <2 x float> %.sroa.0169.1, %i.eq   ; 2 uses
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.et = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.es)
  %i.eu = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ev = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.eu)
  %i.ew = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.dd)
  %i.ex = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ey = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ex)
  %.sroa.7.8.insert.ext = zext i32 %i.ew to i64
  %.sroa.7.12.insert.ext = zext i32 %i.ey to i64
  %.sroa.7.12.insert.shift = shl nuw i64 %.sroa.7.12.insert.ext, 32
  %.sroa.7.12.insert.insert = or disjoint i64 %.sroa.7.12.insert.shift, %.sroa.7.8.insert.ext
  store i32 1, ptr %2, align 4, !tbaa !122
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN2cv21DetectionBasedTracker21SeparateDetectionWork3runEv(ptr noundef nonnull align 8 dereferenceable(432) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv21DetectionBasedTracker4stopEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv21DetectionBasedTracker21SeparateDetectionWork4stopEv(ptr noundef nonnull align 8 dereferenceable(432) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv21DetectionBasedTracker13resetTrackingEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.f = load volatile i32, ptr %i.e, align 4, !tbaa !49
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store volatile i8 1, ptr %i.h, align 1, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72
  %.not.i.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i.i, label %_ZN2cv21DetectionBasedTracker21SeparateDetectionWork13resetTrackingEv.exit, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.e
  store ptr %i.j, ptr %i.k, align 8, !tbaa !72
  br label %_ZN2cv21DetectionBasedTracker21SeparateDetectionWork13resetTrackingEv.exit

_ZN2cv21DetectionBasedTracker21SeparateDetectionWork13resetTrackingEv.exit: ; preds = %bb.e, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store volatile i8 0, ptr %i.m, align 8, !tbaa !47
  %i.n = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN2cv21DetectionBasedTracker21SeparateDetectionWork13resetTrackingEv.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !102  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !103  ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZSt8_DestroyIN2cv21DetectionBasedTracker13TrackedObjectEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN2cv21DetectionBasedTracker13TrackedObjectEEvPT_.exit.i.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv21DetectionBasedTracker13TrackedObjectEEvPT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #28
  br label %_ZSt8_DestroyIN2cv21DetectionBasedTracker13TrackedObjectEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2cv21DetectionBasedTracker13TrackedObjectEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i.i1, label %_ZSt8_DestroyIPN2cv21DetectionBasedTracker13TrackedObjectES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN2cv21DetectionBasedTracker13TrackedObjectES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN2cv21DetectionBasedTracker13TrackedObjectEEvPT_.exit.i.i.i.i
  store ptr %i.p, ptr %i.q, align 8, !tbaa !103
  br label %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE5clearEv.exit: ; preds = %bb.f, %_ZSt8_DestroyIPN2cv21DetectionBasedTracker13TrackedObjectES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN2cv21DetectionBasedTracker9addObjectERKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN2cv21DetectionBasedTracker13TrackedObjectC2ERKNS_5Rect_IiEE.exit:
  %2 = alloca %"struct.cv::DetectionBasedTracker::TrackedObject", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 1, ptr %i.a, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 0, ptr %i.b, align 4, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !75
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !56
  store ptr %i.f, ptr %i.e, align 8, !tbaa !72
  store ptr %i.f, ptr %i.c, align 8, !tbaa !57
  %i.g = load i32, ptr @_ZZN2cv21DetectionBasedTracker13TrackedObject9getNextIdEvE3_id, align 4, !tbaa !60 ; 2 uses
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr @_ZZN2cv21DetectionBasedTracker13TrackedObject9getNextIdEvE3_id, align 4, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.g, ptr %i.i, align 8, !tbaa !118
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103  ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.a, label %_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN2cv21DetectionBasedTracker13TrackedObjectESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %_ZN2cv21DetectionBasedTracker13TrackedObjectC2ERKNS_5Rect_IiEE.exit
  store ptr %i.d, ptr %i.k, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.f, ptr %i.n, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.f, ptr %i.o, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.r, ptr %i.j, align 8, !tbaa !103
  br label %_ZN2cv21DetectionBasedTracker13TrackedObjectD2Ev.exit
end_hunk_0
