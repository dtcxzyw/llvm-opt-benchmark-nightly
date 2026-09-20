Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/additive_animation_builder?download=true
inline.NumInlined: 492
inline.NumDeleted: 275
begin_hunk_0_@_ZNK3ozz9animation7offline24AdditiveAnimationBuilderclERKNS1_12RawAnimationEPS3_:bb.a
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i
  %i.q = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.p)
          to label %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #13
  unreachable

_ZN3ozz9animation7offline12RawAnimationD2Ev.exit: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.w = call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  br i1 %i.w, label %bb.h, label %bb.an

bb.h:                                             ; preds = %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load float, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.aa, ptr %i.ab, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.ae = load ptr, ptr %1, align 8, !tbaa !25
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = sdiv exact i64 %i.ah, 72                ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 3 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 72                ; 3 uses
  %i.aq = icmp ugt i64 %i.ai, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = sub nuw nsw i64 %i.ai, %i.ap
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ar)
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit

bb.j:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.ai, %i.ap
  br i1 %i.as, label %bb.k, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ah ; 3 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.at
  br i1 %.not.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit, label %.lr.ph.i.i.i48

.lr.ph.i.i.i48:                                   ; preds = %bb.k, %.lr.ph.i.i.i48
  %.06.i.i.i49 = phi ptr [ %i.au, %.lr.ph.i.i.i48 ], [ %i.at, %bb.k ] ; 2 uses
  call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %.06.i.i.i49)
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i49, i64 72 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.au, %i.ak
  br i1 %.not.i.i.i50, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i51, label %.lr.ph.i.i.i48, !llvm.loop !0

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i51: ; preds = %.lr.ph.i.i.i48
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !26
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit: ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i51
  %i.av = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.aw = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %.not107 = icmp eq ptr %i.av, %i.aw
  br i1 %.not107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE6resizeEm.exit
  %i.ay = call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  br label %bb.an

bb.l:                                             ; preds = %.lr.ph, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit
  %i.az = phi ptr [ %i.aw, %.lr.ph ], [ %i.gl, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit ]
  %.036106 = phi i64 [ 0, %.lr.ph ], [ %i.gj, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [72 x i8], ptr %i.az, i64 %.036106 ; 8 uses
  %i.bb = load ptr, ptr %2, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw [72 x i8], ptr %i.bb, i64 %.036106 ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !36 ; 2 uses
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !37 ; 4 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 4
  %.not38 = icmp eq ptr %i.be, %i.bf
  br i1 %.not38, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.sroa.078.0.copyload = load <2 x float>, ptr %i.bk, align 4
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %.sroa.679.0.copyload = load float, ptr %.sroa.679.0..sroa_idx, align 4, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.679.0 = phi float [ %.sroa.679.0.copyload, %bb.m ], [ 0.000000e+00, %bb.l ]
  %.sroa.078.0 = phi <2 x float> [ %.sroa.078.0.copyload, %bb.m ], [ zeroinitializer, %bb.l ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !41
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 2 uses
  %.not39 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not39, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !43
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store <2 x float> zeroinitializer, ptr %4, align 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.ax, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 56 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !46
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !47 ; 3 uses
  %.not40 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not40, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bu, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sroa.6.0 = phi float [ %.sroa.6.0.copyload, %bb.r ], [ 1.000000e+00, %bb.q ]
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload, %bb.r ], [ splat (float 1.000000e+00), %bb.q ]
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %i.bj)
  %i.bv = load ptr, ptr %i.ba, align 8, !tbaa !48 ; 2 uses
  %i.bw = load ptr, ptr %i.bd, align 8, !tbaa !48
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.by, align 8, !tbaa !36
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, %.lr.ph.i
  %i.ca = phi ptr [ %.pre, %.lr.ph.i ], [ %i.dp, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 7 uses
  %i.cb = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.ds, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ]
  %.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dq, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %.01.i ; 3 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !51 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cf = load <2 x float>, ptr %i.ce, align 4, !tbaa !38
  %i.cg = fsub <2 x float> %i.cf, %.sroa.078.0    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !52
  %i.cj = fsub float %i.ci, %.sroa.679.0          ; 2 uses
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !53
  %.not.i.i53 = icmp eq ptr %i.ca, %i.ck
  br i1 %.not.i.i53, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store float %i.cd, ptr %i.ca, align 4, !tbaa !38
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store <2 x float> %i.cg, ptr %.sroa.591.0..sroa_idx, align 4
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store float %i.cj, ptr %.sroa.694.0..sroa_idx, align 4, !tbaa !38
  %i.cl = load ptr, ptr %i.by, align 8, !tbaa !36
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  store ptr %i.cm, ptr %i.by, align 8, !tbaa !36
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cn = load ptr, ptr %i.bc, align 8, !tbaa !37 ; 5 uses
  %i.co = ptrtoint ptr %i.ca to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775792
  br i1 %i.cr, label %bb.w, label %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.v
  %i.cs = ashr exact i64 %i.cq, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i, %i.cs   ; 2 uses
  %i.ct = icmp ult i64 %5, %i.cs
  %i.cu = call i64 @llvm.umin.i64(i64 %5, i64 576460752303423487)
  %i.cv = select i1 %i.ct, i64 576460752303423487, i64 %i.cu ; 3 uses
  %.not.i.i60 = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i60)
  %i.cw = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.x unwind label %bb.y       ; 2 uses

