inline.NumInlined: 20909
inline.NumDeleted: 8233
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtCsgjwxzEoLG5s_12polars_error5abort18catch_polars_abortINtNtCscgRAwXFJnXP_4core6result6ResultINtCs39HECPMKlmJ_7ndarray9ArrayBaseINtNtB1B_9data_repr9OwnedRepryEINtNtNtB1B_9dimension3dim3DimAjj2_EyENtB4_11PolarsErrorEINtNtNtB11_5panic11unwind_safe16AssertUnwindSafeNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5numpy11to_numpy_df33try_df_to_numpy_numeric_supertypes6_0EEB4s_:bb.a
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtCs39HECPMKlmJ_7ndarray9ArrayBaseINtNtB19_9data_repr9OwnedRepryEINtNtNtB19_9dimension3dim3DimAjj2_EyENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(72) %i.b) #51
          to label %.body.thread unwind label %bb.w, !dbg !100520

bb.w:                                             ; preds = %bb.v
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !100609
  unreachable, !dbg !100609

.body.thread:                                     ; preds = %bb.p, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.o, %bb.v
  %eh.lpad-body40 = phi { ptr, i32 } [ %i.af, %bb.v ], [ %i.ac, %bb.p ], [ %i.w, %bb.o ], [ %i.w, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  resume { ptr, i32 } %eh.lpad-body40, !dbg !100609
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsgjwxzEoLG5s_12polars_error5abort18catch_polars_abortINtNtCscgRAwXFJnXP_4core6result6ResultINtNtB11_6option6OptionINtNtCs8774dFTUdNv_12polars_arrow12record_batch12RecordBatchTINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB20_5array5ArrayEL_EEENtNtCsbm5zPlkZccl_4pyo33err5PyErrEINtNtNtB11_5panic11unwind_safe16AssertUnwindSafeNCINvYNtNtB3Y_6marker6PythonNtNtCseeLknQCOKOd_13polars_python5utils14EnterPolarsExt15enter_polars_okB1y_NCNvMNtNtB5K_9dataframe6exportNtB71_11PyDataFrame8to_arrows_0E0EEB5K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !100610 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %i.c = tail call noundef i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort20try_register_catcher(), !dbg !100611 ; 2 uses
  %.not = icmp eq i8 %i.c, 2, !dbg !100612
  br i1 %.not, label %bb.c, label %bb.b, !dbg !100614

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !100615
  store i8 %i.c, ptr %i.d, align 8, !dbg !100615
  store i64 2, ptr %0, align 8, !dbg !100615
  br label %bb.u, !dbg !100622

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !100623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !100624
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !100642 ; 2 uses
  invoke void @_RNvXs2_NtCs1LHh8CLbVkQ_11polars_core5frameNtB5_19RecordBatchIterWrapNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.f unwind label %bb.d, !dbg !100652

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !100659
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !100659
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsh8eZTKRCwoO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.g unwind label %bb.e, !dbg !100660 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #53, !dbg !100665
  unreachable, !dbg !100665

bb.f:                                             ; preds = %bb.c
  %.sroa.8.0.copyload25 = load ptr, ptr %i.e, align 8, !dbg !100666 ; 2 uses
  %.sroa.10.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !100666
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !100667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.531.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0..sroa_idx26, i64 56, i1 false), !dbg !100666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !100668
  store ptr null, ptr %i.b, align 8, !dbg !100667
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !100667
  store ptr %.sroa.8.0.copyload25, ptr %.sroa.430.0..sroa_idx, align 8, !dbg !100667
  br label %bb.h, !dbg !100669

bb.g:                                             ; preds = %bb.d
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !100660 ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !100660 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !100670
  store ptr %i.j, ptr %i.l, align 8, !dbg !100670
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !100670
  store ptr %i.k, ptr %i.m, align 8, !dbg !100670
  store i64 2, ptr %i.b, align 8, !dbg !100670
  br label %bb.h, !dbg !100669

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.5.0.copyload = phi ptr [ %i.j, %bb.g ], [ %.sroa.8.0.copyload25, %bb.f ] ; 8 uses
  %i.n = phi i1 [ true, %bb.g ], [ false, %bb.f ]
  %.sroa.03.0.copyload = phi i64 [ 2, %bb.g ], [ 0, %bb.f ]
  invoke void @_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher()
          to label %bb.i unwind label %bb.v, !dbg !100671

bb.i:                                             ; preds = %bb.h
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !100673
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !100673 ; 10 uses
  br i1 %i.n, label %bb.j, label %bb.r, !dbg !100674

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.o = invoke noundef i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort19decode_polars_abort(ptr noundef nonnull %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.6.0.copyload)
          to label %bb.k unwind label %bb.p, !dbg !100677 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp eq i8 %i.o, 2, !dbg !100677
  br i1 %.not.i, label %.noexc, label %bb.l, !dbg !100682

