Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_macros_backend-266071c329395f2b.pyo3_macros_backend.8382f7f5d6aca465-cgu.09?download=true
inline.NumInlined: 43
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [39 x i8] c"/rust/deps/hashbrown-0.17.1/src/raw.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"&\00\00\00\00\00\00\00\06\06\00\00\0D\00\00\00" }>, align 8
@2 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@3 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @2, [24 x i8] zeroinitializer }>, align 8
@4 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCskKLDkoKarTP_4core4boolb4thenNtNtCs1QQTzni0HOp_3syn5error5ErrorNCINvNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16pyclass_new_implINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterTRNtNtBD_4data5FieldNtB1c_16FieldPyO3OptionsEENCNvB1c_10impl_classs_0EEs0_0EB1e_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, i1 zeroext %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNCINvNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16pyclass_new_implINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1e_5slice4iter4IterTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtB4_16FieldPyO3OptionsEENCNvB4_10impl_classs_0EEs0_0B6_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCskKLDkoKarTP_4core4boolb4thenNtNtCs1QQTzni0HOp_3syn5error5ErrorNCNvNtCsbi23obv45GP_19pyo3_macros_backend7pyclass12pyclass_hash0EB1d_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, i1 zeroext %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNCNvNtCsbi23obv45GP_19pyo3_macros_backend7pyclass12pyclass_hash0B5_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCskKLDkoKarTP_4core4boolb4thenNtNtCs1QQTzni0HOp_3syn5error5ErrorNCNvNtCsbi23obv45GP_19pyo3_macros_backend7pyclass12pyclass_hashs_0EB1d_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, i1 zeroext %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNCNvNtCsbi23obv45GP_19pyo3_macros_backend7pyclass12pyclass_hashs_0B5_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs0_NtCs3FigHW6Y7TR_11proc_macro25rcvecINtB6_8RcVecMutNtB8_9TokenTreeE6extendINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtB1m_3map3MapIB2e_INtNtB1m_10filter_map9FilterMapINtNtB1m_9enumerate9EnumerateINtNtNtB1q_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend6method5FnArgEENCNvNtB42_6params15impl_arg_params0ENCINvXsb_B8_NtB8_11TokenStreamINtNtNtB1o_6traits7collect12FromIteratorB5C_E9from_iterB2z_E0ENCINvXs6_NtB8_3impNtB73_11TokenStreamIB5V_B7c_E9from_iterB2u_Es_0EEEB42_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  call void @_RINvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCs3FigHW6Y7TR_11proc_macro29TokenTreeEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBG_E6extendINtNtNtB1r_8adapters7flatten7FlattenINtNtB2t_3map3MapIB2Z_INtNtB2t_10filter_map9FilterMapINtNtB2t_9enumerate9EnumerateINtNtNtB1t_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend6method5FnArgEENCNvNtB4N_6params15impl_arg_params0ENCINvXsb_BI_NtBI_11TokenStreamINtB1n_12FromIteratorB6n_E9from_iterB3k_E0ENCINvXs6_NtBI_3impNtB7v_11TokenStreamIB6G_B7E_E9from_iterB3f_Es_0EEEB4N_(ptr align 8 %i.b, ptr nonnull align 8 %i.a) #20
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs0_NtCs3FigHW6Y7TR_11proc_macro25rcvecINtB6_8RcVecMutNtB8_9TokenTreeE6extendINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtB1m_3map3MapIB2e_INtNtNtB1q_5array4iter8IntoIterNtB8_11TokenStreamKj6_ENCINvXsb_B8_B34_INtNtNtB1o_6traits7collect12FromIteratorB34_E9from_iterB2z_E0ENCINvXs6_NtB8_3impNtB4Q_11TokenStreamIB3I_B4Z_E9from_iterB2u_Es_0EEECsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [280 x i8], align 8               ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.a, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 280, i1 false)
  call void @_RINvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCs3FigHW6Y7TR_11proc_macro29TokenTreeEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBG_E6extendINtNtNtB1r_8adapters7flatten7FlattenINtNtB2t_3map3MapIB2Z_INtNtNtB1t_5array4iter8IntoIterNtBI_11TokenStreamKj6_ENCINvXsb_BI_B3P_INtB1n_12FromIteratorB3P_E9from_iterB3k_E0ENCINvXs6_NtBI_3impNtB5i_11TokenStreamIB4t_B5r_E9from_iterB3f_Es_0EEECsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %i.b, ptr nonnull align 8 %i.a) #20
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE12remove_entryNCINvNtB8_3map14equivalent_keyeBQ_uE0ECsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree align 8 captures(none) %1, i64 %2, ptr %3, i64 %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = tail call ptr @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyeBQ_uE0ECsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %1, i64 %2, ptr %3, i64 %4) #20 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE13erase_no_dropCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %1, ptr nonnull align 8 %i.a)
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, i64 %1, ptr align 8 %2, i1 zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %i.d = alloca [16 x i8], align 16               ; 6 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [16 x i8], align 16               ; 8 uses
  %i.n = alloca [16 x i8], align 16               ; 6 uses
  %i.o = alloca [16 x i8], align 16               ; 4 uses
  %i.p = alloca [16 x i8], align 16               ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 16               ; 4 uses
  %i.s = alloca [16 x i8], align 16               ; 4 uses
  %i.t = alloca [56 x i8], align 8                ; 11 uses
  %i.u = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = add i64 %i.x, %1                         ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 8
  %i.ad = add i64 %i.ab, 1                        ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = mul nuw i64 %i.ae, 7
  %.sroa.02.0.i = select i1 %i.ac, i64 %i.ab, i64 %i.af ; 2 uses
  %i.ag = lshr i64 %.sroa.02.0.i, 1
  %.not.i = icmp ugt i64 %i.y, %i.ag
  br i1 %.not.i, label %bb.d, label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.ah = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %3) ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = extractvalue { i64, i64 } %i.ah, 1
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit

bb.d:                                             ; preds = %bb.b
  %i.ak = add nuw i64 %.sroa.02.0.i, 1
  %i.al = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCs3FigHW6Y7TR_11proc_macro2(i64 %i.y, i64 %i.ak) #20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = icmp ult i64 %i.al, 15
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp ugt i64 %i.al, 2305843009213693951
  br i1 %i.ao, label %bb.o, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ap = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCs3FigHW6Y7TR_11proc_macro2(i64 3, i64 range(i64 1, 0) %i.al) #20 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 4
  %i.ar = icmp ult i64 %i.ap, 8
  %.15.i.i = select i1 %i.ar, i64 8, i64 16
  %.sroa.04.0.i.i = select i1 %i.aq, i64 4, i64 %.15.i.i
  br label %4

bb.h:                                             ; preds = %bb.f
  %i.as = shl nuw i64 %i.al, 3
  %i.at = udiv i64 %i.as, 7
  %i.au = add nsw i64 %i.at, -1
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 true)
  %i.aw = lshr i64 -1, %i.av
  %i.ax = add nuw nsw i64 %i.aw, 1
  br label %4

4:                                                ; preds = %bb.h, %bb.g
  %.sroa.4.0.i.ph.i = phi i64 [ %i.ax, %bb.h ], [ %.sroa.04.0.i.i, %bb.g ] ; 3 uses
  %5 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 24) ; 2 uses
  %6 = extractvalue { i64, i1 } %5, 1
  br i1 %6, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %4
  %7 = extractvalue { i64, i1 } %5, 0
  %i.ay = add nuw i64 %7, 8
  %i.az = and i64 %i.ay, -16                      ; 3 uses
  %i.ba = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16
  %i.bb = add i64 %i.ba, %i.az                    ; 5 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = icmp ugt i64 %i.bb, 9223372036854775792
  %or.cond29.i = or i1 %i.bc, %i.bd
  br i1 %or.cond29.i, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = tail call { ptr, i64 } @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocateCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull %i.v, i64 16, i64 %i.bb) #20 ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 0      ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.be, 1      ; 2 uses
  %i.bh = icmp eq ptr %i.bf, null
  br i1 %i.bh, label %bb.k, label %bb.l

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.thread.i: ; preds = %bb.i, %4
  %i.bi = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %3) ; 2 uses
  %i.bj = extractvalue { i64, i64 } %i.bi, 0
  %i.bk = extractvalue { i64, i64 } %i.bi, 1
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bl = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 zeroext %3, i64 16, i64 %i.bb) ; 2 uses
  %i.bm = extractvalue { i64, i64 } %i.bl, 0
  %i.bn = extractvalue { i64, i64 } %i.bl, 1
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit.i

bb.l:                                             ; preds = %bb.j
  %.not17.i = icmp eq i64 %i.bg, %i.bb
  br i1 %.not17.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = add i64 %i.bg, -16
  %i.bp = udiv i64 %i.bo, 25
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 false)
  %i.br = and i64 %i.bq, 63
  %i.bs = lshr exact i64 -9223372036854775808, %i.br ; 3 uses
  %8 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bs, i64 24) ; 2 uses
  %9 = extractvalue { i64, i1 } %8, 1
  br i1 %9, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %10 = extractvalue { i64, i1 } %8, 0
  %i.bt = add nuw i64 %10, 8
  %i.bu = and i64 %i.bt, -16
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit

bb.o:                                             ; preds = %bb.f
  %i.bv = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %3) ; 2 uses
  %i.bw = extractvalue { i64, i64 } %i.bv, 0
  %i.bx = extractvalue { i64, i64 } %i.bv, 1
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit.i

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.014.0.i = phi i64 [ %i.az, %bb.l ], [ %i.bu, %bb.n ], [ undef, %bb.m ]
  %.sroa.0.0.i14 = phi i64 [ %.sroa.4.0.i.ph.i, %bb.l ], [ %i.bs, %bb.n ], [ %i.bs, %bb.m ] ; 3 uses
  %i.by = add i64 %.sroa.0.0.i14, -1              ; 3 uses
  %i.bz = icmp samesign ult i64 %i.by, 8
  %i.ca = lshr i64 %.sroa.0.0.i14, 3
  %i.cb = mul nuw nsw i64 %i.ca, 7
  %.sroa.07.0.i = select i1 %i.bz, i64 %i.by, i64 %i.cb
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sroa.014.0.i ; 2 uses
  %i.cd = add nuw i64 %.sroa.0.0.i14, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cc, i8 -1, i64 %i.cd, i1 false)
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit, %bb.d
  %.sroa.12.0 = phi i64 [ %.sroa.07.0.i, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit ], [ 0, %bb.d ]
  %.sroa.7.0 = phi i64 [ %i.by, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit ], [ 0, %bb.d ]
  %.sroa.019.0 = phi ptr [ %i.cc, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit ], [ @2, %bb.d ]
  store ptr %i.v, ptr %i.t, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 24, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.320.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 16, ptr %.sroa.320.0..sroa_idx.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 9 uses
  store ptr %.sroa.019.0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 5 uses
  store i64 %.sroa.7.0, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 3 uses
  store i64 %.sroa.12.0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %i.ce = load ptr, ptr %0, align 8               ; 2 uses
  invoke void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([16 x i8]) align 16 %i.s, ptr %i.ce)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc8
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc, %.lr.ph
  %lpad.loopexit34 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %._crit_edge, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Csbi23obv45GP_19pyo3_macros_backend.exit, %.noexc4, %bb.s, %.noexc6
  %lpad.loopexit37 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit34, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit37, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.t) #21
          to label %common.resume unwind label %bb.u

bb.p:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit
  %i.cf = load <2 x i64>, ptr %i.s, align 16
  store <2 x i64> %i.cf, ptr %i.r, align 16
  %i.cg = invoke i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 16 %i.r)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.ch = load i64, ptr %i.w, align 8             ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.q
  %i.cj = trunc i32 %i.cg to i16
  %i.ck = xor i16 %i.cj, -1
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph61, %bb.t
  %.sroa.016.059 = phi ptr [ %i.ce, %.lr.ph61 ], [ %.sroa.016.1.lcssa, %bb.t ] ; 2 uses
  %.sroa.5.058 = phi i64 [ 0, %.lr.ph61 ], [ %.sroa.5.1.lcssa, %bb.t ] ; 2 uses
  %.sroa.9.057 = phi i64 [ %i.ch, %.lr.ph61 ], [ %i.cz, %bb.t ]
  %.sroa.13.056 = phi i16 [ %i.ck, %.lr.ph61 ], [ %i.cx, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.not.i151 = icmp eq i16 %.sroa.13.056, 0
  br i1 %.not.i151, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.r, %.noexc2
  %.sroa.016.153 = phi ptr [ %i.cl, %.noexc2 ], [ %.sroa.016.059, %bb.r ]
  %.sroa.5.152 = phi i64 [ %i.cp, %.noexc2 ], [ %.sroa.5.058, %bb.r ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.016.153, i64 16 ; 3 uses
  invoke void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([16 x i8]) align 16 %i.p, ptr nonnull %i.cl) #20
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %.lr.ph
  %i.cm = load <2 x i64>, ptr %i.p, align 16
  store <2 x i64> %i.cm, ptr %i.o, align 16
  %i.cn = invoke i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 16 %i.o) #20
          to label %.noexc2 unwind label %.loopexit.split-lp.loopexit

