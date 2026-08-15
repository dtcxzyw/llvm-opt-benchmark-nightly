inline.NumInlined: 685
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp3LWO12AnimResolver18ExtractAnimChannelEPP10aiNodeAnimj:bb.a
  %i.ib = fmul float %i.hn, %i.hs                 ; 2 uses
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.hr, float %i.ib)
  %i.id = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.ht, float %i.ic)
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.ht, float %i.id) ; 3 uses
  %i.if = fmul float %i.hl, %i.hs
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.ht, float %i.if)
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.hr, float %i.ig)
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.ht, float %i.ih) ; 3 uses
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.ht, float %i.ib)
  %i.ik = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.ht, float %i.ij)
  %i.il = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.hr, float %i.ik) ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.in = load float, ptr %i.im, align 8
  %i.io = fmul float %i.in, 5.000000e-01          ; 2 uses
  %i.ip = fneg float %i.ii                        ; 2 uses
  %i.iq = fneg float %i.il
  %i.ir = tail call noundef float @sinf(float noundef %i.io) #16 ; 3 uses
  %i.is = tail call noundef float @cosf(float noundef %i.io) #16 ; 4 uses
  %i.it = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.iu = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iv = fmul <2 x float> %i.iu, <float 1.000000e+00, float 0.000000e+00> ; 4 uses
  %i.iw = extractelement <2 x float> %i.iv, i64 1 ; 5 uses
  %i.ix = fneg float %i.iw
  %i.iy = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.jb = insertelement <2 x float> %i.ja, float %i.is, i64 1
  %i.jc = fmul <2 x float> %i.iz, %i.jb
  %i.jd = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = insertelement <2 x float> %i.iv, float %i.is, i64 0
  %i.jg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.je, <2 x float> %i.jf, <2 x float> %i.jc)
  %i.jh = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.ji = insertelement <2 x float> %i.jh, float %i.ii, i64 1
  %i.jj = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ji, <2 x float> %i.jj, <2 x float> %i.jg)
  %i.jl = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jm, <2 x float> %i.iv, <2 x float> %i.jk)
  %i.jo = fmul float %i.is, %i.ii
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.ia, float %i.iw, float %i.jo)
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.il, float %i.iw, float %i.jp)
  %i.jr = fneg float %i.ie
  %i.js = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.ir, float %i.jq)
  %i.jt = fmul float %i.is, %i.il
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.ia, float %i.ir, float %i.jt)
  %i.jv = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.iw, float %i.ju)
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.iw, float %i.jv)
  %.sroa.3.8.vec.insert.i98 = insertelement <2 x float> poison, float %i.js, i64 0
  %.sroa.3.12.vec.insert.i99 = insertelement <2 x float> %.sroa.3.8.vec.insert.i98, float %i.jw, i64 1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store <2 x float> %i.jn, ptr %i.jx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store <2 x float> %.sroa.3.12.vec.insert.i99, ptr %.sroa.5.0..sroa_idx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jy = load i32, ptr %i.fl, align 8
  %i.jz = zext i32 %i.jy to i64
  %i.ka = icmp samesign ult i64 %indvars.iv.next, %i.jz
  br i1 %i.ka, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !38

bb.am:                                            ; preds = %bb.al
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = ptrtoint ptr %i.hd to i64
  %i.kf = sub i64 %i.kd, %i.ke
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.kf) #19
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit103

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit103:   ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.az

bb.an:                                            ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit79, %bb.ag
  br i1 %i.db, label %bb.ao, label %bb.ay

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.kg = load ptr, ptr %i.bt, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.km = load i32, ptr %i.kl, align 4
  invoke void @_ZN6Assimp3LWO12AnimResolver7GetKeysERSt6vectorI11aiVectorKeySaIS3_EEPNS0_8EnvelopeES8_S8_j(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %i.kg, ptr noundef %i.ki, ptr noundef %i.kk, i32 noundef %i.km)
          to label %bb.ap unwind label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.kn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = load ptr, ptr %5, align 8               ; 5 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.ks = sub i64 %i.kq, %i.kr                    ; 4 uses
  %i.kt = sdiv exact i64 %i.ks, 24                ; 2 uses
  %i.ku = trunc i64 %i.kt to i32
  store i32 %i.ku, ptr %i.de, align 8
  %i.kv = and i64 %i.kt, 4294967295               ; 3 uses
  %i.kw = mul nuw nsw i64 %i.kv, 24
  %i.kx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kw) #17
          to label %bb.aq unwind label %bb.aw     ; 5 uses