bb.l:                                             ; preds = %bb.k
  %i.p = load ptr, ptr %.sroa.6.0.copyload, align 8, !dbg !100683, !invariant.load !11, !alias.scope !100685 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null, !dbg !100683
  br i1 %.not.i.i, label %bb.n, label %bb.m, !dbg !100683

bb.m:                                             ; preds = %bb.l
  invoke void %i.p(ptr noundef nonnull %.sroa.5.0.copyload)
          to label %bb.n unwind label %bb.o, !dbg !100683

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8, !dbg !100688
  %i.r = load i64, ptr %i.q, align 8, !dbg !100688, !range !16827, !invariant.load !11, !alias.scope !100685 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0, !dbg !100692
  br i1 %i.s, label %bb.t, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i, !dbg !100692

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.n
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16, !dbg !100688
  %i.u = load i64, ptr %i.t, align 8, !dbg !100693, !range !16838, !invariant.load !11, !alias.scope !100685
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) %i.u) #48, !dbg !100696
  br label %bb.t, !dbg !100701

bb.o:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8, !dbg !100702
  %i.x = load i64, ptr %i.w, align 8, !dbg !100702, !range !16827, !invariant.load !11, !alias.scope !100685 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !100706
  br i1 %i.y, label %.body.thread, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i, !dbg !100706

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16, !dbg !100702
  %i.aa = load i64, ptr %i.z, align 8, !dbg !100707, !range !16838, !invariant.load !11, !alias.scope !100685
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.aa) #48, !dbg !100710
  br label %.body.thread, !dbg !100715

.noexc:                                           ; preds = %bb.k
  call void @_RNvNtCsh8eZTKRCwoO_3std5panic13resume_unwind(ptr noundef nonnull %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.6.0.copyload) #52, !dbg !100716
  unreachable

bb.p:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECseeLknQCOKOd_13polars_python(ptr nonnull %.sroa.5.0.copyload, ptr nonnull readonly align 8 dereferenceable(32) %.sroa.6.0.copyload) #51
          to label %.body.thread unwind label %bb.q, !dbg !100717

bb.q:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !100718
  unreachable, !dbg !100718

bb.r:                                             ; preds = %bb.i
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !100673
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !100719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.616.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !100721
  store i64 %.sroa.03.0.copyload, ptr %0, align 8, !dbg !100719
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !100719
  store ptr %.sroa.5.0.copyload, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !100719
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !100719
  store ptr %.sroa.6.0.copyload, ptr %.sroa.515.0..sroa_idx, align 8, !dbg !100719
  br label %bb.s, !dbg !100722

bb.s:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !100622
  br label %bb.u, !dbg !100622

bb.t:                                             ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !100723
  store i8 %i.o, ptr %i.ad, align 8, !dbg !100723
  store i64 2, ptr %0, align 8, !dbg !100723
  br label %bb.s, !dbg !100724

bb.u:                                             ; preds = %bb.s, %bb.b
  ret void, !dbg !100725

bb.v:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtB4_6option6OptionINtNtCs8774dFTUdNv_12polars_arrow12record_batch12RecordBatchTINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1x_5array5ArrayEL_EEENtNtCsbm5zPlkZccl_4pyo33err5PyErrEIB2s_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(72) %i.b) #51
          to label %.body.thread unwind label %bb.w, !dbg !100622

bb.w:                                             ; preds = %bb.v
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !100726
  unreachable, !dbg !100726

