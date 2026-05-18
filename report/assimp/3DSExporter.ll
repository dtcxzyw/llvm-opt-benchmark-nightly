inline.NumInlined: 779
inline.NumDeleted: 370
begin_hunk_0_@_ZN6Assimp12_GLOBAL__N_113CollectTrafosEPK6aiNodeRSt3mapIS3_12aiMatrix4x4tIfESt4lessIS3_ESaISt4pairIKS3_S6_EEE:bb.a
  %i.z = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> zeroinitializer
  %i.aa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.z, <4 x float> %i.y)
  %i.ab = load <4 x float>, ptr %i.t, align 4     ; 4 uses
  %i.ac = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ad = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.ac, <4 x float> %i.aa)
  %i.ae = load <4 x float>, ptr %i.u, align 4     ; 4 uses
  %i.af = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ag = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.af, <4 x float> %i.ad)
  %i.ah = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ai = fmul <4 x float> %i.ah, %i.w
  %i.aj = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ak = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.aj, <4 x float> %i.ai)
  %i.al = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.am = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.al, <4 x float> %i.ak)
  %i.an = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.ao = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.an, <4 x float> %i.am)
  %i.ap = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.aq = fmul <4 x float> %i.ap, %i.w
  %i.ar = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.as = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.ar, <4 x float> %i.aq)
  %i.at = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.au = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.at, <4 x float> %i.as)
  %i.av = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %i.aw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.av, <4 x float> %i.au)
  %i.ax = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.ay = fmul <4 x float> %i.ax, %i.w
  %i.az = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.ba = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.az, <4 x float> %i.ay)
  %i.bb = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.bc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.bb, <4 x float> %i.ba)
  %i.bd = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.be = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.bd, <4 x float> %i.bc)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not10.i.i.i.i6 = icmp eq ptr %i.bg, null
  br i1 %.not10.i.i.i.i6, label %.critedge.i17, label %.lr.ph.i.i.i.i7

