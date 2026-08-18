inline.NumInlined: 2819
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5scene15SSkinMeshBuffer17convertToTangentsEv:bb.a
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 144115188075855871)
  %i.ai = select i1 %i.ag, i64 144115188075855871, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 6
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #33 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.al, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.042, i64 24, i1 false)
  %.sroa.743.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.n, ptr %.sroa.743.0..sroa_idx44, align 4
  %.sroa.946.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  store <2 x float> %i.p, ptr %.sroa.946.0..sroa_idx47, align 4
  %.sroa.1352.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  store i16 0, ptr %.sroa.1352.0..sroa_idx53, align 4
  %i.am = getelementptr i8, ptr %i.al, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.t
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.ak, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.z, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i, i64 64, i1 false), !alias.scope !332
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !336

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 64
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #29
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !195
  store ptr %i.ap, ptr %i.s, align 8, !tbaa !221
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.aq, ptr %i.u, align 8, !tbaa !331
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.037.062, i64 40 ; 2 uses
  %.not57 = icmp eq ptr %i.ar, %i.h
  br i1 %.not57, label %._crit_edge65, label %bb.c

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.026)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !190 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !337 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !337 ; 2 uses
  %.not59 = icmp eq ptr %i.av, %i.ax
  br i1 %.not59, label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %.sroa.026.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit21
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !190 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre69 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !191 ; 2 uses
  %.phi.trans.insert70 = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre71 = load ptr, ptr %.phi.trans.insert70, align 8, !tbaa !219
  %i.az = icmp eq ptr %.pre71, %.pre69
  br i1 %i.az, label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN5video17S3DVertex2TCoordsES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5video17S3DVertex2TCoordsES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  store ptr %.pre69, ptr %i.ba, align 8, !tbaa !219
  br label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE5clearEv.exit

_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE5clearEv.exit: ; preds = %bb.h, %._crit_edge, %_ZSt8_DestroyIPN5video17S3DVertex2TCoordsES1_EvT_S3_RSaIT0_E.exit.i.i
  store i32 2, ptr %i.a, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.026)
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit21
  %.sroa.022.060 = phi ptr [ %i.av, %.lr.ph ], [ %i.ch, %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit21 ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.026, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.022.060, i64 12, i1 false), !tbaa.struct !215
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.022.060, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.026.12..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.bb, i64 12, i1 false), !tbaa.struct !215
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.022.060, i64 24
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !125 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.022.060, i64 28
  %i.bf = load <2 x float>, ptr %i.be, align 4    ; 2 uses
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !194 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !221 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !331
  %.not.i8 = icmp eq ptr %i.bj, %i.bl
  br i1 %.not.i8, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bj, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.026, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i32 %i.bd, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  store <2 x float> %i.bf, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  store i16 0, ptr %.sroa.13.0..sroa_idx, align 4
  %i.bm = getelementptr i8, ptr %i.bj, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !221
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !221
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit21

bb.k:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !195 ; 5 uses
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 4 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775744
  br i1 %i.bt, label %bb.l, label %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9: ; preds = %bb.k
  %i.bu = ashr exact i64 %i.bs, 6                 ; 3 uses
  %.sroa.speculated.i.i.i10 = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i10, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 144115188075855871)
  %i.by = select i1 %i.bw, i64 144115188075855871, i64 %i.bx ; 3 uses
  %.not.i.i.i11 = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i.i11)
  %i.bz = shl nuw nsw i64 %i.by, 6
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #33 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cb, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.026, i64 24, i1 false)
  %.sroa.7.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i32 %i.bd, ptr %.sroa.7.0..sroa_idx27, align 4
  %.sroa.9.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  store <2 x float> %i.bf, ptr %.sroa.9.0..sroa_idx29, align 4
  %.sroa.13.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  store i16 0, ptr %.sroa.13.0..sroa_idx33, align 4
  %i.cc = getelementptr i8, ptr %i.cb, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i.i12 = icmp eq ptr %i.bp, %i.bj
  br i1 %.not10.i.i.i.i.i12, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i17, label %.lr.ph.i.i.i.i.i13