.body.thread:                                     ; preds = %bb.p, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.o, %bb.v
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.ae, %bb.v ], [ %i.ab, %bb.p ], [ %i.v, %bb.o ], [ %i.v, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  resume { ptr, i32 } %eh.lpad-body39, !dbg !100726
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsgjwxzEoLG5s_12polars_error5abort18catch_polars_abortINtNtCscgRAwXFJnXP_4core6result6ResultINtNtB11_6option6OptionNtNtCseeLknQCOKOd_13polars_python4expr6PyExprENtB4_11PolarsErrorEINtNtNtB11_5panic11unwind_safe16AssertUnwindSafeNCNvMNtB1X_7generalB1V_20skip_batch_predicate0EEB1Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !100727 {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 9 uses
  %i.b = alloca [144 x i8], align 16              ; 4 uses
  %i.c = alloca [112 x i8], align 16              ; 10 uses
  %.sroa.6.i.i.i.sroa.8 = alloca [48 x i8], align 8 ; 6 uses
  %i.d = alloca [112 x i8], align 16              ; 10 uses
  %i.e = alloca [88 x i8], align 8                ; 13 uses
  %.sroa.01.i.sroa.7 = alloca [88 x i8], align 8  ; 5 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 4 uses
  %i.f = alloca [144 x i8], align 16              ; 13 uses
  %i.g = tail call noundef i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort20try_register_catcher(), !dbg !100728 ; 2 uses
  %.not = icmp eq i8 %i.g, 2, !dbg !100729
  %.sink87.sroa.gep = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !100731
  %.sink87.sroa.gep88 = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !100731
  br i1 %.not, label %bb.c, label %bb.b, !dbg !100731

bb.b:                                             ; preds = %bb.a
  store i8 %i.g, ptr %0, align 16, !dbg !100732
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !100732
  store i64 -9223372036854775778, ptr %i.h, align 16, !dbg !100732
  br label %bb.an, !dbg !100739

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !100740
  %.sroa.051.0.copyload = load ptr, ptr %1, align 8, !dbg !100741, !nonnull !11, !noundef !11 ; 3 uses
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !100741
  %.sroa.452.0.copyload = load ptr, ptr %.sroa.452.0..sroa_idx, align 8, !dbg !100741, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !100741
  %.sroa.553.0.copyload = load ptr, ptr %.sroa.553.0..sroa_idx, align 8, !dbg !100741 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.sroa.7), !dbg !100753
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !100753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !100764, !noalias !100775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !100764, !noalias !100779
  store i64 -9223372036854775808, ptr %i.e, align 8, !dbg !100783, !noalias !100779
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64, !dbg !100783
  store ptr %.sroa.051.0.copyload, ptr %i.i, align 8, !dbg !100783, !noalias !100779
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 72, !dbg !100783
  store ptr %.sroa.452.0.copyload, ptr %i.j, align 8, !dbg !100783, !noalias !100779
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 80, !dbg !100783
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 81, !dbg !100783
  store i8 1, ptr %i.l, align 1, !dbg !100783, !noalias !100779
  store i8 1, ptr %i.k, align 8, !dbg !100792, !noalias !100779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !100794, !noalias !100779
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.sroa.8), !dbg !100794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !100794, !noalias !100779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !100795, !noalias !100779
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.553.0.copyload) ]
  invoke fastcc void @_RNvXsc_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB5_4ExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(144) %i.b, ptr noundef nonnull align 16 %.sroa.553.0.copyload)
          to label %bb.f unwind label %bb.d, !dbg !100796, !noalias !100779

bb.d:                                             ; preds = %bb.s, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.p, %bb.o, %bb.f, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i, !dbg !100797

.body.i.i.i:                                      ; preds = %bb.n, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.aa, %bb.n ] ; 2 uses
  %i.n = load i64, ptr %i.e, align 8, !dbg !100798, !range !1257, !alias.scope !100802, !noalias !100779, !noundef !11
  %i.o = icmp eq i64 %i.n, -9223372036854775808, !dbg !100798
  br i1 %i.o, label %.body25, label %bb.e, !dbg !100798

bb.e:                                             ; preds = %.body.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %.body25 unwind label %bb.v, !dbg !100807, !noalias !100779

bb.f:                                             ; preds = %bb.c
  invoke void @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir10expr_to_ir10to_expr_ir(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %bb.g unwind label %bb.d, !dbg !100794, !noalias !100779

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !100809, !noalias !100779
  %i.p = load i64, ptr %i.c, align 16, !dbg !100810, !range !23777, !noalias !100779, !noundef !11 ; 3 uses
  %i.q = icmp eq i64 %i.p, 5, !dbg !100810
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !100813
  %.sroa.6.i.i.i.sroa.0.0.copyload = load ptr, ptr %i.r, align 8, !dbg !100813, !noalias !100779 ; 2 uses
  %.sroa.6.i.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !100813
  %.sroa.6.i.i.i.sroa.6.0.copyload = load ptr, ptr %.sroa.6.i.i.i.sroa.6.0..sroa_idx, align 16, !dbg !100813, !noalias !100779 ; 2 uses
  %.sroa.6.i.i.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !100813
  %.sroa.6.i.i.i.sroa.7.0.copyload = load ptr, ptr %.sroa.6.i.i.i.sroa.7.0..sroa_idx, align 8, !dbg !100813, !noalias !100779 ; 3 uses
  %.sroa.6.i.i.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !100813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i.sroa.8, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6.i.i.i.sroa.8.0..sroa_idx, i64 48, i1 false), !dbg !100813, !noalias !100779
  br i1 %i.q, label %bb.h, label %bb.i, !dbg !100814

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !100815, !noalias !100779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i.sroa.8, i64 48, i1 false), !dbg !100815
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.sroa.8), !dbg !100816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !100816, !noalias !100779
  br label %bb.u, !dbg !100817