.lr.ph.i.i.i.i7:                                  ; preds = %bb.d, %.lr.ph.i.i.i.i7
  %.012.i.i.i.i8 = phi ptr [ %.1.i.i.i.i13, %.lr.ph.i.i.i.i7 ], [ %i.bg, %bb.d ] ; 3 uses
  %.0811.i.i.i.i9 = phi ptr [ %.19.i.i.i.i10, %.lr.ph.i.i.i.i7 ], [ %i.bh, %bb.d ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i8, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp ult ptr %i.bj, %0                  ; 2 uses
  %.19.i.i.i.i10 = select i1 %i.bk, ptr %.0811.i.i.i.i9, ptr %.012.i.i.i.i8 ; 6 uses
  %.1.in.v.i.i.i.i11 = select i1 %i.bk, i64 24, i64 16
  %.1.in.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i8, i64 %.1.in.v.i.i.i.i11
  %.1.i.i.i.i13 = load ptr, ptr %.1.in.i.i.i.i12, align 8 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.1.i.i.i.i13, null
  br i1 %.not.i.i.i.i14, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15, label %.lr.ph.i.i.i.i7, !llvm.loop !7

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15: ; preds = %.lr.ph.i.i.i.i7
  %i.bl = icmp eq ptr %.19.i.i.i.i10, %i.bh
  br i1 %i.bl, label %.critedge.i17, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15
  %i.bm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i10, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp ult ptr %0, %i.bn
  br i1 %i.bo, label %.critedge.i17, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19

.critedge.i17:                                    ; preds = %bb.e, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15, %bb.d
  %.08.lcssa.i.i.i11.i18 = phi ptr [ %.19.i.i.i.i10, %bb.e ], [ %.19.i.i.i.i10, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15 ], [ %i.bh, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %i.a, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.bp = call ptr @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i11.i18, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19: ; preds = %bb.e, %.critedge.i17
  %.sroa.06.0.i16 = phi ptr [ %i.bp, %.critedge.i17 ], [ %.19.i.i.i.i10, %bb.e ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i16, i64 40
  store <4 x float> %i.ag, ptr %i.bq, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i16, i64 56
  store <4 x float> %i.ao, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i16, i64 72
  store <4 x float> %i.aw, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i16, i64 88
  store <4 x float> %i.be, ptr %.sroa.28.0..sroa_idx, align 4
  %i.br = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1104
  %i.bt = load i32, ptr %i.bs, align 8
  %.not60 = icmp eq i32 %i.bt, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19
  ret void

.lr.ph:                                           ; preds = %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19 ] ; 2 uses
  %i.bu = phi ptr [ %i.bz, %.lr.ph ], [ %i.br, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1112
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = load ptr, ptr %i.bx, align 8
  call fastcc void @_ZN6Assimp12_GLOBAL__N_113CollectTrafosEPK6aiNodeRSt3mapIS3_12aiMatrix4x4tIfESt4lessIS3_ESaISt4pairIKS3_S6_EEE(ptr noundef %i.by, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1104
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = zext i32 %i.cb to i64
  %i.cd = icmp samesign ult i64 %indvars.iv.next, %i.cc
  br i1 %i.cd, label %.lr.ph, label %._crit_edge, !llvm.loop !9
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6Assimp12_GLOBAL__N_113CollectMeshesEPK6aiNodeRSt8multimapIS3_jSt4lessIS3_ESaISt4pairIKS3_jEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not15 = icmp eq i32 %i.h, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph14

.lr.ph14:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1112
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 %i.l, ptr %i.o, align 8
  %.078.i.i.i = load ptr, ptr %i.d, align 8       ; 2 uses
  %.not9.i.i.i = icmp eq ptr %.078.i.i.i, null
  br i1 %.not9.i.i.i, label %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.0710.i.i.i = phi ptr [ %.07.i.i.i, %.lr.ph.i.i.i ], [ %.078.i.i.i, %bb.b ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp ult ptr %0, %i.q                    ; 2 uses
  %.in.v.i.i.i = select i1 %i.r, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 %.in.v.i.i.i
  %.07.i.i.i = load ptr, ptr %.in.i.i.i, align 8  ; 2 uses
  %.not.i.i.i = icmp eq ptr %.07.i.i.i, null
  br i1 %.not.i.i.i, label %bb.c, label %.lr.ph.i.i.i, !llvm.loop !10

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.s = icmp eq ptr %.0710.i.i.i, %i.e
  %spec.select.i.i = or i1 %i.s, %i.r
  br label %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit

_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit: ; preds = %bb.b, %bb.c
  %.0.lcssa.i15.i.i = phi ptr [ %i.e, %bb.b ], [ %.0710.i.i.i, %bb.c ]
  %i.t = phi i1 [ true, %bb.b ], [ %spec.select.i.i, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.m, ptr noundef nonnull %.0.lcssa.i15.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #21
  %i.u = load i64, ptr %i.f, align 8
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.f, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.a, align 8
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.b, label %.preheader, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.d, %.preheader
  ret void

bb.d:                                             ; preds = %.lr.ph14, %bb.d
  %indvars.iv17 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next18, %bb.d ] ; 2 uses
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv17
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call fastcc void @_ZN6Assimp12_GLOBAL__N_113CollectMeshesEPK6aiNodeRSt8multimapIS3_jSt4lessIS3_ESaISt4pairIKS3_jEEE(ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.ac = load i32, ptr %i.g, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next18, %i.ad
  br i1 %i.ae, label %bb.d, label %._crit_edge, !llvm.loop !12
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSExporter14WriteMaterialsEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %class.aiColor4t, align 8           ; 7 uses
  %2 = alloca %class.aiColor4t, align 8           ; 7 uses
  %3 = alloca %class.aiColor4t, align 8           ; 7 uses
  %4 = alloca %class.aiColor4t, align 8           ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %struct.aiColor3D, align 16         ; 13 uses
  %i.b = alloca float, align 4                    ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 130 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 111 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 39 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %i.g, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit293, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit293
  %i.r = phi i64 [ %.pre, %.lr.ph ], [ %i.vz, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit293 ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit293 ] ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 4 uses
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %.not.i.i.i = icmp ult i64 %i.s, %i.x
  br i1 %.not.i.i.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.s)
  %.pre.i.i.i = load i64, ptr %i.g, align 8
  %.pre2.i.i.i = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i: ; preds = %bb.c, %bb.b
  %i.y = phi ptr [ %.pre2.i.i.i, %bb.c ], [ %i.u, %bb.b ]
  %i.z = phi i64 [ %.pre.i.i.i, %bb.c ], [ %i.r, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  store i16 -20481, ptr %i.aa, align 1
  %i.ab = load i64, ptr %i.g, align 8             ; 2 uses
  %i.ac = add i64 %i.ab, 2                        ; 2 uses
  store i64 %i.ac, ptr %i.g, align 8
  %i.ad = add i64 %i.ab, 6                        ; 2 uses
  %i.ae = load ptr, ptr %i.i, align 8
  %i.af = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.not.i.i5.i = icmp ult i64 %i.ad, %i.ai
  br i1 %.not.i.i5.i, label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ad)
  %.pre.i.i6.i = load i64, ptr %i.g, align 8
  %.pre2.i.i7.i = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit

_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit: ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i, %bb.d
  %i.aj = phi ptr [ %.pre2.i.i7.i, %bb.d ], [ %i.af, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i ]
  %i.ak = phi i64 [ %.pre.i.i6.i, %bb.d ], [ %i.ac, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i32 -559038737, ptr %i.al, align 1
  %i.am = load i64, ptr %i.g, align 8             ; 3 uses
  %i.an = add i64 %i.am, 4                        ; 4 uses
  store i64 %i.an, ptr %i.g, align 8
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8            ; 18 uses
  %i.at = add i64 %i.am, 6                        ; 4 uses
  %i.au = load ptr, ptr %i.i, align 8
  %i.av = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %.not.i.i.i114 = icmp ult i64 %i.at, %i.ay
  br i1 %.not.i.i.i114, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.at)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.e
  %.pre.i.i.i115 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i116 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117: ; preds = %.noexc, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit
  %i.az = phi ptr [ %.pre2.i.i.i116, %.noexc ], [ %i.av, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit ]
  %i.ba = phi i64 [ %.pre.i.i.i115, %.noexc ], [ %i.an, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterC2ERNS_12StreamWriterILb0ELb0EEEt.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  store i16 -24576, ptr %i.bb, align 1
  %i.bc = load i64, ptr %i.g, align 8             ; 2 uses
  %i.bd = add i64 %i.bc, 2                        ; 2 uses
  store i64 %i.bd, ptr %i.g, align 8
  %i.be = add i64 %i.bc, 6                        ; 2 uses
  %i.bf = load ptr, ptr %i.i, align 8
  %i.bg = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %.not.i.i5.i118 = icmp ult i64 %i.be, %i.bj
  br i1 %.not.i.i5.i118, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.be)
          to label %.noexc121 unwind label %bb.ae

.noexc121:                                        ; preds = %bb.f
  %.pre.i.i6.i119 = load i64, ptr %i.g, align 8
  %.pre2.i.i7.i120 = load ptr, ptr %i.h, align 8
  br label %bb.g

bb.g:                                             ; preds = %.noexc121, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117
  %i.bk = phi ptr [ %.pre2.i.i7.i120, %.noexc121 ], [ %i.bg, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117 ]
  %i.bl = phi i64 [ %.pre.i.i6.i119, %.noexc121 ], [ %i.bd, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i117 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  store i32 -559038737, ptr %i.bm, align 1
  %i.bn = load i64, ptr %i.g, align 8
  %i.bo = add i64 %i.bn, 4
  store i64 %i.bo, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bp = trunc nuw i64 %indvars.iv to i32
  invoke fastcc void @_ZN6Assimp12_GLOBAL__N_115GetMaterialNameB5cxx11ERK10aiMaterialj(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i32 noundef %i.bp)
          to label %bb.h unwind label %bb.af

bb.h:                                             ; preds = %bb.g
  %i.bq = load i64, ptr %i.j, align 8
  %.not10.i = icmp samesign eq i64 %i.bq, 0
  br i1 %.not10.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.h
  %.pre12.i = load i64, ptr %i.g, align 8
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.br = load ptr, ptr %5, align 8
  %.pre.i = load i64, ptr %i.g, align 8
  br label %bb.j

._crit_edge.i:                                    ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, %.._crit_edge_crit_edge.i
  %i.bs = phi i64 [ %.pre12.i, %.._crit_edge_crit_edge.i ], [ %i.di, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %i.bt = add i64 %i.bs, 1                        ; 2 uses
  %i.bu = load ptr, ptr %i.i, align 8
  %i.bv = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %.not.i.i.i123 = icmp ult i64 %i.bt, %i.by
  br i1 %.not.i.i.i123, label %bb.t, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.bt)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit

.noexc126:                                        ; preds = %bb.i
  %.pre.i.i.i124 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i125 = load ptr, ptr %i.h, align 8
  br label %bb.t

bb.j:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, %.lr.ph.i
  %i.bz = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.di, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %.sroa.07.011.i = phi ptr [ %i.br, %.lr.ph.i ], [ %i.dj, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %i.ca = load i8, ptr %.sroa.07.011.i, align 1
  %i.cb = add i64 %i.bz, 1                        ; 4 uses
  %i.cc = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.cd = load ptr, ptr %i.h, align 8             ; 7 uses
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 9 uses
  %.not.i.i3.i = icmp ult i64 %i.cb, %i.cg
  br i1 %.not.i.i3.i, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = icmp ugt i64 %i.cb, %i.cg
  br i1 %i.ch, label %bb.l, label %.noexc127

bb.l:                                             ; preds = %bb.k
  %i.ci = sub nuw i64 %i.cb, %i.cg                ; 6 uses
  %i.cj = load ptr, ptr %i.k, align 8
  %i.ck = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cl = sub i64 %i.ck, %i.ce                    ; 2 uses
  %i.cm = icmp sgt i64 %i.cg, -1
  call void @llvm.assume(i1 %i.cm)
  %i.cn = xor i64 %i.cg, 9223372036854775807      ; 2 uses
  %i.co = icmp ule i64 %i.cl, %i.cn
  call void @llvm.assume(i1 %i.co)
  %.not28.i.i = icmp ult i64 %i.cl, %i.ci
  br i1 %.not28.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.cc, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %i.cq = add nsw i64 %i.ci, -1                   ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.ci
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cp, i8 0, i64 %i.cq, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi ptr [ %i.cs, %bb.n ], [ %i.cp, %bb.m ]
  store ptr %.0.i.i.i.i.i, ptr %i.i, align 8
  %.pre2.i.i5.i.pre = load ptr, ptr %i.h, align 8
  br label %.noexc127

bb.o:                                             ; preds = %bb.l
  %i.ct = icmp ult i64 %i.cn, %i.ci
  br i1 %i.ct, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
          to label %.noexc294 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc294:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.ci)
  %i.cu = add nuw i64 %.sroa.speculated.i.i.i, %i.cg
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cu, i64 9223372036854775807) ; 2 uses
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #22
          to label %.noexc295 unwind label %.loopexit ; 6 uses

.noexc295:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cg ; 2 uses
  store i8 0, ptr %i.cx, align 1
  %i.cy = add nsw i64 %i.ci, -1                   ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc295
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.da, i8 0, i64 %i.cy, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.q, %.noexc295
  %.not35.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not35.i.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr align 1 %i.cd, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.r, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  %.not.i33.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i33.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.db = sub i64 %i.ck, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.db) #25
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  store ptr %i.cw, ptr %i.h, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cb
  store ptr %i.dc, ptr %i.i, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  store ptr %i.dd, ptr %i.k, align 8
  br label %.noexc127

.noexc127:                                        ; preds = %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i
  %.pre2.i.i5.i = phi ptr [ %.pre2.i.i5.i.pre, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i ], [ %i.cw, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i ], [ %i.cd, %bb.k ]
  %.pre.i.i4.i = load i64, ptr %i.g, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i

_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i: ; preds = %.noexc127, %bb.j
  %i.de = phi ptr [ %.pre2.i.i5.i, %.noexc127 ], [ %i.cd, %bb.j ]
  %i.df = phi i64 [ %.pre.i.i4.i, %.noexc127 ], [ %i.bz, %bb.j ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df
  store i8 %i.ca, ptr %i.dg, align 1
  %i.dh = load i64, ptr %i.g, align 8
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  store i64 %i.di, ptr %i.g, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 1 ; 2 uses
  %i.dk = load ptr, ptr %5, align 8
  %i.dl = load i64, ptr %i.j, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl
  %.not.i = icmp eq ptr %i.dj, %i.dm
  br i1 %.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !13

bb.t:                                             ; preds = %.noexc126, %._crit_edge.i
  %i.dn = phi ptr [ %.pre2.i.i.i125, %.noexc126 ], [ %i.bv, %._crit_edge.i ]
  %i.do = phi i64 [ %.pre.i.i.i124, %.noexc126 ], [ %i.bs, %._crit_edge.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do
  store i8 0, ptr %i.dp, align 1
  %i.dq = load i64, ptr %i.g, align 8
  %i.dr = add i64 %i.dq, 1                        ; 2 uses
  store i64 %i.dr, ptr %i.g, align 8
  %i.ds = load ptr, ptr %5, align 8               ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.l
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.du = load i64, ptr %i.l, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #25
  %.pre622 = load i64, ptr %i.g, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dw = phi i64 [ %.pre622, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dr, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  store i64 %i.at, ptr %i.g, align 8
  %i.dx = add i64 %i.am, 10                       ; 2 uses
  %i.dy = load ptr, ptr %i.i, align 8
  %i.dz = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %.not.i.i.i128 = icmp ult i64 %i.dx, %i.ec
  br i1 %.not.i.i.i128, label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.dx)
          to label %.noexc.i unwind label %bb.v

.noexc.i:                                         ; preds = %bb.u
  %.pre.i.i.i129 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i130 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #24
  unreachable

_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc.i
  %i.ef = phi ptr [ %.pre2.i.i.i130, %.noexc.i ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.eg = phi i64 [ %.pre.i.i.i129, %.noexc.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.eh = sub i64 %i.dw, %i.an
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg
  store i32 %i.ei, ptr %i.ej, align 1
  store i64 %i.dw, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store <3 x float> zeroinitializer, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ek = invoke i32 @aiGetMaterialColor(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4)
          to label %.noexc131 unwind label %bb.ah

.noexc131:                                        ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc131
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ak

bb.x:                                             ; preds = %.noexc131
  %i.em = load float, ptr %i.n, align 8
  %i.en = load <2 x float>, ptr %4, align 8
  store <2 x float> %i.en, ptr %6, align 16
  store float %i.em, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.eo = load i64, ptr %i.g, align 8             ; 5 uses
  %i.ep = add i64 %i.eo, 2                        ; 4 uses
  %i.eq = load ptr, ptr %i.i, align 8
  %i.er = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %.not.i.i.i132 = icmp ult i64 %i.ep, %i.eu
  br i1 %.not.i.i.i132, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i135, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ep)
          to label %.noexc139 unwind label %bb.ai

.noexc139:                                        ; preds = %bb.y
  %.pre.i.i.i133 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i134 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i135

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i135: ; preds = %.noexc139, %bb.x
  %i.ev = phi ptr [ %.pre2.i.i.i134, %.noexc139 ], [ %i.er, %bb.x ]
  %i.ew = phi i64 [ %.pre.i.i.i133, %.noexc139 ], [ %i.eo, %bb.x ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew
  store i16 -24544, ptr %i.ex, align 1
  %i.ey = load i64, ptr %i.g, align 8             ; 2 uses
  %i.ez = add i64 %i.ey, 2                        ; 2 uses
  store i64 %i.ez, ptr %i.g, align 8
  %i.fa = add i64 %i.ey, 6                        ; 2 uses
  %i.fb = load ptr, ptr %i.i, align 8
  %i.fc = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %.not.i.i5.i136 = icmp ult i64 %i.fa, %i.ff
  br i1 %.not.i.i5.i136, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i135
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.fa)
          to label %.noexc140 unwind label %bb.ai

.noexc140:                                        ; preds = %bb.z
  %.pre.i.i6.i137 = load i64, ptr %i.g, align 8
  %.pre2.i.i7.i138 = load ptr, ptr %i.h, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc140, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i135
  %i.fg = phi ptr [ %.pre2.i.i7.i138, %.noexc140 ], [ %i.fc, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i135 ]
  %i.fh = phi i64 [ %.pre.i.i6.i137, %.noexc140 ], [ %i.ez, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i135 ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh
  store i32 -559038737, ptr %i.fi, align 1
  %i.fj = load i64, ptr %i.g, align 8
  %i.fk = add i64 %i.fj, 4
  store i64 %i.fk, ptr %i.g, align 8
  invoke void @_ZN6Assimp19Discreet3DSExporter10WriteColorERK9aiColor3D(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(12) %6)
          to label %bb.ab unwind label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.fl = load i64, ptr %i.g, align 8             ; 2 uses
  store i64 %i.ep, ptr %i.g, align 8
  %i.fm = add i64 %i.eo, 6                        ; 2 uses
  %i.fn = load ptr, ptr %i.i, align 8
  %i.fo = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %.not.i.i.i142 = icmp ult i64 %i.fm, %i.fr
  br i1 %.not.i.i.i142, label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit146, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.fm)
          to label %.noexc.i143 unwind label %bb.ad

.noexc.i143:                                      ; preds = %bb.ac
  %.pre.i.i.i144 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i145 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit146

bb.ad:                                            ; preds = %bb.ac
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #24
  unreachable

_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit146: ; preds = %bb.ab, %.noexc.i143
  %i.fu = phi ptr [ %.pre2.i.i.i145, %.noexc.i143 ], [ %i.fo, %bb.ab ]
  %i.fv = phi i64 [ %.pre.i.i.i144, %.noexc.i143 ], [ %i.ep, %bb.ab ]
  %i.fw = sub i64 %i.fl, %i.eo
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv
  store i32 %i.fx, ptr %i.fy, align 1
  store i64 %i.fl, ptr %i.g, align 8
  br label %bb.ak

bb.ae:                                            ; preds = %bb.f, %bb.e
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.em

bb.af:                                            ; preds = %bb.g
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.i
  %lpad.loopexit334 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.p
  %lpad.loopexit.split-lp335 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit334, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp335, %.loopexit.split-lp.loopexit.split-lp ]
  %i.gc = load ptr, ptr %5, align 8               ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.l
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %.loopexit.split-lp
  %i.ge = load i64, ptr %i.l, align 8
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %bb.af
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.gb, %bb.af ]
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call fastcc void @_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev(ptr nonnull %i.gg, i64 %i.an) #21
  br label %bb.em

bb.ah:                                            ; preds = %bb.av, %bb.ak, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.el

bb.ai:                                            ; preds = %bb.z, %bb.y
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.el

bb.aj:                                            ; preds = %bb.aa
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call fastcc void @_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev(ptr nonnull %i.gm, i64 %i.eo) #21
  br label %bb.el

bb.ak:                                            ; preds = %bb.w, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.gn = invoke i32 @aiGetMaterialColor(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3)
          to label %.noexc150 unwind label %bb.ah

.noexc150:                                        ; preds = %bb.ak
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc150
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.av

bb.am:                                            ; preds = %.noexc150
  %i.gp = load float, ptr %i.o, align 8
  %i.gq = load <2 x float>, ptr %3, align 8
  store <2 x float> %i.gq, ptr %6, align 16
  store float %i.gp, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.gr = load i64, ptr %i.g, align 8             ; 5 uses
  %i.gs = add i64 %i.gr, 2                        ; 4 uses
  %i.gt = load ptr, ptr %i.i, align 8
  %i.gu = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %.not.i.i.i152 = icmp ult i64 %i.gs, %i.gx
  br i1 %.not.i.i.i152, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i155, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.gs)
          to label %.noexc159 unwind label %bb.at

.noexc159:                                        ; preds = %bb.an
  %.pre.i.i.i153 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i154 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i155

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i155: ; preds = %.noexc159, %bb.am
  %i.gy = phi ptr [ %.pre2.i.i.i154, %.noexc159 ], [ %i.gu, %bb.am ]
  %i.gz = phi i64 [ %.pre.i.i.i153, %.noexc159 ], [ %i.gr, %bb.am ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gz
  store i16 -24528, ptr %i.ha, align 1
  %i.hb = load i64, ptr %i.g, align 8             ; 2 uses
  %i.hc = add i64 %i.hb, 2                        ; 2 uses
  store i64 %i.hc, ptr %i.g, align 8
  %i.hd = add i64 %i.hb, 6                        ; 2 uses
  %i.he = load ptr, ptr %i.i, align 8
  %i.hf = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %.not.i.i5.i156 = icmp ult i64 %i.hd, %i.hi
  br i1 %.not.i.i5.i156, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i155
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.hd)
          to label %.noexc160 unwind label %bb.at

.noexc160:                                        ; preds = %bb.ao
  %.pre.i.i6.i157 = load i64, ptr %i.g, align 8
  %.pre2.i.i7.i158 = load ptr, ptr %i.h, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc160, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i155
  %i.hj = phi ptr [ %.pre2.i.i7.i158, %.noexc160 ], [ %i.hf, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i155 ]
  %i.hk = phi i64 [ %.pre.i.i6.i157, %.noexc160 ], [ %i.hc, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i155 ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hk
  store i32 -559038737, ptr %i.hl, align 1
  %i.hm = load i64, ptr %i.g, align 8
  %i.hn = add i64 %i.hm, 4
  store i64 %i.hn, ptr %i.g, align 8
  invoke void @_ZN6Assimp19Discreet3DSExporter10WriteColorERK9aiColor3D(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(12) %6)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.ho = load i64, ptr %i.g, align 8             ; 2 uses
  store i64 %i.gs, ptr %i.g, align 8
  %i.hp = add i64 %i.gr, 6                        ; 2 uses
  %i.hq = load ptr, ptr %i.i, align 8
  %i.hr = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %.not.i.i.i162 = icmp ult i64 %i.hp, %i.hu
  br i1 %.not.i.i.i162, label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit166, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.hp)
          to label %.noexc.i163 unwind label %bb.as

.noexc.i163:                                      ; preds = %bb.ar
  %.pre.i.i.i164 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i165 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit166

bb.as:                                            ; preds = %bb.ar
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #24
  unreachable

_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit166: ; preds = %bb.aq, %.noexc.i163
  %i.hx = phi ptr [ %.pre2.i.i.i165, %.noexc.i163 ], [ %i.hr, %bb.aq ]
  %i.hy = phi i64 [ %.pre.i.i.i164, %.noexc.i163 ], [ %i.gs, %bb.aq ]
  %i.hz = sub i64 %i.ho, %i.gr
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hy
  store i32 %i.ia, ptr %i.ib, align 1
  store i64 %i.ho, ptr %i.g, align 8
  br label %bb.av

bb.at:                                            ; preds = %bb.ao, %bb.an
  %i.ic = landingpad { ptr, i32 }
          cleanup
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.el

bb.au:                                            ; preds = %bb.ap
  %i.ie = landingpad { ptr, i32 }
          cleanup
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call fastcc void @_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev(ptr nonnull %i.if, i64 %i.gr) #21
  br label %bb.el

bb.av:                                            ; preds = %bb.al, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit166
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ig = invoke i32 @aiGetMaterialColor(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2)
          to label %.noexc167 unwind label %bb.ah

.noexc167:                                        ; preds = %bb.av
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.noexc167
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.bg

bb.ax:                                            ; preds = %.noexc167
  %i.ii = load float, ptr %i.p, align 8
  %i.ij = load <2 x float>, ptr %2, align 8
  store <2 x float> %i.ij, ptr %6, align 16
  store float %i.ii, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ik = load i64, ptr %i.g, align 8             ; 5 uses
  %i.il = add i64 %i.ik, 2                        ; 4 uses
  %i.im = load ptr, ptr %i.i, align 8
  %i.in = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  %.not.i.i.i169 = icmp ult i64 %i.il, %i.iq
  br i1 %.not.i.i.i169, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i172, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.il)
          to label %.noexc176 unwind label %bb.be

.noexc176:                                        ; preds = %bb.ay
  %.pre.i.i.i170 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i171 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i172

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i172: ; preds = %.noexc176, %bb.ax
  %i.ir = phi ptr [ %.pre2.i.i.i171, %.noexc176 ], [ %i.in, %bb.ax ]
  %i.is = phi i64 [ %.pre.i.i.i170, %.noexc176 ], [ %i.ik, %bb.ax ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.is
  store i16 -24560, ptr %i.it, align 1
  %i.iu = load i64, ptr %i.g, align 8             ; 2 uses
  %i.iv = add i64 %i.iu, 2                        ; 2 uses
  store i64 %i.iv, ptr %i.g, align 8
  %i.iw = add i64 %i.iu, 6                        ; 2 uses
  %i.ix = load ptr, ptr %i.i, align 8
  %i.iy = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %.not.i.i5.i173 = icmp ult i64 %i.iw, %i.jb
  br i1 %.not.i.i5.i173, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i172
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.iw)
          to label %.noexc177 unwind label %bb.be

.noexc177:                                        ; preds = %bb.az
  %.pre.i.i6.i174 = load i64, ptr %i.g, align 8
  %.pre2.i.i7.i175 = load ptr, ptr %i.h, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %.noexc177, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i172
  %i.jc = phi ptr [ %.pre2.i.i7.i175, %.noexc177 ], [ %i.iy, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i172 ]
  %i.jd = phi i64 [ %.pre.i.i6.i174, %.noexc177 ], [ %i.iv, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i172 ]
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jd
  store i32 -559038737, ptr %i.je, align 1
  %i.jf = load i64, ptr %i.g, align 8
  %i.jg = add i64 %i.jf, 4
  store i64 %i.jg, ptr %i.g, align 8
  invoke void @_ZN6Assimp19Discreet3DSExporter10WriteColorERK9aiColor3D(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(12) %6)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.jh = load i64, ptr %i.g, align 8             ; 2 uses
  store i64 %i.il, ptr %i.g, align 8
  %i.ji = add i64 %i.ik, 6                        ; 2 uses
  %i.jj = load ptr, ptr %i.i, align 8
  %i.jk = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %.not.i.i.i179 = icmp ult i64 %i.ji, %i.jn
  br i1 %.not.i.i.i179, label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit183, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ji)
          to label %.noexc.i180 unwind label %bb.bd

.noexc.i180:                                      ; preds = %bb.bc
  %.pre.i.i.i181 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i182 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit183

bb.bd:                                            ; preds = %bb.bc
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  %i.jp = extractvalue { ptr, i32 } %i.jo, 0
  call void @__clang_call_terminate(ptr %i.jp) #24
  unreachable

_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit183: ; preds = %bb.bb, %.noexc.i180
  %i.jq = phi ptr [ %.pre2.i.i.i182, %.noexc.i180 ], [ %i.jk, %bb.bb ]
  %i.jr = phi i64 [ %.pre.i.i.i181, %.noexc.i180 ], [ %i.il, %bb.bb ]
  %i.js = sub i64 %i.jh, %i.ik
  %i.jt = trunc i64 %i.js to i32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jr
  store i32 %i.jt, ptr %i.ju, align 1
  store i64 %i.jh, ptr %i.g, align 8
  br label %bb.bg

bb.be:                                            ; preds = %bb.az, %bb.ay
  %i.jv = landingpad { ptr, i32 }
          cleanup
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.el

bb.bf:                                            ; preds = %bb.ba
  %i.jx = landingpad { ptr, i32 }
          cleanup
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call fastcc void @_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev(ptr nonnull %i.jy, i64 %i.ik) #21
  br label %bb.el

bb.bg:                                            ; preds = %bb.aw, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.jz = invoke noundef i32 @aiGetMaterialFloatArray(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef null)
          to label %_ZNK10aiMaterial3GetEPKcjjRf.exit unwind label %bb.bo

_ZNK10aiMaterial3GetEPKcjjRf.exit:                ; preds = %bb.bg
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.bh, label %bb.br

bb.bh:                                            ; preds = %_ZNK10aiMaterial3GetEPKcjjRf.exit
  %i.kb = load i64, ptr %i.g, align 8             ; 5 uses
  %i.kc = add i64 %i.kb, 2                        ; 4 uses
  %i.kd = load ptr, ptr %i.i, align 8
  %i.ke = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %.not.i.i.i185 = icmp ult i64 %i.kc, %i.kh
  br i1 %.not.i.i.i185, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i188, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.kc)
          to label %.noexc192 unwind label %bb.bp

.noexc192:                                        ; preds = %bb.bi
  %.pre.i.i.i186 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i187 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i188

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i188: ; preds = %.noexc192, %bb.bh
  %i.ki = phi ptr [ %.pre2.i.i.i187, %.noexc192 ], [ %i.ke, %bb.bh ]
  %i.kj = phi i64 [ %.pre.i.i.i186, %.noexc192 ], [ %i.kb, %bb.bh ]
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kj
  store i16 -24496, ptr %i.kk, align 1
  %i.kl = load i64, ptr %i.g, align 8             ; 2 uses
  %i.km = add i64 %i.kl, 2                        ; 2 uses
  store i64 %i.km, ptr %i.g, align 8
  %i.kn = add i64 %i.kl, 6                        ; 2 uses
  %i.ko = load ptr, ptr %i.i, align 8
  %i.kp = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %.not.i.i5.i189 = icmp ult i64 %i.kn, %i.ks
  br i1 %.not.i.i5.i189, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i188
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.kn)
          to label %.noexc193 unwind label %bb.bp

