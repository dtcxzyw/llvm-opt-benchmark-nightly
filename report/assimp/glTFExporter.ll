Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFExporter?download=true
inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_Z16SetAccessorRangeIhEvN10glTFCommon3RefIN4glTF8AccessorEEEPvjjj:bb.a
  %i.bi = load ptr, ptr %i.ap, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bk) #31
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i34

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i34: ; preds = %bb.l, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i32
  store ptr %i.be, ptr %i.am, align 8
  store ptr %i.bh, ptr %i.an, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bl, ptr %i.ap, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit35

_ZNSt6vectorIdSaIdEE9push_backEOd.exit35:         ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i34
  %i.bm = add nuw i32 %.02549, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bm, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !268

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge52
  %.02453 = phi ptr [ %i.bn, %._crit_edge52 ], [ %2, %.preheader.preheader ] ; 2 uses
  br label %bb.m

._crit_edge52:                                    ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %.02453, i64 %i.f ; 2 uses
  %i.bo = icmp ult ptr %i.bn, %i.d
  br i1 %i.bo, label %.preheader, label %._crit_edge54.split, !llvm.loop !269

bb.m:                                             ; preds = %.preheader, %bb.q
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.q ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.02453, i64 %indvars.iv
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = uitofp i8 %i.bq to double               ; 4 uses
  %i.bs = load ptr, ptr %0, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.e
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv ; 2 uses
  %i.by = load double, ptr %i.bx, align 8
  %i.bz = fcmp ogt double %i.by, %i.br
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.br, ptr %i.bx, align 8
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.e
  %.pre59 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ca = phi ptr [ %.pre59, %bb.n ], [ %i.bu, %bb.m ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8
  %i.cf = fcmp olt double %i.ce, %i.br
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.br, ptr %i.cd, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond58.not, label %._crit_edge52, label %bb.m, !llvm.loop !270

._crit_edge54.split:                              ; preds = %._crit_edge52, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF4Mesh21SCompression_Open3DGCD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4glTF4Mesh21SCompression_Open3DGCE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF4Mesh21SCompression_Open3DGCD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4glTF4Mesh21SCompression_Open3DGCE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4glTF4Mesh21SCompression_Open3DGCD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31, !inline_history !271
  br label %_ZN4glTF4Mesh21SCompression_Open3DGCD2Ev.exit

_ZN4glTF4Mesh21SCompression_Open3DGCD2Ev.exit:    ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #31
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4glTF4Mesh9PrimitiveESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 208                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 208                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 44343134792571038
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 44343134792571037, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4glTF4Mesh9PrimitiveEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN4glTF4Mesh9PrimitiveEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 208                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4glTF4Mesh9PrimitiveESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #34
  unreachable

_ZNKSt6vectorIN4glTF4Mesh9PrimitiveESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 44343134792571037) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 208
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #33 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 208
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %i.x = tail call noundef ptr @_ZNSt6vectorIN4glTF4Mesh9PrimitiveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.c, ptr noundef %i.b, ptr noundef nonnull %i.u, ptr noundef nonnull align 1 dereferenceable(1) %0) #30 ; 0 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN4glTF4Mesh9PrimitiveESaIS2_EE13_M_deallocateEPS2_m.exit36, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIN4glTF4Mesh9PrimitiveESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = load ptr, ptr %i.h, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aa) #31
  br label %_ZNSt12_Vector_baseIN4glTF4Mesh9PrimitiveESaIS2_EE13_M_deallocateEPS2_m.exit36

