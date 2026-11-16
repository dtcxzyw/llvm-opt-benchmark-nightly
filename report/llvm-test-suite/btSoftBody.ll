Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBody?download=true
inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody7cutLinkEiif:bb.a

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i.i.i.i112.new
  %indvars.iv.i.i.i.i114 = phi i64 [ 0, %.lr.ph.i.i.i.i112.new ], [ %indvars.iv.next.i.i.i.i115.1, %bb.ai ] ; 4 uses
  %niter169 = phi i64 [ 0, %.lr.ph.i.i.i.i112.new ], [ %niter169.next.1, %bb.ai ]
  %i.iz = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i107, i64 %indvars.iv.i.i.i.i114
  %i.ja = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.jb = getelementptr inbounds nuw [72 x i8], ptr %i.ja, i64 %indvars.iv.i.i.i.i114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.iz, ptr noundef nonnull align 8 dereferenceable(72) %i.jb, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i115 = or disjoint i64 %indvars.iv.i.i.i.i114, 1 ; 2 uses
  %i.jc = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i107, i64 %indvars.iv.next.i.i.i.i115
  %i.jd = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.je = getelementptr inbounds nuw [72 x i8], ptr %i.jd, i64 %indvars.iv.next.i.i.i.i115
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jc, ptr noundef nonnull align 8 dereferenceable(72) %i.je, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i115.1 = add nuw nsw i64 %indvars.iv.i.i.i.i114, 2 ; 2 uses
  %niter169.next.1 = add i64 %niter169, 2         ; 2 uses
  %niter169.ncmp.1 = icmp eq i64 %niter169.next.1, %unroll_iter168
  br i1 %niter169.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108.loopexit.unr-lcssa, label %bb.ai

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108.loopexit.unr-lcssa: ; preds = %bb.ai
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108, label %.epil.preheader164

.epil.preheader164:                               ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108.loopexit.unr-lcssa, %.lr.ph.i.i.i.i112
  %indvars.iv.i.i.i.i114.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i112 ], [ %indvars.iv.next.i.i.i.i115.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod167 = trunc i32 %i.iw to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.jf = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i107, i64 %indvars.iv.i.i.i.i114.epil.init
  %i.jg = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.jh = getelementptr inbounds nuw [72 x i8], ptr %i.jg, i64 %indvars.iv.i.i.i.i114.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jf, ptr noundef nonnull align 8 dereferenceable(72) %i.jh, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108: ; preds = %.epil.preheader164, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i106
  %i.ji = load ptr, ptr %i.ci, align 8, !tbaa !183 ; 2 uses
  %.not.i5.i.i.i109 = icmp eq ptr %i.ji, null
  br i1 %.not.i5.i.i.i109, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110, label %bb.aj

bb.aj:                                            ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108
  %i.jj = load i8, ptr %i.cl, align 8, !tbaa !182, !range !245, !noundef !246
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.ak, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ji)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110: ; preds = %bb.ak, %bb.aj, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i108
  store i8 1, ptr %i.cl, align 8, !tbaa !182
  store ptr %.0.i.i.i.i107, ptr %i.ci, align 8, !tbaa !183
  store i32 %i.ir, ptr %i.ck, align 8, !tbaa !185
  %.pre2.i.i111 = load i32, ptr %i.ay, align 4, !tbaa !184
  br label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118