.noexc193:                                        ; preds = %bb.bj
  %.pre.i.i6.i190 = load i64, ptr %i.g, align 8
  %.pre2.i.i7.i191 = load ptr, ptr %i.h, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc193, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i188
  %i.kt = phi ptr [ %.pre2.i.i7.i191, %.noexc193 ], [ %i.kp, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i188 ]
  %i.ku = phi i64 [ %.pre.i.i6.i190, %.noexc193 ], [ %i.km, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i188 ]
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ku
  store i32 -559038737, ptr %i.kv, align 1
  %i.kw = load i64, ptr %i.g, align 8
  %i.kx = add i64 %i.kw, 4
  store i64 %i.kx, ptr %i.g, align 8
  %i.ky = load float, ptr %i.b, align 4
  %i.kz = fsub float 1.000000e+00, %i.ky
  invoke void @_ZN6Assimp19Discreet3DSExporter17WritePercentChunkEf(ptr noundef nonnull align 8 dereferenceable(160) %0, float noundef %i.kz)
          to label %bb.bl unwind label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  %i.la = load i64, ptr %i.g, align 8             ; 2 uses
  store i64 %i.kc, ptr %i.g, align 8
  %i.lb = add i64 %i.kb, 6                        ; 2 uses
  %i.lc = load ptr, ptr %i.i, align 8
  %i.ld = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = sub i64 %i.le, %i.lf
  %.not.i.i.i195 = icmp ult i64 %i.lb, %i.lg
  br i1 %.not.i.i.i195, label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit199, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.lb)
          to label %.noexc.i196 unwind label %bb.bn

