Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/tracing_attributes-f06b183ce138dd6a.tracing_attributes.eb640b7d5f0a4045-cgu.04?download=true
inline.NumInlined: 51
inline.NumDeleted: 38
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @_RINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB8_13FlattenCompatppENtNtNtBc_6traits8iterator8Iterator10advance_by7advanceINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDB1h_p4ItemTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEL_EEB3x_(i64 %0, ptr align 8 %1) unnamed_addr #0 !guid !4 {
bb.a:
  %i.a = tail call i64 @_RNvYINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iteratorp4ItemTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEL_EBC_10advance_byB2h_(ptr align 8 %1, i64 %0) #12 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  %. = zext i1 %.not to i64
  %i.b = insertvalue { i64, i64 } poison, i64 %., 0
  %i.c = insertvalue { i64, i64 } %i.b, i64 %i.a, 1
  ret { i64, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterTNtCs1K5DUQUZc67_11proc_macro25IdentTBY_NtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropTBY_BY_EENCINvNtNtB2F_8adapters3map12map_try_foldBX_B4d_B3D_INtNtB2H_6result6ResultB3D_zENCNCINvB1D_9gen_blockNtB10_11TokenStreamEs0_0s4_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB4d_E0E0B5b_EB1F_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !5 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 3 uses
  %i.b = alloca [56 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTNtCs1K5DUQUZc67_11proc_macro25IdentTB10_NtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEETB10_B10_EINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB2B_EINtNtBa_6result6ResultB2L_zENCNCINvB1G_9gen_blockNtB12_11TokenStreamEs0_0s4_0NCINvNtB2Q_16in_place_collect24write_in_place_with_dropB2B_E0E0B1I_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropTNtCs1K5DUQUZc67_11proc_macro25IdentB1I_EEzENtNtNtB7_3ops9try_trait3Try6branchCskcYJZwGNSzp_18tracing_attributes(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropTNtCs1K5DUQUZc67_11proc_macro25IdentB1I_EEzENtNtNtB7_3ops9try_trait3Try11from_outputCskcYJZwGNSzp_18tracing_attributes(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterTNtCs1K5DUQUZc67_11proc_macro25IdentTBY_NtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropTBY_BY_EENCINvNtNtB2F_8adapters3map12map_try_foldBX_B4d_B3D_INtNtB2H_6result6ResultB3D_zENCNCINvB1D_9gen_blockNtNtCsgFSQ9XOTBNe_3syn4stmt5BlockEs0_0s4_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB4d_E0E0B5b_EB1F_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !6 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 3 uses
  %i.b = alloca [56 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTNtCs1K5DUQUZc67_11proc_macro25IdentTB10_NtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEETB10_B10_EINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB2B_EINtNtBa_6result6ResultB2L_zENCNCINvB1G_9gen_blockNtNtCsgFSQ9XOTBNe_3syn4stmt5BlockEs0_0s4_0NCINvNtB2Q_16in_place_collect24write_in_place_with_dropB2B_E0E0B1I_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropTNtCs1K5DUQUZc67_11proc_macro25IdentB1I_EEzENtNtNtB7_3ops9try_trait3Try6branchCskcYJZwGNSzp_18tracing_attributes(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropTNtCs1K5DUQUZc67_11proc_macro25IdentB1I_EEzENtNtNtB7_3ops9try_trait3Try11from_outputCskcYJZwGNSzp_18tracing_attributes(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENCNvXs0_CskcYJZwGNSzp_18tracing_attributesNtB2U_11MaybeItemFnINtNtB1B_7convert4FromNtNtBV_4item6ItemFnE4from0EB2U_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !7 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [256 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  invoke void @_RNvXsq_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtCshzWfHUSfYae_4core7default7Default7defaultCskcYJZwGNSzp_18tracing_attributes(ptr nonnull sret([24 x i8]) align 8 %i.f)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsq_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtCshzWfHUSfYae_4core7default7Default7defaultCskcYJZwGNSzp_18tracing_attributes(ptr nonnull sret([24 x i8]) align 8 %i.e)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.01.0 = phi i1 [ false, %.body ], [ true, %bb.d ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.f) #13
          to label %bb.n unwind label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.j, align 8
  %.pre9 = load ptr, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.l = phi ptr [ %i.m, %bb.g ], [ %.pre9, %bb.e ] ; 4 uses
  %.not.not.i = icmp eq ptr %i.l, %.pre
  br i1 %.not.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.b, ptr noundef nonnull align 8 dereferenceable(256) %i.l, i64 256, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 256 ; 2 uses
  invoke void @_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9partition6extendNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1i_ENCNvXs0_CskcYJZwGNSzp_18tracing_attributesNtB2D_11MaybeItemFnINtNtBe_7convert4FromNtNtB1m_4item6ItemFnE4from0E0B2D_(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %bb.f unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.l, ptr %i.k, align 8
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.n, ptr %i.q, align 8
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1j_(ptr nonnull align 8 %i.a)
          to label %bb.l unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %i.k, align 8
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1t_(ptr nonnull align 8 %i.d) #13
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.r, %bb.i ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.e) #13
          to label %bb.c unwind label %bb.m

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  ret void

bb.m:                                             ; preds = %bb.p, %.body, %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.n:                                             ; preds = %bb.c
  br i1 %.sroa.01.0, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.pn.pn7 = phi { ptr, i32 } [ %.pn.pn8, %bb.p ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %.pn.pn7

bb.p:                                             ; preds = %.thread, %bb.n
  %.pn.pn8 = phi { ptr, i32 } [ %i.g, %.thread ], [ %.pn, %bb.n ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1t_(ptr align 8 %1) #13
          to label %bb.o unwind label %bb.m
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtCs1K5DUQUZc67_11proc_macro25IdentTBS_NtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapTBS_BS_ENCNCINvB1x_9gen_blockNtBU_11TokenStreamEs0_0s4_0EB1z_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 !guid !8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtCs1K5DUQUZc67_11proc_macro25IdentTBS_NtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapTBS_BS_ENCNCINvB1x_9gen_blockNtNtCsgFSQ9XOTBNe_3syn4stmt5BlockEs0_0s4_0EB1z_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 !guid !9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtCsgFSQ9XOTBNe_3syn10punctuated8IntoIterNtNtB14_4item5FnArgEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEL_ENCNCINvB3R_9gen_blockNtB3i_11TokenStreamEs0_00EB2B_3mapTB3g_B3f_ENCB4R_s_0EB3T_(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 72)) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #2 !guid !10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  store ptr %2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtCsgFSQ9XOTBNe_3syn10punctuated8IntoIterNtNtB14_4item5FnArgEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEL_ENCNCINvB3R_9gen_blockNtNtB14_4stmt5BlockEs0_00EB2B_3mapTB3g_B3f_ENCB4R_s_0EB3T_(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 72)) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #2 !guid !11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  store ptr %2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @_RNCINvNvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtBe_6traits8iterator8Iteratorp4ItemTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEL_EjINtNtNtBg_3ops12control_flow11ControlFlowujEINvNvXsi_Ba_BV_B2g_10advance_by7advanceB1G_EE0B3y_(ptr nofree readonly align 8 captures(none) %0, i64 %1, ptr %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, ptr } @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_8iterator8Iteratorp4ItemTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEL_ENtB2_12IntoIterator9into_iterB2u_(ptr %2, ptr align 8 %3) #12 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = tail call align 8 ptr @_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEL_EE6insertB2G_(ptr align 8 %i.c, ptr %i.e, ptr align 8 %i.f) #12
  %i.h = tail call { i64, i64 } @_RNvYINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBb_13FlattenCompatppENtNtNtBf_6traits8iterator8Iterator10advance_by7advanceINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDB1k_p4ItemTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEL_EEINtNtNtBh_3ops8function5FnMutTjQB2c_EE8call_mutB3A_(ptr %i.a, i64 %1, ptr align 8 %i.g) #12
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtCs1K5DUQUZc67_11proc_macro25IdentTBX_NtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEE32forget_allocation_drop_remainingB1E_(ptr nofree align 8 captures(none) initializes((0, 8), (16, 24)) %0) unnamed_addr #1 !guid !13 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtCs1K5DUQUZc67_11proc_macro25IdentTB1g_NtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEEEB1Y_(ptr nonnull align 8 %i.a)
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.j, ptr %i.c, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtCs1K5DUQUZc67_11proc_macro25IdentTBD_NtNtCskcYJZwGNSzp_18tracing_attributes6expand10RecordTypeEEEB1k_(ptr align 8 %.val, i64 %i.g)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtENtB2_12IntoIterator9into_iterCskcYJZwGNSzp_18tracing_attributes(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 !guid !14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropINtB2_9DropGuardNtCs1K5DUQUZc67_11proc_macro25IdentNtNtBc_5alloc6GlobalEB12_4dropCskcYJZwGNSzp_18tracing_attributes(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 !guid !15 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs1K5DUQUZc67_11proc_macro25IdentEECskcYJZwGNSzp_18tracing_attributes(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCsgFSQ9XOTBNe_3syn3pat3PatNtNtBc_5alloc6GlobalEB12_4dropCskcYJZwGNSzp_18tracing_attributes(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 !guid !16 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn3pat3PatEECskcYJZwGNSzp_18tracing_attributes(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCsgFSQ9XOTBNe_3syn3pat8FieldPatNtNtBc_5alloc6GlobalEB12_4dropCskcYJZwGNSzp_18tracing_attributes(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 !guid !17 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn3pat8FieldPatEECskcYJZwGNSzp_18tracing_attributes(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item5FnArgNtNtBc_5alloc6GlobalEB12_4dropCskcYJZwGNSzp_18tracing_attributes(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 !guid !18 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4item5FnArgEECskcYJZwGNSzp_18tracing_attributes(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtNtNtBc_5alloc6GlobalEB12_4dropCskcYJZwGNSzp_18tracing_attributes(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 !guid !19 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEEB1j_(ptr nonnull align 8 %i.a)
  ret void
}
end_hunk_0