_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118: ; preds = %bb.ae, %bb.af, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110
  %i.jl = phi i32 [ %.pre2.i.i111, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110 ], [ %i.in, %bb.af ], [ %i.in, %bb.ae ]
  %i.jm = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.jn = sext i32 %i.jl to i64
  %i.jo = getelementptr inbounds [72 x i8], ptr %i.jm, i64 %i.jn ; 3 uses
  store ptr %.sroa.0.0.copyload6.i98, ptr %i.jo, align 8
  %.sroa.6.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store ptr %.sroa.6.0.i100, ptr %.sroa.6.0..sroa_idx.i101, align 8
  %.sroa.7.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i102, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i96, i64 56, i1 false)
  %i.jp = load i32, ptr %i.ay, align 4, !tbaa !184
  %i.jq = add nsw i32 %i.jp, 1                    ; 2 uses
  store i32 %i.jq, ptr %i.ay, align 4, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i96)
  %i.jr = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.js = sext i32 %i.jq to i64
  %i.jt = getelementptr [72 x i8], ptr %i.jr, i64 %i.js ; 3 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 -56
  store ptr %i.av, ptr %i.ju, align 8, !tbaa !279
  %i.jv = getelementptr i8, ptr %i.jt, i64 -48
  store ptr %i.hx, ptr %i.jv, align 8, !tbaa !279
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.jx = load float, ptr %i.cq, align 8, !tbaa !229
  %i.jy = load float, ptr %i.jw, align 4, !tbaa !229
  %i.jz = fsub float %i.jx, %i.jy                 ; 2 uses
  %i.ka = load float, ptr %i.cr, align 4, !tbaa !229
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hx, i64 20
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !229
  %i.kd = fsub float %i.ka, %i.kc                 ; 2 uses
  %i.ke = load float, ptr %i.cs, align 8, !tbaa !229
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !229
  %i.kh = fsub float %i.ke, %i.kg                 ; 2 uses
  %i.ki = fmul float %i.kd, %i.kd
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.jz, float %i.jz, float %i.ki)
  %i.kk = tail call noundef float @llvm.fmuladd.f32(float %i.kh, float %i.kh, float %i.kj)
  %sqrt.i.i72 = tail call noundef float @llvm.sqrt.f32(float %i.kk)
  %i.kl = getelementptr i8, ptr %i.jt, i64 -40
  store float %sqrt.i.i72, ptr %i.kl, align 8, !tbaa !289
  store i8 1, ptr %i.cp, align 4, !tbaa !234
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81

_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81: ; preds = %.critedge.i.i77, %bb.aa, %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81_crit_edge, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118
  %indvars.iv.next126.pre-phi = phi i64 [ %.pre136, %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit81_crit_edge ], [ %i.ey, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118 ], [ %i.ey, %bb.aa ], [ %i.ey, %.critedge.i.i77 ] ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next126.pre-phi, 3
  br i1 %exitcond128.not, label %bb.e, label %bb.f