.noexc.i196:                                      ; preds = %bb.bm
  %.pre.i.i.i197 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i198 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit199

bb.bn:                                            ; preds = %bb.bm
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #24
  unreachable

_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit199: ; preds = %bb.bl, %.noexc.i196
  %i.lj = phi ptr [ %.pre2.i.i.i198, %.noexc.i196 ], [ %i.ld, %bb.bl ]
  %i.lk = phi i64 [ %.pre.i.i.i197, %.noexc.i196 ], [ %i.kc, %bb.bl ]
  %i.ll = sub i64 %i.la, %i.kb
  %i.lm = trunc i64 %i.ll to i32
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lk
  store i32 %i.lm, ptr %i.ln, align 1
  store i64 %i.la, ptr %i.g, align 8
  br label %bb.br

bb.bo:                                            ; preds = %bb.db, %bb.cr, %bb.br, %bb.bg, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.dz, %bb.dx
  %i.lo = landingpad { ptr, i32 }
          cleanup
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ek

bb.bp:                                            ; preds = %bb.bj, %bb.bi
  %i.lq = landingpad { ptr, i32 }
          cleanup
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ek

bb.bq:                                            ; preds = %bb.bk
  %i.ls = landingpad { ptr, i32 }
          cleanup
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call fastcc void @_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev(ptr nonnull %i.lt, i64 %i.kb) #21
  br label %bb.ek

