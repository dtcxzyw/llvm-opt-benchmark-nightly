Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/cc-ebd20bb8c67c596d.cc.a58e23b92b5e10ba-cgu.12?download=true
inline.NumInlined: 14
inline.NumDeleted: 1
begin_hunk_0_@_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs2AWtUsOyxgP_3std7process6OutputNtNtNtBM_2io5error5ErrorE7map_errNtCsedfi03xVdHO_2cc5ErrorNCNvNtB1S_15command_helpers25spawn_and_wait_for_output0EB1S_:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs70aAUIZqZWH_15find_msvc_tools10find_tools6VsVersNtNtCscdodAO9FK5_5alloc6string6StringE3mapNtNtCsedfi03xVdHO_2cc16windows_registry6VsVersNCNvB2i_15find_vs_version0EB2k_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8
  %i.d = tail call i8 @_RNCNvNtCsedfi03xVdHO_2cc16windows_registry15find_vs_version0B5_(i8 %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.d, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtCsedfi03xVdHO_2cc5ErrorE3mapINtNtBM_6borrow3CoweENcNtB1N_5Owned0EB1l_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.c, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvYNcNtINtNtCscdodAO9FK5_5alloc6borrow3CoweE5Owned0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTNtNtBb_6string6StringEE9call_onceCsedfi03xVdHO_2cc(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i8, i8 } @_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCsedfi03xVdHO_2cc4tool10ToolFamilyNtBM_5ErrorE14unwrap_or_elseNCNvMBK_NtBK_4Tool13with_featuress_0EBM_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.c, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.d = call { i8, i8 } @_RNCNvMNtCsedfi03xVdHO_2cc4toolNtB4_4Tool13with_featuress_0B6_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i8, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.h = load i8, ptr %i.g, align 1
  %i.i = insertvalue { i8, i8 } poison, i8 %i.f, 0
  %i.j = insertvalue { i8, i8 } %i.i, i8 %i.h, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.merged = phi { i8, i8 } [ %i.d, %bb.b ], [ %i.j, %bb.c ]
  ret { i8, i8 } %.merged
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCsedfi03xVdHO_2cc8tempfile13NamedTempfileNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE7map_errNtBM_5ErrorNCNvNvMNtBM_4toolNtB2v_4Tool13with_features19detect_family_inners0_0EBM_(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void @_RNCNvNvMNtCsedfi03xVdHO_2cc4toolNtB6_4Tool13with_features19detect_family_inners0_0B8_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %2, ptr %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE7map_errNtCsedfi03xVdHO_2cc5ErrorNCNvNvMNtB1x_4toolNtB21_4Tool13with_features19detect_family_inners_0EB1x_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNCNvNvMNtCsedfi03xVdHO_2cc4toolNtB6_4Tool13with_features19detect_family_inners_0B8_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %2, ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define ptr @_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE7or_elseBJ_NCNvMs4_Csedfi03xVdHO_2ccNtB1G_5Build8assembles0_0EB1G_(ptr %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @_RNCNvMs4_Csedfi03xVdHO_2ccNtB7_5Build8assembles0_0B7_(ptr align 8 %1, ptr align 8 %2, ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define ptr @_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultyNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE3mapuNCNCNvMs4_Csedfi03xVdHO_2ccNtB1C_5Build8assembles0_00EB1C_(i64 %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = trunc nuw i64 %0 to i1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  tail call void @_RNCNCNvMs4_Csedfi03xVdHO_2ccNtB9_5Build8assembles0_00B9_(i64 %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs0_Cs56awJiKzoFA_9jobserverNtB6_6Client18into_helper_threadNCNvMs_NtNtNtCsedfi03xVdHO_2cc8parallel9job_token19inherited_jobserverNtB17_12HelperThread3new0EB1d_(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, ptr %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.i, align 8
  store i64 %2, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %3, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs7_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtCs56awJiKzoFA_9jobserver11HelperInnerENtNtCs4NRVxsYgnAr_4core7default7Default7defaultCsedfi03xVdHO_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.k = invoke i32 @_RNvXs0_NtNtNtCs2AWtUsOyxgP_3std4sync6poison7condvarNtB5_7CondvarNtNtCs4NRVxsYgnAr_4core7default7Default7defaultCsedfi03xVdHO_2cc()
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.l, %bb.c
  %.pn9 = phi { ptr, i32 } [ %i.m, %bb.c ], [ %.pn7, %bb.l ]
  %.sroa.04.0 = phi i1 [ %i.n, %bb.c ], [ false, %bb.l ]
  %.sroa.03.0 = phi i8 [ %.sroa.03.1, %bb.c ], [ %.sroa.03.3, %bb.l ]
  %i.l = trunc nuw i8 %.sroa.03.0 to i1
  br i1 %i.l, label %bb.s, label %.thread

bb.c:                                             ; preds = %.noexc, %bb.a, %bb.o, %bb.d
  %.sroa.03.1 = phi i8 [ 0, %bb.o ], [ 1, %bb.d ], [ 1, %.noexc ], [ 1, %bb.a ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = trunc nuw i8 %.sroa.03.1 to i1
  br label %bb.b

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.k, ptr %i.o, align 8, !alias.scope !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = invoke ptr @_RNvMse_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs56awJiKzoFA_9jobserver11HelperStateE3newCsedfi03xVdHO_2cc(ptr nonnull align 8 %i.f)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  store ptr %i.p, ptr %i.g, align 8
  store ptr %1, ptr %i.d, align 8
  %i.q = invoke ptr @_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs56awJiKzoFA_9jobserver11HelperStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBH_(ptr nonnull align 8 %i.g)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  store ptr %i.q, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.s, align 8
  %i.t = invoke ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninitCsedfi03xVdHO_2cc(i64 8, i64 16)
          to label %bb.j unwind label %bb.h       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs_NtNtNtCsedfi03xVdHO_2cc8parallel9job_token19inherited_jobserverNtBI_12HelperThread3new0EBO_(ptr nonnull align 8 %i.b) #21
          to label %bb.q unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

.body:                                            ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  store i64 %2, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %3, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvNtCs56awJiKzoFA_9jobserver3imp12spawn_helper(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr %1, ptr %i.q, ptr nonnull %i.t, ptr nonnull align 8 @0)
          to label %bb.k unwind label %.body

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  br i1 %i.z, label %bb.o, label %bb.m

bb.l:                                             ; preds = %.body, %bb.r
  %.pn7 = phi { ptr, i32 } [ %i.w, %.body ], [ %.pn.ph, %bb.r ]
  %.sroa.03.3 = phi i8 [ 0, %.body ], [ %.sroa.03.2.ph, %bb.r ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs56awJiKzoFA_9jobserver11HelperStateEEB1a_(ptr nonnull align 8 %i.g) #21
          to label %bb.b unwind label %bb.p

bb.m:                                             ; preds = %bb.k
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx15, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.g, align 8
  store ptr %i.ac, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  ret void

bb.o:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ad, align 8
  store ptr null, ptr %0, align 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs56awJiKzoFA_9jobserver11HelperStateEEB1a_(ptr nonnull align 8 %i.g)
          to label %bb.n unwind label %bb.c

bb.p:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.q:                                             ; preds = %bb.h
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs56awJiKzoFA_9jobserver11HelperStateEEB1a_(ptr nonnull align 8 %i.c) #21
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q, %bb.f
  %.pn.ph = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.u, %bb.q ]
  %.sroa.03.2.ph = phi i8 [ 1, %bb.f ], [ 0, %bb.q ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs56awJiKzoFA_9jobserver6ClientEBD_(ptr nonnull align 8 %i.d) #21
          to label %bb.l unwind label %bb.p

.thread:                                          ; preds = %bb.s, %bb.b
  br i1 %.sroa.04.0, label %bb.t, label %.thread.thread

bb.s:                                             ; preds = %bb.b
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs_NtNtNtCsedfi03xVdHO_2cc8parallel9job_token19inherited_jobserverNtBI_12HelperThread3new0EBO_(ptr nonnull align 8 %i.h) #21
          to label %.thread unwind label %bb.p

.thread.thread:                                   ; preds = %bb.t, %.thread
  resume { ptr, i32 } %.pn9

bb.t:                                             ; preds = %.thread
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs56awJiKzoFA_9jobserver6ClientEBD_(ptr nonnull align 8 %i.i) #21
          to label %.thread.thread unwind label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once9call_onceNCINvMs1_NtCsedfi03xVdHO_2cc9utilitiesINtB15_8OnceLockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtNtB17_6target6parser21TargetInfoParserInnerNtB17_5ErrorEE11get_or_initNvMB2s_B2q_32from_cargo_environment_variablesE0EB17_(ptr align 4 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = tail call i32 @_RINvNtNtCs4NRVxsYgnAr_4core4sync6atomic11atomic_loadmECs56awJiKzoFA_9jobserver(ptr %0, i8 2)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.b, align 8
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr align 4 %0, i1 zeroext false, ptr nonnull %i.a, ptr nonnull align 8 @1, ptr align 8 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once9call_onceNCINvMs1_NtCsedfi03xVdHO_2cc9utilitiesINtB15_8OnceLockNtNtNtB17_8parallel9job_token14JobTokenServerE11get_or_initNCNvMs0_B1Q_B1O_3new0E0EB17_(ptr align 4 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = tail call i32 @_RINvNtNtCs4NRVxsYgnAr_4core4sync6atomic11atomic_loadmECs56awJiKzoFA_9jobserver(ptr %0, i8 2)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.b, align 8
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr align 4 %0, i1 zeroext false, ptr nonnull %i.a, ptr nonnull align 8 @2, ptr align 8 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB6_6FilterINtNtB8_3map3MapINtNtNtBc_5slice4iter5SplithNCNvNtCsedfi03xVdHO_2cc15command_helpers19run_silent_on_error0ENCB1N_s_0ENCB1N_s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB37_8for_each4callRShNvB1P_13write_warningE0EB1R_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter5SplithNCNvNtCsedfi03xVdHO_2cc15command_helpers19run_silent_on_error0ENCB1r_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldRShuNCB1r_s0_0NCINvNvB2A_8for_each4callB3I_NvB1t_13write_warningE0E0EB1v_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter5SplithNCNvNtCsedfi03xVdHO_2cc15command_helpers10run_output0ENCB1x_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2x_8for_each4callRShNvB1z_13write_warningE0EB1B_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter5SplithNCNvNtCsedfi03xVdHO_2cc15command_helpers10run_output0ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1J_8adapters6filter11filter_foldRShuNCBN_s_0NCINvNvB1D_8for_each4callB34_NvBP_13write_warningE0E0EBR_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB8_3map3MapINtNtNtBc_5slice4iter5SplithNCNvNtCsedfi03xVdHO_2cc15command_helpers19run_silent_on_error0ENCB1H_s_0ENCB1H_s0_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNvB1J_13write_warningEB1L_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter5SplithNCNvNtCsedfi03xVdHO_2cc15command_helpers19run_silent_on_error0ENCB1r_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldRShuNCB1r_s0_0NCINvNvB2A_8for_each4callB3I_NvB1t_13write_warningE0E0EB1v_(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter5SplithNCNvNtCsedfi03xVdHO_2cc15command_helpers10run_output0ENCB1r_s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNvB1t_13write_warningEB1v_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter5SplithNCNvNtCsedfi03xVdHO_2cc15command_helpers10run_output0ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1J_8adapters6filter11filter_foldRShuNCBN_s_0NCINvNvB1D_8for_each4callB34_NvBP_13write_warningE0E0EBR_(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once9call_onceNCINvMs1_NtCsedfi03xVdHO_2cc9utilitiesINtB17_8OnceLockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtNtB19_6target6parser21TargetInfoParserInnerNtB19_5ErrorEE11get_or_initNvMB2u_B2s_32from_cargo_environment_variablesE0E0B19_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readnone align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsedfi03xVdHO_2cc4tool4ToolNtB11_5ErrorEEB11_
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsedfi03xVdHO_2cc6target10TargetInfoNtB11_5ErrorEEB11_(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringNtCsedfi03xVdHO_2cc5ErrorEEB1H_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCs4NRVxsYgnAr_4core3strReNtNtB7_7default7Default7defaultCsedfi03xVdHO_2cc() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtCsedfi03xVdHO_2cc5ErrorEEB10_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsd_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmtCsedfi03xVdHO_2cc(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs56awJiKzoFA_9jobserver(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninitCsedfi03xVdHO_2cc(i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @_RNvYNCNKNvNvNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1o_6option6OptionQIB23_hEEEE9call_onceCsedfi03xVdHO_2cc(ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECsedfi03xVdHO_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECsedfi03xVdHO_2cc(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryE6removeCsedfi03xVdHO_2cc(ptr sret([24 x i8]) align 8, ptr align 8, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, ptr } @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1C_8adapters9enumerateINtB2v_9EnumeratepEB1w_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3C_EENCINvNvB1w_4find5checkB4m_NCNvMBL_NtBL_5Waker10unregister0E0E0B3H_ECsedfi03xVdHO_2cc(ptr align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECsedfi03xVdHO_2cc(ptr sret([40 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsedfi03xVdHO_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryEECsedfi03xVdHO_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core4sync6atomic28atomic_compare_exchange_weakmECsedfi03xVdHO_2cc(ptr, i32, i32, i8, i8) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr align 4) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsedfi03xVdHO_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNtNtCs4NRVxsYgnAr_4core4sync6atomic12atomic_storehECs56awJiKzoFA_9jobserver(ptr, i8, i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsedfi03xVdHO_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryEECsedfi03xVdHO_2cc(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i8 @_RINvNtNtCs4NRVxsYgnAr_4core4sync6atomic11atomic_loadhECs56awJiKzoFA_9jobserver(ptr, i8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryE8push_mutCsedfi03xVdHO_2cc(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsedfi03xVdHO_2cc(ptr, ptr, i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator6shrinkCsedfi03xVdHO_2cc(ptr, ptr, i64, i64, i64, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsjd0ZH04R2Z3_5gimli(ptr align 8, i64, i64, i64, i64) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64, i64) unnamed_addr #18

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #19

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCscdodAO9FK5_5alloc3strNtNtB7_6string6StringINtNtCs4NRVxsYgnAr_4core6borrow6BorroweE6borrowCsedfi03xVdHO_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs2_NtCscdodAO9FK5_5alloc3streNtNtB7_6borrow7ToOwned8to_ownedCsedfi03xVdHO_2cc(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsO_NtCs2AWtUsOyxgP_3std4pathNtB5_7PathBufINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc6borrow3CowNtB5_4PathEE4fromCsedfi03xVdHO_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs1c_NtCscdodAO9FK5_5alloc4syncINtB6_3ArcNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrEINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtB8_6borrow3CowBG_EE4fromCsedfi03xVdHO_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjd0ZH04R2Z3_5gimli(ptr align 8, i64, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsedfi03xVdHO_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapjNCINvNvXs1_NtNtB1U_8adapters6filterINtB2J_6FilterppEB1O_5count8to_usizeRBJ_NCNvMs4_Csedfi03xVdHO_2ccNtB3T_5Build15cuda_file_count0E0EB3T_(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB21_8adapters3map8map_foldRBQ_jjNCINvNvXs1_NtB2N_6filterINtB3w_6FilterppEB1V_5count8to_usizeB3f_NCNvMs4_Csedfi03xVdHO_2ccNtB4v_5Build15cuda_file_count0E0NCINvXsK_NtB1Z_5accumjNtB5r_3Sum3sumINtB2L_3MapBF_B3l_EE0E0EB4v_(ptr, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs2AWtUsOyxgP_3std4path4PathEENtB5_15SpecAssumeCount27assume_count_le_upper_boundCsedfi03xVdHO_2cc(i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtCsedfi03xVdHO_2cc4toolNtB2p_4Tool10to_command0EB2r_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtBN_15BytesIsNotEmptyECsedfi03xVdHO_2cc(ptr align 8, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsJ_NtCs2AWtUsOyxgP_3std4pathNtB5_7PathBufINtNtCs4NRVxsYgnAr_4core6borrow6BorrowNtB5_4PathE6borrowCsedfi03xVdHO_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsS_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringINtNtCs4NRVxsYgnAr_4core6borrow6BorrowNtB5_5OsStrE6borrowCsedfi03xVdHO_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56awJiKzoFA_9jobserver3imp6ClientENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBJ_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtCs56awJiKzoFA_9jobserver11HelperInnerENtNtCs4NRVxsYgnAr_4core7default7Default7defaultCsedfi03xVdHO_2cc(ptr sret([24 x i8]) align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvXs0_NtNtNtCs2AWtUsOyxgP_3std4sync6poison7condvarNtB5_7CondvarNtNtCs4NRVxsYgnAr_4core7default7Default7defaultCsedfi03xVdHO_2cc() unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsedfi03xVdHO_2cc(ptr, i64, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsr_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsedfi03xVdHO_2cc(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsedfi03xVdHO_2cc(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_Csedfi03xVdHO_2ccNtB4_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE4from(ptr sret([32 x i8]) align 8, ptr) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold inlinehint noreturn nounwind nonlazybind memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #21 = { cold }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = distinct !{!3, i1 false, !"_RNvXs8_Cs56awJiKzoFA_9jobserverNtB5_11HelperStateNtNtCs4NRVxsYgnAr_4core7default7Default7defaultCsedfi03xVdHO_2cc"}
!4 = distinct !{!4, !3, !"_RNvXs8_Cs56awJiKzoFA_9jobserverNtB5_11HelperStateNtNtCs4NRVxsYgnAr_4core7default7Default7defaultCsedfi03xVdHO_2cc: argument 0"}
!5 = !{!4}
end_hunk_1