bb.x:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i
  %i.cx = shl nuw nsw i64 %i.cv, 4
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !22
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef ptr %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, i64 noundef %i.cx, i64 noundef 4)
          to label %bb.z unwind label %bb.y       ; 5 uses

bb.y:                                             ; preds = %bb.x, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #13
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cq ; 3 uses
  store float %i.cd, ptr %i.de, align 4, !tbaa !38
  %.sroa.591.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store <2 x float> %i.cg, ptr %.sroa.591.0..sroa_idx92, align 4
  %.sroa.694.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store float %i.cj, ptr %.sroa.694.0..sroa_idx95, align 4, !tbaa !38
  %.not13.i.i.i = icmp eq ptr %i.cn, %i.ca
  br i1 %.not13.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i, label %.lr.ph.i.i.i61

.lr.ph.i.i.i61:                                   ; preds = %bb.z, %.lr.ph.i.i.i61
  %.015.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i61 ], [ %i.db, %bb.z ] ; 2 uses
  %.sroa.010.014.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i61 ], [ %i.cn, %bb.z ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i.i, i64 16, i1 false), !tbaa.struct !43
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.df, %i.ca
  br i1 %.not.i.i.i62, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i, label %.lr.ph.i.i.i61, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i61, %bb.z
  %.0.lcssa.i.i.i = phi ptr [ %i.db, %bb.z ], [ %i.dg, %.lr.ph.i.i.i61 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.cn, null
  br i1 %.not.i35.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i
  %i.di = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ab unwind label %bb.ac     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull %i.cn)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #13
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i, %bb.ab
  store ptr %i.db, ptr %i.bc, align 8, !tbaa !37
  store ptr %i.dh, ptr %i.by, align 8, !tbaa !36
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.cv
  store ptr %i.do, ptr %i.bz, align 8, !tbaa !53
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit, %bb.u
  %i.dp = phi ptr [ %i.dh, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit ], [ %i.cm, %bb.u ]
  %i.dq = add nuw i64 %.01.i, 1                   ; 2 uses
  %i.dr = load ptr, ptr %i.bd, align 8, !tbaa !36
  %i.ds = load ptr, ptr %i.ba, align 8, !tbaa !37 ; 2 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = icmp ult i64 %i.dq, %i.dw
  br i1 %i.dx, label %bb.t, label %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, !llvm.loop !2