bb.br:                                            ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit199, %_ZNK10aiMaterial3GetEPKcjjRf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.lu = invoke i32 @aiGetMaterialColor(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1)
          to label %.noexc200 unwind label %bb.bo

.noexc200:                                        ; preds = %bb.br
  %i.lv = icmp eq i32 %i.lu, 0
  br i1 %i.lv, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.noexc200
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.cc

bb.bt:                                            ; preds = %.noexc200
  %i.lw = load float, ptr %i.q, align 8
  %i.lx = load <2 x float>, ptr %1, align 8
  store <2 x float> %i.lx, ptr %6, align 16
  store float %i.lw, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.ly = load i64, ptr %i.g, align 8             ; 5 uses
  %i.lz = add i64 %i.ly, 2                        ; 4 uses
  %i.ma = load ptr, ptr %i.i, align 8
  %i.mb = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md
  %.not.i.i.i202 = icmp ult i64 %i.lz, %i.me
  br i1 %.not.i.i.i202, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i205, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.lz)
          to label %.noexc209 unwind label %bb.ca

.noexc209:                                        ; preds = %bb.bu
  %.pre.i.i.i203 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i204 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i205

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i205: ; preds = %.noexc209, %bb.bt
  %i.mf = phi ptr [ %.pre2.i.i.i204, %.noexc209 ], [ %i.mb, %bb.bt ]
  %i.mg = phi i64 [ %.pre.i.i.i203, %.noexc209 ], [ %i.ly, %bb.bt ]
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mg
  store i16 -24448, ptr %i.mh, align 1
  %i.mi = load i64, ptr %i.g, align 8             ; 2 uses
  %i.mj = add i64 %i.mi, 2                        ; 2 uses
  store i64 %i.mj, ptr %i.g, align 8
  %i.mk = add i64 %i.mi, 6                        ; 2 uses
  %i.ml = load ptr, ptr %i.i, align 8
  %i.mm = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %.not.i.i5.i206 = icmp ult i64 %i.mk, %i.mp
  br i1 %.not.i.i5.i206, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i205
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.mk)
          to label %.noexc210 unwind label %bb.ca