._crit_edge124:                                   ; preds = %bb.e, %._crit_edge
  br i1 %.0.lcssa, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge124
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.kn = getelementptr i8, ptr %i.as, i64 -136
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !268
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.km, ptr noundef %i.ko)
  %i.kp = getelementptr i8, ptr %i.as, i64 -16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !268
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.km, ptr noundef %i.kq)
  %i.kr = load i32, ptr %i.ap, align 4, !tbaa !180
  %i.ks = add nsw i32 %i.kr, -2
  store i32 %i.ks, ptr %i.ap, align 4, !tbaa !180
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret i1 %.0.lcssa
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN10btSoftBody7rayTestERK9btVector3S2_RNS_8sRayCastE(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 20)) %3) local_unnamed_addr #3 align 2 !guid !672 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.b = load i32, ptr %i.a, align 4, !tbaa !188
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10btSoftBody18initializeFaceTreeEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !674
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !675
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !676
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 -1, ptr %i.h, align 4, !tbaa !677
  %i.i = tail call noundef i32 @_ZNK10btSoftBody7rayTestERK9btVector3S2_RfRNS_8eFeature1_ERib(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i1 noundef zeroext false)
  %i.j = icmp ne i32 %i.i, 0
  ret i1 %i.j
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody18initializeFaceTreeEv(ptr noundef nonnull align 8 dereferenceable(1496) %0) local_unnamed_addr #3 align 2 !guid !682 {
bb.a:
  %1 = alloca %struct.btDbvtAabbMm, align 16      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  tail call void @_ZN6btDbvt5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !188
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !187
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %indvars.iv ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !279, !noalias !683
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !279, !noalias !683
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !279, !noalias !683
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.r = load <4 x float>, ptr %1, align 16, !alias.scope !685 ; 2 uses
  %i.s = load <4 x float>, ptr %i.n, align 4, !tbaa !229, !noalias !685 ; 4 uses
  %i.t = fcmp olt <4 x float> %i.s, %i.r
  %i.u = select <4 x i1> %i.t, <4 x float> %i.s, <4 x float> %i.r ; 2 uses
  %i.v = load <4 x float>, ptr %i.q, align 4, !tbaa !229, !noalias !685 ; 4 uses
  %i.w = fcmp olt <4 x float> %i.v, %i.u
  %i.x = select <4 x i1> %i.w, <4 x float> %i.v, <4 x float> %i.u
  store <4 x float> %i.x, ptr %1, align 16, !tbaa !229, !alias.scope !683
  %i.y = load <4 x float>, ptr %i.f, align 16, !alias.scope !685 ; 2 uses
  %i.z = fcmp olt <4 x float> %i.y, %i.s
  %i.aa = select <4 x i1> %i.z, <4 x float> %i.s, <4 x float> %i.y ; 2 uses
  %i.ab = fcmp olt <4 x float> %i.aa, %i.v
  %i.ac = select <4 x i1> %i.ab, <4 x float> %i.v, <4 x float> %i.aa ; 2 uses
  %i.ad = fadd <4 x float> %i.ac, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>
  %2 = shufflevector <4 x float> %i.ad, <4 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %2, ptr %i.f, align 16, !tbaa !229, !alias.scope !683
  %i.ae = call noundef ptr @_ZN6btDbvt6insertERK12btDbvtAabbMmPv(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull %i.h)
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !281
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !188
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.b, label %._crit_edge
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZNK10btSoftBody7rayTestERK9btVector3S2_RfRNS_8eFeature1_ERib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !686 {
bb.a:
  %7 = alloca %class.btVector3, align 8           ; 6 uses
  %8 = alloca %"struct.btSoftBody::RayFromToCaster", align 8 ; 11 uses
  br i1 %6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !335  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !229
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !229
  %i.h = fsub float %i.e, %i.g                    ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.h, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.i, align 8
  %i.j = load <2 x float>, ptr %2, align 4, !tbaa !229
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !229
  %i.l = fsub <2 x float> %i.j, %i.k              ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.l, %i.l
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.n = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.m)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.o)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.p)
  %i.q = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.l, %i.s
  store <2 x float> %i.t, ptr %7, align 8, !tbaa !229
  %i.u = fmul float %i.h, %i.q
  store float %i.u, ptr %i.i, align 8, !tbaa !229
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.w = load i32, ptr %i.v, align 4, !tbaa !188  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %wide.trip.count41 = zext nneg i32 %i.w to i64  ; 2 uses
  br i1 %6, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %.035.us = phi i32 [ %spec.select, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !187
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %indvars.iv38 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !279
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !279
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !279
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load float, ptr %3, align 4, !tbaa !229
  %i.al = call noundef float @_ZN10btSoftBody15RayFromToCaster17rayFromToTriangleERK9btVector3S3_S3_S3_S3_S3_f(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.aj, float noundef %i.ak)
  %i.am = fcmp ogt float %i.al, 0.000000e+00
  %i.an = zext i1 %i.am to i32
  %spec.select = add nuw nsw i32 %.035.us, %i.an  ; 2 uses
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.e, %.lr.ph.split.us, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %spec.select, %.lr.ph.split.us ], [ %.1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %.035 = phi i32 [ %.1, %bb.e ], [ 0, %.lr.ph ]  ; 2 uses
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !187
  %i.ap = getelementptr inbounds nuw [72 x i8], ptr %i.ao, i64 %indvars.iv ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !279
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !279
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !279
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load float, ptr %3, align 4, !tbaa !229
  %i.ba = call noundef float @_ZN10btSoftBody15RayFromToCaster17rayFromToTriangleERK9btVector3S3_S3_S3_S3_S3_f(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.ay, float noundef %i.az) ; 2 uses
  %i.bb = fcmp ogt float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.bc = add nsw i32 %.035, 1
  store i32 3, ptr %4, align 4, !tbaa !687
  %i.bd = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bd, ptr %5, align 4, !tbaa !7
  store float %i.ba, ptr %3, align 4, !tbaa !229
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %.1 = phi i32 [ %.035, %.lr.ph.split ], [ %i.bc, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count41
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.be = load float, ptr %3, align 4, !tbaa !229
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN10btSoftBody15RayFromToCasterE, i64 16), ptr %8, align 8, !tbaa !79
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull readonly align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !263
  %i.bi = load <2 x float>, ptr %2, align 4, !tbaa !229
  %i.bj = load <2 x float>, ptr %1, align 4, !tbaa !229
  %i.bk = fsub <2 x float> %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !229
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !229
  %i.bp = fsub float %i.bm, %i.bo
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bp, i64 0
  store <2 x float> %i.bk, ptr %i.bh, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !263
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store float %i.be, ptr %i.bq, align 8, !tbaa !338
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store ptr null, ptr %i.br, align 8, !tbaa !339
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 0, ptr %i.bs, align 8, !tbaa !340
  call void @_ZN6btDbvt7rayTestEPK10btDbvtNodeRK9btVector3S5_RNS_8ICollideE(ptr noundef nonnull %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !339 ; 2 uses
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = load float, ptr %i.bq, align 8, !tbaa !338
  store float %i.bu, ptr %3, align 4, !tbaa !229
  store i32 3, ptr %4, align 4, !tbaa !687
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !187
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 72
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %5, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.3 = phi i32 [ %.0.lcssa, %._crit_edge ], [ %.2, %bb.h ]
  ret i32 %.3
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody13predictMotionEf(ptr noundef nonnull align 8 dereferenceable(1496) %0, float noundef %1) local_unnamed_addr #0 align 2 !guid !698 {
bb.a:
  %2 = alloca %struct.btDbvtAabbMm, align 8       ; 14 uses
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !234, !range !245, !noundef !246
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 4, !tbaa !234
  tail call void @_ZN10btSoftBody15updateConstantsEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1208
  tail call void @_ZN6btDbvt5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.f = load i32, ptr %i.e, align 4, !tbaa !230
  %i.g = and i32 %i.f, 16
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody13applyClustersEb:bb.a
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv190
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !229 ; 3 uses
  %i.ch = load float, ptr %i.ce, align 4, !tbaa !229
  %i.ci = load float, ptr %i.bv, align 8, !tbaa !229
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.ck = shl i64 %i.cd, 32
  %i.cl = ashr exact i64 %i.ck, 32                ; 2 uses
  %i.cm = getelementptr inbounds [16 x i8], ptr %.sroa.11154.3165, i64 %i.cl ; 3 uses
  %i.cn = load <2 x float>, ptr %i.cj, align 4, !tbaa !229 ; 2 uses
  %i.co = load <2 x float>, ptr %i.bw, align 4, !tbaa !229 ; 2 uses
  %i.cp = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cq = insertelement <2 x float> %i.cp, float %i.ch, i64 1
  %i.cr = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cs = insertelement <2 x float> %i.cr, float %i.ci, i64 1
  %i.ct = fsub <2 x float> %i.cq, %i.cs           ; 2 uses
  %i.cu = fsub <2 x float> %i.cn, %i.co           ; 2 uses
  %i.cv = fneg <2 x float> %i.cu
  %i.cw = fmul <2 x float> %i.bl, %i.cv
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.ct, <2 x float> %i.cw)
  %i.cy = extractelement <2 x float> %i.ct, i64 1
  %i.cz = fneg float %i.cy
  %i.da = fmul float %i.bx, %i.cz
  %i.db = extractelement <2 x float> %i.cu, i64 0
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.by, float %i.db, float %i.da)
  %i.dd = fadd <2 x float> %i.bg, %i.cx
  %i.de = fadd float %i.az, %i.dc
  %i.df = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x float> %i.dg, %i.dd
  %i.di = fmul float %i.cg, %i.de
  %i.dj = load <2 x float>, ptr %i.cm, align 4, !tbaa !229
  %i.dk = fadd <2 x float> %i.dj, %i.dh
  store <2 x float> %i.dk, ptr %i.cm, align 4, !tbaa !229
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !229
  %i.dn = fadd float %i.di, %i.dm
  store float %i.dn, ptr %i.dl, align 4, !tbaa !229
  %i.do = getelementptr inbounds [4 x i8], ptr %.sroa.10141.1, i64 %i.cl ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !229
  %i.dq = fadd float %i.cg, %i.dp
  store float %i.dq, ptr %i.do, align 4, !tbaa !229
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count193
  br i1 %exitcond194.not, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.g
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %.preheader, label %bb.g