bb.i:                                             ; preds = %bb.g
  %.sroa.614.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !100819
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80, !dbg !100820 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.614.0..sroa_idx.i.i.i, i64 32, i1 false), !dbg !100819, !noalias !100779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !100815, !noalias !100779
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !100820 ; 2 uses
  store ptr %.sroa.6.i.i.i.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !100794, !noalias !100779
  %.sroa.6.i.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !100794
  store ptr %.sroa.6.i.i.i.sroa.6.0.copyload, ptr %.sroa.6.i.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx, align 16, !dbg !100794, !noalias !100779
  %.sroa.6.i.i.i.sroa.7.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !100794
  store ptr %.sroa.6.i.i.i.sroa.7.0.copyload, ptr %.sroa.6.i.i.i.sroa.7.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx, align 8, !dbg !100794, !noalias !100779
  %.sroa.6.i.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !100794 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6.i.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i.sroa.8, i64 48, i1 false), !dbg !100794, !noalias !100779
  store i64 %i.p, ptr %i.d, align 16, !dbg !100820, !noalias !100779
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 96, !dbg !100823
  %i.t = load i64, ptr %i.s, align 16, !dbg !100823, !noalias !100779, !noundef !11
  %i.u = ptrtoint ptr %.sroa.6.i.i.i.sroa.7.0.copyload to i64, !dbg !100829
  %i.v = lshr i64 %i.u, 56, !dbg !100829          ; 4 uses
  switch i64 %i.p, label %bb.j [
    i64 0, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10OutputNameECseeLknQCOKOd_13polars_python.exit.i.i.i.i
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
  ], !dbg !100829

bb.j:                                             ; preds = %bb.i
  %i.w = icmp eq i64 %i.v, 216, !dbg !100834
  br i1 %i.w, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10OutputNameECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !100834, !prof !54

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10OutputNameECseeLknQCOKOd_13polars_python.exit.i.i.i.i unwind label %bb.n, !dbg !100839, !noalias !100779

bb.k:                                             ; preds = %bb.i
  %i.x = icmp eq i64 %i.v, 216, !dbg !100844
  br i1 %i.x, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10OutputNameECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !100844, !prof !54

bb.l:                                             ; preds = %bb.i
  %i.y = icmp eq i64 %i.v, 216, !dbg !100849
  br i1 %i.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10OutputNameECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !100849, !prof !54

bb.m:                                             ; preds = %bb.i
  %i.z = icmp eq i64 %i.v, 216, !dbg !100854
  br i1 %i.z, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10OutputNameECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !100854, !prof !54

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync9once_lock8OnceLockNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(64) %.sroa.6.i.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx) #51
          to label %.body.i.i.i unwind label %bb.q, !dbg !100859, !noalias !100779

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10OutputNameECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i.i.i, %bb.j, %bb.i
  %.val.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !dbg !100860, !alias.scope !100863, !noalias !100779, !noundef !11
  switch i32 %.val.i.i.i.i.i.i, label %bb.o [
    i32 3, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECseeLknQCOKOd_13polars_python.exit.i.i.i
    i32 2, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECseeLknQCOKOd_13polars_python.exit.i.i.i
    i32 0, label %bb.p
  ], !dbg !100870, !prof !47639

bb.o:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10OutputNameECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @600, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @602) #54
          to label %.noexc18.i.i.i unwind label %bb.d, !dbg !100874, !noalias !100779

.noexc18.i.i.i:                                   ; preds = %bb.o
  unreachable, !dbg !100874

bb.p:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10OutputNameECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(64) %.sroa.6.i.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.d, !dbg !100875, !noalias !100779

bb.q:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !100859, !noalias !100779
  unreachable, !dbg !100859

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.p, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10OutputNameECseeLknQCOKOd_13polars_python.exit.i.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10OutputNameECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.sroa.8), !dbg !100816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !100816, !noalias !100779
  %i.ac = invoke { i64, i64 } @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr10predicates12skip_batches29aexpr_to_skip_batch_predicate(i64 noundef %i.t, ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.051.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.452.0.copyload)
          to label %bb.r unwind label %bb.d, !dbg !100877, !noalias !100779 ; 2 uses

bb.r:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ad = extractvalue { i64, i64 } %i.ac, 0, !dbg !100877
  %i.ae = trunc nuw i64 %i.ad to i1, !dbg !100879
  br i1 %i.ae, label %bb.s, label %bb.u, !dbg !100879

bb.s:                                             ; preds = %bb.r
  %i.af = extractvalue { i64, i64 } %i.ac, 1, !dbg !100877
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9ir_to_dsl12node_to_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.a, i64 noundef %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.051.0.copyload)
          to label %bb.t unwind label %bb.d, !dbg !100880, !noalias !100779