.noexc210:                                        ; preds = %bb.bv
  %.pre.i.i6.i207 = load i64, ptr %i.g, align 8
  %.pre2.i.i7.i208 = load ptr, ptr %i.h, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %.noexc210, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i205
  %i.mq = phi ptr [ %.pre2.i.i7.i208, %.noexc210 ], [ %i.mm, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i205 ]
  %i.mr = phi i64 [ %.pre.i.i6.i207, %.noexc210 ], [ %i.mj, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i205 ]
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mr
  store i32 -559038737, ptr %i.ms, align 1
  %i.mt = load i64, ptr %i.g, align 8
  %i.mu = add i64 %i.mt, 4
  store i64 %i.mu, ptr %i.g, align 8
  invoke void @_ZN6Assimp19Discreet3DSExporter10WriteColorERK9aiColor3D(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(12) %6)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.mv = load i64, ptr %i.g, align 8             ; 2 uses
  store i64 %i.lz, ptr %i.g, align 8
  %i.mw = add i64 %i.ly, 6                        ; 2 uses
  %i.mx = load ptr, ptr %i.i, align 8
  %i.my = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = sub i64 %i.mz, %i.na
  %.not.i.i.i212 = icmp ult i64 %i.mw, %i.nb
  br i1 %.not.i.i.i212, label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit216, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.mw)
          to label %.noexc.i213 unwind label %bb.bz

