Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/additive_animation_builder?download=true
inline.NumInlined: 492
inline.NumDeleted: 275
begin_hunk_0_@_ZNK3ozz9animation7offline24AdditiveAnimationBuilderclERKNS1_12RawAnimationERKNS_4spanIKNS_4math9TransformEEEPS3_:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #13
  unreachable

_ZN3ozz9animation7offline12RawAnimationD2Ev.exit: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.w = call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  br i1 %i.w, label %bb.h, label %bb.t

bb.h:                                             ; preds = %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = load ptr, ptr %1, align 8, !tbaa !25
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 72
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !75
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = icmp sgt i32 %i.ae, %i.ah
  br i1 %i.ai, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load float, ptr %i.al, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.am, ptr %i.an, align 8, !tbaa !33
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.ap = load ptr, ptr %1, align 8, !tbaa !25
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = sdiv exact i64 %i.as, 72                ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26 ; 3 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 72                ; 3 uses
  %i.bb = icmp ugt i64 %i.at, %i.ba
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = sub nuw nsw i64 %i.at, %i.ba
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bc)
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit

bb.k:                                             ; preds = %bb.i
  %i.bd = icmp ult i64 %i.at, %i.ba
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.as ; 3 uses
  %.not.i.i = icmp eq ptr %i.av, %i.be
  br i1 %.not.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %bb.l, %.lr.ph.i.i.i35
  %.06.i.i.i36 = phi ptr [ %i.bf, %.lr.ph.i.i.i35 ], [ %i.be, %bb.l ] ; 2 uses
  call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %.06.i.i.i36)
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i36, i64 72 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.bf, %i.av
  br i1 %.not.i.i.i37, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i38, label %.lr.ph.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i38: ; preds = %.lr.ph.i.i.i35
  store ptr %i.be, ptr %i.au, align 8, !tbaa !26
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit: ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i38
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.bh = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %.not47 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.2.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit
  %i.bk = call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %bb.t

bb.m:                                             ; preds = %.lr.ph, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit
  %i.bl = phi ptr [ %i.bh, %.lr.ph ], [ %i.ez, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit ]
  %.046 = phi i64 [ 0, %.lr.ph ], [ %i.ex, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit ] ; 10 uses
  %i.bm = getelementptr inbounds nuw [72 x i8], ptr %i.bl, i64 %.046 ; 4 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !76
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %.046 ; 2 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !25
  %i.bq = getelementptr inbounds nuw [72 x i8], ptr %i.bp, i64 %.046 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !36
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !37
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 4
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %i.bx)
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !48 ; 2 uses
  %i.bz = load ptr, ptr %i.br, align 8, !tbaa !48
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, %.lr.ph.i
  %i.ce = phi ptr [ %i.by, %.lr.ph.i ], [ %i.cv, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ]
  %.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ct, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %.01.i ; 3 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !52
  store float %i.cg, ptr %5, align 4, !tbaa !52
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ci = load <2 x float>, ptr %i.ch, align 4, !tbaa !38
  %i.cj = load <2 x float>, ptr %i.bo, align 4, !tbaa !38
  %i.ck = fsub <2 x float> %i.ci, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !53
  %i.cn = load float, ptr %i.cb, align 4, !tbaa !53
  %i.co = fsub float %i.cm, %i.cn
  store <2 x float> %i.ck, ptr %i.bi, align 4
  store float %i.co, ptr %.sroa.2.0..sroa_idx.i, align 4
  %i.cp = load ptr, ptr %i.cc, align 8, !tbaa !36 ; 3 uses
  %i.cq = load ptr, ptr %i.cd, align 8, !tbaa !49
  %.not.i.i39 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i39, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cp, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !43
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !36
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %i.cs, ptr %i.cc, align 8, !tbaa !36
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i

bb.p:                                             ; preds = %bb.n
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr %i.cp, ptr noundef nonnull align 4 dereferenceable(16) %5)
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.ct = add nuw i64 %.01.i, 1                   ; 2 uses
  %i.cu = load ptr, ptr %i.br, align 8, !tbaa !36
  %i.cv = load ptr, ptr %i.bm, align 8, !tbaa !37 ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 4
  %i.da = icmp ult i64 %i.ct, %i.cz
  br i1 %i.da, label %bb.n, label %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, !llvm.loop !2

