Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/track_sampling_job?download=true
inline.NumInlined: 129
inline.NumDeleted: 60
begin_hunk_0_@_ZNK3ozz9animation8internal16TrackSamplingJobINS0_11Float3TrackEE3RunEv:bb.a
_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.h, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.k, %bb.h ] ; 2 uses
  %.01116.i.i = phi ptr [ %.112.i.i, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.i, %bb.h ] ; 2 uses
  %i.x = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i, i64 %i.x ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !18
  %i.aa = fcmp olt float %i.p, %i.z               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = xor i64 %i.x, -1
  %i.ad = add nsw i64 %.017.i.i, %i.ac
  %.112.i.i = select i1 %i.aa, ptr %.01116.i.i, ptr %i.ab ; 3 uses
  %.1.i.i = select i1 %i.aa, i64 %i.x, i64 %i.ad  ; 2 uses
  %i.ae = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ae, label %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit, !llvm.loop !0

_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit: ; preds = %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre = ptrtoint ptr %.112.i.i to i64
  br label %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit

_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit:        ; preds = %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit, %bb.h
  %.pre-phi = phi i64 [ %.pre, %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit ], [ %i.v, %bb.h ]
  %.011.lcssa.i.i = phi ptr [ %.112.i.i, %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit ], [ %i.i, %bb.h ]
  %i.af = sub i64 %.pre-phi, %i.v                 ; 2 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 2 uses
  %i.ah = add nsw i64 %i.ag, -1                   ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ak = lshr i64 %i.ah, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  %i.an = zext i8 %i.am to i32
  %i.ao = trunc i64 %i.ah to i32
  %i.ap = and i32 %i.ao, 7
  %i.aq = shl nuw nsw i32 1, %i.ap
  %i.ar = and i32 %i.aq, %i.an
  %.not = icmp ne i32 %i.ar, 0
  %i.as = icmp eq ptr %.011.lcssa.i.i, %i.u
  %or.cond = or i1 %i.as, %.not
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.at, i64 12, i1 false), !tbaa.struct !48
  br label %bb.k

bb.j:                                             ; preds = %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ah
  %i.av = load float, ptr %i.au, align 4, !tbaa !18 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.af
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !18
  %i.ay = fsub float %i.p, %i.av
  %i.az = fsub float %i.ax, %i.av
  %i.ba = fdiv float %i.ay, %i.az                 ; 2 uses
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.ah ; 2 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.ag ; 2 uses
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !18
  %i.be = load <2 x float>, ptr %i.bb, align 4, !tbaa !18 ; 2 uses
  %i.bf = fsub <2 x float> %i.bd, %i.be
  %i.bg = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bh, <2 x float> %i.be)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !50 ; 2 uses
  %i.bn = fsub float %i.bk, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.ba, float %i.bm)
  store <2 x float> %i.bi, ptr %i.b, align 4, !tbaa !18
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.bo, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.g, %bb.e, %bb.j, %bb.i, %bb.a
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK3ozz9animation8internal16TrackSamplingJobINS0_11Float4TrackEE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq <2 x ptr> %i.b, splat (ptr null)
  %i.d = bitcast <2 x i1> %i.c to i2
  %i.e = icmp eq i2 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK3ozz9animation8internal16TrackSamplingJobINS0_11Float4TrackEE3RunEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 5 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 6 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = and i1 %i.c, %i.f                        ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  switch i64 %i.k, label %bb.d [
    i64 0, label %bb.c
    i64 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.p = load float, ptr %0, align 8, !tbaa !59   ; 4 uses
  %i.q = fcmp ugt float %i.p, 0.000000e+00
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !24
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.r = fcmp ult float %i.p, 1.000000e+00
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.o
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !24
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.v = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.w = icmp sgt i64 %i.k, 0
  br i1 %i.w, label %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit

_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.h, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.k, %bb.h ] ; 2 uses
  %.01116.i.i = phi ptr [ %.112.i.i, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.i, %bb.h ] ; 2 uses
  %i.x = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i, i64 %i.x ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !18
  %i.aa = fcmp olt float %i.p, %i.z               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = xor i64 %i.x, -1
  %i.ad = add nsw i64 %.017.i.i, %i.ac
  %.112.i.i = select i1 %i.aa, ptr %.01116.i.i, ptr %i.ab ; 3 uses
  %.1.i.i = select i1 %i.aa, i64 %i.x, i64 %i.ad  ; 2 uses
  %i.ae = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ae, label %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit, !llvm.loop !0