.noexc2:                                          ; preds = %.noexc
  %i.co = trunc i32 %i.cn to i16                  ; 2 uses
  %i.cp = add i64 %.sroa.5.152, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.co, -1
  br i1 %.not.i1, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge62.loopexit:                           ; preds = %bb.t
  %.pre77 = load i64, ptr %i.w, align 8
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %._crit_edge62.loopexit, %bb.q
  %i.cq = phi i64 [ %.pre77, %._crit_edge62.loopexit ], [ 0, %bb.q ] ; 2 uses
  %i.cr = load i64, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %i.cs = sub i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  store i64 %i.cq, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.t)
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit.i

._crit_edge.loopexit:                             ; preds = %.noexc2
  %i.ct = xor i16 %i.co, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.r
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.056, %bb.r ], [ %i.ct, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.058, %bb.r ], [ %i.cp, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.016.1.lcssa = phi ptr [ %.sroa.016.059, %bb.r ], [ %i.cl, %._crit_edge.loopexit ]
  %i.cu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cv = zext nneg i16 %i.cu to i64
  %i.cw = add i16 %.sroa.13.1.lcssa, -1
  %i.cx = and i16 %i.cw, %.sroa.13.1.lcssa
  %i.cy = add i64 %.sroa.5.1.lcssa, %i.cv         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.cz = add i64 %.sroa.9.057, -1                ; 2 uses
  %i.da = load ptr, ptr %0, align 8
  %i.db = sub nsw i64 0, %i.cy
  %i.dc = getelementptr inbounds [24 x i8], ptr %i.da, i64 %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -24
  %i.de = invoke i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherNtNtCsexYYUdYSQU6_5alloc6string6StringuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.dd) #20
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Csbi23obv45GP_19pyo3_macros_backend.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Csbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.df = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %i.dg = and i64 %i.df, %i.de                    ; 3 uses
  %i.dh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  invoke void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([16 x i8]) align 16 %i.n, ptr %i.di) #20
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc4:                                          ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Csbi23obv45GP_19pyo3_macros_backend.exit
  %i.dj = load <2 x i64>, ptr %i.n, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store <2 x i64> %i.dj, ptr %i.m, align 16
  %i.dk = invoke i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 16 %i.m) #20
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc5:                                          ; preds = %.noexc4
  %i.dl = trunc i32 %i.dk to i16                  ; 2 uses
  %.not.i13.i = icmp eq i16 %i.dl, 0
  br i1 %.not.i13.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc9, %.noexc5
  %.sroa.0.0.lcssa.i = phi i64 [ %i.dg, %.noexc5 ], [ %i.ec, %.noexc9 ]
  %.lcssa.i = phi i16 [ %i.dl, %.noexc5 ], [ %i.eh, %.noexc9 ]
  %i.dm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.dn = zext nneg i16 %i.dm to i64
  %i.do = add i64 %.sroa.0.0.lcssa.i, %i.dn
  %i.dp = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8 ; 2 uses
  %i.dq = and i64 %i.do, %i.dp                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val3.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.dr = getelementptr inbounds nuw i8, ptr %.val3.i, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = icmp sgt i8 %i.ds, -1
  br i1 %i.dt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i
  invoke void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([16 x i8]) align 16 %i.l, ptr nonnull %.val3.i) #20
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc6:                                          ; preds = %bb.s
  %i.du = load <2 x i64>, ptr %i.l, align 16
  store <2 x i64> %i.du, ptr %i.k, align 16
  %i.dv = invoke i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 16 %i.k) #20
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc7:                                          ; preds = %.noexc6
  %i.dw = trunc i32 %i.dv to i16                  ; 2 uses
  %.not.i5.i = icmp eq i16 %i.dw, 0
  %i.dx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dw, i1 true)
  %i.dy = zext nneg i16 %i.dx to i64
  %.sroa.3.0.i6.i = select i1 %.not.i5.i, i64 undef, i64 %i.dy
  %.pre75 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.pre76 = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  br label %bb.t

.lr.ph.i:                                         ; preds = %.noexc5, %.noexc9
  %.sroa.0.015.i = phi i64 [ %i.ec, %.noexc9 ], [ %i.dg, %.noexc5 ]
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyeBQ_uE0ECsbi23obv45GP_19pyo3_macros_backend:bb.a
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse213__mm_set1_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([16 x i8]) align 16 %i.j, i8 %i.o) #20
  %i.v = load <2 x i64>, ptr %i.j, align 16
  store <2 x i64> %i.u, ptr %i.h, align 16
  store <2 x i64> %i.v, ptr %i.g, align 16
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_cmpeq_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([16 x i8]) align 16 %i.i, ptr nonnull align 16 %i.h, ptr nonnull align 16 %i.g) #20
  %i.w = load <2 x i64>, ptr %i.i, align 16
  store <2 x i64> %i.w, ptr %i.f, align 16
  %i.x = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 16 %i.f) #20
  %i.y = trunc i32 %i.x to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.i = phi i16 [ %i.y, %bb.b ], [ %i.ac, %bb.d ] ; 4 uses
  %.not.i = icmp eq i16 %.sroa.06.0.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i16 %.sroa.06.0.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i
  %i.ad = add i64 %.sroa.01.0.i, %i.aa
  %i.ae = load i64, ptr %i.p, align 8
  %i.af = and i64 %i.ae, %i.ad
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = sub nsw i64 0, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds [24 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.ak = call zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyeNtNtCsexYYUdYSQU6_5alloc6string6StringuE0Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.aj) #20
  br i1 %i.ak, label %bb.g, label %bb.c

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse213__mm_set1_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([16 x i8]) align 16 %i.e, i8 -1) #20
  %i.al = load <2 x i64>, ptr %i.e, align 16
  store <2 x i64> %i.u, ptr %i.c, align 16
  store <2 x i64> %i.al, ptr %i.b, align 16
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_cmpeq_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c, ptr nonnull align 16 %i.b) #20
  %i.am = load <2 x i64>, ptr %i.d, align 16
  store <2 x i64> %i.am, ptr %i.a, align 16
  %i.an = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 16 %i.a) #20
  %i.ao = and i32 %i.an, 65535
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit

