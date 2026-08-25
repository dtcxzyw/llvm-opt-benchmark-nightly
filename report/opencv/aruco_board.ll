Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/aruco_board?download=true
inline.NumInlined: 1418
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK2cv5aruco9GridBoard19getMarkerSeparationEv:bb.a
  br label %_ZNSt12__shared_ptrIN2cv5aruco13GridBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.r = load float, ptr %i.q, align 8, !tbaa !185 ; 3 uses
  %i.s = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.j, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !109
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !110
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !190
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !190
  br label %_ZNSt12__shared_ptrIN2cv5aruco13GridBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.j, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ae = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.l ], [ %i.ae, %bb.m ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.n, label %_ZNSt12__shared_ptrIN2cv5aruco13GridBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !113

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24
  br label %_ZNSt12__shared_ptrIN2cv5aruco13GridBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv5aruco13GridBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt19static_pointer_castIN2cv5aruco13GridBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  %i.ag = phi float [ %i.p, %_ZSt19static_pointer_castIN2cv5aruco13GridBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit ], [ %i.r, %bb.j ], [ %i.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.r, %bb.n ]
  ret float %i.ag
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv5aruco16CharucoBoardImpl18createCharucoBoardEv(ptr noundef nonnull align 8 dereferenceable(376) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 4 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !207
  %i.e = fsub float %i.b, %i.d
  %i.f = fmul float %i.e, 5.000000e-01
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !87   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN2cv7Point3_IfEESaIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyISt6vectorIN2cv7Point3_IfEESaIS3_EEEvPT_.exit.i.i.i.i ], [ %i.q, %bb.a ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv7Point3_IfEESaIS3_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !123
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #26
  br label %_ZSt8_DestroyISt6vectorIN2cv7Point3_IfEESaIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN2cv7Point3_IfEESaIS3_EEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv7Point3_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !132

_ZSt8_DestroyIPSt6vectorIN2cv7Point3_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv7Point3_IfEESaIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.q, ptr %i.r, align 8, !tbaa !87
  br label %_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE5clearEv.exit

_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt6vectorIN2cv7Point3_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !208 ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader99.lr.ph, label %._crit_edge123

.preheader99.lr.ph:                               ; preds = %_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE5clearEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ai = icmp eq i32 %i.o, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.ak = load i32, ptr %i.aa, align 4, !tbaa !209 ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.preheader99.preheader, label %._crit_edge123

.preheader99.preheader:                           ; preds = %.preheader99.lr.ph
  %i.am = insertelement <2 x float> poison, float %i.f, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader99

.preheader99:                                     ; preds = %.preheader99.preheader, %._crit_edge
  %i.ao = phi i32 [ %i.aw, %._crit_edge ], [ %i.ac, %.preheader99.preheader ]
  %i.ap = phi i32 [ %i.ax, %._crit_edge ], [ %i.ak, %.preheader99.preheader ] ; 2 uses
  %i.aq = phi i32 [ %i.ay, %._crit_edge ], [ %i.ak, %.preheader99.preheader ] ; 2 uses
  %.037122 = phi i32 [ %i.az, %._crit_edge ], [ 0, %.preheader99.preheader ] ; 4 uses
  %.098121 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %.preheader99.preheader ] ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader99
  %i.as = uitofp nneg i32 %.037122 to float
  %i.at = insertelement <2 x float> poison, float %i.as, i64 1
  br label %bb.c

._crit_edge123:                                   ; preds = %._crit_edge, %.preheader99.lr.ph, %_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE5clearEv.exit
  %i.au = phi i32 [ %i.ac, %_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE5clearEv.exit ], [ %i.ac, %.preheader99.lr.ph ], [ %i.aw, %._crit_edge ] ; 4 uses
  %.098.lcssa = phi i32 [ 0, %_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE5clearEv.exit ], [ 0, %.preheader99.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.av = icmp slt i32 %i.o, 1
  %.not = icmp eq i32 %.098.lcssa, %i.o
  %or.cond = select i1 %i.av, i1 true, i1 %.not
  br i1 %or.cond, label %bb.z, label %bb.u

._crit_edge.loopexit:                             ; preds = %bb.s
  %.pre140 = load i32, ptr %i.ab, align 8, !tbaa !208
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader99
  %i.aw = phi i32 [ %i.ao, %.preheader99 ], [ %.pre140, %._crit_edge.loopexit ] ; 3 uses
  %i.ax = phi i32 [ %i.ap, %.preheader99 ], [ %i.ds, %._crit_edge.loopexit ]
  %i.ay = phi i32 [ %i.aq, %.preheader99 ], [ %i.ds, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.098121, %.preheader99 ], [ %.2, %._crit_edge.loopexit ] ; 2 uses
  %i.az = add nuw nsw i32 %.037122, 1             ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.aw
  br i1 %i.ba, label %.preheader99, label %._crit_edge123, !llvm.loop !210

bb.c:                                             ; preds = %.lr.ph, %bb.s
  %i.bb = phi i32 [ %i.ap, %.lr.ph ], [ %i.ds, %bb.s ] ; 2 uses
  %.038120 = phi i32 [ 0, %.lr.ph ], [ %i.dt, %bb.s ] ; 4 uses
  %.1119 = phi i32 [ %.098121, %.lr.ph ], [ %.2, %bb.s ] ; 5 uses
  %i.bc = load i8, ptr %i.ae, align 4, !tbaa !211, !range !212, !noundef !213
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.be = load i32, ptr %i.ab, align 8, !tbaa !208
  %i.bf = and i32 %i.be, 1
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bh = xor i32 %.038120, %.037122
  %i.bi = and i32 %i.bh, 1
  %.not46 = icmp eq i32 %i.bi, 0
  br i1 %.not46, label %bb.g, label %bb.s

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.bj = xor i32 %.038120, %.037122
  %i.bk = and i32 %i.bj, 1
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.bm = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %bb.h unwind label %bb.p       ; 10 uses

bb.h:                                             ; preds = %bb.g
  store ptr %i.bm, ptr %1, align 8, !tbaa !49
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  store ptr %i.bn, ptr %i.ag, align 8, !tbaa !123
  store ptr %i.bn, ptr %i.af, align 8, !tbaa !122
  %i.bo = uitofp nneg i32 %.038120 to float
  %4 = load <4 x float>, ptr %i.a, align 4
  %i.bp = insertelement <2 x float> %i.at, float %i.bo, i64 0
  %i.bq = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer
  %i.br = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bq, <2 x float> %i.an) ; 4 uses
  store <2 x float> %i.br, ptr %i.bm, align 4, !tbaa !53
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store float 0.000000e+00, ptr %.sroa.592.0..sroa_idx, align 4, !tbaa !53
  %i.bs = load float, ptr %i.c, align 8, !tbaa !207 ; 2 uses
  %i.bt = extractelement <2 x float> %i.br, i64 0
  %i.bu = fadd float %i.bt, %i.bs                 ; 2 uses
  %i.bv = extractelement <2 x float> %i.br, i64 1
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  store float 0.000000e+00, ptr %.sroa.518.0..sroa_idx, align 4, !tbaa !53
  %i.bx = fadd float %i.bv, %i.bs                 ; 2 uses
  %.sroa.0.4.vec.insert.i52 = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.bx, i64 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store <2 x float> %.sroa.0.4.vec.insert.i52, ptr %i.by, align 4
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store float 0.000000e+00, ptr %.sroa.512.0..sroa_idx, align 4, !tbaa !53
  %i.bz = fadd <2 x float> %i.br, zeroinitializer ; 2 uses
  %i.ca = insertelement <2 x float> %i.bz, float %i.bu, i64 0
  store <2 x float> %i.ca, ptr %i.bw, align 4
  %.sroa.0.4.vec.insert.i56 = insertelement <2 x float> %i.bz, float %i.bx, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store <2 x float> %.sroa.0.4.vec.insert.i56, ptr %i.cb, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !53
  %i.cc = load ptr, ptr %i.r, align 8, !tbaa !87  ; 6 uses
  %i.cd = load ptr, ptr %i.ah, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i, label %bb.i, label %_ZNSt15__new_allocatorIN2cv7Point3_IfEEE8allocateEmPKv.exit.i.i.i.i.i

_ZNSt15__new_allocatorIN2cv7Point3_IfEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.ce = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %.noexc59 unwind label %.loopexit ; 5 uses

.noexc59:                                         ; preds = %_ZNSt15__new_allocatorIN2cv7Point3_IfEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !122
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !123
  %i.ci = load ptr, ptr %1, align 8, !tbaa !124   ; 2 uses
  %i.cj = load ptr, ptr %i.af, align 8, !tbaa !124 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EEC2ERKS4_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc59, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %i.ce, %.noexc59 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %i.ci, %.noexc59 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !52
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.cj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EEC2ERKS4_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !125

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EEC2ERKS4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc59
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ce, %.noexc59 ], [ %i.cl, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.cf, align 8, !tbaa !122
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !87
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr %i.cn, ptr %i.r, align 8, !tbaa !87
  br label %_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE9push_backERKS4_.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE9push_backERKS4_.exit unwind label %.loopexit

_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EEC2ERKS4_.exit.i, %bb.i
  br i1 %i.ai, label %bb.j, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.j:                                             ; preds = %_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE9push_backERKS4_.exit
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !40  ; 4 uses
  %i.cp = load ptr, ptr %i.aj, align 8, !tbaa !167
  %.not.i61 = icmp eq ptr %i.co, %i.cp
  br i1 %.not.i61, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %.1119, ptr %i.co, align 4, !tbaa !35
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store ptr %i.cq, ptr %i.h, align 8, !tbaa !40
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.l:                                             ; preds = %bb.j
  %i.cr = load ptr, ptr %i.g, align 8, !tbaa !43  ; 4 uses
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 5 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775804
  br i1 %i.cv, label %bb.m, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #25
          to label %.noexc62 unwind label %.loopexit.split-lp

.noexc62:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.cw = ashr exact i64 %i.cu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cx, i64 2305843009213693951)
  %i.da = select i1 %i.cy, i64 2305843009213693951, i64 %i.cz ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.da, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.db = shl nuw nsw i64 %i.da, 2
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #27
          to label %.noexc63 unwind label %.loopexit ; 4 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %i.cu ; 2 uses
  store i32 %.1119, ptr %i.dd, align 4, !tbaa !35
  %i.de = icmp sgt i64 %i.cu, 0
  br i1 %i.de, label %bb.n, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %.noexc63
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dc, ptr align 4 %i.cr, i64 %i.cu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %.noexc63
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %.not.i17.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.dg = load ptr, ptr %i.aj, align 8, !tbaa !167
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.di) #26
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.dc, ptr %i.g, align 8, !tbaa !43
  store ptr %i.df, ptr %i.h, align 8, !tbaa !40
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.da
  store ptr %i.dj, ptr %i.aj, align 8, !tbaa !167
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.p:                                             ; preds = %bb.g
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit66

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIN2cv7Point3_IfEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.dl = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit66, label %bb.t

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.k, %_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE9push_backERKS4_.exit
  %i.dm = add nsw i32 %.1119, 1
  %i.dn = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.do = load ptr, ptr %i.ag, align 8, !tbaa !123
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dr) #26
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit:   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !209
  br label %bb.s

bb.s:                                             ; preds = %bb.f, %bb.e, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit
  %i.ds = phi i32 [ %.pre, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit ], [ %i.bb, %bb.e ], [ %i.bb, %bb.f ] ; 4 uses
  %.2 = phi i32 [ %i.dm, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit ], [ %.1119, %bb.e ], [ %.1119, %bb.f ] ; 2 uses
  %i.dt = add nuw nsw i32 %.038120, 1             ; 2 uses
  %i.du = icmp slt i32 %i.dt, %i.ds
  br i1 %i.du, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !214

bb.t:                                             ; preds = %bb.q
  %i.dv = load ptr, ptr %i.ag, align 8, !tbaa !123
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dl to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dy) #26
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit66

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit66: ; preds = %bb.t, %bb.q, %bb.p
  %.pn47.pn = phi { ptr, i32 } [ %i.dk, %bb.p ], [ %lpad.phi, %bb.q ], [ %lpad.phi, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.af

end_hunk_0