_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, %bb.m
  %i.db = load ptr, ptr %1, align 8, !tbaa !25
  %i.dc = getelementptr inbounds nuw [72 x i8], ptr %i.db, i64 %.046
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %2, align 8, !tbaa !76
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.de, i64 %.046
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dh = load ptr, ptr %3, align 8, !tbaa !25
  %i.di = getelementptr inbounds nuw [72 x i8], ptr %i.dh, i64 %.046
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEENS_4math10QuaternionEFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 4 dereferenceable(16) %i.dg, ptr noundef %i.dj)
  %i.dk = load ptr, ptr %1, align 8, !tbaa !25
  %i.dl = getelementptr inbounds nuw [72 x i8], ptr %i.dk, i64 %.046 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48 ; 3 uses
  %i.dn = load ptr, ptr %2, align 8, !tbaa !76
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %i.dn, i64 %.046 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  %i.dq = load ptr, ptr %3, align 8, !tbaa !25
  %i.dr = getelementptr inbounds nuw [72 x i8], ptr %i.dq, i64 %.046 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 56 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !46
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !47
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 4
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 noundef %i.dz)
  %i.ea = load ptr, ptr %i.dm, align 8, !tbaa !54 ; 2 uses
  %i.eb = load ptr, ptr %i.dt, align 8, !tbaa !54
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 56 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, %.lr.ph.i40
  %i.eg = phi ptr [ %i.ea, %.lr.ph.i40 ], [ %i.er, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ]
  %.01.i42 = phi i64 [ 0, %.lr.ph.i40 ], [ %i.ep, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.01.i42 ; 3 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !57
  store float %i.ei, ptr %4, align 4, !tbaa !57
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %7 = load float, ptr %i.ej, align 4, !tbaa !77
  %8 = load float, ptr %i.dp, align 4, !tbaa !77
  %9 = fdiv float %7, %8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %10 = load <2 x float>, ptr %i.ek, align 4, !tbaa !38
  %11 = load <2 x float>, ptr %i.ed, align 4, !tbaa !38
  %12 = fdiv <2 x float> %10, %11                 ; 2 uses
  %.sroa.0.0.vec.insert.i.i43 = insertelement <2 x float> poison, float %9, i64 0
  %13 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i43, <2 x float> %12, <2 x i32> <i32 0, i32 2>
  store <2 x float> %13, ptr %i.bj, align 4
  %14 = extractelement <2 x float> %12, i64 1
  store float %14, ptr %.sroa.2.0..sroa_idx.i41, align 4
  %i.el = load ptr, ptr %i.ee, align 8, !tbaa !46 ; 3 uses
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !55
  %.not.i.i45 = icmp eq ptr %i.el, %i.em
  br i1 %.not.i.i45, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.el, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !43
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !46
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store ptr %i.eo, ptr %i.ee, align 8, !tbaa !46
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i

bb.s:                                             ; preds = %bb.q
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr %i.el, ptr noundef nonnull align 4 dereferenceable(16) %4)
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ep = add nuw i64 %.01.i42, 1                 ; 2 uses
  %i.eq = load ptr, ptr %i.dt, align 8, !tbaa !46
  %i.er = load ptr, ptr %i.dm, align 8, !tbaa !47 ; 2 uses
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ashr exact i64 %i.eu, 4
  %i.ew = icmp ult i64 %i.ep, %i.ev
  br i1 %i.ew, label %bb.q, label %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, !llvm.loop !4

_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit
  %i.ex = add nuw i64 %.046, 1                    ; 2 uses
  %i.ey = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.ez = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = sdiv exact i64 %i.fc, 72
  %i.fe = icmp ult i64 %i.ex, %i.fd
  br i1 %i.fe, label %bb.m, label %._crit_edge, !llvm.loop !72

bb.t:                                             ; preds = %bb.h, %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit, %bb.a, %._crit_edge
  %.033 = phi i1 [ false, %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit ], [ %i.bk, %._crit_edge ], [ false, %bb.a ], [ false, %bb.h ]
  ret i1 %.033
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.b)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #13
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i: ; preds = %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i
  %i.k = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.j)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #13
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i
  %i.q = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i2.i, label %_ZN3ozz9animation7offline12RawAnimation10JointTrackD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i
  %i.r = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.q)
          to label %_ZN3ozz9animation7offline12RawAnimation10JointTrackD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #13
  unreachable