bb.f:                                             ; preds = %bb.e
  %i.aq = load i64, ptr %i.p, align 8
  %i.ar = add i64 %.sroa.7.0.i, 16                ; 2 uses
  %i.as = add i64 %.sroa.01.0.i, %i.ar
  %i.at = and i64 %i.aq, %i.as
  br label %bb.b

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds [24 x i8], ptr %i.au, i64 %i.ah
  br label %bb.h

bb.h:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit, %bb.g
  %.sroa.0.0 = phi ptr [ %i.av, %bb.g ], [ null, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %0, i64 %1, ptr align 8 %2, i1 zeroext true) #23 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringuEECsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.h) #20
  %i.i = load <2 x i64>, ptr %i.d, align 16
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 16 %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load i64, ptr %i.e, align 8              ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = trunc i32 %i.j to i16
  %i.o = xor i16 %i.n, -1
  br label %.lr.ph

.loopexit:                                        ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend.exit, %bb.c, %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.05.019 = phi ptr [ %.sroa.05.229, %bb.c ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %.sroa.4.018 = phi ptr [ %.sroa.4.228, %bb.c ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.sroa.1.017 = phi i64 [ %i.z, %bb.c ], [ %i.k, %.lr.ph.preheader ]
  %.sroa.76.016 = phi i16 [ %i.ab, %bb.c ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not8.i = icmp eq i16 %.sroa.76.016, 0
  br i1 %.not8.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.sroa.4.1 = phi ptr [ %i.t, %.lr.ph.i ], [ %.sroa.4.018, %.lr.ph ] ; 2 uses
  %.sroa.05.1 = phi ptr [ %i.s, %.lr.ph.i ], [ %.sroa.05.019, %.lr.ph ]
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %.sroa.4.1) #20
  %i.p = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.p, ptr %i.a, align 16
  %i.q = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 16 %i.a) #20
  %i.r = trunc i32 %i.q to i16                    ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.05.1, i64 -384 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.1, i64 16 ; 2 uses
  %.not.i = icmp eq i16 %i.r, -1
  br i1 %.not.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend.exit.thread

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend.exit.thread: ; preds = %.lr.ph.i
  %i.u = xor i16 %i.r, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.sroa.05.019, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend.exit.thread, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend.exit
  %.lcssa.i30 = phi i16 [ %i.u, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend.exit.thread ], [ %.sroa.76.016, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend.exit ] ; 3 uses
  %.sroa.05.229 = phi ptr [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend.exit.thread ], [ %.sroa.05.019, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend.exit ] ; 2 uses
  %.sroa.4.228 = phi ptr [ %i.t, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend.exit.thread ], [ %.sroa.4.018, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend.exit ]
  %i.v = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i30, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [24 x i8], ptr %.sroa.05.229, i64 %i.x
  %i.z = add i64 %.sroa.10.sroa.1.017, -1         ; 2 uses
  %i.aa = add i16 %.lcssa.i30, -1
  %i.ab = and i16 %i.aa, %.lcssa.i30
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 -24
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringuEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.ac)
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringuENtNtB1h_5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringuEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %0)
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = add i64 %i.d, 1
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.f, 0           ; 2 uses
  %i.h = add i64 %3, -1
  %i.i = add i64 %i.h, %4                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %4
  br i1 %i.j, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %i.d, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = sub i64 -9223372036854775808, %3
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.l, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.r = load ptr, ptr %0, align 8
  %i.s = sub nsw i64 0, %.sroa.8.0
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCsbi23obv45GP_19pyo3_macros_backend(ptr %1, ptr %i.t, i64 %.sroa.0.0, i64 %.sroa.6.0) #20
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, i64 %3, i64 %4, i1 zeroext %5) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %4) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = extractvalue { i64, i1 } %i.a, 0           ; 2 uses
  %i.c = add i64 %3, -1                           ; 2 uses
  %i.d = add i64 %i.c, %6                         ; 2 uses
  %i.e = icmp ult i64 %i.d, %6
  br i1 %i.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub i64 0, %3                            ; 2 uses
  %i.g = and i64 %i.d, %i.f                       ; 3 uses
  %i.h = add i64 %4, 16
  %i.i = add i64 %i.h, %i.g                       ; 5 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = sub i64 -9223372036854775808, %3
  %i.l = icmp ugt i64 %i.i, %i.k
  %.not = icmp eq i64 %3, 0
  %i.m = or i1 %.not, %i.l
  %or.cond29 = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond29, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call { ptr, i64 } @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocateCsbi23obv45GP_19pyo3_macros_backend(ptr %1, i64 %3, i64 %i.i) #20 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %bb.e, label %bb.f

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.thread: ; preds = %bb.b, %bb.a, %bb.c
  %i.r = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %5) ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = extractvalue { i64, i64 } %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.v, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.w = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 zeroext %5, i64 %3, i64 %i.i) ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.aa, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %.not17 = icmp eq i64 %i.p, %i.i
  br i1 %.not17, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit20, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add i64 %2, 1                           ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.h

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit20: ; preds = %bb.i, %bb.h, %bb.f
  %.sroa.014.0 = phi i64 [ %i.g, %bb.f ], [ %i.aq, %bb.i ], [ undef, %bb.h ]
  %.sroa.0.0 = phi i64 [ %4, %bb.f ], [ %i.am, %bb.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.014.0
  %i.ae = add i64 %.sroa.0.0, -1                  ; 3 uses
  %i.af = icmp ult i64 %i.ae, 8
  %i.ag = lshr i64 %.sroa.0.0, 3
  %i.ah = mul nuw i64 %i.ag, 7
  %.sroa.07.0 = select i1 %i.af, i64 %i.ae, i64 %i.ah
  store ptr %i.ad, ptr %0, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.07.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ai = add i64 %i.p, -16
  %i.aj = udiv i64 %i.ai, %i.ab
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aj, i1 false)
  %i.al = and i64 %i.ak, 63
  %i.am = lshr exact i64 -9223372036854775808, %i.al ; 3 uses
  %i.an = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.am) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %7 = extractvalue { i64, i1 } %i.an, 0
  %i.ap = add i64 %i.c, %7
  %i.aq = and i64 %i.ap, %i.f
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit20

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr nonnull align 8 @1) #24
  unreachable