bb.j:                                             ; preds = %.lr.ph188, %bb.l
  %indvars.iv200 = phi i64 [ 0, %.lr.ph188 ], [ %indvars.iv.next201, %bb.l ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10141.1, i64 %indvars.iv200
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !229 ; 2 uses
  %i.dt = fcmp ogt float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.sroa.11154.3165, i64 %indvars.iv200 ; 2 uses
  %i.dv = fdiv float 1.000000e+00, %i.ds          ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !229
  %i.dy = fmul float %i.dv, %i.dx
  %i.dz = load ptr, ptr %i.aq, align 8, !tbaa !179
  %i.ea = getelementptr inbounds nuw [120 x i8], ptr %i.dz, i64 %indvars.iv200 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.du, align 4, !tbaa !229
  %i.ed = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x float> %i.ee, %i.ec
  %i.eg = load <2 x float>, ptr %i.eb, align 4, !tbaa !229
  %i.eh = fadd <2 x float> %i.ef, %i.eg
  store <2 x float> %i.eh, ptr %i.eb, align 4, !tbaa !229
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !229
  %i.ek = fadd float %i.dy, %i.ej
  store float %i.ek, ptr %i.ei, align 4, !tbaa !229
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge.thread, label %bb.j

._crit_edge:                                      ; preds = %.preheader
  %.not.i.i.i104.not = icmp eq ptr %.sroa.10141.1, null
  br i1 %.not.i.i.i104.not, label %_ZN20btAlignedObjectArrayIfED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10141.1)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit unwind label %_ZN20btAlignedObjectArrayIfED2Ev.exit112

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %._crit_edge, %._crit_edge.thread
  %.not.i.i.i106.not = icmp eq ptr %.sroa.11154.3165, null
  br i1 %.not.i.i.i106.not, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.11154.3165)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread172

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit, %bb.m
  tail call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