.lr.ph.i.i.i.i.i13:                               ; preds = %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9, %.lr.ph.i.i.i.i.i13
  %.012.i.i.i.i.i14 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i13 ], [ %i.ca, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9 ] ; 2 uses
  %.0911.i.i.i.i.i15 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i13 ], [ %i.bp, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i14, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i15, i64 64, i1 false), !alias.scope !338
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i15, i64 64 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i14, i64 64 ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.cd, %i.bj
  br i1 %.not.i.i.i.i.i16, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i17, label %.lr.ph.i.i.i.i.i13, !llvm.loop !336

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i17: ; preds = %.lr.ph.i.i.i.i.i13, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9
  %.0.lcssa.i.i.i.i.i18 = phi ptr [ %i.ca, %_ZNKSt6vectorIN5video17S3DVertexTangentsESaIS1_EE12_M_check_lenEmPKc.exit.i.i9 ], [ %i.ce, %.lr.ph.i.i.i.i.i13 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i18, i64 64
  %.not.i23.i.i19 = icmp eq ptr %i.bp, null
  br i1 %.not.i23.i.i19, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i20, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bs) #29
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i20

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i20: ; preds = %bb.m, %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i17
  store ptr %i.ca, ptr %i.bh, align 8, !tbaa !195
  store ptr %i.cf, ptr %i.bi, align 8, !tbaa !221
  %i.cg = getelementptr inbounds nuw [64 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.cg, ptr %i.bk, align 8, !tbaa !331
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit21

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE9push_backERKS1_.exit21: ; preds = %bb.j, %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i20
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.022.060, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.ch, %i.ax
  br i1 %.not, label %._crit_edge, label %bb.i

bb.n:                                             ; preds = %bb.a, %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE5clearEv.exit, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5scene11SkinnedMesh17calculateTangentsERN4core8vector3dIfEES4_S4_RKS3_S6_S6_RKNS1_8vector2dIfEESA_SA_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %9) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !214 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !214
  %i.e = load <2 x float>, ptr %4, align 4, !tbaa !106 ; 2 uses
  %i.f = load <2 x float>, ptr %5, align 4, !tbaa !106
  %i.g = fsub <2 x float> %i.e, %i.f              ; 5 uses
  %i.h = load <2 x float>, ptr %6, align 4, !tbaa !106
  %i.i = fsub <2 x float> %i.h, %i.e              ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !214
  %i.l = extractelement <2 x float> %i.g, i64 1   ; 2 uses
  %i.m = extractelement <2 x float> %i.i, i64 1
  %i.n = extractelement <2 x float> %i.i, i64 0
  %i.o = extractelement <2 x float> %i.g, i64 0
  %i.p = insertelement <2 x float> poison, float %i.b, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.k, i64 1
  %i.r = insertelement <2 x float> poison, float %i.d, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.b, i64 1
  %i.t = fsub <2 x float> %i.q, %i.s              ; 5 uses
  %i.u = extractelement <2 x float> %i.t, i64 0   ; 2 uses
  %i.v = fneg float %i.l
  %i.w = shufflevector <2 x float> %i.t, <2 x float> %i.i, <2 x i32> <i32 1, i32 2>
  %i.x = insertelement <2 x float> poison, float %i.v, i64 0
  %i.y = fneg <2 x float> %i.t
  %i.z = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 0, i32 2>
  %i.aa = fmul <2 x float> %i.w, %i.z
  %i.ab = shufflevector <2 x float> %i.i, <2 x float> %i.g, <2 x i32> <i32 1, i32 2>
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.t, <2 x float> %i.aa) ; 5 uses
  %i.ad = fneg float %i.o
  %i.ae = fmul float %i.m, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.n, float %i.l, float %i.ae) ; 4 uses
  store <2 x float> %i.ac, ptr %1, align 4
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store float %i.af, ptr %.sroa.436.0..sroa_idx, align 4, !tbaa !106
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %foldExtExtBinop = fmul <2 x float> %i.ac, %i.ac
  %i.ah = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ai = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ah)
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.aj) ; 2 uses
  %i.al = fcmp oeq float %i.ak, 0.000000e+00
  br i1 %i.al, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.am = fpext float %i.ak to double
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.am)
  %i.an = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.ao = fpext <2 x float> %i.ac to <2 x double>
  %i.ap = insertelement <2 x double> poison, double %i.an, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.aq, %i.ao
  %i.as = fptrunc <2 x double> %i.ar to <2 x float>
  store <2 x float> %i.as, ptr %1, align 4, !tbaa !106
  %i.at = fpext float %i.af to double
  %i.au = fmul double %i.an, %i.at
  %i.av = fptrunc double %i.au to float
  store float %i.av, ptr %.sroa.436.0..sroa_idx, align 4, !tbaa !214
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.a, %bb.b
  %i.aw = load float, ptr %7, align 4, !tbaa !342 ; 2 uses
  %i.ax = load float, ptr %8, align 4, !tbaa !342
  %i.ay = fsub float %i.aw, %i.ax                 ; 2 uses
  %i.az = load float, ptr %9, align 4, !tbaa !342
  %i.ba = fsub float %i.az, %i.aw                 ; 2 uses
  %i.bb = fmul float %i.u, %i.ba
  %i.bc = extractelement <2 x float> %i.t, i64 1  ; 2 uses
  %i.bd = fmul float %i.bc, %i.ay
  %i.be = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.g, %i.bf
  %i.bh = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.i, %i.bi
  %i.bk = fsub <2 x float> %i.bg, %i.bj           ; 5 uses
  %i.bl = fsub float %i.bb, %i.bd                 ; 4 uses
  store <2 x float> %i.bk, ptr %3, align 4
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store float %i.bl, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !106
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %foldExtExtBinop145 = fmul <2 x float> %i.bk, %i.bk
  %i.bn = extractelement <2 x float> %foldExtExtBinop145, i64 1
  %i.bo = extractelement <2 x float> %i.bk, i64 0 ; 2 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bn)
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %i.bp) ; 2 uses
  %i.br = fcmp oeq float %i.bq, 0.000000e+00
  br i1 %i.br, label %_ZN4core8vector3dIfE9normalizeEv.exit89, label %bb.c

