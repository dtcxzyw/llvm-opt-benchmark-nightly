Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Tool_NavMeshPrune?download=true
inline.NumInlined: 287
inline.NumDeleted: 172
begin_hunk_0_@_ZN16NavMeshPruneTool6renderEv:bb.a
  %i.ba = fadd float %i.h, %i.az
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.c, float noundef %i.ax, float noundef %i.ay, float noundef %i.ba, i32 noundef -1) #15, !call_target !113
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15, !call_target !116
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bh = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !73 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !59
  %i.bm = icmp ne ptr %i.bl, null
  %i.bn = icmp ne ptr %i.bj, null
  %or.cond = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond, label %.preheader, label %.loopexit42

.preheader:                                       ; preds = %bb.c
  %i.bo = tail call noundef i32 @_ZNK9dtNavMesh11getMaxTilesEv(ptr noundef nonnull align 8 dereferenceable(100) %i.bj) #15
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph45, label %.loopexit42

.lr.ph45:                                         ; preds = %.preheader, %.loopexit
  %.03944 = phi i32 [ %i.cy, %.loopexit ], [ 0, %.preheader ] ; 2 uses
  %i.bq = tail call noundef ptr @_ZNK9dtNavMesh7getTileEi(ptr noundef nonnull align 8 dereferenceable(100) %i.bj, i32 noundef %.03944) #15 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !38
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph45
  %i.bt = tail call noundef i32 @_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile(ptr noundef nonnull align 8 dereferenceable(100) %i.bj, ptr noundef nonnull %i.bq) #15
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !38 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !41
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %i.by = phi ptr [ %i.ct, %bb.f ], [ %i.bu, %bb.d ]
  %.043 = phi i32 [ %i.cu, %bb.f ], [ 0, %bb.d ]  ; 2 uses
  %i.bz = or i32 %.043, %i.bt                     ; 3 uses
  %i.ca = load ptr, ptr %i.bk, align 8, !tbaa !59 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !21 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 92
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !50
  %notmask9.i.i = shl nsw i32 -1, %i.cd
  %i.ce = xor i32 %notmask9.i.i, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 96
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !51 ; 2 uses
  %notmask10.i.i = shl nsw i32 -1, %i.cg
  %i.ch = xor i32 %notmask10.i.i, -1
  %i.ci = lshr i32 %i.bz, %i.cg
  %i.cj = and i32 %i.ci, %i.ce
  %i.ck = and i32 %i.bz, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cm = zext nneg i32 %i.cj to i64
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !22
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = zext nneg i32 %i.ck to i64
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !42
  %.not41 = icmp eq i8 %i.cs, 0
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @_Z22duDebugDrawNavMeshPolyP11duDebugDrawRK9dtNavMeshjj(ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(100) %i.bj, i32 noundef %i.bz, i32 noundef -2130706433) #15
  %.pre46 = load ptr, ptr %i.br, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.ct = phi ptr [ %.pre46, %bb.e ], [ %i.by, %.lr.ph ] ; 2 uses
  %i.cu = add nuw nsw i32 %.043, 1                ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !41
  %i.cx = icmp slt i32 %i.cu, %i.cw
  br i1 %i.cx, label %.lr.ph, label %.loopexit, !llvm.loop !93

.loopexit:                                        ; preds = %bb.f, %bb.d, %.lr.ph45
  %i.cy = add nuw nsw i32 %.03944, 1              ; 2 uses
  %i.cz = tail call noundef i32 @_ZNK9dtNavMesh11getMaxTilesEv(ptr noundef nonnull align 8 dereferenceable(100) %i.bj) #15
  %i.da = icmp slt i32 %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph45, label %.loopexit42, !llvm.loop !94

.loopexit42:                                      ; preds = %.loopexit, %.preheader, %bb.c
  ret void
}

declare noundef i32 @_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #2