.noexc.i213:                                      ; preds = %bb.by
  %.pre.i.i.i214 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i215 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit216

bb.bz:                                            ; preds = %bb.by
  %i.nc = landingpad { ptr, i32 }
          catch ptr null
  %i.nd = extractvalue { ptr, i32 } %i.nc, 0
  call void @__clang_call_terminate(ptr %i.nd) #24
  unreachable

_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit216: ; preds = %bb.bx, %.noexc.i213
  %i.ne = phi ptr [ %.pre2.i.i.i215, %.noexc.i213 ], [ %i.my, %bb.bx ]
  %i.nf = phi i64 [ %.pre.i.i.i214, %.noexc.i213 ], [ %i.lz, %bb.bx ]
  %i.ng = sub i64 %i.mv, %i.ly
  %i.nh = trunc i64 %i.ng to i32
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nf
  store i32 %i.nh, ptr %i.ni, align 1
  store i64 %i.mv, ptr %i.g, align 8
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bv, %bb.bu
  %i.nj = landingpad { ptr, i32 }
          cleanup
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ek

bb.cb:                                            ; preds = %bb.bw
  %i.nl = landingpad { ptr, i32 }
          cleanup
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call fastcc void @_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev(ptr nonnull %i.nm, i64 %i.ly) #21
  br label %bb.ek