bb.t:                                             ; preds = %bb.s
  %.sroa.01.i.sroa.0.0.copyload = load ptr, ptr %i.a, align 16, !dbg !100882 ; 2 uses
  %.sroa.01.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !100882
  %.sroa.01.i.sroa.5.0.copyload = load ptr, ptr %.sroa.01.i.sroa.5.0..sroa_idx, align 8, !dbg !100882 ; 2 uses
  %.sroa.01.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !100882
  %.sroa.01.i.sroa.6.0.copyload = load ptr, ptr %.sroa.01.i.sroa.6.0..sroa_idx, align 16, !dbg !100882 ; 2 uses
  %.sroa.01.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !100882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.01.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.01.i.sroa.7.0..sroa_idx, i64 88, i1 false), !dbg !100882
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !100882
  %.sroa.5.0.copyload3.i = load i64, ptr %.sroa.5.0..sroa_idx2.i, align 16, !dbg !100882, !noalias !100884 ; 2 uses
  %.sroa.7.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !100882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx4.i, i64 24, i1 false), !dbg !100882
  %i.ag = load i64, ptr %i.e, align 8, !dbg !100885, !range !1257, !alias.scope !100888, !noalias !100779, !noundef !11
  %i.ah = icmp eq i64 %i.ag, -9223372036854775808, !dbg !100885
  br i1 %i.ah, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir10expr_to_ir15ExprToIRContextECseeLknQCOKOd_13polars_python.exit21.sink.split.i.i.i, !dbg !100885

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir10expr_to_ir15ExprToIRContextECseeLknQCOKOd_13polars_python.exit21.sink.split.i.i.i: ; preds = %bb.u, %bb.t
  %.sroa.01.i.sroa.0.1 = phi ptr [ %.sroa.01.i.sroa.0.0, %bb.u ], [ %.sroa.01.i.sroa.0.0.copyload, %bb.t ], !dbg !100893
  %.sroa.01.i.sroa.5.1 = phi ptr [ %.sroa.01.i.sroa.5.0, %bb.u ], [ %.sroa.01.i.sroa.5.0.copyload, %bb.t ], !dbg !100893
  %.sroa.01.i.sroa.6.1 = phi ptr [ %.sroa.01.i.sroa.6.0, %bb.u ], [ %.sroa.01.i.sroa.6.0.copyload, %bb.t ], !dbg !100893
  %.sroa.5.1.i = phi i64 [ %.sroa.5.0.i, %bb.u ], [ %.sroa.5.0.copyload3.i, %bb.t ], !dbg !100893
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %bb.y unwind label %bb.w, !dbg !100894

bb.u:                                             ; preds = %bb.r, %bb.h
  %.sroa.01.i.sroa.0.0 = phi ptr [ %.sroa.6.i.i.i.sroa.0.0.copyload, %bb.h ], [ undef, %bb.r ] ; 2 uses
  %.sroa.01.i.sroa.5.0 = phi ptr [ %.sroa.6.i.i.i.sroa.6.0.copyload, %bb.h ], [ undef, %bb.r ] ; 2 uses
  %.sroa.01.i.sroa.6.0 = phi ptr [ %.sroa.6.i.i.i.sroa.7.0.copyload, %bb.h ], [ undef, %bb.r ] ; 2 uses
  %.sroa.5.0.i = phi i64 [ -9223372036854775779, %bb.h ], [ -9223372036854775780, %bb.r ], !dbg !100893 ; 2 uses
  %i.ai = load i64, ptr %i.e, align 8, !dbg !100898, !range !1257, !alias.scope !100901, !noalias !100779, !noundef !11
  %i.aj = icmp eq i64 %i.ai, -9223372036854775808, !dbg !100898
  br i1 %i.aj, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir10expr_to_ir15ExprToIRContextECseeLknQCOKOd_13polars_python.exit21.sink.split.i.i.i, !dbg !100898

bb.v:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !100906, !noalias !100779
  unreachable, !dbg !100906

bb.w:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir10expr_to_ir15ExprToIRContextECseeLknQCOKOd_13polars_python.exit21.sink.split.i.i.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null, !dbg !100907
  br label %.body25, !dbg !100907

.body25:                                          ; preds = %.body.i.i.i, %bb.e, %bb.w
  %eh.lpad-body26 = phi { ptr, i32 } [ %i.al, %bb.w ], [ %eh.lpad-body.i.i.i, %bb.e ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  %i.am = extractvalue { ptr, i32 } %eh.lpad-body26, 0, !dbg !100907
  %i.an = invoke { ptr, ptr } @_RNvNvNtCsh8eZTKRCwoO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.am)
          to label %bb.z unwind label %bb.x, !dbg !100908 ; 2 uses

bb.x:                                             ; preds = %.body25
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #53, !dbg !100913
  unreachable, !dbg !100913

