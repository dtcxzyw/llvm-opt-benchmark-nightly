inline.NumInlined: 1119
inline.NumDeleted: 346
begin_hunk_0_@_ZNSt6vectorIcSaIcEE6resizeEm:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #23 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #24
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef signext i8 @_ZNK6Assimp15DefaultIOSystem14getOsSeparatorEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp8IOSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp8IOSystemE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp18ObjFileMtlImporter4loadEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca i64, align 8                      ; 8 uses
  %i.h = alloca float, align 4                    ; 5 uses
  %i.i = alloca float, align 4                    ; 5 uses
  %i.j = alloca i64, align 8                      ; 8 uses
  %i.k = alloca float, align 4                    ; 5 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca float, align 4                    ; 5 uses
  %i.n = alloca i64, align 8                      ; 8 uses
  %i.o = alloca float, align 4                    ; 5 uses
  %i.p = alloca float, align 4                    ; 5 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  %i.r = alloca float, align 4                    ; 5 uses
  %i.s = alloca i64, align 8                      ; 6 uses
  %i.t = alloca float, align 4                    ; 5 uses
  %i.u = alloca i64, align 8                      ; 6 uses
  %i.v = alloca float, align 4                    ; 5 uses
  %i.w = alloca float, align 4                    ; 5 uses
  %i.x = alloca float, align 4                    ; 5 uses
  %1 = alloca %struct.aiColor3D, align 16         ; 6 uses
  %i.y = alloca float, align 4                    ; 5 uses
  %i.z = alloca float, align 4                    ; 5 uses
  %i.aa = alloca float, align 4                   ; 5 uses
  %i.ab = alloca float, align 4                   ; 5 uses
  %i.ac = alloca float, align 4                   ; 5 uses
  %i.ad = alloca float, align 4                   ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 82 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 25 uses
  %i.ag = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 27 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 42 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 26 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.hl
  %i.bh = phi ptr [ %i.ah, %.lr.ph ], [ %i.bgy, %bb.hl ] ; 72 uses
  %i.bi = phi ptr [ %i.ag, %.lr.ph ], [ %i.bgx, %bb.hl ] ; 83 uses
  %i.bj = load i8, ptr %i.bi, align 1
  switch i8 %i.bj, label %bb.hi [
    i8 107, label %bb.c
    i8 75, label %bb.c
    i8 84, label %bb.o
    i8 100, label %bb.z
    i8 78, label %bb.ak
    i8 110, label %bb.ak
    i8 80, label %bb.ba
    i8 109, label %bb.cg
    i8 98, label %bb.cs
    i8 114, label %bb.cv
    i8 105, label %bb.dg
    i8 97, label %bb.dn
    i8 115, label %bb.eq
    i8 99, label %bb.ge
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  store ptr %i.bk, ptr %i.ae, align 8
  %i.bl = load i8, ptr %i.bk, align 1
  switch i8 %i.bl, label %bb.l [
    i8 97, label %bb.d
    i8 100, label %bb.f
    i8 115, label %bb.h
    i8 101, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bm, ptr %i.ae, align 8
  %i.bn = load ptr, ptr %i.ap, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not151 = icmp eq ptr %i.bp, null
  br i1 %.not151, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 20580
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.br, ptr %i.ae, align 8
  %i.bs = load ptr, ptr %i.ap, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not150 = icmp eq ptr %i.bu, null
  br i1 %.not150, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20592
  br label %.sink.split

bb.h:                                             ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bw, ptr %i.ae, align 8
  %i.bx = load ptr, ptr %i.ap, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not149 = icmp eq ptr %i.bz, null
  br i1 %.not149, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 20604
  br label %.sink.split

bb.j:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.cb, ptr %i.ae, align 8
  %i.cc = load ptr, ptr %i.ap, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not148 = icmp eq ptr %i.ce, null
  br i1 %.not148, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 20616
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.i, %bb.k, %bb.g
  %.sink = phi ptr [ %i.bv, %bb.g ], [ %i.cf, %bb.k ], [ %i.ca, %bb.i ], [ %i.bq, %bb.e ]
  call void @_ZN6Assimp18ObjFileMtlImporter12getColorRGBAEP9aiColor3D(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.sink)
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.c, %bb.f, %bb.j, %bb.h, %bb.d
  %.sroa.090.0.copyload = load ptr, ptr %i.ae, align 8 ; 5 uses
  %.sroa.089.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %i.cg = ptrtoint ptr %.sroa.089.0.copyload to i64
  %.not.i = icmp ult ptr %.sroa.090.0.copyload, %.sroa.089.0.copyload
  br i1 %.not.i, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %bb.l
  %i.ch = getelementptr inbounds i8, ptr %.sroa.089.0.copyload, i64 -1 ; 2 uses
  %i.ci = icmp eq ptr %.sroa.090.0.copyload, %i.ch
  br i1 %i.ci, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.ck, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.090.0.copyload, %.preheader.i ] ; 6 uses
  %i.cj = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.cj, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, %.sroa.089.0.copyload
  %i.cm = icmp eq ptr %i.ck, %i.ch
  %.0.i.i = or i1 %i.cl, %i.cm
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.090.0.copyload, %.preheader.i ], [ %i.ck, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.089.0.copyload
  br i1 %.not19.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.co = load i32, ptr %i.ar, align 8
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.ar, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.cn, %bb.m ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.089.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.n
  %.sroa.010.136.i = ptrtoint ptr %.sroa.010.1.i to i64
  %i.cq = sub i64 %i.cg, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.cq
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.cs, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.cr = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.cr, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.cs, %.sroa.089.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.lr.ph32.i, %.critedge4.i, %bb.l, %bb.n
  %.sroa.010.3.i = phi ptr [ %.sroa.090.0.copyload, %bb.l ], [ %.sroa.010.1.i, %bb.n ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %i.ae, align 8
  br label %bb.hl

bb.o:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  store ptr %i.ct, ptr %i.ae, align 8
  %i.cu = load i8, ptr %i.ct, align 1
  switch i8 %i.cu, label %bb.w [
    i8 102, label %bb.p
    i8 114, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.cv, ptr %i.ae, align 8
  %i.cw = load ptr, ptr %i.ap, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not147 = icmp eq ptr %i.cy, null
  br i1 %.not147, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 20644
  call void @_ZN6Assimp18ObjFileMtlImporter12getColorRGBAEP9aiColor3D(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.cz)
  br label %bb.w

bb.r:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 5 uses
  store ptr %i.da, ptr %i.ae, align 8
  %i.db = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.dd = icmp eq ptr %i.da, %i.bh
  %i.de = icmp eq ptr %i.da, %i.dc
  %.0.i6.i.i.i = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %.0.i6.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.dg, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i ], [ %i.da, %bb.r ] ; 3 uses
  %i.df = load i8, ptr %.sroa.0.07.i.i.i, align 1
  switch i8 %i.df, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6Assimp18ObjFileMtlImporter4loadEv:bb.a
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276
  %i.kl = icmp eq ptr %.sroa.0.0.i.i278, %i.bh
  %i.km = icmp eq ptr %.sroa.0.0.i.i278, %i.kd
  %.0.i.i.i285 = select i1 %i.kl, i1 true, i1 %i.km
  br i1 %.0.i.i.i285, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280, label %bb.bd

bb.bd:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.0.i.i279
  store i8 %i.kk, ptr %i.kn, align 1
  %i.ko = icmp eq i64 %.0.i.i279, 2046
  br i1 %i.ko, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1: ; preds = %bb.bd
  %i.kp = or disjoint i64 %.0.i.i279, 1           ; 8 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i278, i64 1 ; 10 uses
  %i.kr = load i8, ptr %i.kq, align 1             ; 2 uses
  switch i8 %i.kr, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1
  %i.ks = icmp eq ptr %i.kq, %i.bh
  %i.kt = icmp eq ptr %i.kq, %i.kd
  %.0.i.i.i285.1 = select i1 %i.ks, i1 true, i1 %i.kt
  br i1 %.0.i.i.i285.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280, label %bb.be

bb.be:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284.1
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kp
  store i8 %i.kr, ptr %i.ku, align 1
  %i.kv = add nuw nsw i64 %.0.i.i279, 2
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i278, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276, !llvm.loop !12

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1, %bb.bd, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276
  %.sroa.0.0.i.i278.lcssa = phi ptr [ %.sroa.0.0.i.i278, %bb.bd ], [ %.sroa.0.0.i.i278, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284 ], [ %.sroa.0.0.i.i278, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.sroa.0.0.i.i278, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.sroa.0.0.i.i278, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.sroa.0.0.i.i278, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.sroa.0.0.i.i278, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.sroa.0.0.i.i278, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %i.kq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kq, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284.1 ]
  %.1.i.i281 = phi i64 [ 2047, %bb.bd ], [ %.0.i.i279, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284 ], [ %.0.i.i279, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.0.i.i279, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.0.i.i279, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.0.i.i279, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.0.i.i279, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %.0.i.i279, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276 ], [ %i.kp, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kp, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kp, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kp, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kp, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kp, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i276.1 ], [ %i.kp, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i284.1 ]
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.1.i.i281
  store i8 0, ptr %i.kx, align 1
  store ptr %.sroa.0.0.i.i278.lcssa, ptr %i.ae, align 8
  %i.ky = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i282 = load i8, ptr %i.ky, align 1
  %.not.i283 = icmp eq i8 %char0.i282, 0
  br i1 %.not.i283, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #22
  store float 0.000000e+00, ptr %i.z, align 4
  %i.kz = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.ky, ptr noundef nonnull align 4 dereferenceable(4) %i.z, i1 noundef zeroext true) ; 0 uses
  %i.la = load float, ptr %i.z, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit: ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280, %bb.bf
  %.sink8.i = phi float [ %i.la, %bb.bf ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280 ]
  %.sink.i = phi i8 [ 1, %bb.bf ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i280 ]
  store float %.sink8.i, ptr %i.kb, align 4
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ka, i64 20668
  store i8 %.sink.i, ptr %i.lb, align 4
  br label %bb.cd

bb.bg:                                            ; preds = %bb.ba
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 5 uses
  store ptr %i.lc, ptr %i.ae, align 8
  %i.ld = load ptr, ptr %i.ap, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  %i.lf = load ptr, ptr %i.le, align 8            ; 3 uses
  %.not141 = icmp eq ptr %i.lf, null
  br i1 %.not141, label %bb.cd, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 20672
  %i.lh = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.li = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.lj = icmp eq ptr %i.lc, %i.bh
  %i.lk = icmp eq ptr %i.lc, %i.li
  %.0.i6.i.i.i288 = select i1 %i.lj, i1 true, i1 %i.lk
  br i1 %.0.i6.i.i.i288, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader, label %.lr.ph.i.i.i289

.lr.ph.i.i.i289:                                  ; preds = %bb.bh, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291
  %.sroa.0.07.i.i.i290 = phi ptr [ %i.lm, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291 ], [ %i.lc, %bb.bh ] ; 3 uses
  %i.ll = load i8, ptr %.sroa.0.07.i.i.i290, align 1
  switch i8 %i.ll, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291:        ; preds = %.lr.ph.i.i.i289, %.lr.ph.i.i.i289
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i290, i64 1 ; 4 uses
  %i.ln = icmp eq ptr %i.lm, %i.bh
  %i.lo = icmp eq ptr %i.lm, %i.li
  %.0.i.i.i.i292 = select i1 %i.ln, i1 true, i1 %i.lo
  br i1 %.0.i.i.i.i292, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader, label %.lr.ph.i.i.i289, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291, %.lr.ph.i.i.i289, %bb.bh
  %.sroa.0.0.i.i295.ph = phi ptr [ %i.lc, %bb.bh ], [ %.sroa.0.07.i.i.i290, %.lr.ph.i.i.i289 ], [ %i.lm, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i291 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293: ; preds = %bb.bj, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader
  %.sroa.0.0.i.i295 = phi ptr [ %.sroa.0.0.i.i295.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader ], [ %i.mb, %bb.bj ] ; 13 uses
  %.0.i.i296 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.preheader ], [ %i.ma, %bb.bj ] ; 11 uses
  %i.lp = load i8, ptr %.sroa.0.0.i.i295, align 1 ; 2 uses
  switch i8 %i.lp, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293
  %i.lq = icmp eq ptr %.sroa.0.0.i.i295, %i.bh
  %i.lr = icmp eq ptr %.sroa.0.0.i.i295, %i.li
  %.0.i.i.i304 = select i1 %i.lq, i1 true, i1 %i.lr
  br i1 %.0.i.i.i304, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297, label %bb.bi

bb.bi:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lh, i64 %.0.i.i296
  store i8 %i.lp, ptr %i.ls, align 1
  %i.lt = icmp eq i64 %.0.i.i296, 2046
  br i1 %i.lt, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1: ; preds = %bb.bi
  %i.lu = or disjoint i64 %.0.i.i296, 1           ; 8 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i295, i64 1 ; 10 uses
  %i.lw = load i8, ptr %i.lv, align 1             ; 2 uses
  switch i8 %i.lw, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1
  %i.lx = icmp eq ptr %i.lv, %i.bh
  %i.ly = icmp eq ptr %i.lv, %i.li
  %.0.i.i.i304.1 = select i1 %i.lx, i1 true, i1 %i.ly
  br i1 %.0.i.i.i304.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297, label %bb.bj

bb.bj:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303.1
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lu
  store i8 %i.lw, ptr %i.lz, align 1
  %i.ma = add nuw nsw i64 %.0.i.i296, 2
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i295, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293, !llvm.loop !12

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1, %bb.bi, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293
  %.sroa.0.0.i.i295.lcssa = phi ptr [ %.sroa.0.0.i.i295, %bb.bi ], [ %.sroa.0.0.i.i295, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303 ], [ %.sroa.0.0.i.i295, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293 ], [ %.sroa.0.0.i.i295, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293 ], [ %.sroa.0.0.i.i295, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293 ], [ %.sroa.0.0.i.i295, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293 ], [ %.sroa.0.0.i.i295, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293 ], [ %.sroa.0.0.i.i295, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293 ], [ %i.lv, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1 ], [ %i.lv, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1 ], [ %i.lv, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1 ], [ %i.lv, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1 ], [ %i.lv, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1 ], [ %i.lv, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1 ], [ %i.lv, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303.1 ]
  %.1.i.i298 = phi i64 [ 2047, %bb.bi ], [ %.0.i.i296, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303 ], [ %.0.i.i296, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293 ], [ %.0.i.i296, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293 ], [ %.0.i.i296, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293 ], [ %.0.i.i296, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293 ], [ %.0.i.i296, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293 ], [ %.0.i.i296, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293 ], [ %i.lu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1 ], [ %i.lu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1 ], [ %i.lu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1 ], [ %i.lu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1 ], [ %i.lu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1 ], [ %i.lu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i293.1 ], [ %i.lu, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i303.1 ]
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lh, i64 %.1.i.i298
  store i8 0, ptr %i.mc, align 1
  store ptr %.sroa.0.0.i.i295.lcssa, ptr %i.ae, align 8
  %i.md = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i299 = load i8, ptr %i.md, align 1
  %.not.i300 = icmp eq i8 %char0.i299, 0
  br i1 %.not.i300, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit305, label %bb.bk

bb.bk:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #22
  store float 0.000000e+00, ptr %i.y, align 4
  %i.me = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.md, ptr noundef nonnull align 4 dereferenceable(4) %i.y, i1 noundef zeroext true) ; 0 uses
  %i.mf = load float, ptr %i.y, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit305

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit305: ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297, %bb.bk
  %.sink8.i301 = phi float [ %i.mf, %bb.bk ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297 ]
  %.sink.i302 = phi i8 [ 1, %bb.bk ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i297 ]
  store float %.sink8.i301, ptr %i.lg, align 4
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lf, i64 20676
  store i8 %.sink.i302, ptr %i.mg, align 4
  br label %bb.cd

