Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/BytecodeAnalysis?download=true
inline.NumInlined: 912
inline.NumDeleted: 351
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4Luau7CodeGenL16applyBuiltinCallE19LuauBuiltinFunctionRNS0_13BytecodeTypesE:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 10, ptr %i.bk, align 1, !tbaa !137
  br label %bb.by

bb.br:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i32 168430090, ptr %1, align 1
  br label %bb.by

bb.bs:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 10, ptr %i.bl, align 1, !tbaa !137
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 10, ptr %i.bm, align 1, !tbaa !138
  store i8 10, ptr %1, align 1, !tbaa !136
  br label %bb.by

bb.bt:                                            ; preds = %bb.a, %bb.a
  store i32 168430090, ptr %1, align 1
  br label %bb.by

bb.bu:                                            ; preds = %bb.a
  store <4 x i8> <i8 1, i8 10, i8 10, i8 10>, ptr %1, align 1, !tbaa !108
  br label %bb.by

bb.bv:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 10, ptr %i.bn, align 1, !tbaa !137
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 10, ptr %i.bo, align 1, !tbaa !138
  store i8 1, ptr %1, align 1, !tbaa !136
  br label %bb.by

bb.bw:                                            ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 10, ptr %i.bp, align 1, !tbaa !137
  store i8 2, ptr %1, align 1, !tbaa !136
  br label %bb.by

bb.bx:                                            ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 2, ptr %i.bq, align 1, !tbaa !137
  store i8 10, ptr %1, align 1, !tbaa !136
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.c = load ptr, ptr %1, align 8, !tbaa !110    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !139
  %i.i = load ptr, ptr %0, align 8, !tbaa !110    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, !prof !140

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !128

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.q = load i8, ptr %i.c, align 1, !tbaa !108
  store i8 %i.q, ptr %i.o, align 1, !tbaa !108
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit: ; preds = %bb.e, %bb.f
  %i.r = load ptr, ptr %0, align 8, !tbaa !110    ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !139
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #17
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !110
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !139
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.h:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !109
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp sgt i64 %i.f, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !128

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.f, 1
  br i1 %i.ac, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !108
  store i8 %i.ad, ptr %i.i, align 1, !tbaa !108
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.h
  %i.ae = icmp sgt i64 %i.aa, 1
  br i1 %i.ae, label %bb.n, label %bb.o, !prof !128

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.o:                                             ; preds = %bb.m
  %i.af = icmp eq i64 %i.aa, 1
  br i1 %i.af, label %bb.p, label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.o
  %i.ag = load i8, ptr %i.c, align 1, !tbaa !108
  store i8 %i.ag, ptr %i.i, align 1, !tbaa !108
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

_ZSt4copyIPhS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.n, %bb.o, %bb.p
  %i.ah = load ptr, ptr %1, align 8, !tbaa !110
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !109 ; 3 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !110
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 3 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.q, label %bb.r, !prof !128

bb.q:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.an, i64 %i.ar, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.r:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit
  %i.at = icmp eq i64 %i.ar, 1
  br i1 %i.at, label %bb.s, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %bb.r
  %i.au = load i8, ptr %i.an, align 1, !tbaa !108
  store i8 %i.au, ptr %i.ai, align 1, !tbaa !108
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.l, %bb.k, %bb.j, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit
  %i.av = load ptr, ptr %0, align 8, !tbaa !110
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !109
  br label %bb.t

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.c = load ptr, ptr %1, align 8, !tbaa !113    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !141
  %i.i = load ptr, ptr %0, align 8, !tbaa !113    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 12
  %i.o = icmp ugt i64 %i.n, 768614336404564650
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !140

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 3 uses
  %i.p = add i64 %i.d, -12
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 12
  %i.s = add i64 %.fr.i, 12
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.t, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !113      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !141
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #17
  br label %_ZNSt12_Vector_baseIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !141
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !112
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 12
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !128

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 12
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !127
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 12
  br i1 %i.af, label %bb.l, label %bb.m, !prof !128

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN4Luau7CodeGen19BytecodeRegTypeInfoES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 12
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIPN4Luau7CodeGen19BytecodeRegTypeInfoES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !127
  br label %_ZSt4copyIPN4Luau7CodeGen19BytecodeRegTypeInfoES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN4Luau7CodeGen19BytecodeRegTypeInfoES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !113
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !112 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !113
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !112 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4Luau7CodeGen19BytecodeRegTypeInfoES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN4Luau7CodeGen19BytecodeRegTypeInfoES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN4Luau7CodeGen19BytecodeRegTypeInfoES3_ET0_T_S5_S4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.011.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0810.i.i.i.i, i64 12, i1 false), !tbaa.struct !127
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !194

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4Luau7CodeGen19BytecodeRegTypeInfoES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !113
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !112
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.c = load ptr, ptr %1, align 8, !tbaa !126    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142
  %i.i = load ptr, ptr %0, align 8, !tbaa !126    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, !prof !140

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !128

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !119
  store i32 %i.r, ptr %i.o, align 4, !tbaa !119
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !126    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !142
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #17
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !126
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !142
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !129  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !128

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !119
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !119
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !128

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !126
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !129 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !126
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !129
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !119
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !119
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
end_hunk_0