bb.y:                                             ; preds = %bb.u, %bb.t, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir10expr_to_ir15ExprToIRContextECseeLknQCOKOd_13polars_python.exit21.sink.split.i.i.i
  %.sroa.01.i.sroa.0.2 = phi ptr [ %.sroa.01.i.sroa.0.0, %bb.u ], [ %.sroa.01.i.sroa.0.0.copyload, %bb.t ], [ %.sroa.01.i.sroa.0.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir10expr_to_ir15ExprToIRContextECseeLknQCOKOd_13polars_python.exit21.sink.split.i.i.i ], !dbg !100893 ; 2 uses
  %.sroa.01.i.sroa.5.2 = phi ptr [ %.sroa.01.i.sroa.5.0, %bb.u ], [ %.sroa.01.i.sroa.5.0.copyload, %bb.t ], [ %.sroa.01.i.sroa.5.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir10expr_to_ir15ExprToIRContextECseeLknQCOKOd_13polars_python.exit21.sink.split.i.i.i ], !dbg !100893 ; 2 uses
  %.sroa.01.i.sroa.6.2 = phi ptr [ %.sroa.01.i.sroa.6.0, %bb.u ], [ %.sroa.01.i.sroa.6.0.copyload, %bb.t ], [ %.sroa.01.i.sroa.6.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir10expr_to_ir15ExprToIRContextECseeLknQCOKOd_13polars_python.exit21.sink.split.i.i.i ], !dbg !100893
  %.sroa.5.2.i = phi i64 [ %.sroa.5.0.i, %bb.u ], [ %.sroa.5.0.copyload3.i, %bb.t ], [ %.sroa.5.1.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir10expr_to_ir15ExprToIRContextECseeLknQCOKOd_13polars_python.exit21.sink.split.i.i.i ], !dbg !100893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !100797, !noalias !100779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !100914, !noalias !100775
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !100915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.648.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.01.i.sroa.7, i64 88, i1 false), !dbg !100916
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120, !dbg !100915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.850.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !dbg !100916
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.sroa.7), !dbg !100917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i), !dbg !100917
  store ptr %.sroa.01.i.sroa.0.2, ptr %i.f, align 16, !dbg !100915
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !100915
  store ptr %.sroa.01.i.sroa.5.2, ptr %.sroa.446.0..sroa_idx, align 8, !dbg !100915
  br label %bb.aa, !dbg !100918

bb.z:                                             ; preds = %.body25
  %i.ap = extractvalue { ptr, ptr } %i.an, 0, !dbg !100908 ; 3 uses
  %i.aq = extractvalue { ptr, ptr } %i.an, 1, !dbg !100908 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  store ptr %i.ap, ptr %i.f, align 16, !dbg !100919
  br label %bb.aa, !dbg !100918

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink87.sroa.phi = phi ptr [ %.sink87.sroa.gep, %bb.z ], [ %.sink87.sroa.gep88, %bb.y ]
  %.sink85 = phi ptr [ %i.aq, %bb.z ], [ %.sroa.01.i.sroa.6.2, %bb.y ]
  %.sink83 = phi i64 [ -9223372036854775778, %bb.z ], [ %.sroa.5.2.i, %bb.y ] ; 3 uses
  %.sroa.5.0.copyload = phi ptr [ %i.aq, %bb.z ], [ %.sroa.01.i.sroa.5.2, %bb.y ] ; 10 uses
  %.sroa.03.0.copyload = phi ptr [ %i.ap, %bb.z ], [ %.sroa.01.i.sroa.0.2, %bb.y ] ; 8 uses
  store ptr %.sink85, ptr %.sink87.sroa.phi, align 8, !dbg !100920
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !100920
  store i64 %.sink83, ptr %i.ar, align 16, !dbg !100920
  invoke void @_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher()
          to label %bb.ab unwind label %bb.ao, !dbg !100921

bb.ab:                                            ; preds = %bb.aa
  %i.as = icmp eq i64 %.sink83, -9223372036854775778, !dbg !100923
  br i1 %i.as, label %bb.ac, label %bb.ak, !dbg !100926

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.at = invoke noundef i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort19decode_polars_abort(ptr noundef nonnull %.sroa.03.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.5.0.copyload)
          to label %bb.ad unwind label %bb.ai, !dbg !100927 ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %.not.i = icmp eq i8 %i.at, 2, !dbg !100927
  br i1 %.not.i, label %.noexc, label %bb.ae, !dbg !100932

bb.ae:                                            ; preds = %bb.ad
  %i.au = load ptr, ptr %.sroa.5.0.copyload, align 8, !dbg !100933, !invariant.load !11, !alias.scope !100935 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null, !dbg !100933
  br i1 %.not.i.i, label %bb.ag, label %bb.af, !dbg !100933

bb.af:                                            ; preds = %bb.ae
  invoke void %i.au(ptr noundef nonnull %.sroa.03.0.copyload)
          to label %bb.ag unwind label %bb.ah, !dbg !100933

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8, !dbg !100938
  %i.aw = load i64, ptr %i.av, align 8, !dbg !100938, !range !16827, !invariant.load !11, !alias.scope !100935 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !100942
  br i1 %i.ax, label %bb.am, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i, !dbg !100942

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.ag
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 16, !dbg !100938
  %i.az = load i64, ptr %i.ay, align 8, !dbg !100943, !range !16838, !invariant.load !11, !alias.scope !100935
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.03.0.copyload, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %i.az) #48, !dbg !100946
  br label %bb.am, !dbg !100951