bb.c:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.bs = fpext float %i.bq to double
  %sqrt.i88 = tail call double @llvm.sqrt.f64(double %i.bs)
  %i.bt = fdiv double 1.000000e+00, %sqrt.i88     ; 2 uses
  %i.bu = fpext <2 x float> %i.bk to <2 x double>
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x double> %i.bw, %i.bu
  %i.by = fptrunc <2 x double> %i.bx to <2 x float>
  store <2 x float> %i.by, ptr %3, align 4, !tbaa !106
  %i.bz = fpext float %i.bl to double
  %i.ca = fmul double %i.bt, %i.bz
  %i.cb = fptrunc double %i.ca to float
  store float %i.cb, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !214
  br label %_ZN4core8vector3dIfE9normalizeEv.exit89

_ZN4core8vector3dIfE9normalizeEv.exit89:          ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !344 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !344
  %i.cg = fsub float %i.cd, %i.cf                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !344
  %i.cj = fsub float %i.ci, %i.cd                 ; 2 uses
  %i.ck = fmul float %i.u, %i.cj
  %i.cl = fmul float %i.bc, %i.cg
  %10 = insertelement <2 x float> poison, float %i.cj, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %i.g, %11
  %13 = insertelement <2 x float> poison, float %i.cg, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fmul <2 x float> %i.i, %14
  %16 = fsub <2 x float> %12, %15                 ; 3 uses
  %17 = fsub float %i.ck, %i.cl                   ; 5 uses
  store <2 x float> %16, ptr %2, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store float %17, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !106
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %18 = extractelement <2 x float> %16, i64 1     ; 4 uses
  %i.cn = fmul float %18, %18
  %19 = extractelement <2 x float> %16, i64 0     ; 4 uses
  %i.co = tail call float @llvm.fmuladd.f32(float %19, float %19, float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %17, float %17, float %i.co) ; 2 uses
  %i.cq = fcmp oeq float %i.cp, 0.000000e+00
  br i1 %i.cq, label %_ZN4core8vector3dIfE9normalizeEv.exit103, label %bb.d

bb.d:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit89
  %i.cr = fpext float %i.cp to double
  %sqrt.i102 = tail call double @llvm.sqrt.f64(double %i.cr)
  %i.cs = fdiv double 1.000000e+00, %sqrt.i102    ; 3 uses
  %i.ct = fpext float %19 to double
  %i.cu = fmul double %i.cs, %i.ct
  %i.cv = fptrunc double %i.cu to float           ; 2 uses
  store float %i.cv, ptr %2, align 4, !tbaa !216
  %i.cw = fpext float %18 to double
  %i.cx = fmul double %i.cs, %i.cw
  %i.cy = fptrunc double %i.cx to float           ; 2 uses
  store float %i.cy, ptr %i.cm, align 4, !tbaa !217
  %i.cz = fpext float %17 to double
  %i.da = fmul double %i.cs, %i.cz
  %i.db = fptrunc double %i.da to float           ; 2 uses
  store float %i.db, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !214
  br label %_ZN4core8vector3dIfE9normalizeEv.exit103