_ZN3ozz9animation7offline12RawAnimation10JointTrackD2Ev.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit.i, %bb.i
  ret void
}

declare noundef ptr @_ZN3ozz6memory17default_allocatorEv() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw i64 %.0, 1
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef %i.m, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit unwind label %bb.f ; 2 uses

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #13
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit: ; preds = %bb.e
  %i.t = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit
  %i.v = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i17
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.t)
          to label %.thread unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i17
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #13
  unreachable

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit, %bb.g
  store ptr %i.q, ptr %0, align 8, !tbaa !20
  store i64 %.0, ptr %i.d, align 8, !tbaa !60
  br label %.split12

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !59
  store i8 0, ptr %i.c, align 1, !tbaa !60
  br label %bb.l

.split12:                                         ; preds = %.thread, %bb.i
  %i.ac = phi ptr [ %i.q, %.thread ], [ %i.c, %bb.i ] ; 2 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split12
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !60
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.ad, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.af, align 8, !tbaa !59
  %i.ag = load ptr, ptr %0, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.b
  store i8 0, ptr %i.ah, align 1, !tbaa !60
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !25     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 72                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 72                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 128102389400760776
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 128102389400760775, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation10JointTrackEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation10JointTrackEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 72                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i, ptr %i.a, align 8, !tbaa !26
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 128102389400760775) ; 2 uses
  %i.t = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.u = mul nuw nsw i64 %i.s, 72
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %i.u, i64 noundef 8)
          to label %bb.g unwind label %bb.f       ; 4 uses

bb.f:                                             ; preds = %bb.e, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.f ; 2 uses
  %i.ac = mul nuw nsw i64 %1, 72
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.ac, i1 false)
  %.not13.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit49, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.au, %.lr.ph.i.i ], [ %i.y, %bb.g ] ; 7 uses
  %.sroa.010.014.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %i.c, %bb.g ] ; 8 uses
  %i.ad = load <2 x ptr>, ptr %.sroa.010.014.i.i, align 8, !tbaa !48
  store <2 x ptr> %i.ad, ptr %.015.i.i, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.010.014.i.i, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 24 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !61
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 48 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !54
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !55
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 72 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 72
  %.not.i.i = icmp eq ptr %i.at, %i.b
  br i1 %.not.i.i, label %.lr.ph.i46, label %.lr.ph.i.i, !llvm.loop !78