bb.ah:                                            ; preds = %bb.af
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8, !dbg !100952
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !100952, !range !16827, !invariant.load !11, !alias.scope !100935 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0, !dbg !100956
  br i1 %i.bd, label %.body.thread, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i, !dbg !100956

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.ah
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 16, !dbg !100952
  %i.bf = load i64, ptr %i.be, align 8, !dbg !100957, !range !16838, !invariant.load !11, !alias.scope !100935
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.03.0.copyload, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) %i.bf) #48, !dbg !100960
  br label %.body.thread, !dbg !100965

.noexc:                                           ; preds = %bb.ad
  call void @_RNvNtCsh8eZTKRCwoO_3std5panic13resume_unwind(ptr noundef nonnull %.sroa.03.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.5.0.copyload) #52, !dbg !100966
  unreachable

bb.ai:                                            ; preds = %bb.ac
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECseeLknQCOKOd_13polars_python(ptr nonnull %.sroa.03.0.copyload, ptr nonnull readonly align 8 dereferenceable(32) %.sroa.5.0.copyload) #51
          to label %.body.thread unwind label %bb.aj, !dbg !100967

bb.aj:                                            ; preds = %bb.ai
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !100968
  unreachable, !dbg !100968

bb.ak:                                            ; preds = %bb.ab
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120, !dbg !100969
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !100969
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !100970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.6.0..sroa_idx, i64 96, i1 false), !dbg !100972
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !100970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.719.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false), !dbg !100972
  store ptr %.sroa.03.0.copyload, ptr %0, align 16, !dbg !100970
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !100970
  store ptr %.sroa.5.0.copyload, ptr %.sroa.416.0..sroa_idx, align 8, !dbg !100970
  br label %bb.al, !dbg !100973

bb.al:                                            ; preds = %bb.am, %bb.ak
  %.sink = phi i64 [ -9223372036854775778, %bb.am ], [ %.sink83, %bb.ak ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !100974
  store i64 %.sink, ptr %i.bi, align 16, !dbg !100974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !100739
  br label %bb.an, !dbg !100739

bb.am:                                            ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.ag
  store i8 %i.at, ptr %0, align 16, !dbg !100975
  br label %bb.al, !dbg !100976

bb.an:                                            ; preds = %bb.al, %bb.b
  ret void, !dbg !100977

bb.ao:                                            ; preds = %bb.aa
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtB4_6option6OptionNtNtCseeLknQCOKOd_13polars_python4expr6PyExprENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEB1w_(ptr noalias noundef align 16 dereferenceable(144) %i.f) #51
          to label %.body.thread unwind label %bb.ap, !dbg !100739

bb.ap:                                            ; preds = %bb.ao
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !100978
  unreachable, !dbg !100978

.body.thread:                                     ; preds = %bb.ai, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.ah, %bb.ao
  %eh.lpad-body71 = phi { ptr, i32 } [ %i.bj, %bb.ao ], [ %i.bg, %bb.ai ], [ %i.ba, %bb.ah ], [ %i.ba, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  resume { ptr, i32 } %eh.lpad-body71, !dbg !100978
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsgjwxzEoLG5s_12polars_error5abort18catch_polars_abortINtNtCscgRAwXFJnXP_4core6result6ResultINtNtB11_6option6OptionNtNtCseeLknQCOKOd_13polars_python9dataframe11PyDataFrameENtB4_11PolarsErrorEINtNtNtB11_5panic11unwind_safe16AssertUnwindSafeNCNvMse_NtNtB1Z_9lazyframe7generalNtB43_16PyCollectBatches8___next__0EEB1Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !100979 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = tail call noundef i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort20try_register_catcher(), !dbg !100980 ; 2 uses
  %.not = icmp eq i8 %i.c, 2, !dbg !100981
  br i1 %.not, label %bb.c, label %bb.b, !dbg !100983

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !100984
  store i8 %i.c, ptr %i.d, align 8, !dbg !100984
  store i64 19, ptr %0, align 8, !dbg !100984
  br label %bb.ac, !dbg !100991

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !100992
  %.val.i = load ptr, ptr %1, align 8, !dbg !100993, !nonnull !11, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !101005, !noalias !101012
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 16, !dbg !101017 ; 7 uses
  %i.f = cmpxchg weak ptr %i.e, i8 0, i8 1 acquire monotonic, align 1, !dbg !101021, !noalias !101012
  %i.g = extractvalue { i8, i1 } %i.f, 1, !dbg !101021
  br i1 %i.g, label %.noexc21, label %bb.d, !dbg !101038, !prof !797

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef zeroext i1 @_RNvMs1_NtCs3mtJKb2XD8V_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.e, i64 undef, i32 noundef 1000000000)
          to label %.noexc21 unwind label %bb.l, !dbg !101039 ; 0 uses

.noexc21:                                         ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 24, !dbg !101040
  invoke void @_RNvXs6_NtCs7Ga9Brpi21q_11polars_lazy5frameNtB5_14CollectBatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.g unwind label %bb.e, !dbg !101047, !noalias !101012

bb.e:                                             ; preds = %.noexc21
  %i.j = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.k = cmpxchg ptr %i.e, i8 1, i8 0 release monotonic, align 1, !dbg !101048, !noalias !101012
  %i.l = extractvalue { i8, i1 } %i.k, 1, !dbg !101048
  br i1 %i.l, label %.body23, label %bb.f, !dbg !101060, !prof !797

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCs3mtJKb2XD8V_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.e, i1 noundef zeroext false)
          to label %.body23 unwind label %bb.k, !dbg !101061, !noalias !101012