_ZN20btAlignedObjectArrayIfED2Ev.exit112:         ; preds = %._crit_edge.thread
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i113.not = icmp eq ptr %.sroa.11154.3165, null
  br i1 %.not.i.i.i113.not, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116, label %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176

_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176: ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread, %_ZN20btAlignedObjectArrayIfED2Ev.exit112
  %.pn56.pn.pn.pn171 = phi { ptr, i32 } [ %i.al, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread ], [ %i.el, %_ZN20btAlignedObjectArrayIfED2Ev.exit112 ]
  %.sroa.11154.1169 = phi ptr [ %i.g, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread ], [ %.sroa.11154.3165, %_ZN20btAlignedObjectArrayIfED2Ev.exit112 ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.11154.1169)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116 unwind label %bb.n

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116: ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit112, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread172, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176
  %.pn56.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn171, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176 ], [ %i.el, %_ZN20btAlignedObjectArrayIfED2Ev.exit112 ], [ %i.ak, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread172 ]
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.n

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116
  resume { ptr, i32 } %.pn56.pn.pn.pn.pn

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit116, %_ZN20btAlignedObjectArrayIfED2Ev.exit112.thread176
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  tail call void @__clang_call_terminate(ptr %i.en) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13ImpulseMatrixfffRK11btMatrix3x3RK9btVector3(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 48)) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) unnamed_addr #21 !guid !739 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.c = load float, ptr %5, align 4, !tbaa !229, !noalias !740 ; 6 uses
  %i.d = fneg float %i.c                          ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.j = load <3 x float>, ptr %4, align 4, !tbaa !229, !noalias !741 ; 2 uses
  %i.k = shufflevector <3 x float> %i.j, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.l = load <1 x float>, ptr %i.g, align 4
  %i.m = load <3 x float>, ptr %i.e, align 4, !tbaa !229, !noalias !741 ; 2 uses
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.o = load <1 x float>, ptr %i.h, align 4
  %i.p = load <3 x float>, ptr %i.f, align 4, !tbaa !229, !noalias !741 ; 3 uses
  %i.q = shufflevector <3 x float> %i.p, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.r = load float, ptr %i.i, align 4, !tbaa !229, !noalias !741
  %i.s = extractelement <3 x float> %i.p, i64 2
  %i.t = extractelement <3 x float> %i.p, i64 0
  %i.u = load <2 x float>, ptr %i.b, align 4, !tbaa !229, !noalias !740 ; 3 uses
  %i.v = load float, ptr %i.a, align 4, !tbaa !229, !noalias !740 ; 5 uses
  %i.w = extractelement <2 x float> %i.u, i64 0   ; 2 uses
  %i.x = fneg float %i.w                          ; 4 uses
  %i.y = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.z = shufflevector <4 x float> %i.y, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.aa = insertelement <4 x float> %i.y, float %i.d, i64 1
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ac = insertelement <4 x float> %i.y, float 0.000000e+00, i64 2
  %i.ad = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %i.x, i64 1
  %i.ae = insertelement <4 x float> %i.ad, float %i.c, i64 2
  %i.af = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %3, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ah = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %2, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.aj = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.x, i64 1
  %i.ak = fneg float %i.v                         ; 4 uses
  %i.al = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ak, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.an = fmul <4 x float> %i.n, %i.am
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.z, <4 x float> %i.an)
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> %i.ab, <4 x float> %i.ao) ; 5 uses
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 1, i32 1>
  %i.ar = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.ak, i64 2
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> %i.y, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.at = shufflevector <4 x float> %i.q, <4 x float> %i.ap, <4 x i32> <i32 2, i32 4, i32 4, i32 4>
  %i.au = shufflevector <1 x float> %i.o, <1 x float> poison, <2 x i32> zeroinitializer
  %i.av = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.c, i64 1
  %i.aw = fmul <2 x float> %i.au, %i.av
  %i.ax = shufflevector <1 x float> %i.l, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x float> poison, float %i.v, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.x, i64 1 ; 2 uses
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.az, <2 x float> %i.aw)
  %i.bb = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.d, i64 0
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bd, <2 x float> %i.ba) ; 3 uses
  %i.bf = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 2, i32 2>
  %i.bg = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.v, i64 1
  %i.bh = fmul <2 x float> %i.bg, %i.be
  %i.bi = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.bj = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.bk = insertelement <2 x float> %i.bj, float 0.000000e+00, i64 1
  %i.bl = insertelement <2 x float> %i.az, float %i.c, i64 0
  %i.bm = insertelement <2 x float> <float poison, float 0.000000e+00>, float %3, i64 0
  %i.bn = insertelement <2 x float> poison, float %2, i64 0
  %i.bo = shufflevector <2 x float> %i.be, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.bp = shufflevector <3 x float> %i.m, <3 x float> %i.bo, <4 x i32> <i32 2, i32 2, i32 0, i32 3>
  %i.bq = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.c, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.d, i64 3
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.bt = fmul <4 x float> %i.bp, %i.bs
  %i.bu = shufflevector <2 x float> %i.u, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.bv = shufflevector <3 x float> %i.j, <3 x float> %i.bu, <4 x i32> <i32 2, i32 2, i32 0, i32 3>
  %i.bw = insertelement <4 x float> %i.ap, float %i.v, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.x, i64 1
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.by, <4 x float> %i.bt) ; 4 uses
  %i.ca = shufflevector <4 x float> %i.ac, <4 x float> %i.bz, <4 x i32> <i32 5, i32 1, i32 2, i32 poison>
  %i.cb = insertelement <4 x float> %i.ca, float %i.d, i64 3
  %i.cc = extractelement <4 x float> %i.bz, i64 0
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.d, float %i.cc) ; 2 uses
  %i.ce = fmul <4 x float> %i.cb, %i.aq
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.at, <4 x float> %i.ce) ; 3 uses
  %i.cg = extractelement <4 x float> %i.cf, i64 0 ; 2 uses
  %i.ch = extractelement <4 x float> %i.bz, i64 2
  %i.ci = tail call noundef float @llvm.fmuladd.f32(float %i.t, float 0.000000e+00, float %i.ch) ; 3 uses
  %i.cj = insertelement <2 x float> %i.bi, float %i.ci, i64 1
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.bk, <2 x float> %i.bh)
  %i.cl = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cm = insertelement <2 x float> %i.cl, float %i.cd, i64 0
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.cm, <2 x float> %i.ck)
  %i.co = fsub <2 x float> %i.bm, %i.cn           ; 3 uses
  %i.cp = fadd <2 x float> %i.bn, %i.co           ; 3 uses
  %6 = shufflevector <2 x float> %i.cp, <2 x float> %i.co, <2 x i32> <i32 0, i32 3>
  %i.cq = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  %i.cr = fneg float %i.cq
  %i.cs = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = extractelement <2 x float> %i.co, i64 1 ; 2 uses
  %i.cv = fneg float %i.cu                        ; 2 uses
  %i.cw = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.v, i64 0
  %i.cx = insertelement <4 x float> %i.cw, float %i.d, i64 2
  %i.cy = insertelement <4 x float> %i.cx, float %i.cv, i64 3
  %i.cz = shufflevector <2 x float> %i.be, <2 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.da = fmul <4 x float> %i.cy, %i.cz           ; 4 uses
  %i.db = shufflevector <4 x float> %i.da, <4 x float> %i.cf, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.bf, <4 x float> %i.db) ; 2 uses
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> %i.bz, <2 x i32> <i32 7, i32 0>
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.ct, <2 x float> %i.dd)
  %i.df = fsub <2 x float> zeroinitializer, %i.de ; 5 uses
  %i.dg = extractelement <2 x float> %i.df, i64 0 ; 2 uses
  %i.dh = extractelement <2 x float> %i.df, i64 1 ; 2 uses
  %i.di = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dj = fneg <2 x float> %i.df
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dl = extractelement <4 x float> %i.da, i64 1
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ci, float %i.dl)
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.c, float %i.cg, float %i.dm)
  %i.do = extractelement <4 x float> %i.da, i64 2
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.w, float %i.ci, float %i.do)
  %i.dq = tail call noundef float @llvm.fmuladd.f32(float %i.cg, float 0.000000e+00, float %i.dp)
  %i.dr = fsub float 0.000000e+00, %i.dn          ; 3 uses
  %i.ds = fneg float %i.dr                        ; 2 uses
  %i.dt = insertelement <4 x float> %i.dc, float %i.dq, i64 0
  %i.du = fsub <4 x float> %i.ag, %i.dt           ; 3 uses
  %i.dv = fadd <4 x float> %i.du, %i.ai           ; 5 uses
  %i.dw = extractelement <4 x float> %i.dv, i64 0 ; 2 uses
  %i.dx = fneg float %i.dw                        ; 2 uses
  %i.dy = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 3, i32 2>
  %i.dz = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.ea = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.eb = fmul float %i.dg, %i.ds
  %i.ec = extractelement <4 x float> %i.da, i64 3
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %i.dh, float %i.dr, float %i.ec) ; 2 uses
  %i.ee = tail call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.dw, float %i.eb) ; 2 uses
  %i.ef = fmul float %i.dh, %i.dx
  %i.eg = insertelement <4 x float> %i.ea, float %i.ee, i64 1
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ei = insertelement <4 x float> %i.eh, float %i.dr, i64 3
  %i.ej = shufflevector <4 x float> %i.dv, <4 x float> %i.du, <4 x i32> <i32 1, i32 6, i32 1, i32 poison>
  %i.ek = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ds, i64 2
  %i.el = shufflevector <4 x float> %i.dk, <4 x float> %i.ek, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.em = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.en = shufflevector <2 x float> %i.df, <2 x float> %6, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.eo = insertelement <4 x float> %i.en, float %i.ed, i64 3
  %i.ep = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.eq = insertelement <4 x float> poison, float %i.ed, i64 0
  %i.er = tail call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.cu, float %i.ef) ; 2 uses
  %i.es = insertelement <4 x float> %i.dz, float %i.er, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.cr, i64 2
  %i.eu = insertelement <4 x float> %i.et, float %i.dx, i64 3
  %i.ev = fmul <4 x float> %i.dy, %i.eu
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.ei, <4 x float> %i.ev) ; 3 uses
  %i.ex = shufflevector <4 x float> %i.ej, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ey = fmul <4 x float> %i.ex, %i.el
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> %i.eo, <4 x float> %i.ey) ; 3 uses
  %i.fa = shufflevector <4 x float> %i.ep, <4 x float> %i.ew, <4 x i32> <i32 0, i32 7, i32 6, i32 0>
  %i.fb = shufflevector <4 x float> %i.ew, <4 x float> %i.ez, <4 x i32> <i32 poison, i32 0, i32 4, i32 0>
  %i.fc = insertelement <4 x float> %i.fb, float %i.er, i64 0
  %i.fd = shufflevector <4 x float> %i.eq, <4 x float> %i.ez, <4 x i32> <i32 0, i32 6, i32 5, i32 0>
  %i.fe = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ff = insertelement <2 x float> %i.fe, float %1, i64 1
  %i.fg = fdiv <2 x float> splat (float 1.000000e+00), %i.ff ; 6 uses
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fi = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fj = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fk = extractelement <2 x float> %i.fg, i64 1
  %i.fl = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.fm = fmul <4 x float> %i.fa, %i.fl           ; 3 uses
  %i.fn = fmul <4 x float> %i.fc, %i.fl           ; 2 uses
  %i.fo = fmul <4 x float> %i.fd, %i.fl           ; 3 uses
  %i.fp = extractelement <4 x float> %i.fm, i64 2
  %i.fq = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.fr = extractelement <4 x float> %i.fo, i64 2
  %i.fs = insertelement <2 x float> %i.fg, float 0.000000e+00, i64 0
  %i.ft = shufflevector <4 x float> %i.fn, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.fu = fmul <2 x float> %i.fs, %i.ft           ; 2 uses
  %i.fv = shufflevector <4 x float> %i.fj, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fx = shufflevector <4 x float> %i.fi, <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 1, i32 poison, i32 7>
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.fz = fmul <4 x float> %i.fn, %i.fy           ; 2 uses
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.gb = shufflevector <2 x float> %i.fu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x float> %i.ga, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> %i.fw, <4 x float> %i.gc)
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fo, <4 x float> zeroinitializer, <4 x float> %i.gd) ; 2 uses
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fq, <4 x float> zeroinitializer, <4 x float> %i.fz)
  %i.gg = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gh = shufflevector <4 x float> %i.fh, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 1, i32 5, i32 6, i32 poison>
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.gi, <4 x float> %i.gf) ; 2 uses
  %i.gk = extractelement <2 x float> %i.fu, i64 0
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.fp, float 0.000000e+00, float %i.gk)
  %i.gm = tail call noundef float @llvm.fmuladd.f32(float %i.fr, float %i.fk, float %i.gl)
  %i.gn = insertelement <4 x float> %i.ge, float 0.000000e+00, i64 3
  store <4 x float> %i.gn, ptr %0, align 4, !tbaa !229, !alias.scope !742
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gp = shufflevector <4 x float> %i.ge, <4 x float> %i.gj, <4 x i32> <i32 3, i32 5, i32 6, i32 poison>
  %i.gq = insertelement <4 x float> %i.gp, float 0.000000e+00, i64 3
  store <4 x float> %i.gq, ptr %i.go, align 4, !tbaa !229, !alias.scope !742
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gs = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.gs, ptr %i.gr, align 4, !tbaa !229, !alias.scope !742
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.gm, ptr %i.gt, align 4, !tbaa !229, !alias.scope !742
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %i.gu, align 4, !tbaa !229, !alias.scope !742
  ret void
}

