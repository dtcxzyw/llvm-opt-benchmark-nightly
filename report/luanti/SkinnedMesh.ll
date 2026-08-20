inline.NumInlined: 2819
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev:bb.a
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !272

_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !226
  br label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorItSaItEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !229
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #29
  br label %_ZNSt12_Vector_baseISt6vectorItSaItEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorItSaItEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNO5scene18SkinnedMeshBuilder8finalizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  %2 = alloca %"class.std::vector.70", align 8    ; 18 uses
  %3 = alloca %"class.core::aabbox3d", align 4    ; 4 uses
  tail call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.5, i32 noundef 0)
  tail call void @_ZN5scene18SkinnedMeshBuilder14topoSortJointsEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !270  ; 2 uses
  %.not127151 = icmp eq ptr %i.b, %i.d
  br i1 %.not127151, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !223
  tail call void @_ZN5scene11SkinnedMesh18prepareForSkinningEv(ptr noundef nonnull align 8 dereferenceable(152) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = load ptr, ptr %0, align 8, !tbaa !223    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !41   ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, 144115188075855871
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %.not270 = icmp eq ptr %i.i, %i.j
  br i1 %.not270, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.q = shl nuw nsw i64 %i.m, 3
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #33
          to label %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %.loopexit.split-lp ; 3 uses

_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE11_M_allocateEm.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !114
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %i.n
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !10
  %.pre232 = load ptr, ptr %i.h, align 8, !tbaa !10
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.sroa.0124.0152 = phi ptr [ %i.ba, %bb.h ], [ %i.b, %bb.a ] ; 5 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !223    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0124.0152, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !275
  %i.y = zext i16 %i.x to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !144
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !44  ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %.not.i.i53 = icmp ugt i64 %i.af, %i.y
  br i1 %.not.i.i53, label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE2atEm.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.19, i64 noundef %i.y, i64 noundef %i.af) #32
  unreachable

_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE2atEm.exit: ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.y
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 232 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !75 ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 3
  br i1 %i.ak, label %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE2atEm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 233, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene15SSkinMeshBuffer10getWeightsEv) #30
  unreachable

_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit:    ; preds = %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE2atEm.exit
  %i.al = shl nuw nsw i32 %i.aj, 3
  %narrow.i = sub nuw nsw i32 24, %i.al
  %switch.offset.i = zext nneg i32 %narrow.i to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %switch.offset.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !93
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %.0.i = load ptr, ptr %i.ao, align 8, !tbaa !94 ; 2 uses
  %.not51 = icmp eq ptr %.0.i, null
  br i1 %.not51, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit
  tail call void @_ZN5scene15SSkinMeshBuffer15addWeightBufferEv(ptr noundef nonnull align 8 dereferenceable(288) %i.ah)
  %i.ap = load i32, ptr %i.ai, align 8, !tbaa !75 ; 2 uses
  %i.aq = icmp ult i32 %i.ap, 3
  br i1 %i.aq, label %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit57, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 233, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene15SSkinMeshBuffer10getWeightsEv) #30
  unreachable

_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit57:  ; preds = %bb.f
  %i.ar = shl nuw nsw i32 %i.ap, 3
  %narrow.i54 = sub nuw nsw i32 24, %i.ar
  %switch.offset.i55 = zext nneg i32 %narrow.i54 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 %switch.offset.i55
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !93
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %.0.i56 = load ptr, ptr %i.au, align 8, !tbaa !94
  br label %bb.h