.lr.ph.i46:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i46
  %.06.i47 = phi ptr [ %i.av, %.lr.ph.i46 ], [ %i.c, %.lr.ph.i.i ] ; 2 uses
  tail call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %.06.i47)
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i47, i64 72 ; 2 uses
  %.not.i48 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i48, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit49, label %.lr.ph.i46, !llvm.loop !0

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit49: ; preds = %.lr.ph.i46, %bb.g
  %.not.i50 = icmp eq ptr %i.c, null
  br i1 %.not.i50, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit49
  %i.aw = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #13
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit49, %bb.i
  store ptr %i.y, ptr %0, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %1
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %i.s
  store ptr %i.bd, ptr %i.h, align 8, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation10JointTrackEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw nsw i64 %1, 4
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.o, i64 noundef 4)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i unwind label %bb.f ; 4 uses

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #13
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i: ; preds = %bb.e
  %.not13.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not13.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.s, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i, i64 16, i1 false), !tbaa.struct !43
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  %.not.i11.i = icmp eq ptr %i.v, %i.k
  br i1 %.not.i11.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit: ; preds = %.lr.ph.i.i, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit
  %i.y = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.x)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #13
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, %bb.h
  store ptr %i.s, ptr %0, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %1
  store ptr %i.af, ptr %i.b, align 8, !tbaa !49
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !37     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.p = shl nuw nsw i64 %i.l, 4
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.p, i64 noundef 4)
          to label %bb.e unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !43
  %.not13.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.c, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i, i64 16, i1 false), !tbaa.struct !43
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.t, %bb.e ], [ %i.y, %.lr.ph.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_:bb.a
_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.p = shl nuw nsw i64 %i.l, 4
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.p, i64 noundef 4)
          to label %bb.e unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !43
  %.not13.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.c, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i, i64 16, i1 false), !tbaa.struct !43
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.t, %bb.e ], [ %i.y, %.lr.ph.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.ab, %.lr.ph.i.i29 ], [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.aa, %.lr.ph.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i30, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i31, i64 16, i1 false), !tbaa.struct !43
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 16 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !3

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34: ; preds = %.lr.ph.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ], [ %i.ab, %.lr.ph.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34
  %i.ac = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #13
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %0, align 8, !tbaa !47
  store ptr %.0.lcssa.i.i33, ptr %i.a, align 8, !tbaa !46
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.l
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !55
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = distinct !{!4, !27}
!5 = distinct !{!5, !27}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE12_Alloc_hiderE", !16, i64 0}
!18 = !{!"long", !11, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEE", !17, i64 0, !18, i64 8, !11, i64 16}
!20 = !{!19, !16, i64 0}
!21 = !{!"vtable pointer", !10, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 _ZTSN3ozz9animation7offline12RawAnimation10JointTrackE", !15, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!24, !23, i64 0}
!26 = !{!24, !23, i64 8}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE12_Vector_implE", !24, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE", !28, i64 0}
!30 = !{!"_ZTSSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE", !29, i64 0}
!31 = !{!"float", !11, i64 0}
!32 = !{!"_ZTSN3ozz9animation7offline12RawAnimationE", !30, i64 0, !31, i64 24, !19, i64 32}
!33 = !{!32, !31, i64 24}
!34 = !{!"p1 _ZTSN3ozz9animation7offline12RawAnimation14TranslationKeyE", !15, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!35, !34, i64 8}
!37 = !{!35, !34, i64 0}
!38 = !{!31, !31, i64 0}
!39 = !{!"p1 _ZTSN3ozz9animation7offline12RawAnimation11RotationKeyE", !15, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!40, !39, i64 8}
!42 = !{!40, !39, i64 0}
!43 = !{i64 0, i64 4, !38, i64 4, i64 4, !38, i64 8, i64 4, !38, i64 12, i64 4, !38}
!44 = !{!"p1 _ZTSN3ozz9animation7offline12RawAnimation8ScaleKeyE", !15, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!45, !44, i64 8}
!47 = !{!45, !44, i64 0}
!48 = !{!34, !34, i64 0}
!49 = !{!35, !34, i64 16}
!50 = !{!"_ZTSN3ozz4math6Float3E", !31, i64 0, !31, i64 4, !31, i64 8}
!51 = !{!"_ZTSN3ozz9animation7offline12RawAnimation14TranslationKeyE", !31, i64 0, !50, i64 4}
!52 = !{!51, !31, i64 0}
!53 = !{!50, !31, i64 8}
!54 = !{!44, !44, i64 0}
!55 = !{!45, !44, i64 16}
!56 = !{!"_ZTSN3ozz9animation7offline12RawAnimation8ScaleKeyE", !31, i64 0, !50, i64 4}
!57 = !{!56, !31, i64 0}
!58 = !{!24, !23, i64 16}
!59 = !{!19, !18, i64 8}
!60 = !{!11, !11, i64 0}
!61 = !{!39, !39, i64 0}
!62 = !{!40, !39, i64 16}
!63 = !{i64 0, i64 4, !38, i64 4, i64 4, !38, i64 8, i64 4, !38, i64 12, i64 4, !38, i64 16, i64 4, !38}
!64 = distinct !{!64, !27}
!65 = !{!23, !23, i64 0}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = distinct !{!67, !27}
!68 = !{!"_ZTSN3ozz4math10QuaternionE", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12}
!69 = !{!"_ZTSN3ozz9animation7offline12RawAnimation11RotationKeyE", !31, i64 0, !68, i64 4}
!70 = !{!69, !31, i64 0}
!71 = !{!68, !31, i64 12}
!72 = distinct !{!72, !27}
!73 = !{!"p1 _ZTSN3ozz4math9TransformE", !15, i64 0}
!74 = !{!"_ZTSN3ozz4spanIKNS_4math9TransformEEE", !73, i64 0, !18, i64 8}
!75 = !{!74, !18, i64 8}
!76 = !{!74, !73, i64 0}
!77 = !{!50, !31, i64 0}
!78 = distinct !{!78, !27}
end_hunk_1