declare void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN10btSoftBody9getSolverENS_8eVSolver1_E(i32 noundef %0) local_unnamed_addr #22 align 2 !guid !743 {
bb.a:
  %cond = icmp eq i32 %0, 0
  %_ZN10btSoftBody12VSolve_LinksEPS_f. = select i1 %cond, ptr @_ZN10btSoftBody12VSolve_LinksEPS_f, ptr null
  ret ptr %_ZN10btSoftBody12VSolve_LinksEPS_f.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN10btSoftBody9getSolverENS_8ePSolver1_E(i32 noundef %0) local_unnamed_addr #22 align 2 !guid !744 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10btSoftBody11staticSolveEi, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10btSoftBody12dampClustersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0) local_unnamed_addr #15 align 2 !guid !745 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.b = load i32, ptr %i.a, align 4, !tbaa !216  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph50, label %._crit_edge

.lr.ph50:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !215
  %wide.trip.count55 = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph50, %.loopexit
  %indvars.iv52 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next53, %.loopexit ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv52
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !296  ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 392 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !746
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  br i1 %i.j, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !315  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !316
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 268
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 372
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !279  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load float, ptr %i.x, align 8, !tbaa !267
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !229
  %i.ac = load float, ptr %i.r, align 8, !tbaa !229
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.ae = load float, ptr %i.q, align 8, !tbaa !229 ; 2 uses
  %i.af = load float, ptr %i.u, align 8, !tbaa !229
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ad, align 4, !tbaa !229 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.s, align 4, !tbaa !229 ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ak = insertelement <2 x float> %i.aj, float %i.ab, i64 1
  %i.al = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.am = insertelement <2 x float> %i.al, float %i.ac, i64 1
  %i.an = fsub <2 x float> %i.ak, %i.am           ; 2 uses
  %i.ao = fsub <2 x float> %i.ah, %i.ai           ; 2 uses
  %i.ap = load <2 x float>, ptr %i.t, align 4, !tbaa !229 ; 3 uses
  %i.aq = fneg <2 x float> %i.ao
  %i.ar = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.as = insertelement <2 x float> %i.ar, float %i.ae, i64 1
  %i.at = fmul <2 x float> %i.as, %i.aq
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.an, <2 x float> %i.at)
  %i.av = extractelement <2 x float> %i.an, i64 1
  %i.aw = fneg float %i.av
  %i.ax = extractelement <2 x float> %i.ap, i64 0
  %i.ay = fmul float %i.ax, %i.aw
  %i.az = extractelement <2 x float> %i.ao, i64 0
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.az, float %i.ay)
  %i.bb = load <2 x float>, ptr %i.p, align 8, !tbaa !229
  %i.bc = fadd <2 x float> %i.bb, %i.au           ; 3 uses
  %i.bd = fadd float %i.ba, %i.af                 ; 2 uses
  %i.be = load <2 x float>, ptr %i.ag, align 8, !tbaa !229 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !229 ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bc, <2 x float> %i.be, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bi = fmul <2 x float> %i.bh, %i.bh
  %i.bj = shufflevector <2 x float> %i.bc, <2 x float> %i.be, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bj, <2 x float> %i.bi)
  %i.bl = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bg, i64 1 ; 2 uses
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bm, <2 x float> %i.bk) ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  %i.bp = extractelement <2 x float> %i.bn, i64 1
  %i.bq = fcmp ugt float %i.bo, %i.bp
  br i1 %i.bq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = fsub <2 x float> %i.bc, %i.be
  %i.bs = fsub float %i.bd, %i.bg
  %i.bt = load float, ptr %i.h, align 8, !tbaa !229 ; 2 uses
  %i.bu = fmul float %i.bs, %i.bt
  %i.bv = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.br, %i.bw
  %i.by = fadd <2 x float> %i.be, %i.bx
  store <2 x float> %i.by, ptr %i.ag, align 8, !tbaa !229
end_hunk_1