bb.cc:                                            ; preds = %bb.bs, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.nn = invoke i32 @aiGetMaterialProperty(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a)
          to label %.noexc218 unwind label %bb.cj

.noexc218:                                        ; preds = %bb.cc
  %i.no = icmp eq i32 %i.nn, 0
  br i1 %i.no, label %bb.cd, label %.thread331

bb.cd:                                            ; preds = %.noexc218
  %i.np = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 1036
  %i.nr = load i32, ptr %i.nq, align 4
  %i.ns = icmp ult i32 %i.nr, 4
  br i1 %i.ns, label %.thread331, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 1040
  %i.nu = load i32, ptr %i.nt, align 8
  %.not.i217 = icmp eq i32 %i.nu, 5
  br i1 %.not.i217, label %bb.cf, label %.thread331

.thread331:                                       ; preds = %bb.ce, %bb.cd, %.noexc218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.cr

bb.cf:                                            ; preds = %bb.ce
  %i.nv = getelementptr inbounds nuw i8, ptr %i.np, i64 1048
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = load i32, ptr %i.nw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ny = load i64, ptr %i.g, align 8             ; 5 uses
  %i.nz = add i64 %i.ny, 2                        ; 4 uses
  %i.oa = load ptr, ptr %i.i, align 8
  %i.ob = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = sub i64 %i.oc, %i.od
  %.not.i.i.i219 = icmp ult i64 %i.nz, %i.oe
  br i1 %.not.i.i.i219, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i222, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.nz)
          to label %.noexc226 unwind label %bb.ck

.noexc226:                                        ; preds = %bb.cg
  %.pre.i.i.i220 = load i64, ptr %i.g, align 8
  %.pre2.i.i.i221 = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i222

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i222: ; preds = %.noexc226, %bb.cf
  %i.of = phi ptr [ %.pre2.i.i.i221, %.noexc226 ], [ %i.ob, %bb.cf ]
  %i.og = phi i64 [ %.pre.i.i.i220, %.noexc226 ], [ %i.ny, %bb.cf ]
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.og
  store i16 -24320, ptr %i.oh, align 1
  %i.oi = load i64, ptr %i.g, align 8             ; 2 uses
  %i.oj = add i64 %i.oi, 2                        ; 2 uses
  store i64 %i.oj, ptr %i.g, align 8
  %i.ok = add i64 %i.oi, 6                        ; 2 uses
  %i.ol = load ptr, ptr %i.i, align 8
  %i.om = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %.not.i.i5.i223 = icmp ult i64 %i.ok, %i.op
  br i1 %.not.i.i5.i223, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i222
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ok)
          to label %.noexc227 unwind label %bb.ck

.noexc227:                                        ; preds = %bb.ch
  %.pre.i.i6.i224 = load i64, ptr %i.g, align 8
  %.pre2.i.i7.i225 = load ptr, ptr %i.h, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc227, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i222
  %i.oq = phi ptr [ %.pre2.i.i7.i225, %.noexc227 ], [ %i.om, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i222 ]
  %i.or = phi i64 [ %.pre.i.i6.i224, %.noexc227 ], [ %i.oj, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU2Et.exit.i222 ]
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.or
  store i32 -559038737, ptr %i.os, align 1
  %i.ot = load i64, ptr %i.g, align 8             ; 2 uses
  %i.ou = add i64 %i.ot, 4                        ; 2 uses
  store i64 %i.ou, ptr %i.g, align 8
  %switch.tableidx = add i32 %i.nx, -2            ; 2 uses
  %i.ov = icmp ult i32 %switch.tableidx, 10
  br i1 %i.ov, label %switch.lookup, label %bb.cl

bb.cj:                                            ; preds = %bb.cc
  %i.ow = landingpad { ptr, i32 }
          cleanup
end_hunk_0