_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit: ; preds = %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre = ptrtoint ptr %.112.i.i to i64
  br label %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit

_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit:        ; preds = %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit, %bb.h
  %.pre-phi = phi i64 [ %.pre, %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit ], [ %i.v, %bb.h ]
  %.011.lcssa.i.i = phi ptr [ %.112.i.i, %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit ], [ %i.i, %bb.h ]
  %i.af = sub i64 %.pre-phi, %i.v                 ; 2 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 2 uses
  %i.ah = add nsw i64 %i.ag, -1                   ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ak = lshr i64 %i.ah, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  %i.an = zext i8 %i.am to i32
  %i.ao = trunc i64 %i.ah to i32
  %i.ap = and i32 %i.ao, 7
  %i.aq = shl nuw nsw i32 1, %i.ap
  %i.ar = and i32 %i.aq, %i.an
  %.not = icmp ne i32 %i.ar, 0
  %i.as = icmp eq ptr %.011.lcssa.i.i, %i.u
  %or.cond = or i1 %i.as, %.not
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !24
  br label %bb.k

bb.j:                                             ; preds = %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ah
  %i.av = load float, ptr %i.au, align 4, !tbaa !18 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.af
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !18
  %i.ay = fsub float %i.p, %i.av
  %i.az = fsub float %i.ax, %i.av
  %i.ba = fdiv float %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ah
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ag
  %i.bd = tail call { <2 x float>, <2 x float> } @_ZN3ozz9animation8internal11TrackPolicyINS_4math6Float4EE4LerpERKS4_S7_f(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, ptr noundef nonnull align 4 dereferenceable(16) %i.bc, float noundef %i.ba) ; 2 uses
  %i.be = extractvalue { <2 x float>, <2 x float> } %i.bd, 0
  %i.bf = extractvalue { <2 x float>, <2 x float> } %i.bd, 1
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !54
  %1 = shufflevector <2 x float> %i.be, <2 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %1, ptr %i.bg, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.g, %bb.e, %bb.j, %bb.i, %bb.a
  ret i1 %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZN3ozz9animation8internal11TrackPolicyINS_4math6Float4EE4LerpERKS4_S7_f(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %1, align 4, !tbaa !18
  %i.b = load <4 x float>, ptr %0, align 4, !tbaa !18 ; 2 uses
  %i.c = fsub <4 x float> %i.a, %i.b
  %i.d = insertelement <4 x float> poison, float %2, i64 0
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer
  %i.f = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.c, <4 x float> %i.e, <4 x float> %i.b) ; 2 uses
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.h = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.g, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.h, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK3ozz9animation8internal16TrackSamplingJobINS0_15QuaternionTrackEE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq <2 x ptr> %i.b, splat (ptr null)
  %i.d = bitcast <2 x i1> %i.c to i2
  %i.e = icmp eq i2 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK3ozz9animation8internal16TrackSamplingJobINS0_15QuaternionTrackEE3RunEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 5 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 6 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = and i1 %i.c, %i.f                        ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !67
  switch i64 %i.k, label %bb.d [
    i64 0, label %bb.c
    i64 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.b, align 4, !tbaa !18
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.p = load float, ptr %0, align 8, !tbaa !68   ; 4 uses
  %i.q = fcmp ugt float %i.p, 0.000000e+00
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !24
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.r = fcmp ult float %i.p, 1.000000e+00
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.o
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !24
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.v = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.w = icmp sgt i64 %i.k, 0
  br i1 %i.w, label %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit

_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.h, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.k, %bb.h ] ; 2 uses
  %.01116.i.i = phi ptr [ %.112.i.i, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.i, %bb.h ] ; 2 uses
  %i.x = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i, i64 %i.x ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !18
  %i.aa = fcmp olt float %i.p, %i.z               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = xor i64 %i.x, -1
  %i.ad = add nsw i64 %.017.i.i, %i.ac
  %.112.i.i = select i1 %i.aa, ptr %.01116.i.i, ptr %i.ab ; 3 uses
  %.1.i.i = select i1 %i.aa, i64 %i.x, i64 %i.ad  ; 2 uses
  %i.ae = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ae, label %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit, !llvm.loop !0