_ZN4core8vector3dIfE9normalizeEv.exit103:         ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit89, %bb.d
  %i.dc = phi float [ %19, %_ZN4core8vector3dIfE9normalizeEv.exit89 ], [ %i.cv, %bb.d ] ; 3 uses
  %i.dd = phi float [ %17, %_ZN4core8vector3dIfE9normalizeEv.exit89 ], [ %i.db, %bb.d ] ; 3 uses
  %i.de = phi float [ %18, %_ZN4core8vector3dIfE9normalizeEv.exit89 ], [ %i.cy, %bb.d ] ; 3 uses
  %i.df = load float, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !214 ; 2 uses
  %i.dg = load float, ptr %i.bm, align 4, !tbaa !217 ; 2 uses
  %i.dh = fneg float %i.dg
  %i.di = fmul float %i.dd, %i.dh
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.de, float %i.df, float %i.di)
  %i.dk = load float, ptr %3, align 4, !tbaa !216 ; 2 uses
  %i.dl = fneg float %i.df
  %i.dm = fmul float %i.dc, %i.dl
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.dk, float %i.dm)
  %i.do = fneg float %i.dk
  %i.dp = fmul float %i.de, %i.do
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.dg, float %i.dp)
  %i.dr = load float, ptr %1, align 4, !tbaa !216
  %i.ds = load float, ptr %i.ag, align 4, !tbaa !217
  %i.dt = fmul float %i.dn, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.dr, float %i.dt)
  %i.dv = load float, ptr %.sroa.436.0..sroa_idx, align 4, !tbaa !214
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.dq, float %i.dv, float %i.du)
  %i.dx = fcmp olt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit103
  %i.dy = fneg float %i.dc
  store float %i.dy, ptr %2, align 4, !tbaa !216
  %i.dz = fneg float %i.de
  store float %i.dz, ptr %i.cm, align 4, !tbaa !217
  %i.ea = fneg float %i.dd
  store float %i.ea, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !214
  %i.eb = load <2 x float>, ptr %3, align 4, !tbaa !106
  %i.ec = fneg <2 x float> %i.eb
  store <2 x float> %i.ec, ptr %3, align 4, !tbaa !106
  %i.ed = load float, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !214
  %i.ee = fneg float %i.ed
  store float %i.ee, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !214
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4core8vector3dIfE9normalizeEv.exit103
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene5IMesh14getTextureSlotEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 %1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene13IAnimatedMeshD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene13IAnimatedMeshD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene13IAnimatedMeshD1Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene13IAnimatedMeshD0Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene5IMesh11getMeshTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene5IMeshD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene5IMeshD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene5IMeshD1Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene5IMeshD0Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(24) ptr @_ZNK5scene11SkinnedMesh14getBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene11SkinnedMesh14setBoundingBoxERKN4core8aabbox3dIfEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !118
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene11SkinnedMesh11getMeshTypeEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene11SkinnedMesh15needsHwSkinningEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 147
  %i.b = load i8, ptr %i.a, align 1, !tbaa !74, !range !33, !noundef !34
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.e = load i8, ptr %i.d, align 1, !range !33
  %i.f = trunc nuw i8 %i.e to i1
  %not. = xor i1 %i.c, true
  %i.g = select i1 %not., i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene11SkinnedMesh4Keys15updateTransformEfRN4core9TransformE(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(40) %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::optional.161", align 4 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108  ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.b, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.011.015.i.i.i = phi ptr [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.j = lshr i64 %.016.i.i.i, 1                  ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i.i, i64 %i.j ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !162
  %i.m = fcmp olt float %i.l, %1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.016.i.i.i, %i.o
  %.sroa.011.1.i.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i.i ; 11 uses
  %.1.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.j  ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.i, !llvm.loop !345

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.r = icmp eq ptr %.sroa.011.1.i.i.i, %i.a
  br i1 %i.r, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i, label %bb.c

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.i, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.024.0.copyload.i = load <2 x float>, ptr %i.s, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.5.sroa.0.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !106
  br label %_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit

bb.c:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.i
  %i.t = icmp eq ptr %.sroa.011.1.i.i.i, %i.c
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.c, i64 -12
  %.sroa.024.0.copyload25.i = load <2 x float>, ptr %i.u, align 4
  %.sroa.5.0..sroa_idx27.i = getelementptr inbounds i8, ptr %i.c, i64 -4
  %.sroa.5.sroa.0.0.copyload33.i = load float, ptr %.sroa.5.0..sroa_idx27.i, align 4, !tbaa !106
  br label %_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit

end_hunk_0
begin_hunk_1_@_ZNK5scene11SkinnedMesh4Keys15updateTransformEfRN4core9TransformE:bb.a
.critedge:                                        ; preds = %bb.a, %_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNK5scene11SkinnedMesh7ChannelIN4core10quaternionEE3getEf(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.161") align 4 %3, ptr noundef nonnull align 8 dereferenceable(25) %i.ax, float noundef %1)
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !346, !range !33, !noundef !34
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !304
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !108 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !108 ; 5 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %.critedge47, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bd to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 4                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i18, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i7

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i18: ; preds = %bb.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i18
  %.016.i.i.i19 = phi i64 [ %.1.i.i.i24, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i18 ], [ %i.bk, %bb.j ] ; 2 uses
  %.sroa.011.015.i.i.i20 = phi ptr [ %.sroa.011.1.i.i.i23, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i18 ], [ %i.bd, %bb.j ] ; 2 uses
  %i.bm = lshr i64 %.016.i.i.i19, 1               ; 3 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i.i20, i64 %i.bm ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !162
  %i.bp = fcmp olt float %i.bo, %1                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.br = xor i64 %i.bm, -1
  %i.bs = add nsw i64 %.016.i.i.i19, %i.br
  %.sroa.011.1.i.i.i23 = select i1 %i.bp, ptr %i.bq, ptr %.sroa.011.015.i.i.i20 ; 11 uses
  %.1.i.i.i24 = select i1 %i.bp, i64 %i.bs, i64 %i.bm ; 2 uses
  %i.bt = icmp sgt i64 %.1.i.i.i24, 0
  br i1 %i.bt, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i18, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.i25, !llvm.loop !345

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.i25: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i18
  %i.bu = icmp eq ptr %.sroa.011.1.i.i.i23, %i.bd
  br i1 %i.bu, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i7, label %bb.k

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i7: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.i25, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %.sroa.024.0.copyload.i8 = load <2 x float>, ptr %i.bv, align 4
  %.sroa.5.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %.sroa.5.sroa.0.0.copyload.i10 = load float, ptr %.sroa.5.0..sroa_idx.i9, align 4, !tbaa !106
  br label %_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit44

bb.k:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.i25
  %i.bw = icmp eq ptr %.sroa.011.1.i.i.i23, %i.bf
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds i8, ptr %i.bf, i64 -12
  %.sroa.024.0.copyload25.i41 = load <2 x float>, ptr %i.bx, align 4
  %.sroa.5.0..sroa_idx27.i42 = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %.sroa.5.sroa.0.0.copyload33.i43 = load float, ptr %.sroa.5.0..sroa_idx27.i42, align 4, !tbaa !106
  br label %_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit44

bb.m:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !301, !range !33, !noundef !34
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i23, i64 -12
  %.sroa.024.0.copyload26.i26 = load <2 x float>, ptr %i.cb, align 4
  %.sroa.5.0..sroa_idx28.i27 = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i23, i64 -4
  %.sroa.5.sroa.0.0.copyload34.i28 = load float, ptr %.sroa.5.0..sroa_idx28.i27, align 4, !tbaa !106
  br label %_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit44

bb.o:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i23, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i23, i64 -12
  %.sroa.07.0.copyload.i29 = load <2 x float>, ptr %i.cd, align 4
  %.sroa.28.0..sroa_idx.i30 = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i23, i64 -4
  %.sroa.28.0.copyload.i31 = load float, ptr %.sroa.28.0..sroa_idx.i30, align 4, !tbaa !106
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i23, i64 4
  %.sroa.05.0.copyload.i32 = load <2 x float>, ptr %i.ce, align 4
  %.sroa.26.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i23, i64 12
  %.sroa.26.0.copyload.i34 = load float, ptr %.sroa.26.0..sroa_idx.i33, align 4, !tbaa !106
  %i.cf = load float, ptr %i.cc, align 4, !tbaa !162 ; 2 uses
  %i.cg = fsub float %1, %i.cf
  %i.ch = load float, ptr %.sroa.011.1.i.i.i23, align 4, !tbaa !162
  %i.ci = fsub float %i.ch, %i.cf
  %i.cj = fdiv float %i.cg, %i.ci
  %i.ck = fpext float %i.cj to double             ; 3 uses
  %i.cl = fsub double 1.000000e+00, %i.ck         ; 2 uses
  %i.cm = fpext <2 x float> %.sroa.07.0.copyload.i29 to <2 x double>
  %i.cn = fpext <2 x float> %.sroa.05.0.copyload.i32 to <2 x double>
  %i.co = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cp, %i.cn
  %i.cr = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.cs, <2 x double> %i.cq)
  %i.cu = fptrunc <2 x double> %i.ct to <2 x float>
  %i.cv = fpext float %.sroa.28.0.copyload.i31 to double
  %i.cw = fpext float %.sroa.26.0.copyload.i34 to double
  %i.cx = fmul double %i.cw, %i.ck
  %i.cy = call double @llvm.fmuladd.f64(double %i.cv, double %i.cl, double %i.cx)
  %i.cz = fptrunc double %i.cy to float
  br label %_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit44

_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit44: ; preds = %bb.o, %bb.n, %bb.l, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i7
  %.sroa.024.2.i11 = phi <2 x float> [ %.sroa.024.0.copyload26.i26, %bb.n ], [ %.sroa.024.0.copyload.i8, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i7 ], [ %.sroa.024.0.copyload25.i41, %bb.l ], [ %i.cu, %bb.o ]
  %.sroa.5.sroa.0.2.i12 = phi float [ %.sroa.5.sroa.0.0.copyload34.i28, %bb.n ], [ %.sroa.5.sroa.0.0.copyload.i10, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i7 ], [ %.sroa.5.sroa.0.0.copyload33.i43, %bb.l ], [ %i.cz, %bb.o ]
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 28
  store <2 x float> %.sroa.024.2.i11, ptr %i.da, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %.sroa.5.sroa.0.2.i12, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !106
  br label %.critedge47

.critedge47:                                      ; preds = %bb.i, %_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene11SkinnedMesh7ChannelIN4core10quaternionEE3getEf(ptr dead_on_unwind noalias writable sret(%"class.std::optional.161") align 4 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, float noundef %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !109    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.b
  %i.i = udiv exact i64 %i.g, 20
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %i.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.j = lshr i64 %.016.i.i, 1                    ; 3 uses
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %.sroa.011.015.i.i, i64 %i.j ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !164
  %i.m = fcmp olt float %i.l, %2                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.016.i.i, %i.o
  %.sroa.011.1.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i ; 10 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.j    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit, !llvm.loop !348

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.r = icmp eq ptr %.sroa.011.1.i.i, %i.a
  br i1 %i.r, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread, label %bb.c

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread: ; preds = %bb.b, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !304
  br label %bb.j

bb.c:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit
  %i.t = icmp eq ptr %.sroa.011.1.i.i, %i.c
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.c, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !304
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i8, ptr %i.v, align 8, !tbaa !302, !range !33, !noundef !34
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !304
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -20
  %i.aa = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -16
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.aa, align 4 ; 4 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -8
  %.sroa.22.0.copyload = load <2 x float>, ptr %.sroa.22.0..sroa_idx, align 4 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ab, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 12
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 4 ; 4 uses
  %i.ac = load float, ptr %i.z, align 4, !tbaa !164 ; 2 uses
  %i.ad = fsub float %2, %i.ac
  %i.ae = load float, ptr %.sroa.011.1.i.i, align 4, !tbaa !164
  %i.af = fsub float %i.ae, %i.ac
  %i.ag = fdiv float %i.ad, %i.af                 ; 4 uses
  %.sroa.036.0.vec.extract.i.i.a = extractelement <2 x float> %.sroa.01.0.copyload, i64 0
  %.sroa.036.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.ah = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ai = tail call float @llvm.fmuladd.f32(float %.sroa.036.0.vec.extract.i.i.a, float %.sroa.036.4.vec.extract.i.i, float %i.ah)
  %.sroa.10.8.vec.extract.i.i = extractelement <2 x float> %.sroa.22.0.copyload, i64 0
  %.sroa.6.8.vec.extract.i.i = extractelement <2 x float> %.sroa.2.0.copyload, i64 0
  %i.aj = tail call float @llvm.fmuladd.f32(float %.sroa.10.8.vec.extract.i.i, float %.sroa.6.8.vec.extract.i.i, float %i.ai)
  %.sroa.10.12.vec.extract.i.i = extractelement <2 x float> %.sroa.22.0.copyload, i64 1
  %.sroa.6.12.vec.extract.i.i = extractelement <2 x float> %.sroa.2.0.copyload, i64 1
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %.sroa.10.12.vec.extract.i.i, float %.sroa.6.12.vec.extract.i.i, float %i.aj) ; 3 uses
  %i.al = fcmp olt float %i.ak, 0.000000e+00      ; 3 uses
  %i.am = fneg <2 x float> %.sroa.01.0.copyload
  %i.an = fneg <2 x float> %.sroa.22.0.copyload
  %i.ao = fneg float %i.ak
  %.sroa.047.0.i.i = select i1 %i.al, <2 x float> %i.am, <2 x float> %.sroa.01.0.copyload ; 2 uses
  %.sroa.10.0.i.i = select i1 %i.al, <2 x float> %i.an, <2 x float> %.sroa.22.0.copyload ; 2 uses
  %.020.i.i = select i1 %i.al, float %i.ao, float %i.ak ; 2 uses
  %i.ap = fcmp ugt float %.020.i.i, 9.990000e-01
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call float @acosf(float noundef %.020.i.i) #31 ; 3 uses
  %i.ar = tail call float @sinf(float noundef %i.aq) #31
  %i.as = fdiv float 1.000000e+00, %i.ar          ; 2 uses
  %i.at = fsub float 1.000000e+00, %i.ag
  %i.au = fmul float %i.at, %i.aq
  %i.av = tail call float @sinf(float noundef %i.au) #31
  %i.aw = fmul float %i.av, %i.as
  %i.ax = fmul float %i.ag, %i.aq
  %i.ay = tail call float @sinf(float noundef %i.ax) #31
  %i.az = fmul float %i.as, %i.ay
  %i.ba = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bc = fmul <2 x float> %.sroa.047.0.i.i, %i.bb
  %i.bd = insertelement <2 x float> poison, float %i.az, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bf = fmul <2 x float> %.sroa.0.0.copyload, %i.be
  %i.bg = fadd <2 x float> %i.bc, %i.bf
  %i.bh = fmul <2 x float> %.sroa.10.0.i.i, %i.bb
  %i.bi = fmul <2 x float> %.sroa.2.0.copyload, %i.be
  %i.bj = fadd <2 x float> %i.bh, %i.bi
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit

bb.i:                                             ; preds = %bb.g
  %i.bk = fsub float 1.000000e+00, %i.ag
  %3 = insertelement <2 x float> poison, float %i.ag, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %5 = fmul <2 x float> %.sroa.0.0.copyload, %4
  %6 = fmul <2 x float> %.sroa.2.0.copyload, %4
  %7 = insertelement <2 x float> poison, float %i.bk, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %9 = fmul <2 x float> %8, %.sroa.10.0.i.i
  %10 = fadd <2 x float> %6, %9                   ; 3 uses
  %11 = extractelement <2 x float> %10, i64 0     ; 2 uses
  %12 = extractelement <2 x float> %10, i64 1     ; 2 uses
  %13 = fmul <2 x float> %8, %.sroa.047.0.i.i
  %14 = fadd <2 x float> %5, %13                  ; 4 uses
  %foldExtExtBinop26 = fmul <2 x float> %14, %14
  %15 = extractelement <2 x float> %foldExtExtBinop26, i64 1
  %16 = extractelement <2 x float> %14, i64 0     ; 2 uses
  %i.bl = tail call float @llvm.fmuladd.f32(float %16, float %16, float %15)
  %i.bm = tail call float @llvm.fmuladd.f32(float %11, float %11, float %i.bl)
  %i.bn = tail call float @llvm.fmuladd.f32(float %12, float %12, float %i.bm)
  %i.bo = fpext float %i.bn to double
  %sqrt.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.bo)
  %i.bp = fdiv double 1.000000e+00, %sqrt.i.i.i.i
  %i.bq = fptrunc double %i.bp to float
  %.sroa.018.4.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.bq, i64 0
  %17 = shufflevector <2 x float> %.sroa.018.4.vec.insert.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %18 = fmul <2 x float> %14, %17
  %19 = fmul <2 x float> %10, %17
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit

_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit: ; preds = %bb.h, %bb.i
  %.sroa.0.4.vec.insert.i29.sink.i.i = phi <2 x float> [ %18, %bb.i ], [ %i.bg, %bb.h ]
  %.sroa.3.12.vec.insert.i31.sink.i.i = phi <2 x float> [ %19, %bb.i ], [ %i.bj, %bb.h ]
  store <2 x float> %.sroa.0.4.vec.insert.i29.sink.i.i, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i31.sink.i.i, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread, %bb.d, %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit, %bb.f
  %.sink = phi i8 [ 1, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread ], [ 1, %bb.d ], [ 1, %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit ], [ 1, %bb.f ], [ 0, %bb.a ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.br, align 4, !tbaa !346
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #20

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5video9SMaterialneERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !349
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i32, ptr %i.c, align 8, !tbaa !349
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.g = load i32, ptr %i.f, align 4, !tbaa !350
  %i.h = load i32, ptr %i.e, align 4, !tbaa !350
  %.not50 = icmp eq i32 %i.g, %i.h
  br i1 %.not50, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load float, ptr %i.i, align 8, !tbaa !351
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load float, ptr %i.k, align 8, !tbaa !351
  %i.m = fcmp une float %i.j, %i.l
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.o = load float, ptr %i.n, align 4, !tbaa !352
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.q = load float, ptr %i.p, align 4, !tbaa !352
  %i.r = fcmp une float %i.o, %i.q
  br i1 %i.r, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 126
  %i.t = load i8, ptr %i.s, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.v = load i8, ptr %i.u, align 2
  %i.w = xor i8 %i.v, %i.t                        ; 3 uses
  %i.x = and i8 %i.w, 3
  %or.cond44 = icmp eq i8 %i.x, 0
  br i1 %or.cond44, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.z = load i16, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ab = load i16, ptr %i.aa, align 4
  %i.ac = and i8 %i.w, 124
  %i.ad = icmp eq i8 %i.ac, 0
  %or.cond = icmp eq i16 %i.z, %i.ab
  %or.cond51 = and i1 %i.ad, %or.cond
  br i1 %or.cond51, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load float, ptr %i.ae, align 8, !tbaa !353
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !353
  %i.ai = fcmp une float %i.af, %i.ah
  br i1 %i.ai, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !354
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.am = load float, ptr %i.al, align 4, !tbaa !354
  %i.an = fcmp une float %i.ak, %i.am
  br i1 %i.an, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !355
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !355
  %i.as = fcmp une float %i.ap, %i.ar
  %i.at = icmp slt i8 %i.w, 0
  %or.cond43 = or i1 %i.at, %i.as
  br i1 %or.cond43, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %i.au = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.au, label %.critedge, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
  br i1 %i.ax, label %.critedge, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az)
  br i1 %i.ba, label %.critedge, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
  br label %.critedge

