inline.NumInlined: 1092
inline.NumDeleted: 420
begin_hunk_0_@_ZNK6hermes13platform_intl22ParsedLocaleIdentifier12canonicalizeB5cxx11Ev:bb.a

bb.fd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i236
  %i.ug = icmp ult i64 %i.tp, 8
  call void @llvm.assume(i1 %i.ug)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i237: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i236
  %i.uh = load i64, ptr %i.d, align 8
  %i.ui = select i1 %i.uf, i64 7, i64 %i.uh
  %.not.i.i238 = icmp ugt i64 %i.ue, %i.ui
  br i1 %.not.i.i238, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i237
  store i16 45, ptr %i.ty, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit241

bb.ff:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i237
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.tp, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 1)
  %.pre381 = load ptr, ptr %0, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit241

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit241: ; preds = %bb.fe, %bb.ff
  %i.uj = phi ptr [ %i.tx, %bb.fe ], [ %.pre381, %bb.ff ] ; 2 uses
  store i64 %i.ue, ptr %i.e, align 8, !tbaa !13
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %i.uj, i64 %i.ue ; 3 uses
  store i16 0, ptr %i.uk, align 2, !tbaa !24
  %i.ul = load ptr, ptr %i.tz, align 8, !tbaa !7  ; 3 uses
  %i.um = load i64, ptr %i.ua, align 8, !tbaa !13 ; 5 uses
  %i.un = sub i64 2305843009213693948, %i.tk
  %i.uo = icmp ult i64 %i.un, %i.um
  br i1 %i.uo, label %bb.fg, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i242

bb.fg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit241
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i242: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit241
  %i.up = add i64 %i.um, %i.ue                    ; 4 uses
  %i.uq = icmp eq ptr %i.uj, %i.d                 ; 2 uses
  br i1 %i.uq, label %bb.fh, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i243

bb.fh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i242
  %i.ur = icmp ult i64 %i.ue, 8
  call void @llvm.assume(i1 %i.ur)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i243

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i243: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i242
  %i.us = load i64, ptr %i.d, align 8
  %i.ut = select i1 %i.uq, i64 7, i64 %i.us
  %.not.i.i.i244 = icmp ugt i64 %i.up, %i.ut
  br i1 %.not.i.i.i244, label %bb.fl, label %bb.fi

bb.fi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i243
  switch i64 %i.um, label %bb.fk [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247
    i64 1, label %bb.fj
  ]

bb.fj:                                            ; preds = %bb.fi
  %i.uu = load i16, ptr %i.ul, align 2, !tbaa !24
  store i16 %i.uu, ptr %i.uk, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247

bb.fk:                                            ; preds = %bb.fi
  %i.uv = shl i64 %i.um, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.uk, ptr align 2 %i.ul, i64 %i.uv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247

bb.fl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i243
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ue, i64 noundef 0, ptr noundef %i.ul, i64 noundef %i.um)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247: ; preds = %bb.fi, %bb.fj, %bb.fk, %bb.fl
  store i64 %i.up, ptr %i.e, align 8, !tbaa !13
  %i.uw = load ptr, ptr %0, align 8, !tbaa !7
  %i.ux = getelementptr inbounds nuw [2 x i8], ptr %i.uw, i64 %i.up
  store i16 0, ptr %i.ux, align 2, !tbaa !24
  br label %bb.fm

bb.fm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit233
  %i.uy = phi i64 [ %i.up, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit247 ], [ %i.tp, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit233 ]
  %i.uz = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0280.1358) #18 ; 2 uses
  %.not305 = icmp eq ptr %i.uz, %i.cw
  br i1 %.not305, label %._crit_edge360, label %bb.ex, !llvm.loop !64

._crit_edge360:                                   ; preds = %bb.fm, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit229
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !13
  %i.vd = icmp eq i64 %i.vc, 0
  br i1 %i.vd, label %bb.fx, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge360
  %i.ve = load i64, ptr %i.e, align 8, !tbaa !13  ; 6 uses
  %i.vf = add i64 %i.ve, -2305843009213693949
  %i.vg = icmp ult i64 %i.vf, 3
  br i1 %i.vg, label %bb.fn, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i251