bb.g:                                             ; preds = %.noexc21
  %i.m = load i64, ptr %i.a, align 8, !dbg !101062, !range !29085, !noalias !101012, !noundef !11 ; 3 uses
  switch i64 %i.m, label %bb.i [
    i64 19, label %bb.h
    i64 18, label %bb.j
  ], !dbg !101065

bb.h:                                             ; preds = %bb.j, %bb.g
  %.sroa.0.0.i.i.i = phi i64 [ 1, %bb.j ], [ 0, %bb.g ], !dbg !101066 ; 2 uses
  %i.n = phi <2 x i64> [ %i.y, %bb.j ], [ undef, %bb.g ] ; 2 uses
  %i.o = phi <2 x i64> [ %i.z, %bb.j ], [ undef, %bb.g ] ; 2 uses
  %i.p = phi <2 x i64> [ %i.aa, %bb.j ], [ undef, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !101069, !noalias !101012
  %i.q = cmpxchg ptr %i.e, i8 1, i8 0 release monotonic, align 1, !dbg !101070, !noalias !101012
  %i.r = extractvalue { i8, i1 } %i.q, 1, !dbg !101070
  br i1 %i.r, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs7Ga9Brpi21q_11polars_lazy5frame14CollectBatchesEECseeLknQCOKOd_13polars_python.exit58.sink.split.i.i.i, !dbg !101076, !prof !797

bb.i:                                             ; preds = %bb.g
  %.sroa.611.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !101077
  %.sroa.611.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.611.0..sroa_idx.i.i.i, align 8, !dbg !101077, !noalias !101012 ; 2 uses
  %.sroa.611.sroa.6.0..sroa.611.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !101077
  %.sroa.8.sroa.10.i.i.sroa.0.0.copyload26.i = load i64, ptr %.sroa.611.sroa.6.0..sroa.611.0..sroa_idx.sroa_idx.i.i.i, align 8, !dbg !101077, !noalias !101012 ; 2 uses
  %.sroa.8.sroa.10.i.i.sroa.8.0..sroa.611.sroa.6.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !101077
  %i.s = load <2 x i64>, ptr %.sroa.8.sroa.10.i.i.sroa.8.0..sroa.611.sroa.6.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !dbg !101077, !noalias !101012 ; 2 uses
  %.sroa.8.sroa.10.i.i.sroa.12.0..sroa.611.sroa.6.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !101077
  %i.t = load <2 x i64>, ptr %.sroa.8.sroa.10.i.i.sroa.12.0..sroa.611.sroa.6.0..sroa.611.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !dbg !101077, !noalias !101012 ; 2 uses
  %.sroa.712.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !101077
  %i.u = load <2 x i64>, ptr %.sroa.712.0..sroa_idx.i.i.i, align 8, !dbg !101077 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !101069, !noalias !101012
  %i.v = cmpxchg ptr %i.e, i8 1, i8 0 release monotonic, align 1, !dbg !101078, !noalias !101012
  %i.w = extractvalue { i8, i1 } %i.v, 1, !dbg !101078
  br i1 %i.w, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs7Ga9Brpi21q_11polars_lazy5frame14CollectBatchesEECseeLknQCOKOd_13polars_python.exit58.sink.split.i.i.i, !dbg !101084, !prof !797

bb.j:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !101085
  %i.y = load <2 x i64>, ptr %i.x, align 8, !dbg !101085, !noalias !101012
  %.sroa.8.sroa.10.i.i.sroa.8.0..sroa.623.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !101085
  %i.z = load <2 x i64>, ptr %.sroa.8.sroa.10.i.i.sroa.8.0..sroa.623.0..sroa_idx.i.i.sroa_idx.i, align 8, !dbg !101085, !noalias !101012
  %.sroa.8.sroa.10.i.i.sroa.12.0..sroa.623.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !101085
  %i.aa = load <2 x i64>, ptr %.sroa.8.sroa.10.i.i.sroa.12.0..sroa.623.0..sroa_idx.i.i.sroa_idx.i, align 8, !dbg !101085, !noalias !101012
  br label %bb.h, !dbg !101086

end_hunk_0