declare void @_Z22duDebugDrawNavMeshPolyP11duDebugDrawRK9dtNavMeshjj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN16NavMeshPruneTool13drawOverlayUIEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = tail call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store <2 x float> <float 2.800000e+02, float 4.000000e+01>, ptr %1, align 8, !tbaa !74
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef -1056964609, ptr noundef nonnull @.str.2, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN16NavMeshPruneTool4typeEv(ptr noundef nonnull align 8 dereferenceable(37) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16NavMeshPruneTool4initEP6Sample(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16NavMeshPruneTool10singleStepEv(ptr noundef nonnull align 8 dereferenceable(37) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16NavMeshPruneTool6updateEf(ptr noundef nonnull align 8 dereferenceable(37) %0, float noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16NavMeshPruneTool8onToggleEv(ptr noundef nonnull align 8 dereferenceable(37) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIhSaIhEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIhSaIhEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !23
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #17
  unreachable

_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !122, !noalias !121
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !45, !alias.scope !121, !noalias !122
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27, !alias.scope !122, !noalias !121
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !27, !alias.scope !121, !noalias !122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !122, !noalias !121
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !120

_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #14
  br label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIhSaIhEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not49 = icmp ult i64 %i.g, %2
  br i1 %.not49, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !42      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !123

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !42
  store i8 %i.q, ptr %i.d, align 1, !tbaa !42
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !43
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !123

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.z, ptr %i.y, align 1, !tbaa !42
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.j, %bb.i, %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.k:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.ac, %bb.l ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !43
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !123

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.o, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.o:                                             ; preds = %bb.n
  %i.af = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !42
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.m, %bb.n, %bb.o
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !43
  %.not.i.i.i51 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i51, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.q:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !26    ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.r, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #16
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.s
  %i.au = phi ptr [ %i.at, %bb.s ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.t, label %bb.u, !prof !123

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !42
  store i8 %i.az, ptr %i.au, align 1, !tbaa !42
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.u, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.w, label %bb.x, !prof !123

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.y, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.y:                                             ; preds = %bb.x
  %i.be = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !42
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.w, %bb.x, %bb.y
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %.not.i56 = icmp eq ptr %i.ai, null
  br i1 %.not.i56, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  %i.bg = sub i64 %i.e, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bg) #14
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55, %bb.z
  store ptr %i.au, ptr %0, align 8, !tbaa !26
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !27
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50, %bb.p, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_ZNK9dtNavMesh12getPolyFlagsEjPt(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN9dtNavMesh12setPolyFlagsEjt(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @_ZNK9dtNavMesh25getTileAndPolyByRefUnsafeEjPPK10dtMeshTilePPK6dtPoly(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() local_unnamed_addr #2

declare void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !28}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS9dtNavMesh", !13, i64 0}
!15 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !13, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIS_IhSaIhEESaIS1_EE", !18, i64 0}
!20 = !{!"_ZTS12NavmeshFlags", !14, i64 0, !19, i64 8}
!21 = !{!20, !14, i64 0}
!22 = !{!16, !15, i64 0}
!23 = !{!16, !15, i64 8}
!24 = !{!"p1 omnipotent char", !13, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!25, !24, i64 0}
!27 = !{!25, !24, i64 16}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"p1 _ZTS12dtMeshHeader", !13, i64 0}
!30 = !{!"p1 _ZTS6dtPoly", !13, i64 0}
!31 = !{!"p1 float", !13, i64 0}
!32 = !{!"p1 _ZTS6dtLink", !13, i64 0}
!33 = !{!"p1 _ZTS12dtPolyDetail", !13, i64 0}
!34 = !{!"p1 _ZTS8dtBVNode", !13, i64 0}
!35 = !{!"p1 _ZTS19dtOffMeshConnection", !13, i64 0}
!36 = !{!"p1 _ZTS10dtMeshTile", !13, i64 0}
!37 = !{!"_ZTS10dtMeshTile", !10, i64 0, !10, i64 4, !29, i64 8, !30, i64 16, !31, i64 24, !32, i64 32, !33, i64 40, !31, i64 48, !24, i64 56, !34, i64 64, !35, i64 72, !24, i64 80, !10, i64 88, !10, i64 92, !36, i64 96}
!38 = !{!37, !29, i64 8}
!39 = !{!"float", !9, i64 0}
!40 = !{!"_ZTS12dtMeshHeader", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !9, i64 72, !9, i64 84, !39, i64 96}
!41 = !{!40, !10, i64 24}
!42 = !{!9, !9, i64 0}
!43 = !{!25, !24, i64 8}
!44 = !{!15, !15, i64 0}
!45 = !{!24, !24, i64 0}
!46 = !{!"_ZTS15dtNavMeshParams", !9, i64 0, !39, i64 12, !39, i64 16, !10, i64 20, !10, i64 24}
!47 = !{!"any p2 pointer", !13, i64 0}
!48 = !{!"p2 _ZTS10dtMeshTile", !47, i64 0}
!49 = !{!"_ZTS9dtNavMesh", !46, i64 0, !9, i64 28, !39, i64 40, !39, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !48, i64 64, !36, i64 72, !36, i64 80, !10, i64 88, !10, i64 92, !10, i64 96}
!50 = !{!49, !10, i64 92}
!51 = !{!49, !10, i64 96}
!52 = !{!"vtable pointer", !8, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"_ZTS10SampleTool"}
!55 = !{!"p1 _ZTS6Sample", !13, i64 0}
!56 = !{!"p1 _ZTS12NavmeshFlags", !13, i64 0}
!57 = !{!"bool", !9, i64 0}
!58 = !{!"_ZTS16NavMeshPruneTool", !54, i64 0, !55, i64 8, !56, i64 16, !9, i64 24, !57, i64 36}
!59 = !{!58, !56, i64 16}
!60 = !{!16, !15, i64 16}
!61 = !{!58, !57, i64 36}
!62 = !{!58, !55, i64 8}
!63 = !{!"p1 _ZTS9InputGeom", !13, i64 0}
!64 = !{!"p1 _ZTS14dtNavMeshQuery", !13, i64 0}
!65 = !{!"p1 _ZTS7dtCrowd", !13, i64 0}
!66 = !{!"_ZTS11duDebugDraw"}
!67 = !{!"_ZTS11DebugDrawGL", !66, i64 0}
!68 = !{!"_ZTS15SampleDebugDraw", !67, i64 0}
!69 = !{!"_ZTS19SamplePartitionType", !9, i64 0}
!70 = !{!"p1 _ZTS10SampleTool", !13, i64 0}
!71 = !{!"p1 _ZTS12BuildContext", !13, i64 0}
!72 = !{!"_ZTS6Sample", !63, i64 8, !14, i64 16, !64, i64 24, !65, i64 32, !68, i64 40, !9, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !10, i64 92, !39, i64 96, !39, i64 100, !69, i64 104, !57, i64 105, !57, i64 106, !57, i64 107, !70, i64 112, !9, i64 120, !71, i64 192}
!73 = !{!72, !14, i64 16}
!74 = !{!39, !39, i64 0}
!75 = distinct !{!75, !28}
!76 = !{ptr @_ZN16NavMeshPruneToolD2Ev}
!77 = distinct !{!77, !28}
!78 = distinct !{!78, !28}
!79 = !{!"short", !9, i64 0}
!80 = !{!79, !79, i64 0}
!81 = distinct !{!81, !28}
!82 = distinct !{!82, !28}
!83 = !{!72, !63, i64 8}
!84 = !{!72, !64, i64 24}
!85 = !{!10, !10, i64 0}
!86 = !{!36, !36, i64 0}
!87 = !{!30, !30, i64 0}
!88 = !{!37, !32, i64 32}
!89 = !{!"_ZTS6dtLink", !10, i64 0, !10, i64 4, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11}
!90 = !{!89, !10, i64 0}
!91 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "duDebugDrawPrimitives", file: !98, line: 25, baseType: !104, size: 32, elements: !109, identifier: "_ZTS21duDebugDrawPrimitives")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "duDebugDraw", file: !98, line: 34, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS11duDebugDraw")
!93 = distinct !{!93, !28}
!94 = distinct !{!94, !28}
!95 = !{i8 0, i8 2}
!96 = !{}
!97 = !{!72, !39, i64 64}
!98 = !DIFile(filename: "DebugUtils/Include/DebugDraw.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "09838c8e0741aa24e01b8f37d2baac38")
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!101 = !{null, !99, !91, !100}
!102 = !DISubroutineType(types: !101)
!103 = !DISubprogram(name: "begin", linkageName: "_ZN11duDebugDraw5beginE21duDebugDrawPrimitivesf", scope: !92, file: !98, line: 45, type: !102, scopeLine: 45, containingType: !92, virtualIndex: 4, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!104 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!105 = !DIEnumerator(name: "DU_DRAW_POINTS", value: 0, isUnsigned: true)
!106 = !DIEnumerator(name: "DU_DRAW_LINES", value: 1, isUnsigned: true)
!107 = !DIEnumerator(name: "DU_DRAW_TRIS", value: 2, isUnsigned: true)
!108 = !DIEnumerator(name: "DU_DRAW_QUADS", value: 3, isUnsigned: true)
!109 = !{!105, !106, !107, !108}
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!111 = !{null, !99, !110, !110, !110, !104}
!112 = !DISubroutineType(types: !111)
!113 = !DISubprogram(name: "vertex", linkageName: "_ZN11duDebugDraw6vertexEfffj", scope: !92, file: !98, line: 55, type: !112, scopeLine: 55, containingType: !92, virtualIndex: 6, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!114 = !{null, !99}
!115 = !DISubroutineType(types: !114)
!116 = !DISubprogram(name: "end", linkageName: "_ZN11duDebugDraw3endEv", scope: !92, file: !98, line: 70, type: !115, scopeLine: 70, containingType: !92, virtualIndex: 9, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!117 = distinct !{!117, i1 false, !"_ZSt19__relocate_object_aISt6vectorIhSaIhEES2_SaIS2_EEvPT_PT0_RT1_"}
!118 = distinct !{!118, !117, !"_ZSt19__relocate_object_aISt6vectorIhSaIhEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!119 = distinct !{!119, !117, !"_ZSt19__relocate_object_aISt6vectorIhSaIhEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!120 = distinct !{!120, !28}
!121 = !{!118}
!122 = !{!119}
!123 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