bb.fn:                                            ; preds = %.preheader.preheader
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i251: ; preds = %.preheader.preheader
  %i.vh = add i64 %i.ve, 3                        ; 6 uses
  %i.vi = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.vj = icmp eq ptr %i.vi, %i.d                 ; 2 uses
  br i1 %i.vj, label %bb.fo, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i252

bb.fo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i251
  %i.vk = icmp ult i64 %i.ve, 8
  call void @llvm.assume(i1 %i.vk)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i252: ; preds = %bb.fo, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i251
  %i.vl = load i64, ptr %i.d, align 8
  %i.vm = select i1 %i.vj, i64 7, i64 %i.vl
  %.not.i.i253 = icmp ugt i64 %i.vh, %i.vm
  br i1 %.not.i.i253, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i252
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %i.vi, i64 %i.ve
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.vn, ptr noundef nonnull align 2 dereferenceable(6) @.str.4, i64 6, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit256

bb.fq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i252
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ve, i64 noundef 0, ptr noundef nonnull @.str.4, i64 noundef 3)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit256

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit256: ; preds = %bb.fp, %bb.fq
  store i64 %i.vh, ptr %i.e, align 8, !tbaa !13
  %i.vo = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.vo, i64 %i.vh ; 3 uses
  store i16 0, ptr %i.vp, align 2, !tbaa !24
  %i.vq = load ptr, ptr %i.va, align 8, !tbaa !7  ; 3 uses
  %i.vr = load i64, ptr %i.vb, align 8, !tbaa !13 ; 5 uses
  %i.vs = sub i64 2305843009213693948, %i.ve
  %i.vt = icmp ult i64 %i.vs, %i.vr
  br i1 %i.vt, label %bb.fr, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i257

bb.fr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit256
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i257: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit256
  %i.vu = add i64 %i.vr, %i.vh                    ; 3 uses
  %i.vv = icmp eq ptr %i.vo, %i.d                 ; 2 uses
  br i1 %i.vv, label %bb.fs, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i258

bb.fs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i257
  %i.vw = icmp ult i64 %i.vh, 8
  call void @llvm.assume(i1 %i.vw)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i258

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i258: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i257
  %i.vx = load i64, ptr %i.d, align 8
  %i.vy = select i1 %i.vv, i64 7, i64 %i.vx
  %.not.i.i.i259 = icmp ugt i64 %i.vu, %i.vy
  br i1 %.not.i.i.i259, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i258
  switch i64 %i.vr, label %bb.fv [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit262
    i64 1, label %bb.fu
  ]

bb.fu:                                            ; preds = %bb.ft
  %i.vz = load i16, ptr %i.vq, align 2, !tbaa !24
  store i16 %i.vz, ptr %i.vp, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit262

bb.fv:                                            ; preds = %bb.ft
  %i.wa = shl i64 %i.vr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.vp, ptr align 2 %i.vq, i64 %i.wa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit262

bb.fw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i258
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.vh, i64 noundef 0, ptr noundef %i.vq, i64 noundef %i.vr)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit262

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit262: ; preds = %bb.ft, %bb.fu, %bb.fv, %bb.fw
  store i64 %i.vu, ptr %i.e, align 8, !tbaa !13
  %i.wb = load ptr, ptr %0, align 8, !tbaa !7
  %i.wc = getelementptr inbounds nuw [2 x i8], ptr %i.wb, i64 %i.vu
  store i16 0, ptr %i.wc, align 2, !tbaa !24
  br label %bb.fx