bb.bl:                                            ; preds = %bb.ba
  %i.mh = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.mh, ptr %i.ae, align 8
  %i.mi = load ptr, ptr %i.ap, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 64
  %i.mk = load ptr, ptr %i.mj, align 8            ; 4 uses
  %.not140 = icmp eq ptr %i.mk, null
  br i1 %.not140, label %bb.cd, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 20680
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store <3 x float> zeroinitializer, ptr %1, align 16
  call void @_ZN6Assimp18ObjFileMtlImporter12getColorRGBAEP9aiColor3D(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1)
  %i.mm = load float, ptr %i.bg, align 8
  %i.mn = load <2 x float>, ptr %1, align 16
  store <2 x float> %i.mn, ptr %i.ml, align 4
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 20688
  store float %i.mm, ptr %i.mo, align 4
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 20692
  store i8 1, ptr %i.mp, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.cd

bb.bn:                                            ; preds = %bb.ba
  %i.mq = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 6 uses
  store ptr %i.mq, ptr %i.ae, align 8
  %i.mr = load i8, ptr %i.mq, align 1
  switch i8 %i.mr, label %bb.by [
    i8 114, label %bb.bo
    i8 116, label %bb.bt
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.ms = getelementptr inbounds nuw i8, ptr %i.bi, i64 3 ; 5 uses
  store ptr %i.ms, ptr %i.ae, align 8
  %i.mt = load ptr, ptr %i.ap, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 64
  %i.mv = load ptr, ptr %i.mu, align 8            ; 3 uses
  %.not139 = icmp eq ptr %i.mv, null
  br i1 %.not139, label %bb.cd, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 20728
  %i.mx = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.my = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.mz = icmp eq ptr %i.ms, %i.bh
  %i.na = icmp eq ptr %i.ms, %i.my
  %.0.i6.i.i.i308 = select i1 %i.mz, i1 true, i1 %i.na
  br i1 %.0.i6.i.i.i308, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.preheader, label %.lr.ph.i.i.i309

.lr.ph.i.i.i309:                                  ; preds = %bb.bp, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i311
  %.sroa.0.07.i.i.i310 = phi ptr [ %i.nc, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i311 ], [ %i.ms, %bb.bp ] ; 3 uses
  %i.nb = load i8, ptr %.sroa.0.07.i.i.i310, align 1
  switch i8 %i.nb, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i311
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i311
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i311:        ; preds = %.lr.ph.i.i.i309, %.lr.ph.i.i.i309
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i310, i64 1 ; 4 uses
  %i.nd = icmp eq ptr %i.nc, %i.bh
  %i.ne = icmp eq ptr %i.nc, %i.my
  %.0.i.i.i.i312 = select i1 %i.nd, i1 true, i1 %i.ne
  br i1 %.0.i.i.i.i312, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.preheader, label %.lr.ph.i.i.i309, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i311, %.lr.ph.i.i.i309, %bb.bp
  %.sroa.0.0.i.i315.ph = phi ptr [ %i.ms, %bb.bp ], [ %.sroa.0.07.i.i.i310, %.lr.ph.i.i.i309 ], [ %i.nc, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i311 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313: ; preds = %bb.br, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.preheader
  %.sroa.0.0.i.i315 = phi ptr [ %.sroa.0.0.i.i315.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.preheader ], [ %i.nr, %bb.br ] ; 13 uses
  %.0.i.i316 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.preheader ], [ %i.nq, %bb.br ] ; 11 uses
  %i.nf = load i8, ptr %.sroa.0.0.i.i315, align 1 ; 2 uses
  switch i8 %i.nf, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i323 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i323:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313
  %i.ng = icmp eq ptr %.sroa.0.0.i.i315, %i.bh
  %i.nh = icmp eq ptr %.sroa.0.0.i.i315, %i.my
  %.0.i.i.i324 = select i1 %i.ng, i1 true, i1 %i.nh
  br i1 %.0.i.i.i324, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317, label %bb.bq

bb.bq:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i323
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.0.i.i316
  store i8 %i.nf, ptr %i.ni, align 1
  %i.nj = icmp eq i64 %.0.i.i316, 2046
  br i1 %i.nj, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1: ; preds = %bb.bq
  %i.nk = or disjoint i64 %.0.i.i316, 1           ; 8 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i315, i64 1 ; 10 uses
  %i.nm = load i8, ptr %i.nl, align 1             ; 2 uses
  switch i8 %i.nm, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i323.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i323.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1
  %i.nn = icmp eq ptr %i.nl, %i.bh
  %i.no = icmp eq ptr %i.nl, %i.my
  %.0.i.i.i324.1 = select i1 %i.nn, i1 true, i1 %i.no
  br i1 %.0.i.i.i324.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317, label %bb.br

bb.br:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i323.1
  %i.np = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.nk
  store i8 %i.nm, ptr %i.np, align 1
  %i.nq = add nuw nsw i64 %.0.i.i316, 2
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i315, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313, !llvm.loop !12

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i323.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1, %bb.bq, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i323, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313
  %.sroa.0.0.i.i315.lcssa = phi ptr [ %.sroa.0.0.i.i315, %bb.bq ], [ %.sroa.0.0.i.i315, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i323 ], [ %.sroa.0.0.i.i315, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313 ], [ %.sroa.0.0.i.i315, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313 ], [ %.sroa.0.0.i.i315, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313 ], [ %.sroa.0.0.i.i315, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313 ], [ %.sroa.0.0.i.i315, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313 ], [ %.sroa.0.0.i.i315, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313 ], [ %i.nl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1 ], [ %i.nl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1 ], [ %i.nl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1 ], [ %i.nl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1 ], [ %i.nl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1 ], [ %i.nl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1 ], [ %i.nl, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i323.1 ]
  %.1.i.i318 = phi i64 [ 2047, %bb.bq ], [ %.0.i.i316, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i323 ], [ %.0.i.i316, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313 ], [ %.0.i.i316, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313 ], [ %.0.i.i316, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313 ], [ %.0.i.i316, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313 ], [ %.0.i.i316, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313 ], [ %.0.i.i316, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313 ], [ %i.nk, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1 ], [ %i.nk, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1 ], [ %i.nk, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1 ], [ %i.nk, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1 ], [ %i.nk, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1 ], [ %i.nk, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i313.1 ], [ %i.nk, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i323.1 ]
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.1.i.i318
  store i8 0, ptr %i.ns, align 1
  store ptr %.sroa.0.0.i.i315.lcssa, ptr %i.ae, align 8
  %i.nt = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i319 = load i8, ptr %i.nt, align 1
  %.not.i320 = icmp eq i8 %char0.i319, 0
  br i1 %.not.i320, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit325, label %bb.bs

bb.bs:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #22
  store float 0.000000e+00, ptr %i.x, align 4
  %i.nu = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.nt, ptr noundef nonnull align 4 dereferenceable(4) %i.x, i1 noundef zeroext true) ; 0 uses
  %i.nv = load float, ptr %i.x, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit325

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit325: ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317, %bb.bs
  %.sink8.i321 = phi float [ %i.nv, %bb.bs ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317 ]
  %.sink.i322 = phi i8 [ 1, %bb.bs ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i317 ]
  store float %.sink8.i321, ptr %i.mw, align 4
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mv, i64 20732
  store i8 %.sink.i322, ptr %i.nw, align 4
  br label %bb.cd