bb.k:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit20, %bb.e, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.thread
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2, i64 %3, i64 %4, i1 zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %4, 15
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %4, 2305843009213693951
  br i1 %i.d, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %2, 2
  %.inv.i = icmp ugt i64 %2, 3
  %..i = select i1 %.inv.i, i64 3, i64 7
  %.sroa.03.0.i = select i1 %i.e, i64 14, i64 %..i
  %i.f = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCs3FigHW6Y7TR_11proc_macro2(i64 %.sroa.03.0.i, i64 range(i64 1, 0) %4) #20 ; 2 uses
  %i.g = icmp ult i64 %i.f, 4
  %i.h = icmp ult i64 %i.f, 8
  %.15.i = select i1 %i.h, i64 8, i64 16
  %.sroa.04.0.i = select i1 %i.g, i64 4, i64 %.15.i
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %4, 3
  %i.j = udiv i64 %i.i, 7
  %i.k = add nsw i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = lshr i64 -1, %i.l
  %i.n = add nuw nsw i64 %i.m, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.4.0.i.ph = phi i64 [ %i.n, %bb.f ], [ %.sroa.04.0.i, %bb.e ]
  call void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr %1, i64 %2, i64 %3, i64 %.sroa.4.0.i.ph, i1 zeroext %5)
  %i.o = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  br i1 %i.p, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.u = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %5) ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.y, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.aa, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ab = add i64 %i.r, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 -1, i64 %i.ab, i1 false)
  store ptr %i.o, ptr %0, align 8
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.317.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.b, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE9next_implKb0_ECsbi23obv45GP_19pyo3_macros_backend(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not8 = icmp eq i16 %i.d, 0
  br i1 %.not8, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre11 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -384
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre11, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [24 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n) #20
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 16 %i.a) #20
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -384
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %.not = icmp eq i16 %i.q, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define void @_RINvNtCskKLDkoKarTP_4core9panicking13panic_displayNtNtCs1QQTzni0HOp_3syn5error5ErrorECsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCs1QQTzni0HOp_3syn5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.22.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr nonnull @4, ptr nonnull %i.a, ptr align 8 %1) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3zipRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBT_6string6StringEINtNtB4_5chain5ChainINtNtNtB6_7sources8repeat_n7RepeatNINtNtB8_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterB2X_ENcNtB2A_4Some0EEECsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 72)) %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = tail call { ptr, ptr } @_RNvXsh_NtCsexYYUdYSQU6_5alloc3vecRINtB5_3VecNtNtB7_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %1) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainINtNtNtB6_7sources8repeat_n7RepeatNINtNtB8_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtBQ_3map3MapINtNtNtB8_5slice4iter4IterB2c_ENcNtB1P_4Some0EENtB2_12IntoIterator9into_iterCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RINvXNtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorINtNtNtB9_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend5utils10IdentOrStrEINtB3_10SpecIterEqINtNtNtB7_8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB2X_4path11PathSegmentENCNCNvB1f_28has_attribute_with_namespace00EE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareRB1d_RNtCs3FigHW6Y7TR_11proc_macro25IdentNCINvYBN_B50_2eqB2r_E0E0EB1h_(ptr %0, ptr %1, ptr %2, ptr align 8 %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RINvNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator7iter_eqINtNtNtB8_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend5utils10IdentOrStrEINtNtNtB6_8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB2M_4path11PathSegmentENCNCNvB1m_28has_attribute_with_namespace00ENCINvNvNtB2_8Iterator5eq_by7compareRB1k_RNtCs3FigHW6Y7TR_11proc_macro25IdentNCINvYBU_B4A_2eqB2g_E0E0EB1o_(ptr %0, ptr %1, ptr %2, ptr align 8 %3) #20
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define noundef zeroext i1 @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs1QQTzni0HOp_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCsbi23obv45GP_19pyo3_macros_backend5utils28has_attribute_with_namespace0EB2h_(ptr nofree align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
end_hunk_1
begin_hunk_2_@_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass18PyClassEnumVariantENtNtNtNtBa_4iter6traits8iterator8Iterator3mapTRNtCs3FigHW6Y7TR_11proc_macro25IdentINtNtCsexYYUdYSQU6_5alloc6borrow3CowB2A_ERSNtNtCs1QQTzni0HOp_3syn4attr9AttributeENCNvBL_17impl_complex_enum0EBN_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass22PyClassEnumUnitVariantENtNtNtNtBa_4iter6traits8iterator8Iterator3mapINtNtCsexYYUdYSQU6_5alloc3vec3VecRNtNtCs1QQTzni0HOp_3syn4attr9AttributeENCNvBL_16impl_simple_enums2_0EBN_(ptr %0, ptr %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass22PyClassEnumUnitVariantENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNCNvBL_16impl_simple_enum0EBN_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr %1, ptr %2, ptr align 8 %3, ptr align 8 %4) unnamed_addr #5 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass22PyClassEnumUnitVariantENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNCNvBL_16impl_simple_enums_0EBN_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr %1, ptr %2, ptr align 8 %3, ptr align 8 %4) unnamed_addr #5 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass22PyClassEnumUnitVariantENtNtNtNtBa_4iter6traits8iterator8Iterator3mapRNtCs3FigHW6Y7TR_11proc_macro25IdentNCNvBL_16impl_simple_enums1_0EBN_(ptr %0, ptr %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass22PyClassEnumUnitVariantENtNtNtNtBa_4iter6traits8iterator8Iterator3mapTRNtCs3FigHW6Y7TR_11proc_macro25IdentINtNtCsexYYUdYSQU6_5alloc6borrow3CowB2E_ERSNtNtCs1QQTzni0HOp_3syn4attr9AttributeENCNvBL_16impl_simple_enums0_0EBN_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, ptr %2, ptr align 8 %3) unnamed_addr #5 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend8pymethod16MethodAndSlotDefENtNtNtNtBa_4iter6traits8iterator8Iterator3mapRNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNCNvMse_NtBN_7pyclassNtB3m_19PyClassImplsBuilder16impl_pyclassimpls1_0EBN_(ptr %0, ptr %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend8pymethod16MethodAndSlotDefENtNtNtNtBa_4iter6traits8iterator8Iterator3mapRNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNCNvMse_NtBN_7pyclassNtB3m_19PyClassImplsBuilder16impl_pyclassimpls_0EBN_(ptr %0, ptr %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend8pymethod18MethodAndMethodDefENtNtNtNtBa_4iter6traits8iterator8Iterator3mapRNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNCNvMse_NtBN_7pyclassNtB3o_19PyClassImplsBuilder16impl_pyclassimpl0EBN_(ptr %0, ptr %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend8pymethod18MethodAndMethodDefENtNtNtNtBa_4iter6traits8iterator8Iterator3mapRNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNCNvMse_NtBN_7pyclassNtB3o_19PyClassImplsBuilder16impl_pyclassimpls0_0EBN_(ptr %0, ptr %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend8pymethod2TyENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNCNvBL_20generate_method_bodys0_0EBN_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, ptr %2, ptr align 8 %3) unnamed_addr #5 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBa_6option6OptionNtNtCs1QQTzni0HOp_3syn4expr4ExprEEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNCNvNtCsbi23obv45GP_19pyo3_macros_backend6params15impl_arg_paramss0_0EB3M_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, ptr %2, ptr align 8 %3) unnamed_addr #5 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16FieldPyO3OptionsEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapRBK_NCNvB1k_10impl_classs_0EB1m_(ptr %0, ptr %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutNtNtCs1QQTzni0HOp_3syn4item4ItemENtNtNtNtBa_4iter6traits8iterator8Iterator3mapINtNtBa_6result6ResultuNtNtBQ_5error5ErrorENCNvNtCsbi23obv45GP_19pyo3_macros_backend6module20pymodule_module_impls0_0EB2P_(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 72)) %0, ptr %1, ptr %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #6 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutNtNtCs1QQTzni0HOp_3syn4item8ImplItemENtNtNtNtBa_4iter6traits8iterator8Iterator3mapINtNtBa_6result6ResultuNtNtBQ_5error5ErrorENCNvNtCsbi23obv45GP_19pyo3_macros_backend6pyimpl12impl_methods0EB2T_(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 72)) %0, ptr %1, ptr %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #6 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Csbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %i.f = tail call i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherNtNtCsexYYUdYSQU6_5alloc6string6StringuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Csbi23obv45GP_19pyo3_macros_backend(ptr align 8 %i.a, ptr nonnull align 8 %i.e) #20
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Csbi23obv45GP_19pyo3_macros_backend(ptr nofree readnone captures(none) %0, ptr %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringuEECsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Csbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -24
  %i.h = tail call zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyNtNtCsexYYUdYSQU6_5alloc6string6StringBO_uE0Csbi23obv45GP_19pyo3_macros_backend(ptr align 8 %i.a, ptr nonnull align 8 %i.g) #20
  ret i1 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Csbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -24
  %i.h = tail call zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyeNtNtCsexYYUdYSQU6_5alloc6string6StringuE0Csbi23obv45GP_19pyo3_macros_backend(ptr align 8 %i.a, ptr nonnull align 8 %i.g) #20
  ret i1 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0Csbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %i.i = add i64 %i.b, 1
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = extractvalue { i64, i1 } %i.j, 0           ; 2 uses
  %i.l = add i64 %i.h, -1
  %i.m = add i64 %i.l, %2                         ; 2 uses
  %i.n = icmp ult i64 %i.m, %2
  br i1 %i.n, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = sub i64 0, %i.h
  %i.p = and i64 %i.m, %i.o                       ; 3 uses
  %i.q = add i64 %i.b, 17
  %i.r = add i64 %i.q, %i.p                       ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.p
  br i1 %i.s, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = sub i64 -9223372036854775808, %i.h
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.p, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.r, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %i.h, %bb.e ]
  %i.v = load ptr, ptr %1, align 8
  %i.w = sub nsw i64 0, %.sroa.8.0
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCsbi23obv45GP_19pyo3_macros_backend(ptr %i.d, ptr %i.x, i64 %.sroa.0.0, i64 %.sroa.6.0) #20
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0Csbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not8 = icmp eq i64 %i.c, -1
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre9 = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre10 = add i64 %.pre9, 1
  %i.e = lshr i64 %.pre10, 3
  %i.f = mul nuw i64 %i.e, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %i.f, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.g = phi i64 [ %.pre9, %._crit_edge.loopexit ], [ -1, %bb.a ] ; 2 uses
  %i.h = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.i = icmp ult i64 %i.g, 8
  %.sroa.03.0 = select i1 %i.i, i64 %i.g, i64 %.pre-phi
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = sub i64 %.sroa.03.0, %i.k
  store i64 %i.m, ptr %i.l, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.0.07 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.c ] ; 5 uses
  %.neg = xor i64 %.sroa.0.07, -1
  %i.n = add nuw i64 %.sroa.0.07, 1
  %i.o = load ptr, ptr %1, align 8                ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.07 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, -128
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %exitcond.not = icmp eq i64 %.sroa.0.07, %i.c
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.t = add i64 %.sroa.0.07, -16
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, %i.t
  store i8 -1, ptr %i.q, align 1
  %i.x = load ptr, ptr %i.o, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %i.w
  %i.z = getelementptr i8, ptr %i.y, i64 16
  store i8 -1, ptr %i.z, align 1
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = load i64, ptr %i.d, align 8
  %i.ad = load ptr, ptr %i.ab, align 8
  %.neg6 = mul i64 %i.ac, %.neg
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg6
  tail call void %i.aa(ptr %i.ae)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = load ptr, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.ag, align 8
  br label %bb.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn4attr9AttributeEE3newCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtCs3FigHW6Y7TR_11proc_macro211TokenStreamE3newCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtCs3FigHW6Y7TR_11proc_macro25IdentE3newCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCs1QQTzni0HOp_3syn2ty4TypeE3newCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [224 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCs1QQTzni0HOp_3syn4expr4ExprE3newCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [176 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCs1QQTzni0HOp_3syn4expr6MemberE3newCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCs1QQTzni0HOp_3syn4item10ImplItemFnE3newCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [392 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCs1QQTzni0HOp_3syn4item4ItemE3newCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [352 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction17PyFunctionWarningE3newBS_(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCsbi23obv45GP_19pyo3_macros_backend12frompyobject16NamedStructFieldE3newBS_(ptr align 8 %0, i64 %1) unnamed_addr #4 {
end_hunk_2
begin_hunk_3_@_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend:bb.a
  %.sroa.3.0 = phi i32 [ %i.i, %bb.b ], [ -1, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.k, %bb.b ], [ undef, %bb.a ]
  %i.t = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, i32 } %i.t, i32 %.sroa.3.0, 1
  ret { i64, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend12frompyobject16TupleStructFieldEIBX_NtCs3FigHW6Y7TR_11proc_macro25IdentEEINtB5_7ZipImplBW_B2w_E3newB1q_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = udiv exact i64 %i.c, 336
  %i.e = ptrtoint ptr %4 to i64
  %i.f = ptrtoint ptr %3 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24
  %i.i = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3minCs3FigHW6Y7TR_11proc_macro2(i64 %i.d, i64 %i.h) #20
  store ptr %1, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.n, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { ptr, ptr } @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend12frompyobject16TupleStructFieldEIBX_NtCs3FigHW6Y7TR_11proc_macro25IdentEEINtB5_7ZipImplBW_B2w_E4nextB1q_(ptr nofree align 8 captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  store i64 %i.f, ptr %i.a, align 8
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw [336 x i8], ptr %i.g, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.k, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXs5_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterTNtNtCs1QQTzni0HOp_3syn4data7VariantNtNtBT_5token5CommaEENtNtB9_5clone5Clone5cloneCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXs5_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterTNtNtCs1QQTzni0HOp_3syn4item7UseTreeNtNtBT_5token5CommaEENtNtB9_5clone5Clone5cloneCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXs5_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterTNtNtCs1QQTzni0HOp_3syn4path15GenericArgumentNtNtBT_5token5CommaEENtNtB9_5clone5Clone5cloneCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXs5_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterTNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionNtNtCs1QQTzni0HOp_3syn5token5CommaEENtNtB9_5clone5Clone5cloneBT_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXs5_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterTNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionNtNtCs1QQTzni0HOp_3syn5token5CommaEENtNtB9_5clone5Clone5cloneBT_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXs5_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterTNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemNtNtCs1QQTzni0HOp_3syn5token5CommaEENtNtB9_5clone5Clone5cloneBV_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { ptr, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend12frompyobject16TupleStructFieldEIBW_NtCs3FigHW6Y7TR_11proc_macro25IdentEENtNtNtB8_6traits8iterator8Iterator4nextB1p_(ptr nofree align 8 captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend12frompyobject16TupleStructFieldEIBX_NtCs3FigHW6Y7TR_11proc_macro25IdentEEINtB5_7ZipImplBW_B2w_E4nextB1q_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  store i64 %i.f, ptr %i.a, align 8
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw [336 x i8], ptr %i.g, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.b
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend12frompyobject16TupleStructFieldEIBX_NtCs3FigHW6Y7TR_11proc_macro25IdentEEINtB5_7ZipImplBW_B2w_E4nextB1q_.exit

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend12frompyobject16TupleStructFieldEIBX_NtCs3FigHW6Y7TR_11proc_macro25IdentEEINtB5_7ZipImplBW_B2w_E4nextB1q_.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.k, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtB6_5chain5ChainINtNtNtB8_7sources8repeat_n7RepeatNINtNtBa_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtB6_3map3MapIBW_B3e_ENcNtB2R_4Some0EEENtNtNtB8_6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtB7_5chain5ChainINtNtNtB9_7sources8repeat_n7RepeatNINtNtBb_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtB7_3map3MapIBX_B3f_ENcNtB2S_4Some0EEEINtB5_7ZipImplBW_B1Z_E4nextCsbi23obv45GP_19pyo3_macros_backend.exit, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.f, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtB7_5chain5ChainINtNtNtB9_7sources8repeat_n7RepeatNINtNtBb_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtB7_3map3MapIBX_B3f_ENcNtB2S_4Some0EEEINtB5_7ZipImplBW_B1Z_E4nextCsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.i
  %i.g = tail call { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources8repeat_n7RepeatNINtNtBa_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB1V_ENcNtB1y_4Some0EENtNtNtB8_6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %0) #20 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1                 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.g, 1
  %spec.select.i = select i1 %i.i, ptr %i.j, ptr undef
  %spec.select7.i = select i1 %i.i, ptr %i.b, ptr null
  br label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtB7_5chain5ChainINtNtNtB9_7sources8repeat_n7RepeatNINtNtBb_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtB7_3map3MapIBX_B3f_ENcNtB2S_4Some0EEEINtB5_7ZipImplBW_B1Z_E4nextCsbi23obv45GP_19pyo3_macros_backend.exit

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtB7_5chain5ChainINtNtNtB9_7sources8repeat_n7RepeatNINtNtBb_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtB7_3map3MapIBX_B3f_ENcNtB2S_4Some0EEEINtB5_7ZipImplBW_B1Z_E4nextCsbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %bb.a, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.i, %bb.b
  %.sroa.4.0.i = phi ptr [ %spec.select.i, %bb.b ], [ undef, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %spec.select7.i, %bb.b ], [ null, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend.exit.i ], [ null, %bb.a ]
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.4.0.i, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringuENtNtB1h_5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringuEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull readonly align 8 %0)
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 24) ; 2 uses
  %2 = extractvalue { i64, i1 } %1, 1
  br i1 %2, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = extractvalue { i64, i1 } %1, 0
  %i.g = add nuw i64 %3, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add i64 %i.e, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull %i.a, ptr %i.o, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #20
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringuENtNtB1h_5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringuENtNtB1h_5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsbi23obv45GP_19pyo3_macros_backend.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 768614336404564651) i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtCs3FigHW6Y7TR_11proc_macro25IdentENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 54901024028897476) i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend12frompyobject16TupleStructFieldENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBM_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 336
  ret i64 %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend6method5FnArgENtNtNtNtB9_4iter6traits8iterator8Iterator9enumerateBM_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, ptr %2) unnamed_addr #5 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass30PyClassEnumVariantUnnamedFieldENtNtNtNtB9_4iter6traits8iterator8Iterator9enumerateBM_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, ptr %2) unnamed_addr #5 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutNtNtCsbi23obv45GP_19pyo3_macros_backend6method5FnArgENtNtNtNtB9_4iter6traits8iterator8Iterator6by_refBP_(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #11 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBb_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend12frompyobject16TupleStructFieldEIBR_NtCs3FigHW6Y7TR_11proc_macro25IdentEENtNtNtB9_6traits8iterator8Iterator9enumerateB1k_(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 56)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtB7_5chain5ChainINtNtNtB9_7sources8repeat_n7RepeatNINtNtBb_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtB7_3map3MapIBR_B39_ENcNtB2M_4Some0EEENtNtNtB9_6traits8iterator8Iterator9enumerateCsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 80)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtCsbi23obv45GP_19pyo3_macros_backend7pyclass16pyclass_new_implINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1e_5slice4iter4IterTRNtNtCs1QQTzni0HOp_3syn4data5FieldNtB4_16FieldPyO3OptionsEENCNvB4_10impl_classs_0EEs0_0B6_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNvNtCsbi23obv45GP_19pyo3_macros_backend7pyclass12pyclass_hash0B5_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNvNtCsbi23obv45GP_19pyo3_macros_backend7pyclass12pyclass_hashs_0B5_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCs3FigHW6Y7TR_11proc_macro29TokenTreeEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBG_E6extendINtNtNtB1r_8adapters7flatten7FlattenINtNtB2t_3map3MapIB2Z_INtNtB2t_10filter_map9FilterMapINtNtB2t_9enumerate9EnumerateINtNtNtB1t_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend6method5FnArgEENCNvNtB4N_6params15impl_arg_params0ENCINvXsb_BI_NtBI_11TokenStreamINtB1n_12FromIteratorB6n_E9from_iterB3k_E0ENCINvXs6_NtBI_3impNtB7v_11TokenStreamIB6G_B7E_E9from_iterB3f_Es_0EEEB4N_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCs3FigHW6Y7TR_11proc_macro29TokenTreeEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBG_E6extendINtNtNtB1r_8adapters7flatten7FlattenINtNtB2t_3map3MapIB2Z_INtNtNtB1t_5array4iter8IntoIterNtBI_11TokenStreamKj6_ENCINvXsb_BI_B3P_INtB1n_12FromIteratorB3P_E9from_iterB3k_E0ENCINvXs6_NtBI_3impNtB5i_11TokenStreamIB4t_B5r_E9from_iterB3f_Es_0EEECsbi23obv45GP_19pyo3_macros_backend(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #13

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCsbi23obv45GP_19pyo3_macros_backend(ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Csbi23obv45GP_19pyo3_macros_backend(ptr sret([16 x i8]) align 16, ptr) unnamed_addr #14

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Csbi23obv45GP_19pyo3_macros_backend(ptr align 16) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsbi23obv45GP_19pyo3_macros_backend(ptr align 8) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringuEECsbi23obv45GP_19pyo3_macros_backend(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCsbi23obv45GP_19pyo3_macros_backend(ptr, ptr, i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocateCsbi23obv45GP_19pyo3_macros_backend(ptr, i64, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr align 8) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 zeroext, i64, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCs3FigHW6Y7TR_11proc_macro2(i64, i64) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs2_NtCs1QQTzni0HOp_3syn5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsh_NtCsexYYUdYSQU6_5alloc3vecRINtB5_3VecNtNtB7_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsbi23obv45GP_19pyo3_macros_backend(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainINtNtNtB6_7sources8repeat_n7RepeatNINtNtB8_6option6OptionRNtNtCs1QQTzni0HOp_3syn4expr4ExprEEINtNtBQ_3map3MapINtNtNtB8_5slice4iter4IterB2c_ENcNtB1P_4Some0EENtB2_12IntoIterator9into_iterCsbi23obv45GP_19pyo3_macros_backend(ptr sret([40 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RINvNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator7iter_eqINtNtNtB8_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend5utils10IdentOrStrEINtNtNtB6_8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB2M_4path11PathSegmentENCNCNvB1m_28has_attribute_with_namespace00ENCINvNvNtB2_8Iterator5eq_by7compareRB1k_RNtCs3FigHW6Y7TR_11proc_macro25IdentNCINvYBU_B4A_2eqB2g_E0E0EB1o_(ptr, ptr, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCNvNtCsbi23obv45GP_19pyo3_macros_backend5utils28has_attribute_with_namespace0B5_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCNvMs6_NtCsbi23obv45GP_19pyo3_macros_backend7pyclassNtB7_17PyClassSimpleEnum3new0B9_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvNtCsbi23obv45GP_19pyo3_macros_backend6module18get_cfg_attributes0INtB7_5FnMutTRRNtNtCs1QQTzni0HOp_3syn4attr9AttributeEE8call_mutBU_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvNtCsbi23obv45GP_19pyo3_macros_backend6pyimpl18get_cfg_attributes0INtB7_5FnMutTRRNtNtCs1QQTzni0HOp_3syn4attr9AttributeEE8call_mutBU_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvNtCsbi23obv45GP_19pyo3_macros_backend8pymethod18impl_py_getter_def0INtB7_5FnMutTRRNtNtCs1QQTzni0HOp_3syn4attr9AttributeEE8call_mutBU_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvNtCsbi23obv45GP_19pyo3_macros_backend8pymethod18impl_py_setter_defs0_0INtB7_5FnMutTRRNtNtCs1QQTzni0HOp_3syn4attr9AttributeEE8call_mutBU_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCs1QQTzni0HOp_3syn4expr6MemberNtCs3FigHW6Y7TR_11proc_macro211TokenStreamuNCNvNtCsbi23obv45GP_19pyo3_macros_backend7pyclass23implement_py_formatting0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1t_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4t_3VecB1t_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2a_EE0E0E0B2g_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_3