bb.h:                                             ; preds = %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit57, %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit
  %.042 = phi ptr [ %.0.i, %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit ], [ %.0.i56, %_ZN5scene15SSkinMeshBuffer10getWeightsEv.exit57 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0124.0152, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !276
  %i.ax = load i16, ptr %.sroa.0124.0152, align 4, !tbaa !273
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0124.0152, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !277
  tail call void @_ZN5scene12WeightBuffer9addWeightEjtf(ptr noundef nonnull align 8 dereferenceable(112) %.042, i32 noundef %i.aw, i16 noundef zeroext %i.ax, float noundef %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0124.0152, i64 12 ; 2 uses
  %.not127 = icmp eq ptr %i.ba, %i.d
  br i1 %.not127, label %._crit_edge, label %.lr.ph

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.c
  %.promoted173 = phi ptr [ %i.r, %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.c ] ; 3 uses
  %.promoted = phi ptr [ %i.t, %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %i.bb = phi ptr [ %.pre232, %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.bc = phi ptr [ %.pre, %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.j, %bb.c ] ; 2 uses
  %.not128168 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not128168, label %bb.i, label %.lr.ph170

.lr.ph170:                                        ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  br label %bb.j

._crit_edge171:                                   ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit
  store ptr %i.gh, ptr %i.bd, align 8
  %.pre235 = load ptr, ptr %0, align 8, !tbaa !223
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge171, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit
  %i.be = phi ptr [ %.pre235, %._crit_edge171 ], [ %i.f, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit ]
  %i.bf = phi ptr [ %i.gi, %._crit_edge171 ], [ %.promoted173, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit ] ; 3 uses
  %.lcssa153 = phi ptr [ %i.gj, %._crit_edge171 ], [ %.promoted, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit ]
  store ptr %.lcssa153, ptr %i.p, align 8
  store ptr %i.bf, ptr %2, align 8
  call void @_ZNK5scene11SkinnedMesh23calculateGlobalMatricesERSt6vectorIN4core8CMatrix4IfEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(152) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bg = load ptr, ptr %0, align 8, !tbaa !223   ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !73
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %.not196 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not196, label %._crit_edge189, label %.lr.ph188

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

.loopexit.split-lp:                               ; preds = %bb.b, %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE11_M_allocateEm.exit.i.i, %._crit_edge195, %.noexc68
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.j:                                             ; preds = %.lr.ph170, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit
  %i.bl = phi ptr [ %.promoted173, %.lr.ph170 ], [ %i.gh, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ] ; 26 uses
  %.sroa.0120.0169 = phi ptr [ %i.bc, %.lr.ph170 ], [ %i.gk, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.bm = phi ptr [ %.promoted, %.lr.ph170 ], [ %i.gj, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ] ; 9 uses
  %i.bn = phi ptr [ %.promoted173, %.lr.ph170 ], [ %i.gi, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ] ; 20 uses
  %i.bo = load ptr, ptr %.sroa.0120.0169, align 8, !tbaa !16 ; 10 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !103
  switch i8 %i.br, label %.invoke.loopexit344 [
    i8 1, label %bb.k
    i8 0, label %bb.p
    i8 -1, label %.invoke
  ], !prof !278

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bl, ptr noundef nonnull align 4 dereferenceable(64) %i.bp, i64 64, i1 false), !tbaa.struct !107
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.bt = ptrtoint ptr %i.bl to i64
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 4 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775744
  br i1 %i.bw, label %bb.n, label %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  store ptr %i.bl, ptr %i.bd, align 8
  store ptr %i.bm, ptr %i.p, align 8
  store ptr %i.bn, ptr %2, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
          to label %.noexc59 unwind label %.loopexit.split-lp138

.noexc59:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bx = ashr exact i64 %i.bv, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 144115188075855871)
  %i.cb = select i1 %i.bz, i64 144115188075855871, i64 %i.ca ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cc = shl nuw nsw i64 %i.cb, 6
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #33
          to label %.noexc60 unwind label %.loopexit137 ; 5 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ce, ptr noundef nonnull align 4 dereferenceable(64) %i.bp, i64 64, i1 false), !tbaa.struct !107
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bl
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc60, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cd, %.noexc60 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bn, %.noexc60 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.015.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.01214.i.i.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !107
  %i.cf = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.bl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !132

_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc60
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.noexc60 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 64
  %.not.i35.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bv) #29
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.o, %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.cd, i64 %i.cb
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

.loopexit137:                                     ; preds = %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit139 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bl, ptr %i.bd, align 8
  store ptr %i.bm, ptr %i.p, align 8
  store ptr %i.bn, ptr %2, align 8
  br label %bb.ag

.loopexit.split-lp138:                            ; preds = %bb.n
  %lpad.loopexit.split-lp140 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.invoke.loopexit344:                              ; preds = %bb.j
  br label %.invoke

.invoke:                                          ; preds = %bb.j, %.invoke.loopexit344
  %.str.11.sink = phi ptr [ @.str.12, %.invoke.loopexit344 ], [ @.str.11, %bb.j ]
  store ptr %i.bl, ptr %i.bd, align 8
  store ptr %i.bm, ptr %i.p, align 8
  store ptr %i.bn, ptr %2, align 8
  %i.cj = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cj, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %.str.11.sink, ptr %i.ck, align 8, !tbaa !111
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #32
          to label %.cont unwind label %.loopexit.split-lp133

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 52
  %.sroa.0.0.copyload.i.i = load float, ptr %i.cl, align 4, !tbaa !106, !noalias !279 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 60
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %.sroa.12.0.copyload.i.i = load float, ptr %.sroa.12.0..sroa_idx.i.i, align 4, !tbaa !106, !noalias !279 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 68
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.co = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !106, !noalias !279 ; 3 uses
  %.sroa.9.0.copyload.i.i = load float, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !tbaa !106, !noalias !279 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.co, %i.co
  %i.cp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cq = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload.i.i, float %.sroa.0.0.copyload.i.i, float %i.cp)
  %i.cr = tail call float @llvm.fmuladd.f32(float %.sroa.9.0.copyload.i.i, float %.sroa.9.0.copyload.i.i, float %i.cq)
  %i.cs = tail call float @llvm.fmuladd.f32(float %.sroa.12.0.copyload.i.i, float %.sroa.12.0.copyload.i.i, float %i.cr)
  %i.ct = fpext float %i.cs to double
  %sqrt.i.i.i = tail call double @llvm.sqrt.f64(double %i.ct)
  %i.cu = fdiv double 1.000000e+00, %sqrt.i.i.i
  %i.cv = fptrunc double %i.cu to float           ; 3 uses
  %i.cw = fmul float %.sroa.0.0.copyload.i.i, %i.cv ; 2 uses
  %i.cx = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.cy = insertelement <4 x float> %i.cx, float -0.000000e+00, i64 2
  %i.cz = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.cv, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.db = fmul <4 x float> %i.cy, %i.da           ; 6 uses
  %i.dc = fmul float %.sroa.12.0.copyload.i.i, %i.cv ; 2 uses
  %i.dd = extractelement <4 x float> %i.db, i64 0
  %i.de = extractelement <4 x float> %i.db, i64 1 ; 2 uses
  %.scalar = fmul float %i.cw, 2.000000e+00       ; 4 uses
  %i.df = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.dh = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.di = fmul <2 x float> %i.dh, splat (float 2.000000e+00) ; 5 uses
  %i.dj = extractelement <2 x float> %i.di, i64 0
  %i.dk = fneg float %i.dj                        ; 2 uses
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dd, float 1.000000e+00)
  %i.dm = extractelement <2 x float> %i.di, i64 1
  %i.dn = fneg float %i.dm                        ; 2 uses
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.de, float %i.dl)
  %i.dp = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x float> %i.dq, %i.di           ; 3 uses
  %i.ds = extractelement <2 x float> %i.dr, i64 0
  %i.dt = fneg float %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %.scalar, float %i.de, float %i.dt)
  %i.dv = extractelement <2 x float> %i.dr, i64 1
  %i.dw = fneg float %i.dv
  %i.dx = fneg float %.scalar
  %i.dy = fmul float %i.dc, %.scalar              ; 2 uses
  %i.dz = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.dw, i64 0
  %i.ea = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.eb = shufflevector <4 x float> %i.dz, <4 x float> %i.ea, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.db, <4 x float> %i.eb)
  %i.ed = fneg float %i.dy
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.cw, float 1.000000e+00) ; 2 uses
  %i.ef = insertelement <2 x float> %i.di, float %i.dn, i64 0
  %i.eg = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eh = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.ed, i64 1
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.eg, <2 x float> %i.ei)
  %i.ek = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.el = insertelement <2 x float> %i.ek, float %i.dk, i64 1
  %i.em = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> zeroinitializer
  %i.en = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.ee, i64 1
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.em, <2 x float> %i.eo)
  %i.eq = load <2 x float>, ptr %i.cm, align 4, !tbaa !106, !noalias !279 ; 2 uses
  %i.er = load float, ptr %i.cn, align 4, !tbaa !282, !noalias !279
  %i.es = extractelement <2 x float> %i.eq, i64 0
  %i.et = fmul float %i.es, %i.do                 ; 2 uses
  %i.eu = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1>
  %i.ev = insertelement <4 x float> %i.eu, float 0.000000e+00, i64 2
  %i.ew = fmul <4 x float> %i.ev, %i.ec           ; 2 uses
  %i.ex = insertelement <2 x float> poison, float %i.er, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ey, %i.ej           ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bo, i64 76
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !284, !noalias !279 ; 2 uses
  %i.fc = fmul float %i.fb, %i.du                 ; 2 uses
  %i.fd = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fmul <2 x float> %i.fe, %i.ep           ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.fh = load <2 x float>, ptr %i.bp, align 4, !tbaa !106, !noalias !279 ; 2 uses
  %i.fi = load <2 x float>, ptr %i.fg, align 4, !tbaa !106, !noalias !279 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i63, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store float %i.et, ptr %i.bl, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %4 = insertelement <4 x float> %i.ew, float 0.000000e+00, i64 2
  store <4 x float> %4, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  store <2 x float> %i.ez, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  store float 0.000000e+00, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store float %i.fc, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  store <2 x float> %i.ff, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  store float 0.000000e+00, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.fj = extractelement <2 x float> %i.fh, i64 0
  store float %i.fj, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  store <2 x float> %i.fi, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 60
  store float 1.000000e+00, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !40
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