bb.bt:                                            ; preds = %bb.bn
  %i.nx = getelementptr inbounds nuw i8, ptr %i.bi, i64 3 ; 5 uses
  store ptr %i.nx, ptr %i.ae, align 8
  %i.ny = load ptr, ptr %i.ap, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 64
  %i.oa = load ptr, ptr %i.nz, align 8            ; 3 uses
  %.not138 = icmp eq ptr %i.oa, null
  br i1 %.not138, label %bb.cd, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 20720
  %i.oc = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.od = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.oe = icmp eq ptr %i.nx, %i.bh
  %i.of = icmp eq ptr %i.nx, %i.od
  %.0.i6.i.i.i328 = select i1 %i.oe, i1 true, i1 %i.of
  br i1 %.0.i6.i.i.i328, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.preheader, label %.lr.ph.i.i.i329

.lr.ph.i.i.i329:                                  ; preds = %bb.bu, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i331
  %.sroa.0.07.i.i.i330 = phi ptr [ %i.oh, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i331 ], [ %i.nx, %bb.bu ] ; 3 uses
  %i.og = load i8, ptr %.sroa.0.07.i.i.i330, align 1
  switch i8 %i.og, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i331
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i331
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i331:        ; preds = %.lr.ph.i.i.i329, %.lr.ph.i.i.i329
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i330, i64 1 ; 4 uses
  %i.oi = icmp eq ptr %i.oh, %i.bh
  %i.oj = icmp eq ptr %i.oh, %i.od
  %.0.i.i.i.i332 = select i1 %i.oi, i1 true, i1 %i.oj
  br i1 %.0.i.i.i.i332, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.preheader, label %.lr.ph.i.i.i329, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i331, %.lr.ph.i.i.i329, %bb.bu
  %.sroa.0.0.i.i335.ph = phi ptr [ %i.nx, %bb.bu ], [ %.sroa.0.07.i.i.i330, %.lr.ph.i.i.i329 ], [ %i.oh, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i331 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333: ; preds = %bb.bw, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.preheader
  %.sroa.0.0.i.i335 = phi ptr [ %.sroa.0.0.i.i335.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.preheader ], [ %i.ow, %bb.bw ] ; 13 uses
  %.0.i.i336 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.preheader ], [ %i.ov, %bb.bw ] ; 11 uses
  %i.ok = load i8, ptr %.sroa.0.0.i.i335, align 1 ; 2 uses
  switch i8 %i.ok, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333
  %i.ol = icmp eq ptr %.sroa.0.0.i.i335, %i.bh
  %i.om = icmp eq ptr %.sroa.0.0.i.i335, %i.od
  %.0.i.i.i344 = select i1 %i.ol, i1 true, i1 %i.om
  br i1 %.0.i.i.i344, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337, label %bb.bv