bb.fx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit262, %._crit_edge360
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE17_M_realloc_insertIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEEvNSA_IPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a
  %4 = ashr exact i64 %i.f, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %4, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i, %4        ; 2 uses
  %6 = icmp ult i64 %5, %4
  %7 = tail call i64 @llvm.umin.i64(i64 %5, i64 288230376151711743)
  %8 = select i1 %6, i64 288230376151711743, i64 %7 ; 2 uses
  %9 = ptrtoint ptr %1 to i64
  %10 = sub i64 %9, %i.e
  %11 = shl nuw nsw i64 %8, 5
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #17 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 %10 ; 4 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !29 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !13
  %i.k = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.l = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 5 uses
  %i.o = icmp ugt i64 %i.n, 7
  br i1 %i.o, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_M_allocateEm.exit
  %i.p = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.q = add nuw nsw i64 %i.m, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #17 ; 2 uses
  store ptr %i.r, ptr %i.h, align 8, !tbaa !7
  store i64 %i.n, ptr %i.i, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_M_allocateEm.exit
  %.pre11.i.i = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.s = load i16, ptr %.sroa.01.0.copyload.i, align 2, !tbaa !24
  store i16 %i.s, ptr %.pre11.i.i, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre11.i.i, ptr align 2 %.sroa.01.0.copyload.i, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  store i64 %i.n, ptr %i.j, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.pre11.i.i, i64 %i.m
  store i16 0, ptr %i.t, align 2, !tbaa !24
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %12, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.u, ptr %.012.i.i.i, align 8, !tbaa !28, !alias.scope !65, !noalias !68
  %i.v = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !7, !alias.scope !68, !noalias !65 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !13, !alias.scope !68, !noalias !65 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 8
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = shl nuw nsw i64 %i.z, 1
  %i.ac = add nuw nsw i64 %i.ab, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ac, i1 false), !alias.scope !70
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.v, ptr %.012.i.i.i, align 8, !tbaa !7, !alias.scope !65, !noalias !68
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !19, !alias.scope !68, !noalias !65
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !19, !alias.scope !65, !noalias !68
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !13, !alias.scope !68, !noalias !65
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.ae = phi i64 [ %i.z, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !13, !alias.scope !65, !noalias !68
  store ptr %i.w, ptr %.0911.i.i.i, align 8, !tbaa !7, !alias.scope !68, !noalias !65
  store i64 0, ptr %i.af, align 8, !tbaa !13, !alias.scope !68, !noalias !65
  store i16 0, ptr %i.w, align 8, !tbaa !24, !alias.scope !68, !noalias !65
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !71

_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %12, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit ], [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24
  %.012.i.i.i19 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24 ], [ %i.aj, %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i20 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 3 uses
  store ptr %i.ak, ptr %.012.i.i.i19, align 8, !tbaa !28, !alias.scope !72, !noalias !75
  %i.al = load ptr, ptr %.0911.i.i.i20, align 8, !tbaa !7, !alias.scope !75, !noalias !72 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i21

bb.h:                                             ; preds = %.lr.ph.i.i.i18
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !13, !alias.scope !75, !noalias !72 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 8
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = shl nuw nsw i64 %i.ap, 1
  %i.as = add nuw nsw i64 %i.ar, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.as, i1 false), !alias.scope !77
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i21: ; preds = %.lr.ph.i.i.i18
  store ptr %i.al, ptr %.012.i.i.i19, align 8, !tbaa !7, !alias.scope !72, !noalias !75
  %i.at = load i64, ptr %i.am, align 8, !tbaa !19, !alias.scope !75, !noalias !72
  store i64 %i.at, ptr %i.ak, align 8, !tbaa !19, !alias.scope !72, !noalias !75
  %.phi.trans.insert.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %.pre.i.i.i.i23 = load i64, ptr %.phi.trans.insert.i.i.i.i22, align 8, !tbaa !13, !alias.scope !75, !noalias !72
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i21, %bb.h
  %i.au = phi i64 [ %i.ap, %bb.h ], [ %.pre.i.i.i.i23, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i21 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !13, !alias.scope !72, !noalias !75
  store ptr %i.am, ptr %.0911.i.i.i20, align 8, !tbaa !7, !alias.scope !75, !noalias !72
  store i64 0, ptr %i.av, align 8, !tbaa !13, !alias.scope !75, !noalias !72
  store i16 0, ptr %i.am, align 8, !tbaa !24, !alias.scope !75, !noalias !72
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i25, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27, label %.lr.ph.i.i.i18, !llvm.loop !71

_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24, %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.aj, %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #15
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27, %bb.i
  store ptr %12, ptr %0, align 8, !tbaa !21
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %12, i64 %8
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !23
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes13platform_intl22ParsedLocaleIdentifierC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<char16_t, std::pair<const char16_t, std::__cxx11::basic_string<char16_t>>, std::_Select1st<std::pair<const char16_t, std::__cxx11::basic_string<char16_t>>>, std::less<char16_t>>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char16_t>, std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>>, std::less<std::__cxx11::basic_string<char16_t>>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char16_t>, std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>>>, std::less<std::__cxx11::basic_string<char16_t>>>::_Alloc_node", align 8 ; 4 uses
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>, std::_Identity<std::__cxx11::basic_string<char16_t>>, std::less<std::__cxx11::basic_string<char16_t>>>::_Alloc_node", align 8 ; 4 uses
  tail call void @_ZN6hermes13platform_intl22ParsedLocaleIdentifier24ParsedLanguageIdentifierC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %i.h, ptr %5, align 8, !tbaa !78
  %i.i = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.c, !llvm.loop !81

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.c
  store ptr %.0.i.i.i.i.i.i, ptr %i.c, align 8, !tbaa !82
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83   ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyERKSB_.exit.i.i, label %bb.d, !llvm.loop !84

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyERKSB_.exit.i.i: ; preds = %bb.d
  store ptr %.0.i.i7.i.i.i.i, ptr %i.d, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.o = load i64, ptr %i.n, align 8, !tbaa !39
  store i64 %i.o, ptr %i.e, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  store ptr %i.i, ptr %i.b, align 8, !tbaa !82
  br label %_ZNSt3setINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit

_ZNSt3setINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyERKSB_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  store i32 0, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.p, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i64 0, ptr %i.t, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36   ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.v, null
  br i1 %.not.i.i8, label %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %i.w, ptr %4, align 8, !tbaa !85
  %i.x = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull %i.v, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i9 = phi ptr [ %i.x, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i9, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80   ; 2 uses
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i10, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.f, !llvm.loop !81

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.f
  store ptr %.0.i.i.i.i.i.i9, ptr %i.r, align 8, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i11 = phi ptr [ %i.x, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.ab, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i11, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83 ; 2 uses
  %.not.i.i8.i.i.i.i12 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i8.i.i.i.i12, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_.exit.i.i, label %bb.g, !llvm.loop !84

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_.exit.i.i: ; preds = %bb.g
  store ptr %.0.i.i7.i.i.i.i11, ptr %i.s, align 8, !tbaa !82
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !39
  store i64 %i.ad, ptr %i.t, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  store ptr %i.x, ptr %i.q, align 8, !tbaa !82
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @_ZN6hermes13platform_intl22ParsedLocaleIdentifier24ParsedLanguageIdentifierC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, ptr noundef nonnull align 8 dereferenceable(144) %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.am, null
  br i1 %.not.i.i13, label %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit20, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %i.an, ptr %3, align 8, !tbaa !85
  %i.ao = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i14 = phi ptr [ %i.ao, %bb.h ], [ %i.aq, %bb.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i14, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i.i.i.i15 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i15, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i16, label %bb.i, !llvm.loop !81

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i16: ; preds = %bb.i
  store ptr %.0.i.i.i.i.i.i14, ptr %i.ai, align 8, !tbaa !82
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i16
  %.0.i.i7.i.i.i.i17 = phi ptr [ %i.ao, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i16 ], [ %i.as, %bb.j ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i17, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !83 ; 2 uses
  %.not.i.i8.i.i.i.i18 = icmp eq ptr %i.as, null
  br i1 %.not.i.i8.i.i.i.i18, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_.exit.i.i19, label %bb.j, !llvm.loop !84

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_.exit.i.i19: ; preds = %bb.j
  store ptr %.0.i.i7.i.i.i.i17, ptr %i.aj, align 8, !tbaa !82
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.au = load i64, ptr %i.at, align 8, !tbaa !39
  store i64 %i.au, ptr %i.ak, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !82
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit20

_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit20: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_.exit.i.i19
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  store i32 0, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !38
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !36 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i21, label %_ZNSt3mapIDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4lessIDsESaISt4pairIKDsS5_EEEC2ERKSC_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_.exit20
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.bc, ptr %2, align 8, !tbaa !87
  %i.bd = call noundef ptr @_ZNSt8_Rb_treeIDsSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEESt10_Select1stIS8_ESt4lessIDsESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.av, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i22 = phi ptr [ %i.bd, %bb.k ], [ %i.bf, %bb.l ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i22, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !80 ; 2 uses
end_hunk_0