bb.r:                                             ; preds = %bb.p
  %i.fl = ptrtoint ptr %i.bl to i64
  %i.fm = ptrtoint ptr %i.bn to i64
  %i.fn = sub i64 %i.fl, %i.fm                    ; 4 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775744
  br i1 %i.fo, label %bb.s, label %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  store ptr %i.bl, ptr %i.bd, align 8
  store ptr %i.bm, ptr %i.p, align 8
  store ptr %i.bn, ptr %2, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
          to label %.noexc64 unwind label %.loopexit.split-lp133

.noexc64:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.fp = ashr exact i64 %i.fn, 6                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fp, i64 1)
  %i.fq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fp ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fp
  %i.fs = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 144115188075855871)
  %i.ft = select i1 %i.fr, i64 144115188075855871, i64 %i.fs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ft, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fu = shl nuw nsw i64 %i.ft, 6
  %i.fv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #33
          to label %.noexc65 unwind label %.loopexit132 ; 5 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fn ; 9 uses
  store float %i.et, ptr %i.fw, align 4
  %.sroa.6.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store <4 x float> %i.ew, ptr %.sroa.6.0..sroa_idx89, align 4
  %.sroa.6.0..sroa_idx89.a = getelementptr inbounds nuw i8, ptr %i.fw, i64 20
  %5 = extractelement <2 x float> %i.ez, i64 0
  store float %5, ptr %.sroa.6.0..sroa_idx89.a, align 4
  %.sroa.10.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %6 = extractelement <2 x float> %i.ez, i64 1
  store float %6, ptr %.sroa.10.0..sroa_idx97, align 4
  %.sroa.12.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.fw, i64 28
  store float 0.000000e+00, ptr %.sroa.12.0..sroa_idx101, align 4
  %.sroa.13.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store float %i.fc, ptr %.sroa.13.0..sroa_idx103, align 4
  %.sroa.14.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.fw, i64 36
  %i.fx = extractelement <2 x float> %i.ff, i64 0
  store float %i.fx, ptr %.sroa.14.0..sroa_idx105, align 4
  %.sroa.15.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.fy = shufflevector <2 x float> %i.fh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 1>
  %i.ga = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> %i.fz, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %i.gb, ptr %.sroa.15.0..sroa_idx107, align 4
  %.sroa.19.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  %i.gc = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.fi, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.gc, ptr %.sroa.19.0..sroa_idx115, align 4
  %.not13.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bl
  br i1 %.not13.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc65, %.lr.ph.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fv, %.noexc65 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bn, %.noexc65 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.015.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.01214.i.i.i.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !107
  %i.gd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gd, %i.bl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !132