_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, %bb.s
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEENS_4math10QuaternionEFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 3 uses
  %i.ea = load ptr, ptr %i.br, align 8, !tbaa !46
  %i.eb = load ptr, ptr %i.bq, align 8, !tbaa !47
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 4
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 noundef %i.ef)
  %i.eg = load ptr, ptr %i.bq, align 8, !tbaa !54 ; 2 uses
  %i.eh = load ptr, ptr %i.br, align 8, !tbaa !54
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bc, i64 64 ; 2 uses
  %.pre109 = load ptr, ptr %i.ej, align 8, !tbaa !46
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, %.lr.ph.i54
  %i.el = phi ptr [ %.pre109, %.lr.ph.i54 ], [ %i.ga, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 7 uses
  %i.em = phi ptr [ %i.eg, %.lr.ph.i54 ], [ %i.gd, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ]
  %.01.i56 = phi i64 [ 0, %.lr.ph.i54 ], [ %i.gb, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %.01.i56 ; 3 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.eq = load <2 x float>, ptr %i.ep, align 4, !tbaa !38
  %i.er = fdiv <2 x float> %i.eq, %.sroa.0.0      ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.et = load float, ptr %i.es, align 4, !tbaa !52
  %i.eu = fdiv float %i.et, %.sroa.6.0            ; 2 uses
  %i.ev = load ptr, ptr %i.ek, align 8, !tbaa !57
  %.not.i.i59 = icmp eq ptr %i.el, %i.ev
  br i1 %.not.i.i59, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store float %i.eo, ptr %i.el, align 4, !tbaa !38
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store <2 x float> %i.er, ptr %.sroa.599.0..sroa_idx, align 4
  %.sroa.6102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store float %i.eu, ptr %.sroa.6102.0..sroa_idx, align 4, !tbaa !38
  %i.ew = load ptr, ptr %i.ej, align 8, !tbaa !46
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  store ptr %i.ex, ptr %i.ej, align 8, !tbaa !46
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ey = load ptr, ptr %i.dz, align 8, !tbaa !47 ; 5 uses
  %i.ez = ptrtoint ptr %i.el to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 3 uses
  %i.fc = icmp eq i64 %i.fb, 9223372036854775792
  br i1 %i.fc, label %bb.ag, label %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.af
  %i.fd = ashr exact i64 %i.fb, 4                 ; 3 uses
  %.sroa.speculated.i.i63 = call i64 @llvm.umax.i64(i64 %i.fd, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i.i63, %i.fd ; 2 uses
  %i.fe = icmp ult i64 %6, %i.fd
  %i.ff = call i64 @llvm.umin.i64(i64 %6, i64 576460752303423487)
  %i.fg = select i1 %i.fe, i64 576460752303423487, i64 %i.ff ; 3 uses
  %.not.i.i64 = icmp ne i64 %i.fg, 0
  call void @llvm.assume(i1 %.not.i.i64)
  %i.fh = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ah unwind label %bb.ai     ; 2 uses

bb.ah:                                            ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i
  %i.fi = shl nuw nsw i64 %i.fg, 4
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !22
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = invoke noundef ptr %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, i64 noundef %i.fi, i64 noundef 4)
          to label %bb.aj unwind label %bb.ai     ; 5 uses

bb.ai:                                            ; preds = %bb.ah, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #13
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fb ; 3 uses
  store float %i.eo, ptr %i.fp, align 4, !tbaa !38
  %.sroa.599.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store <2 x float> %i.er, ptr %.sroa.599.0..sroa_idx100, align 4
  %.sroa.6102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store float %i.eu, ptr %.sroa.6102.0..sroa_idx103, align 4, !tbaa !38
  %.not13.i.i.i65 = icmp eq ptr %i.ey, %i.el
  br i1 %.not13.i.i.i65, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i, label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %bb.aj, %.lr.ph.i.i.i66
  %.015.i.i.i67 = phi ptr [ %i.fr, %.lr.ph.i.i.i66 ], [ %i.fm, %bb.aj ] ; 2 uses
  %.sroa.010.014.i.i.i68 = phi ptr [ %i.fq, %.lr.ph.i.i.i66 ], [ %i.ey, %bb.aj ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i.i67, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i.i68, i64 16, i1 false), !tbaa.struct !43
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i68, i64 16 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.015.i.i.i67, i64 16 ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.fq, %i.el
  br i1 %.not.i.i.i69, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i, label %.lr.ph.i.i.i66, !llvm.loop !3

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i66, %bb.aj
  %.0.lcssa.i.i.i70 = phi ptr [ %i.fm, %bb.aj ], [ %i.fr, %.lr.ph.i.i.i66 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i70, i64 16 ; 2 uses
  %.not.i35.i77 = icmp eq ptr %i.ey, null
  br i1 %.not.i35.i77, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i
  %i.ft = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.al unwind label %bb.am     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !22
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  invoke void %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull %i.ey)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #13
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34.i, %bb.al
  store ptr %i.fm, ptr %i.dz, align 8, !tbaa !47
  store ptr %i.fs, ptr %i.ej, align 8, !tbaa !46
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.fg
  store ptr %i.fz, ptr %i.ek, align 8, !tbaa !57
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit, %bb.ae
  %i.ga = phi ptr [ %i.fs, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_.exit ], [ %i.ex, %bb.ae ]
  %i.gb = add nuw i64 %.01.i56, 1                 ; 2 uses
  %i.gc = load ptr, ptr %i.br, align 8, !tbaa !46
  %i.gd = load ptr, ptr %i.bq, align 8, !tbaa !47 ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 4
  %i.gi = icmp ult i64 %i.gb, %i.gh
  br i1 %i.gi, label %bb.ad, label %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit, !llvm.loop !4

_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, %_ZN3ozz9animation7offline12_GLOBAL__N_19MakeDeltaISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS6_EEENS_4math6Float3EFSB_RKSB_SD_EEEvRKT_RKT0_RKT1_PSF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.gj = add nuw i64 %.036106, 1                 ; 2 uses
  %i.gk = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.gl = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = sdiv exact i64 %i.go, 72
  %i.gq = icmp ult i64 %i.gj, %i.gp
  br i1 %i.gq, label %bb.l, label %._crit_edge, !llvm.loop !64

bb.an:                                            ; preds = %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit, %bb.a, %._crit_edge
  %.0 = phi i1 [ %i.ay, %._crit_edge ], [ false, %bb.a ], [ false, %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3ozz9animation7offline12RawAnimationC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN3ozz9animation7offline12RawAnimationaSEOS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %2, align 8, !tbaa !25
  %i.g = load <2 x ptr>, ptr %i.b, align 8, !tbaa !65
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !65
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !58
  store ptr %i.i, ptr %i.c, align 8, !tbaa !58
  store <2 x ptr> %i.g, ptr %i.f, align 8, !tbaa !65
  %.not5.i.i.i.i = icmp eq ptr %i.a, %i.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not5.i.i.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %.06.i.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %2, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i
  %i.l = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.k)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #13
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load float, ptr %i.r, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.s, ptr %i.t, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !20   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !20   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.ab = icmp eq ptr %i.z, %i.aa                 ; 2 uses
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit
  br i1 %i.ab, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit23.thread26.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !59 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEaSEOS6_.exit, label %bb.f, !prof !66

bb.f:                                             ; preds = %bb.e
  switch i64 %i.ad, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.z, align 1, !tbaa !60
  store i8 %i.af, ptr %i.w, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE17_M_default_appendEm:bb.a

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
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !53
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !57
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 72 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 72
  %.not.i.i = icmp eq ptr %i.at, %i.b
  br i1 %.not.i.i, label %.lr.ph.i46, label %.lr.ph.i.i, !llvm.loop !77

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
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
  store ptr %i.af, ptr %i.b, align 8, !tbaa !53
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
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.k = select i1 %i.i, i64 576460752303423487, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.k, 4
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.o, i64 noundef 4)
          to label %bb.e unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !43
  %.not13.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.c, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i, i64 16, i1 false), !tbaa.struct !43
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.s, %bb.e ], [ %i.x, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.aa, %.lr.ph.i.i29 ], [ %i.y, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.z, %.lr.ph.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i30, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i31, i64 16, i1 false), !tbaa.struct !43
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 16 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34: ; preds = %.lr.ph.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.y, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ], [ %i.aa, %.lr.ph.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34
  %i.ab = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #13
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %0, align 8, !tbaa !37
  store ptr %.0.lcssa.i.i33, ptr %i.a, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.k
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 461168601842738790
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.d = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 20
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = mul nuw nsw i64 %1, 20
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.o, i64 noundef 4)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i unwind label %bb.f ; 4 uses

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #13
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i: ; preds = %bb.e
  %.not13.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not13.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.s, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.014.i.i, i64 20, i1 false), !tbaa.struct !63
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 20 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 20
  %.not.i11.i = icmp eq ptr %i.v, %i.k
  br i1 %.not.i11.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, label %.lr.ph.i.i, !llvm.loop !5

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit: ; preds = %.lr.ph.i.i, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit
  %i.y = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.x)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #13
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, %bb.h
  store ptr %i.s, ptr %0, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw [20 x i8], ptr %i.s, i64 %1
  store ptr %i.af, ptr %i.b, align 8, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(20) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !42     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 20                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 461168601842738790)
  %i.k = select i1 %i.i, i64 461168601842738790, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.k, 20
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.o, i64 noundef 4)
          to label %bb.e unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !63
  %.not13.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.c, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.014.i.i, i64 20, i1 false), !tbaa.struct !63
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 20 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !5

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.s, %bb.e ], [ %i.x, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 20 ; 2 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.aa, %.lr.ph.i.i29 ], [ %i.y, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.z, %.lr.ph.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.015.i.i30, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.014.i.i31, i64 20, i1 false), !tbaa.struct !63
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 20 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !5

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34: ; preds = %.lr.ph.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.y, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ], [ %i.aa, %.lr.ph.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34
  %i.ab = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #13
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %0, align 8, !tbaa !42
  store ptr %.0.lcssa.i.i33, ptr %i.a, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw [20 x i8], ptr %i.s, i64 %i.k
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 3 uses
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
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i unwind label %bb.f ; 4 uses

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #13
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i: ; preds = %bb.e
  %.not13.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not13.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.s, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i, i64 16, i1 false), !tbaa.struct !43
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  %.not.i11.i = icmp eq ptr %i.v, %i.k
  br i1 %.not.i11.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit: ; preds = %.lr.ph.i.i, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit
  %i.y = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.x)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #13
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, %bb.h
  store ptr %i.s, ptr %0, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %1
  store ptr %i.af, ptr %i.b, align 8, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.k = select i1 %i.i, i64 576460752303423487, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.k, 4
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.o, i64 noundef 4)
          to label %bb.e unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !43
  %.not13.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.c, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i, i64 16, i1 false), !tbaa.struct !43
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.s, %bb.e ], [ %i.x, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.aa, %.lr.ph.i.i29 ], [ %i.y, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.z, %.lr.ph.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i30, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i31, i64 16, i1 false), !tbaa.struct !43
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 16 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !3

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34: ; preds = %.lr.ph.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.y, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ], [ %i.aa, %.lr.ph.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34
  %i.ab = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #13
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %0, align 8, !tbaa !47
  store ptr %.0.lcssa.i.i33, ptr %i.a, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.k
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !57
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
!49 = !{!"_ZTSN3ozz4math6Float3E", !31, i64 0, !31, i64 4, !31, i64 8}
!50 = !{!"_ZTSN3ozz9animation7offline12RawAnimation14TranslationKeyE", !31, i64 0, !49, i64 4}
!51 = !{!50, !31, i64 0}
!52 = !{!49, !31, i64 8}
!53 = !{!35, !34, i64 16}
!54 = !{!44, !44, i64 0}
!55 = !{!"_ZTSN3ozz9animation7offline12RawAnimation8ScaleKeyE", !31, i64 0, !49, i64 4}
!56 = !{!55, !31, i64 0}
!57 = !{!45, !44, i64 16}
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
!77 = distinct !{!77, !27}
end_hunk_1