bb.aq:                                            ; preds = %bb.ap
  %i.ky = icmp eq i64 %i.kv, 0
  br i1 %i.ky, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kz = getelementptr inbounds nuw [24 x i8], ptr %i.kx, i64 %i.kv
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %i.la = phi ptr [ %i.kx, %bb.ar ], [ %i.lc, %bb.as ] ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.la, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.lb, align 4
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 24 ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.kz
  br i1 %i.ld, label %.loopexit, label %bb.as

.loopexit:                                        ; preds = %bb.as, %bb.aq
  store ptr %i.kx, ptr %i.df, align 8
  %i.le = icmp sgt i64 %i.ks, 24
  br i1 %i.le, label %bb.at, label %bb.au, !prof !8

bb.at:                                            ; preds = %.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kx, ptr align 8 %i.kp, i64 %i.ks, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104

bb.au:                                            ; preds = %.loopexit
  %i.lf = icmp eq i64 %i.ks, 24
  br i1 %i.lf, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104.thread, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104.thread: ; preds = %bb.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kx, ptr noundef nonnull align 8 dereferenceable(24) %i.kp, i64 24, i1 false)
  br label %bb.av

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104: ; preds = %bb.au, %bb.at
  %.not.i.i.i105 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit106, label %bb.av

bb.av:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104
  %i.lg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = sub i64 %i.li, %i.kr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.lj) #19
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit106

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit106:   ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit104, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ay

bb.aw:                                            ; preds = %bb.ap, %bb.ao
  %i.lk = landingpad { ptr, i32 }
          cleanup
  %i.ll = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i107 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit108, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = ptrtoint ptr %i.ll to i64
  %i.lq = sub i64 %i.lo, %i.lp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.lq) #19
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit108

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit108:   ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.az

bb.ay:                                            ; preds = %bb.t, %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit106, %bb.an, %bb.a
  ret void

bb.az:                                            ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit108, %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit103, %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit77
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hc, %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit103 ], [ %i.lk, %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit108 ], [ %i.ep, %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit77 ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.9 = alloca [39 x i8], align 1            ; 14 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.4.8.copyload = load i8, ptr %3, align 8  ; 11 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9.8..sroa_idx, i64 39, i1 false)
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 3 uses
  %i.k = sdiv exact i64 %i.j, 40                  ; 3 uses
  %i.l = icmp ugt i64 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.idx = mul i64 %2, -40                         ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.idx, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.012.i.i.i.i.i, i64 40, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit

_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, %bb.d
  %i.p = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %2
  store ptr %i.q, ptr %i.c, align 8
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.r, %i.i                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 40
  br i1 %i.t, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.neg132 = udiv exact i64 %i.s, 40
  %.neg132.neg = sub nsw i64 0, %.neg132
  %i.u = getelementptr inbounds [40 x i8], ptr %i.d, i64 %.neg132.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %1, i64 %i.s, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.v = icmp eq i64 %i.s, 40
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.w, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 36, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx115 = mul nuw nsw i64 %2, 40               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.idx115
  %i.y = add nsw i64 %.idx115, -40                ; 2 uses
  %i.z = udiv i64 %i.y, 40
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter142 = and i64 %i.aa, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %bb.h, %.lr.ph.i.i.i.prol
  %.06.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.prol ], [ %1, %bb.h ] ; 3 uses
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.lr.ph.i.i.i.prol ], [ 0, %bb.h ]
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i.prol, align 8
  %.sroa.9.8..06.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9.8..06.i.i.i.sroa_idx.prol, ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9, i64 35, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 40 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !40

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.h
  %.06.i.i.i.unr = phi ptr [ %1, %bb.h ], [ %i.ab, %.lr.ph.i.i.i.prol ]
  %i.ac = icmp ult i64 %i.y, 120
  br i1 %i.ac, label %_ZSt4fillIPN6Assimp3LWO3KeyES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i, align 8
  %.sroa.9.8..06.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9.8..06.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9, i64 35, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  store i8 %.sroa.4.8.copyload, ptr %i.ad, align 8
  %.sroa.9.8..06.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9.8..06.i.i.i.sroa_idx.1, ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9, i64 35, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 80
  store i8 %.sroa.4.8.copyload, ptr %i.ae, align 8
  %.sroa.9.8..06.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9.8..06.i.i.i.sroa_idx.2, ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9, i64 35, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 120
  store i8 %.sroa.4.8.copyload, ptr %i.af, align 8
  %.sroa.9.8..06.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9.8..06.i.i.i.sroa_idx.3, ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9, i64 35, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.ag, %i.x
  br i1 %.not.i.i.i.3, label %_ZSt4fillIPN6Assimp3LWO3KeyES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !41