_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit: ; preds = %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre = ptrtoint ptr %.112.i.i to i64
  br label %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit

_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit:        ; preds = %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit, %bb.h
  %.pre-phi = phi i64 [ %.pre, %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit ], [ %i.v, %bb.h ]
  %.011.lcssa.i.i = phi ptr [ %.112.i.i, %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit.loopexit ], [ %i.i, %bb.h ]
  %i.af = sub i64 %.pre-phi, %i.v                 ; 2 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 2 uses
  %i.ah = add nsw i64 %i.ag, -1                   ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ak = lshr i64 %i.ah, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  %i.an = zext i8 %i.am to i32
  %i.ao = trunc i64 %i.ah to i32
  %i.ap = and i32 %i.ao, 7
  %i.aq = shl nuw nsw i32 1, %i.ap
  %i.ar = and i32 %i.aq, %i.an
  %.not = icmp ne i32 %i.ar, 0
  %i.as = icmp eq ptr %.011.lcssa.i.i, %i.u
  %or.cond = or i1 %i.as, %.not
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !24
  br label %bb.k

bb.j:                                             ; preds = %_ZSt11upper_boundIPKffET_S2_S2_RKT0_.exit
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ah
  %i.av = load float, ptr %i.au, align 4, !tbaa !18 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.af
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !18
  %i.ay = fsub float %i.p, %i.av
  %i.az = fsub float %i.ax, %i.av
  %i.ba = fdiv float %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ah
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ag
  %i.bd = tail call { <2 x float>, <2 x float> } @_ZN3ozz9animation8internal11TrackPolicyINS_4math10QuaternionEE4LerpERKS4_S7_f(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, ptr noundef nonnull align 4 dereferenceable(16) %i.bc, float noundef %i.ba) ; 2 uses
  %i.be = extractvalue { <2 x float>, <2 x float> } %i.bd, 0
  %i.bf = extractvalue { <2 x float>, <2 x float> } %i.bd, 1
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !63
  %1 = shufflevector <2 x float> %i.be, <2 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %1, ptr %i.bg, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.g, %bb.e, %bb.j, %bb.i, %bb.a
  ret i1 %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZN3ozz9animation8internal11TrackPolicyINS_4math10QuaternionEE4LerpERKS4_S7_f(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %1, align 4, !tbaa !18
  %i.b = load <4 x float>, ptr %0, align 4, !tbaa !18 ; 2 uses
  %i.c = fsub <4 x float> %i.a, %i.b
  %i.d = insertelement <4 x float> poison, float %2, i64 0
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer
  %i.f = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.c, <4 x float> %i.e, <4 x float> %i.b) ; 6 uses
  %foldExtExtBinop = fmul <4 x float> %i.f, %i.f
  %i.g = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.h = extractelement <4 x float> %i.f, i64 0   ; 2 uses
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.g)
  %i.j = extractelement <4 x float> %i.f, i64 2   ; 2 uses
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.i)
  %i.l = extractelement <4 x float> %i.f, i64 3   ; 2 uses
  %i.m = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.k)
  %i.n = tail call noundef float @sqrtf(float noundef %i.m) #8
  %i.o = fdiv float 1.000000e+00, %i.n
  %i.p = insertelement <4 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = fmul <4 x float> %i.f, %i.q              ; 2 uses
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.t = shufflevector <4 x float> %i.r, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.s, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.t, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !19}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"float", !6, i64 0}
!13 = !{!"p1 float", !10, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"_ZTSN3ozz4spanIfEE", !13, i64 0, !14, i64 8}
!16 = !{!15, !13, i64 0}
!17 = !{!15, !14, i64 8}
!18 = !{!12, !12, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"_ZTSN3ozz4spanIhEE", !20, i64 0, !14, i64 8}
!22 = !{!21, !20, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{i64 0, i64 4, !18, i64 4, i64 4, !18, i64 8, i64 4, !18, i64 12, i64 4, !18}
!25 = !{!"p1 _ZTSN3ozz9animation10FloatTrackE", !10, i64 0}
!26 = !{!"_ZTSN3ozz9animation8internal16TrackSamplingJobINS0_10FloatTrackEEE", !12, i64 0, !25, i64 8, !13, i64 16}
!27 = !{!26, !13, i64 16}
!28 = !{!26, !25, i64 8}
!29 = !{!26, !12, i64 0}
!30 = !{!"p1 _ZTSN3ozz9animation11Float2TrackE", !10, i64 0}
!31 = !{!"p1 _ZTSN3ozz4math6Float2E", !10, i64 0}
!32 = !{!"_ZTSN3ozz9animation8internal16TrackSamplingJobINS0_11Float2TrackEEE", !12, i64 0, !30, i64 8, !31, i64 16}
!33 = !{!32, !31, i64 16}
!34 = !{!32, !30, i64 8}
!35 = !{!"_ZTSN3ozz4spanINS_4math6Float2EEE", !31, i64 0, !14, i64 8}
!36 = !{!35, !31, i64 0}
!37 = !{!35, !14, i64 8}
!38 = !{!32, !12, i64 0}
!39 = !{!"p1 _ZTSN3ozz9animation11Float3TrackE", !10, i64 0}
!40 = !{!"p1 _ZTSN3ozz4math6Float3E", !10, i64 0}
!41 = !{!"_ZTSN3ozz9animation8internal16TrackSamplingJobINS0_11Float3TrackEEE", !12, i64 0, !39, i64 8, !40, i64 16}
!42 = !{!41, !40, i64 16}
!43 = !{!41, !39, i64 8}
!44 = !{!"_ZTSN3ozz4spanINS_4math6Float3EEE", !40, i64 0, !14, i64 8}
!45 = !{!44, !40, i64 0}
!46 = !{!44, !14, i64 8}
!47 = !{!41, !12, i64 0}
!48 = !{i64 0, i64 4, !18, i64 4, i64 4, !18, i64 8, i64 4, !18}
!49 = !{!"_ZTSN3ozz4math6Float3E", !12, i64 0, !12, i64 4, !12, i64 8}
!50 = !{!49, !12, i64 8}
!51 = !{!"p1 _ZTSN3ozz9animation11Float4TrackE", !10, i64 0}
!52 = !{!"p1 _ZTSN3ozz4math6Float4E", !10, i64 0}
!53 = !{!"_ZTSN3ozz9animation8internal16TrackSamplingJobINS0_11Float4TrackEEE", !12, i64 0, !51, i64 8, !52, i64 16}
!54 = !{!53, !52, i64 16}
!55 = !{!53, !51, i64 8}
!56 = !{!"_ZTSN3ozz4spanINS_4math6Float4EEE", !52, i64 0, !14, i64 8}
!57 = !{!56, !52, i64 0}
!58 = !{!56, !14, i64 8}
!59 = !{!53, !12, i64 0}
!60 = !{!"p1 _ZTSN3ozz9animation15QuaternionTrackE", !10, i64 0}
!61 = !{!"p1 _ZTSN3ozz4math10QuaternionE", !10, i64 0}
!62 = !{!"_ZTSN3ozz9animation8internal16TrackSamplingJobINS0_15QuaternionTrackEEE", !12, i64 0, !60, i64 8, !61, i64 16}
!63 = !{!62, !61, i64 16}
!64 = !{!62, !60, i64 8}
!65 = !{!"_ZTSN3ozz4spanINS_4math10QuaternionEEE", !61, i64 0, !14, i64 8}
!66 = !{!65, !61, i64 0}
!67 = !{!65, !14, i64 8}
!68 = !{!62, !12, i64 0}
end_hunk_0