_ZNSt12_Vector_baseIN4glTF4Mesh9PrimitiveESaIS2_EE13_M_deallocateEPS2_m.exit36: ; preds = %_ZNKSt6vectorIN4glTF4Mesh9PrimitiveESaIS2_EE12_M_check_lenEmPKc.exit, %bb.e
  store ptr %i.u, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw [208 x i8], ptr %i.v, i64 %1
  store ptr %i.ab, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw [208 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ac, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4glTF4Mesh9PrimitiveEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4glTF4Mesh9PrimitiveESaIS2_EE13_M_deallocateEPS2_m.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN4glTF4Mesh9PrimitiveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN4glTF4Mesh9PrimitiveES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.aq, %.lr.ph.i.i ], [ %2, %bb.a ] ; 16 uses
  %.0911.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %0, %bb.a ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.a = load i32, ptr %.0911.i.i, align 8, !alias.scope !277, !noalias !276
  store i32 %i.a, ptr %.012.i.i, align 8, !alias.scope !276, !noalias !277
  %i.b = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8 ; 3 uses
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !alias.scope !277, !noalias !276
  store <2 x ptr> %i.d, ptr %i.b, align 8, !alias.scope !276, !noalias !277
  %4 = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 40
  %6 = load ptr, ptr %5, align 8, !alias.scope !277, !noalias !276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.c, i8 0, i64 24, i1 false), !alias.scope !277, !noalias !276
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !277, !noalias !276
  %7 = load <2 x ptr>, ptr %i.f, align 8, !alias.scope !277, !noalias !276
  %8 = insertelement <4 x ptr> poison, ptr %6, i64 0
  %9 = insertelement <4 x ptr> %8, ptr %i.g, i64 1
  %10 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = shufflevector <4 x ptr> %9, <4 x ptr> %10, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %11, ptr %4, align 8, !alias.scope !276, !noalias !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !alias.scope !277, !noalias !276
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !277, !noalias !276
  store ptr %i.j, ptr %i.h, align 8, !alias.scope !276, !noalias !277
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 64
  %12 = load ptr, ptr %i.l, align 8, !alias.scope !277, !noalias !276
  store ptr %12, ptr %i.k, align 8, !alias.scope !276, !noalias !277
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !277, !noalias !276
  store ptr %i.o, ptr %i.m, align 8, !alias.scope !276, !noalias !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false), !alias.scope !277, !noalias !276
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !alias.scope !277, !noalias !276
  store <2 x ptr> %i.r, ptr %i.p, align 8, !alias.scope !276, !noalias !277
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !277, !noalias !276
  store ptr %i.u, ptr %i.s, align 8, !alias.scope !276, !noalias !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false), !alias.scope !277, !noalias !276
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !alias.scope !277, !noalias !276
  store <2 x ptr> %i.x, ptr %i.v, align 8, !alias.scope !276, !noalias !277
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !277, !noalias !276
  store ptr %i.aa, ptr %i.y, align 8, !alias.scope !276, !noalias !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !alias.scope !277, !noalias !276
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 128 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !alias.scope !277, !noalias !276
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !alias.scope !276, !noalias !277
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !277, !noalias !276
  store ptr %i.ag, ptr %i.ae, align 8, !alias.scope !276, !noalias !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false), !alias.scope !277, !noalias !276
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 152
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 152 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !277, !noalias !276
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !alias.scope !276, !noalias !277
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 168
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !277, !noalias !276
  store ptr %i.am, ptr %i.ak, align 8, !alias.scope !276, !noalias !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !alias.scope !277, !noalias !276
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 176
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.an, ptr noundef nonnull align 8 dereferenceable(28) %i.ao, i64 28, i1 false), !alias.scope !278
  tail call void @_ZN4glTF4Mesh9Primitive10AttributesD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.c) #30, !noalias !276
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 208 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN4glTF4Mesh9PrimitiveES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !275

_ZSt12__relocate_aIPN4glTF4Mesh9PrimitiveES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.aq, %.lr.ph.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF4Mesh9Primitive10AttributesD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #31
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit2

_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit2: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #31
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit4

_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit4: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #31
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit6

_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit6: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit4, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit6
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #31
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit8

_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit8: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit6, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #31
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit10

_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit10: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit8, %bb.g
  %i.aq = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit12, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #31
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit12

_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit12: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EED2Ev.exit10, %bb.h
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA24_KcRPS1_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRPKcRA2_S1_ERA24_S1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #30
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
end_hunk_0