bb.i:                                             ; preds = %bb.c
  %i.ah = sub nuw i64 %2, %i.k                    ; 4 uses
  %.not7.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %xtraiter = and i64 %i.ah, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i8 %.sroa.4.8.copyload, ptr %.09.i.i.i.i.prol, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9.8..09.i.i.i.i.sroa_idx.prol, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9, i64 39, i1 false)
  %i.ai = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !42

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa141.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.prol ]
  %i.ak = sub i64 %i.k, %2
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i8 %.sroa.4.8.copyload, ptr %.09.i.i.i.i, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9.8..09.i.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9, i64 39, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40
  store i8 %.sroa.4.8.copyload, ptr %i.am, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9.8..09.i.i.i.i.sroa_idx.1, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9, i64 39, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 80
  store i8 %.sroa.4.8.copyload, ptr %i.an, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9.8..09.i.i.i.i.sroa_idx.2, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9, i64 39, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 120
  store i8 %.sroa.4.8.copyload, ptr %i.ao, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9.8..09.i.i.i.i.sroa_idx.3, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9, i64 39, i1 false)
  %i.ap = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.3, label %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !43

_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.i
  %i.ar = phi ptr [ %i.d, %bb.i ], [ %.lcssa141.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.aq, %.lr.ph.i.i.i.i ] ; 3 uses
  store ptr %i.ar, ptr %i.c, align 8
  %.not11.i.i.i.i.i69 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread, label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.j
  store ptr %i.as, ptr %i.c, align 8
  br label %_ZSt4fillIPN6Assimp3LWO3KeyES2_EvT_S4_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i70 ], [ %i.ar, %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i70 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.013.i.i.i.i.i71, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.012.i.i.i.i.i72, i64 40, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 40
  %.not.i.i.i.i.i73 = icmp eq ptr %i.at, %i.d
  br i1 %.not.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, label %.lr.ph.i.i.i.i.i70, !llvm.loop !39

_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit75: ; preds = %.lr.ph.i.i.i.i.i70
  %i.av = load ptr, ptr %i.c, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.j
  store ptr %i.aw, ptr %i.c, align 8
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, %.lr.ph.i.i.i77
  %.06.i.i.i78 = phi ptr [ %i.ax, %.lr.ph.i.i.i77 ], [ %1, %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit75 ] ; 3 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i78, align 8
  %.sroa.9.8..06.i.i.i78.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9.8..06.i.i.i78.sroa_idx, ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9, i64 35, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 40 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.ax, %i.d
  br i1 %.not.i.i.i79, label %_ZSt4fillIPN6Assimp3LWO3KeyES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i77, !llvm.loop !41

_ZSt4fillIPN6Assimp3LWO3KeyES2_EvT_S4_RKT0_.exit: ; preds = %.lr.ph.i.i.i77, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8               ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.f, %i.az
  %i.bb = sdiv exact i64 %i.ba, 40                ; 4 uses
  %i.bc = sub nsw i64 230584300921369395, %i.bb
  %i.bd = icmp ult i64 %i.bc, %2
  br i1 %i.bd, label %bb.k, label %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %2)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 230584300921369395)
  %i.bh = select i1 %i.bf, i64 230584300921369395, i64 %i.bg ; 3 uses
  %i.bi = ptrtoint ptr %1 to i64
  %i.bj = sub i64 %i.bi, %i.az
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bk = mul nuw nsw i64 %i.bh, 40
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #17
  br label %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit, %bb.l
  %i.bm = phi ptr [ %i.bl, %bb.l ], [ null, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bj ; 2 uses
  %xtraiter145 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol

.lr.ph.i.i.i.i82.prol:                            ; preds = %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i82.prol
  %.09.i.i.i.i83.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i.i82.prol ], [ %i.bn, %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE11_M_allocateEm.exit ] ; 2 uses
  %.068.i.i.i.i84.prol = phi i64 [ %i.bo, %.lr.ph.i.i.i.i82.prol ], [ %2, %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE11_M_allocateEm.exit ]
  %prol.iter147 = phi i64 [ %prol.iter147.next, %.lr.ph.i.i.i.i82.prol ], [ 0, %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i83.prol, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.bo = add i64 %.068.i.i.i.i84.prol, -1        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83.prol, i64 40 ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol, !llvm.loop !44

.lr.ph.i.i.i.i82.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i82.prol, %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE11_M_allocateEm.exit
  %.09.i.i.i.i83.unr = phi ptr [ %i.bn, %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE11_M_allocateEm.exit ], [ %i.bp, %.lr.ph.i.i.i.i82.prol ]
  %.068.i.i.i.i84.unr = phi i64 [ %2, %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE11_M_allocateEm.exit ], [ %i.bo, %.lr.ph.i.i.i.i82.prol ]
  %i.bq = icmp ult i64 %2, 4
  br i1 %i.bq, label %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.prol.loopexit, %.lr.ph.i.i.i.i82
  %.09.i.i.i.i83 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i82 ], [ %.09.i.i.i.i83.unr, %.lr.ph.i.i.i.i82.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i84 = phi i64 [ %i.bu, %.lr.ph.i.i.i.i82 ], [ %.068.i.i.i.i84.unr, %.lr.ph.i.i.i.i82.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i83, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.bu = add i64 %.068.i.i.i.i84, -4             ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 160
  %.not.i.i.i.i85.3 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i85.3, label %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82, !llvm.loop !43

_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87: ; preds = %.lr.ph.i.i.i.i82, %.lr.ph.i.i.i.i82.prol.loopexit
  %.not11.i.i.i.i.i88 = icmp eq ptr %i.ay, %1
  br i1 %.not11.i.i.i.i.i88, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, %.lr.ph.i.i.i.i.i89
  %.013.i.i.i.i.i90 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i89 ], [ %i.bm, %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i91 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i89 ], [ %i.ay, %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.013.i.i.i.i.i90, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.012.i.i.i.i.i91, i64 40, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i91, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i90, i64 40 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.bw, %1
  br i1 %.not.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89, !llvm.loop !39

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i89, %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.bm, %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87 ], [ %i.bx, %.lr.ph.i.i.i.i.i89 ]
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %.0.lcssa.i.i.i.i.i93, i64 %2 ; 2 uses
  %.not11.i.i.i.i.i94 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i95
  %.013.i.i.i.i.i96 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i95 ], [ %i.by, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i97 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i95 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.013.i.i.i.i.i96, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.012.i.i.i.i.i97, i64 40, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i97, i64 40 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i96, i64 40 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.bz, %i.d
  br i1 %.not.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !39

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.by, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ca, %.lr.ph.i.i.i.i.i95 ]
  %.not.i101 = icmp eq ptr %i.ay, null
  br i1 %.not.i101, label %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit100
  %i.cb = load ptr, ptr %i.a, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cd) #19
  br label %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, %bb.m
  store ptr %i.bm, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.c, align 8
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %i.bh
  store ptr %i.ce, ptr %i.a, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4fillIPN6Assimp3LWO3KeyES2_EvT_S4_RKT0_.exit, %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 40                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 230584300921369395, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.057.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store double 0.000000e+00, ptr %.08.i.i.i.prol, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store float 0.000000e+00, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 12
  store i32 1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  %i.s = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !45

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store double 0.000000e+00, ptr %.08.i.i.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store float 0.000000e+00, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 12
  store i32 1, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.x, i8 0, i64 20, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store double 0.000000e+00, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store float 0.000000e+00, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 52
  store i32 1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i8 0, i64 20, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store double 0.000000e+00, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  store float 0.000000e+00, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 92
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.af, i8 0, i64 20, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  store double 0.000000e+00, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128
  store float 0.000000e+00, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 132
  store i32 1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aj, i8 0, i64 20, i1 false)
  %i.ak = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !46

_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 230584300921369395) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 40
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #17 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.057.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit ]
  store double 0.000000e+00, ptr %.08.i.i.i31.prol, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 8
  store float 0.000000e+00, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 12
  store i32 1, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  %i.av = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 40 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !47

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.057.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store double 0.000000e+00, ptr %.08.i.i.i31, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store float 0.000000e+00, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 12
  store i32 1, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ba, i8 0, i64 20, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store double 0.000000e+00, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  store float 0.000000e+00, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 52
  store i32 1, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.be, i8 0, i64 20, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  store double 0.000000e+00, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  store float 0.000000e+00, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 92
  store i32 1, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bi, i8 0, i64 20, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 120
  store double 0.000000e+00, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 128
  store float 0.000000e+00, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 132
  store i32 1, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bm, i8 0, i64 20, i1 false)
  %i.bn = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 160
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !46

_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 40, i1 false), !alias.scope !48
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i38 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !52

end_hunk_0