_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc65
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.fv, %.noexc65 ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 64
  %.not.i35.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i35.i.i.i, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.fn) #29
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i
  %i.gg = getelementptr inbounds nuw [64 x i8], ptr %i.fv, i64 %i.ft
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

.loopexit132:                                     ; preds = %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit134 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bl, ptr %i.bd, align 8
  store ptr %i.bm, ptr %i.p, align 8
  store ptr %i.bn, ptr %2, align 8
  br label %bb.ag

.loopexit.split-lp133:                            ; preds = %.invoke, %bb.s
  %lpad.loopexit.split-lp135 = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.q, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.l
  %i.gh = phi ptr [ %i.fk, %bb.q ], [ %i.gf, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ch, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.bs, %bb.l ] ; 2 uses
  %i.gi = phi ptr [ %i.bn, %bb.q ], [ %i.fv, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.cd, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.bn, %bb.l ] ; 2 uses
  %i.gj = phi ptr [ %i.bm, %bb.q ], [ %i.gg, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ci, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.bm, %bb.l ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0120.0169, i64 8 ; 2 uses
  %.not128 = icmp eq ptr %i.gk, %i.bb
  br i1 %.not128, label %._crit_edge171, label %bb.j

._crit_edge189:                                   ; preds = %._crit_edge185, %bb.i
  %.lcssa = phi ptr [ %i.bg, %bb.i ], [ %i.hf, %._crit_edge185 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !14 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !14 ; 2 uses
  %.not129191 = icmp eq ptr %i.gm, %i.go
  br i1 %.not129191, label %._crit_edge195, label %.lr.ph194

.lr.ph188:                                        ; preds = %bb.i, %._crit_edge185
  %i.gp = phi ptr [ %i.hj, %._crit_edge185 ], [ %i.bk, %bb.i ]
  %.0186 = phi i64 [ %i.he, %._crit_edge185 ], [ 0, %bb.i ] ; 4 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.0186
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !16 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 320 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 384 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 4, !tbaa !127, !range !33, !noundef !34
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.lr.ph188
  %i.gw = getelementptr inbounds nuw [64 x i8], ptr %i.bf, i64 %.0186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.gs, ptr noundef nonnull align 4 dereferenceable(64) %i.gw, i64 64, i1 false)
  store i8 1, ptr %i.gt, align 4, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.gx = invoke noundef zeroext i1 @_ZNK4core8CMatrix4IfE10getInverseERS1_(ptr noundef nonnull align 4 dereferenceable(64) %i.gs, ptr noundef nonnull align 4 dereferenceable(64) %1)
          to label %.noexc66 unwind label %bb.w

.noexc66:                                         ; preds = %bb.u
  br i1 %i.gx, label %bb.v, label %_ZN4core8CMatrix4IfE11makeInverseEv.exit

bb.v:                                             ; preds = %.noexc66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.gs, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !107
  br label %_ZN4core8CMatrix4IfE11makeInverseEv.exit

_ZN4core8CMatrix4IfE11makeInverseEv.exit:         ; preds = %.noexc66, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.x:                                             ; preds = %_ZN4core8CMatrix4IfE11makeInverseEv.exit, %.lr.ph188
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 112
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !122 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 120
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !122 ; 2 uses
  %.not130181 = icmp eq ptr %i.ha, %i.hc
  br i1 %.not130181, label %._crit_edge185, label %.lr.ph184

.lr.ph184:                                        ; preds = %bb.x
  %i.hd = getelementptr inbounds nuw [64 x i8], ptr %i.bf, i64 %.0186
  br label %bb.y

._crit_edge185:                                   ; preds = %bb.y, %bb.x
  %i.he = add nuw i64 %.0186, 1                   ; 2 uses
  %i.hf = load ptr, ptr %0, align 8, !tbaa !223   ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 72
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !73
  %i.hj = load ptr, ptr %i.hg, align 8, !tbaa !41 ; 2 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = ashr exact i64 %i.hm, 3
  %i.ho = icmp ult i64 %i.he, %i.hn
  br i1 %i.ho, label %.lr.ph188, label %._crit_edge189, !llvm.loop !285

bb.y:                                             ; preds = %.lr.ph184, %bb.y
  %.sroa.084.0182 = phi ptr [ %i.ha, %.lr.ph184 ], [ %i.hy, %bb.y ] ; 2 uses
  %i.hp = load i32, ptr %.sroa.084.0182, align 4, !tbaa !125
  %i.hq = load ptr, ptr %0, align 8, !tbaa !223
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !123
  %i.ht = zext i32 %i.hp to i64
  %i.hu = load ptr, ptr %i.hs, align 8, !tbaa !44
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.ht
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !47
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hx, ptr noundef nonnull align 4 dereferenceable(64) %i.hd, i64 64, i1 false), !tbaa.struct !107
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.084.0182, i64 4 ; 2 uses
  %.not130 = icmp eq ptr %i.hy, %i.hc
  br i1 %.not130, label %._crit_edge185, label %bb.y