bb.bv:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343
  %i.on = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.0.i.i336
  store i8 %i.ok, ptr %i.on, align 1
  %i.oo = icmp eq i64 %.0.i.i336, 2046
  br i1 %i.oo, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i333.1: ; preds = %bb.bv
  %i.op = or disjoint i64 %.0.i.i336, 1           ; 8 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i335, i64 1 ; 10 uses
  %i.or = load i8, ptr %i.oq, align 1             ; 2 uses
  switch i8 %i.or, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i343.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i337
end_hunk_1
begin_hunk_2_@_ZN6Assimp18ObjFileMtlImporter14createMaterialEv:bb.a
  %i.hd = load i64, ptr %i.hb, align 8
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.hf, %i.gz
  br i1 %.not.i.i.i49, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i48, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.hg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hl) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.hm = load ptr, ptr %1, align 8               ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.c
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ho = load i64, ptr %i.c, align 8
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.ar:                                            ; preds = %bb.an, %bb.am, %bb.v, %bb.j
  %.pn13.pn = phi { ptr, i32 } [ %i.bx, %bb.v ], [ %i.go, %bb.am ], [ %i.an, %bb.j ], [ %i.gp, %bb.an ]
  %i.hq = load ptr, ptr %4, align 8               ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.ae
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.ar
  %i.hs = load i64, ptr %i.ae, align 8
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.f
  %.pn18 = phi { ptr, i32 } [ %i.v, %bb.f ], [ %.pn13.pn.pn, %bb.as ]
  %i.hu = load ptr, ptr %1, align 8               ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.c
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.at
  %i.hw = load i64, ptr %i.c, align 8
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn18
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE(ptr noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(5) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.b, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 4 uses
  %i.g = icmp eq ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.h = icmp eq ptr %.sroa.01.0.copyload, %i.f
  %.0.i6.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %.0.i6.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.j, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.01.0.copyload, %bb.a ] ; 3 uses
  %i.i = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.k = icmp eq ptr %i.j, %.sroa.0.0.copyload
  %i.l = icmp eq ptr %i.j, %i.f
  %.0.i.i.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %.0.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader, label %.lr.ph.i.i, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.01.0.copyload, %bb.a ], [ %i.j, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.0.07.i.i, %.lr.ph.i.i ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %bb.c, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.i.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader ], [ %i.y, %bb.c ] ; 13 uses
  %.0.i = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader ], [ %i.x, %bb.c ] ; 11 uses
  %i.m = load i8, ptr %.sroa.0.0.i, align 1       ; 2 uses
  switch i8 %i.m, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.n = icmp eq ptr %.sroa.0.0.i, %.sroa.0.0.copyload
  %i.o = icmp eq ptr %.sroa.0.0.i, %i.f
  %.0.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %.0.i.i, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.i
  store i8 %i.m, ptr %i.p, align 1
  %i.q = icmp eq i64 %.0.i, 2046
  br i1 %i.q, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1: ; preds = %bb.b
  %i.r = or disjoint i64 %.0.i, 1                 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1 ; 10 uses
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  switch i8 %i.t, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1:     ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1
  %i.u = icmp eq ptr %i.s, %.sroa.0.0.copyload
  %i.v = icmp eq ptr %i.s, %i.f
  %.0.i.i.1 = select i1 %i.u, i1 true, i1 %i.v
  br i1 %.0.i.i.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.r
  store i8 %i.t, ptr %i.w, align 1
  %i.x = add nuw nsw i64 %.0.i, 2
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, !llvm.loop !12

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %bb.b
  %.sroa.0.0.i.lcssa = phi ptr [ %.sroa.0.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.0.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ], [ %.sroa.0.0.i, %bb.b ], [ %i.s, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.s, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.s, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.s, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.s, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.s, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.s, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 ]
  %.1.i = phi i64 [ %.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.0.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ], [ 2047, %bb.b ], [ %i.r, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.r, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.r, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.r, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.r, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.r, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.r, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %.1.i
  store i8 0, ptr %i.z, align 1
  store ptr %.sroa.0.0.i.lcssa, ptr %i.b, align 8
  %i.aa = load ptr, ptr %i.d, align 8             ; 2 uses
  %char0 = load i8, ptr %i.aa, align 1
  %.not = icmp eq i8 %char0, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store float 0.000000e+00, ptr %i.a, align 4
  %i.ab = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.ac = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit, %bb.d
  %.sink8 = phi float [ %i.ac, %bb.d ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit ]
  %.sink = phi i8 [ 1, %bb.d ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit ]
  store float %.sink8, ptr %1, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %.sink, ptr %i.ad, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp18ObjFileMtlImporter12getColorRGBAERNS_5MaybeI9aiColor3DEE(ptr noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(13) initializes((0, 13)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.aiColor3D, align 16         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <3 x float> zeroinitializer, ptr %2, align 16
  call void @_ZN6Assimp18ObjFileMtlImporter12getColorRGBAEP9aiColor3D(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %2)
  %i.b = load float, ptr %i.a, align 8
  %i.c = load <2 x float>, ptr %2, align 16
  store <2 x float> %i.c, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.b, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 1, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE(ptr noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.e, null
  br i1 %.not2, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %i.g, align 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -1 ; 4 uses
  %i.l = icmp eq ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %i.m = icmp eq ptr %.sroa.01.0.copyload.i, %i.k
  %.0.i6.i.i.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %.0.i6.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.o, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i ], [ %.sroa.01.0.copyload.i, %bb.c ] ; 3 uses
  %i.n = load i8, ptr %.sroa.0.07.i.i.i, align 1
  switch i8 %i.n, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i:           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 1 ; 4 uses
  %i.p = icmp eq ptr %i.o, %.sroa.0.0.copyload.i
  %i.q = icmp eq ptr %i.o, %i.k
  %.0.i.i.i.i = select i1 %i.p, i1 true, i1 %i.q
  br i1 %.0.i.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader, label %.lr.ph.i.i.i, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i, %.lr.ph.i.i.i, %bb.c
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.01.0.copyload.i, %bb.c ], [ %.sroa.0.07.i.i.i, %.lr.ph.i.i.i ], [ %i.o, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i: ; preds = %bb.e, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader ], [ %i.ad, %bb.e ] ; 13 uses
  %.0.i.i = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader ], [ %i.ac, %bb.e ] ; 11 uses
  %i.r = load i8, ptr %.sroa.0.0.i.i, align 1     ; 2 uses
  switch i8 %i.r, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i:     ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i
  %i.s = icmp eq ptr %.sroa.0.0.i.i, %.sroa.0.0.copyload.i
  %i.t = icmp eq ptr %.sroa.0.0.i.i, %i.k
  %.0.i.i.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %.0.i.i.i, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.0.i.i
  store i8 %i.r, ptr %i.u, align 1
  %i.v = icmp eq i64 %.0.i.i, 2046
  br i1 %i.v, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1: ; preds = %bb.d
  %i.w = or disjoint i64 %.0.i.i, 1               ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1 ; 10 uses
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  switch i8 %i.y, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1:   ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1
  %i.z = icmp eq ptr %i.x, %.sroa.0.0.copyload.i
  %i.aa = icmp eq ptr %i.x, %i.k
  %.0.i.i.i.1 = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %.0.i.i.i.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.w
  store i8 %i.y, ptr %i.ab, align 1
  %i.ac = add nuw nsw i64 %.0.i.i, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, !llvm.loop !12

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %bb.d, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i
  %.sroa.0.0.i.i.lcssa = phi ptr [ %.sroa.0.0.i.i, %bb.d ], [ %.sroa.0.0.i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %i.x, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.x, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.x, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.x, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.x, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.x, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.x, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1 ]
  %.1.i.i = phi i64 [ 2047, %bb.d ], [ %.0.i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %i.w, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.w, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.w, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.w, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.w, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.w, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.w, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 %.1.i.i
  store i8 0, ptr %i.ae, align 1
  store ptr %.sroa.0.0.i.i.lcssa, ptr %i.g, align 8
  %i.af = load ptr, ptr %i.i, align 8             ; 2 uses
  %char0.i = load i8, ptr %i.af, align 1
  %.not.i = icmp eq i8 %char0.i, 0
  br i1 %.not.i, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store float 0.000000e+00, ptr %i.a, align 4
  %i.ag = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.af, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.ah = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit: ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i, %bb.f
  %.sink8.i = phi float [ %i.ah, %bb.f ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i ]
  %.sink.i = phi i8 [ 1, %bb.f ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i ]
  store float %.sink8.i, ptr %i.f, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i8 %.sink.i, ptr %i.ai, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp18ObjFileMtlImporter20getIlluminationModelERi(ptr noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 4 uses
  %i.f = icmp eq ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.g = icmp eq ptr %.sroa.01.0.copyload, %i.e
  %.0.i6.i.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.0.i6.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.01.0.copyload, %bb.a ] ; 3 uses
  %i.h = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.h, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.j = icmp eq ptr %i.i, %.sroa.0.0.copyload
  %i.k = icmp eq ptr %i.i, %i.e
  %.0.i.i.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.0.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader, label %.lr.ph.i.i, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.01.0.copyload, %bb.a ], [ %i.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.0.07.i.i, %.lr.ph.i.i ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %bb.c, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.i.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader ], [ %i.x, %bb.c ] ; 13 uses
  %.0.i = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader ], [ %i.w, %bb.c ] ; 11 uses
  %i.l = load i8, ptr %.sroa.0.0.i, align 1       ; 2 uses
  switch i8 %i.l, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.m = icmp eq ptr %.sroa.0.0.i, %.sroa.0.0.copyload
  %i.n = icmp eq ptr %.sroa.0.0.i, %i.e
  %.0.i.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %.0.i.i, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.i
  store i8 %i.l, ptr %i.o, align 1
  %i.p = icmp eq i64 %.0.i, 2046
  br i1 %i.p, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1: ; preds = %bb.b
  %i.q = or disjoint i64 %.0.i, 1                 ; 8 uses
end_hunk_2