.critedge:                                        ; preds = %.preheader.3, %.preheader.preheader, %.preheader.1, %.preheader.2, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.f ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.g ], [ true, %.preheader.preheader ], [ true, %.preheader.2 ], [ true, %.preheader.1 ], [ %i.bd, %.preheader.3 ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !294
  %i.b = load ptr, ptr %1, align 8, !tbaa !294
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i16, ptr %i.e, align 8
  %i.g = xor i16 %i.f, %i.d
  %i.h = and i16 %i.g, 4095
  %or.cond28 = icmp eq i16 %i.h, 0
  br i1 %or.cond28, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i8, ptr %i.i, align 2, !tbaa !356
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.l = load i8, ptr %i.k, align 2, !tbaa !356
  %.not21 = icmp eq i8 %i.j, %i.l
  br i1 %.not21, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !357
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !357
  %.not22 = icmp eq i8 %i.n, %i.p
  br i1 %.not22, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i8, ptr %i.q, align 4, !tbaa !358
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i8, ptr %i.s, align 4, !tbaa !358
  %.not23 = icmp eq i8 %i.r, %i.t
  br i1 %.not23, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.v = load i8, ptr %i.u, align 1, !tbaa !359
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.x = load i8, ptr %i.w, align 1, !tbaa !359
end_hunk_1