._crit_edge195.loopexit:                          ; preds = %bb.ae
  %.pre236 = load ptr, ptr %0, align 8, !tbaa !223
  br label %._crit_edge195

._crit_edge195:                                   ; preds = %._crit_edge195.loopexit, %._crit_edge189
  %i.hz = phi ptr [ %.pre236, %._crit_edge195.loopexit ], [ %.lcssa, %._crit_edge189 ] ; 4 uses
  invoke void @_ZN5scene11SkinnedMesh26calculateStaticBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(152) %i.hz)
          to label %.noexc68 unwind label %.loopexit.split-lp

.noexc68:                                         ; preds = %._crit_edge195
  invoke void @_ZN5scene11SkinnedMesh27calculateJointBoundingBoxesEv(ptr noundef nonnull align 8 dereferenceable(152) %i.hz)
          to label %.noexc69 unwind label %.loopexit.split-lp

.noexc69:                                         ; preds = %.noexc68
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 24 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !144
  %i.id = load ptr, ptr %i.ia, align 8, !tbaa !44 ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.ic, %i.id
  br i1 %.not.i.i67, label %_ZN5scene11SkinnedMesh28recalculateBaseBoundingBoxesEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc69, %.noexc70
  %i.ie = phi ptr [ %i.il, %.noexc70 ], [ %i.id, %.noexc69 ]
  %i.if = phi i64 [ %i.ij, %.noexc70 ], [ 0, %.noexc69 ]
  %.04.i.i = phi i32 [ %i.ii, %.noexc70 ], [ 0, %.noexc69 ]
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.if
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !47
  invoke void @_ZN5scene15SSkinMeshBuffer22recalculateBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(288) %i.ih)
          to label %.noexc70 unwind label %.loopexit

.noexc70:                                         ; preds = %.lr.ph.i.i
  %i.ii = add i32 %.04.i.i, 1                     ; 2 uses
  %i.ij = zext i32 %i.ii to i64                   ; 2 uses
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !144
  %i.il = load ptr, ptr %i.ia, align 8, !tbaa !44 ; 2 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = ashr exact i64 %i.io, 3
  %i.iq = icmp ugt i64 %i.ip, %i.ij
  br i1 %i.iq, label %.lr.ph.i.i, label %_ZN5scene11SkinnedMesh28recalculateBaseBoundingBoxesEv.exit, !llvm.loop !211

.lr.ph194:                                        ; preds = %._crit_edge189, %bb.ae
  %.sroa.080.0192 = phi ptr [ %i.jl, %bb.ae ], [ %i.gm, %._crit_edge189 ] ; 2 uses
  %i.ir = load ptr, ptr %.sroa.080.0192, align 8, !tbaa !47 ; 6 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = invoke noundef ptr %i.iu(ptr noundef nonnull align 8 dereferenceable(8) %i.ir)
          to label %.noexc71 unwind label %bb.ac, !inline_history !147

end_hunk_0
