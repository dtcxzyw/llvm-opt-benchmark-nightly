Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8thin_vecINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker15StandardTrackerEB1w_:bb.a
  %.sroa.698 = alloca [32 x i8], align 8          ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.677 = alloca [32 x i8], align 8          ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.10 = alloca [32 x i8], align 8           ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !49, !noundef !49 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !49 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load i64, ptr %i.g, align 8, !noundef !49 ; 2 uses
  %.sroa.029.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = icmp eq i64 %i.m, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.530.0..sroa_idx, i64 32, i1 false)
  br i1 %i.n, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.448.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.448.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.482.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.482.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %.noexc10

.noexc10:                                         ; preds = %.noexc, %bb.e
  %.sroa.839.0 = phi i64 [ %.sroa.4.0.copyload, %bb.e ], [ %.sroa.869.0, %.noexc ]
  %.sroa.636.0 = phi ptr [ %.sroa.029.0.copyload, %bb.e ], [ %.sroa.567.0, %.noexc ]
  %.sroa.034.0 = phi i64 [ 0, %bb.e ], [ %i.ae, %.noexc ]
  %.sroa.01.0.i = phi i64 [ 0, %bb.e ], [ %i.af, %.noexc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.448.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.l, i64 %.sroa.01.0.i ; 3 uses
  store ptr %.sroa.636.0, ptr %i.f, align 8, !noalias !4859
  store i64 %.sroa.839.0, ptr %.sroa.448.sroa.4.0..sroa_idx, align 8, !noalias !4859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4860
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call fastcc void @_RINvXs_NtNtCsj8vhLppEnlJ_8char_str8features8get_sizeNtNtB9_8char_str7CharStrNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1e_7tracker15StandardTrackerECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f), !inline_history !4842
  %i.t = load i64, ptr %i.c, align 8, !noalias !4861, !noundef !49
  %.sroa.482.sroa.0.0.copyload = load ptr, ptr %i.o, align 8, !noalias !4862 ; 2 uses
  %.sroa.482.sroa.4.0.copyload = load i64, ptr %.sroa.482.sroa.4.0..sroa_idx, align 8, !noalias !4862 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.698)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.698, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.482.sroa.5.0..sroa_idx, i64 32, i1 false), !noalias !4860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4860
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.992)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !4860, !align !57, !noundef !49 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.f, label %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtBT_7tracker15StandardTrackerEB7_.exit.i

_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtBT_7tracker15StandardTrackerEB7_.exit.i: ; preds = %.noexc10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4863
  store ptr %.sroa.482.sroa.0.0.copyload, ptr %i.a, align 8, !noalias !4864
  store i64 %.sroa.482.sroa.4.0.copyload, ptr %.sroa.596.0..sroa_idx, align 8, !noalias !4864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.698.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.698, i64 32, i1 false), !noalias !4864
  call fastcc void @_RINvXsbB_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_4ExprNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a), !noalias !4863, !inline_history !4849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4863
  %i.w = load i64, ptr %i.b, align 8, !noalias !4863, !noundef !49
  %.sroa.099.0.copyload = load ptr, ptr %i.p, align 8, !noalias !4863
  %.sroa.4100.0.copyload = load i64, ptr %.sroa.4100.0..sroa_idx, align 8, !noalias !4863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.992, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5101.0..sroa_idx, i64 32, i1 false), !noalias !4865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4863
  %i.x = add i64 %i.w, 72
  br label %.noexc8

bb.f:                                             ; preds = %.noexc10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.992, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.698, i64 32, i1 false), !noalias !4860
  br label %.noexc8

.noexc8:                                          ; preds = %bb.f, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtBT_7tracker15StandardTrackerEB7_.exit.i
  %.sroa.086.0 = phi i64 [ 0, %bb.f ], [ %i.x, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtBT_7tracker15StandardTrackerEB7_.exit.i ]
  %.sroa.587.0 = phi ptr [ %.sroa.482.sroa.0.0.copyload, %bb.f ], [ %.sroa.099.0.copyload, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtBT_7tracker15StandardTrackerEB7_.exit.i ] ; 2 uses
  %.sroa.889.0 = phi i64 [ %.sroa.482.sroa.4.0.copyload, %bb.f ], [ %.sroa.4100.0.copyload, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtBT_7tracker15StandardTrackerEB7_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.677)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.677, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.992, i64 32, i1 false), !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.992)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.698)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !4866, !align !57, !noundef !49 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.g, label %.noexc9

.noexc9:                                          ; preds = %.noexc8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4867
  store ptr %.sroa.587.0, ptr %i.d, align 8, !noalias !4868
  store i64 %.sroa.889.0, ptr %.sroa.575.0..sroa_idx, align 8, !noalias !4868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.677.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.677, i64 32, i1 false), !noalias !4868
  call fastcc void @_RINvXsbB_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_4ExprNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.e, ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.d), !noalias !4867, !inline_history !4856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4867
  %i.aa = load i64, ptr %i.e, align 8, !noalias !4867, !noundef !49
  %.sroa.078.0.copyload = load ptr, ptr %i.q, align 8, !noalias !4867
  %.sroa.479.0.copyload = load i64, ptr %.sroa.479.0..sroa_idx, align 8, !noalias !4867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.580.0..sroa_idx, i64 32, i1 false), !noalias !4869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4867
  %i.ab = add i64 %i.aa, 72
  br label %.noexc

bb.g:                                             ; preds = %.noexc8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.677, i64 32, i1 false), !noalias !4866
  br label %.noexc

.noexc:                                           ; preds = %bb.g, %.noexc9
  %.sroa.869.0 = phi i64 [ %.sroa.889.0, %bb.g ], [ %.sroa.479.0.copyload, %.noexc9 ] ; 2 uses
  %.sroa.567.0 = phi ptr [ %.sroa.587.0, %bb.g ], [ %.sroa.078.0.copyload, %.noexc9 ] ; 2 uses
  %.sroa.066.0 = phi i64 [ 0, %bb.g ], [ %i.ab, %.noexc9 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.677)
  %i.ac = add i64 %i.t, %.sroa.034.0
  %i.ad = add i64 %i.ac, %.sroa.086.0
  %i.ae = add i64 %i.ad, %.sroa.066.0             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4858
  %i.af = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.m
  br i1 %i.ag, label %bb.h, label %.noexc10

bb.h:                                             ; preds = %.noexc
  %i.ah = add i64 %i.ae, 16
  %.pre = load i64, ptr %i.h, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %i.ai = phi i64 [ %.pre, %bb.h ], [ %i.i, %bb.d ]
  %.sroa.622.0 = phi i64 [ %.sroa.869.0, %bb.h ], [ %.sroa.4.0.copyload, %bb.d ]
  %.sroa.519.0 = phi ptr [ %.sroa.567.0, %bb.h ], [ %.sroa.029.0.copyload, %bb.d ]
  %.sroa.017.0 = phi i64 [ %i.ah, %bb.h ], [ 16, %bb.d ]
  %i.aj = mul i64 %i.ai, 80
  %i.ak = add i64 %i.aj, %.sroa.017.0
  store i64 %i.ak, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.0, ptr %i.al, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.622.0, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, i64 32, i1 false)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 144115188075855872) %2) unnamed_addr #4 personality ptr @rust_eh_personality !guid !4898 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = shl nuw nsw i64 %2, 6                    ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread: ; preds = %bb.a
  store i64 0, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.thread

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !4899
  %i.i = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 17) 8) #61, !noalias !4899 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #60
  unreachable

.lr.ph.preheader:                                 ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  store i64 %2, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %3 = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  %.sroa.018.0129 = phi ptr [ %i.m, %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ], [ %1, %.lr.ph.preheader ] ; 17 uses
  %.sroa.7.0127 = phi i64 [ %i.n, %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.10.0126 = phi i64 [ %4, %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ], [ %2, %.lr.ph.preheader ]
  %4 = add nsw i64 %.sroa.10.0126, -1             ; 2 uses
  %5 = icmp eq ptr %.sroa.018.0129, %3
  br i1 %5, label %.thread, label %bb.c

.thread:                                          ; preds = %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %.lr.ph, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread
  %6 = phi ptr [ %i.h, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread ], [ %i.l, %.lr.ph ], [ %i.l, %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ]
  store i64 %2, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.loopexit.split-lp97.loopexit.split-lp:           ; preds = %bb.d, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.018.0129, i64 64
  %i.n = add nuw nsw i64 %.sroa.7.0127, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.018.0129, i64 60 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !range !58, !noalias !4900, !noundef !49
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.0129, i64 16
  %i.s = load <2 x i32>, ptr %i.r, align 8, !noalias !4900
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.018.0129, i64 24
  %i.u = load atomic i32, ptr %i.t monotonic, align 8, !noalias !4900
  %i.v = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.018.0129)
          to label %.noexc unwind label %.loopexit.split-lp97.loopexit.split-lp, !inline_history !4874 ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  %i.y = insertelement <2 x i32> <i32 poison, i32 undef>, i32 %i.u, i64 0
  br label %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.018.0129, i64 40
  %i.aa = load <2 x i32>, ptr %i.z, align 8, !noalias !4901
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.018.0129, i64 56
  %i.ac = load atomic i32, ptr %i.ab monotonic, align 8, !noalias !4901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4901
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4902)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !4903, !inline_history !4879
  %i.ad = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !4903, !inline_history !4879 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i.i, !prof !50

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60
          to label %.noexc15 unwind label %.loopexit.split-lp97.loopexit.split-lp, !inline_history !4880

.noexc15:                                         ; preds = %bb.f
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i.i: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.018.0129, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !4902, !noalias !4901, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4903
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %i.ag)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit.i unwind label %bb.g, !noalias !4903, !inline_history !4881

bb.g:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 72, i64 noundef 8) #61, !noalias !4903, !inline_history !4879
  br label %bb.ag

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit.i: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !4903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4903
  store ptr %i.ad, ptr %i.c, align 8, !noalias !4901
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.018.0129, i64 23
  %i.aj = load i8, ptr %i.ai, align 1, !range !70, !noalias !4901, !noundef !49
  switch i8 %i.aj, label %bb.i [
    i8 -1, label %bb.h
    i8 -40, label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  ]

bb.h:                                             ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit.i, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i
  %.sroa.069.0 = phi ptr [ %.sroa.078.0, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i ], [ undef, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit.i ] ; 3 uses
  %.sroa.570.0 = phi i64 [ %.sroa.579.0, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i ], [ undef, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit.i ]
  %.sroa.671.0 = phi i64 [ %.sroa.780.0, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i ], [ -72057594037927936, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit.i ] ; 3 uses
  %i.ak = phi <2 x i32> [ %i.cj, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i ], [ undef, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit.i ]
  %i.al = load i8, ptr %i.o, align 4, !range !98, !noalias !4901, !noundef !49
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.018.0129, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !noalias !4901, !align !57, !noundef !49
  %.not6.i = icmp eq ptr %i.an, null
  br i1 %.not6.i, label %.noexc12, label %bb.z

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit.i: ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit.i
  %i.ao = load ptr, ptr %.sroa.018.0129, align 8, !alias.scope !4904, !noalias !4901, !noundef !49 ; 11 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.018.0129, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !4904, !noalias !4901, !noundef !49 ; 18 uses
  %i.ar = icmp ult i64 %i.aq, 25
  br i1 %i.ar, label %bb.k, label %bb.j, !prof !56

bb.i:                                             ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit.i
  %.sroa.078.0.copyload = load ptr, ptr %.sroa.018.0129, align 8, !noalias !4901
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018.0129, i64 8
  %.sroa.579.0.copyload = load i64, ptr %.sroa.579.0..sroa_idx, align 8, !noalias !4901
  %.sroa.780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018.0129, i64 16
  %.sroa.780.0.copyload = load i64, ptr %.sroa.780.0..sroa_idx, align 8, !noalias !4901
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp, %.body.i, %bb.ad
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.ad ], [ %lpad.loopexit.split-lp205, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #58
          to label %bb.ag unwind label %bb.ae, !noalias !4901, !inline_history !4880

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.j, %bb.x
  %lpad.loopexit.split-lp205 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i

bb.j:                                             ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  %i.as = invoke { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer10alloc_copy(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.aq)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !4901, !inline_history !4880 ; 2 uses

.noexc.i:                                         ; preds = %bb.j
  %i.at = extractvalue { ptr, i64 } %i.as, 0      ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.x, label %bb.y, !prof !50

bb.k:                                             ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  %i.av = shl nuw nsw i64 %i.aq, 56
  %i.aw = or disjoint i64 %i.av, -4611686018427387904 ; 7 uses
  %i.ax = icmp samesign ugt i64 %i.aq, 15
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = icmp samesign ugt i64 %i.aq, 7
  br i1 %i.ay, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.ao, align 1, !alias.scope !4905, !noalias !4901
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.az, align 1, !alias.scope !4905, !noalias !4901
  %i.ba = icmp eq i64 %i.aq, 16
  br i1 %i.ba, label %bb.w, label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.bb = icmp samesign ugt i64 %i.aq, 3
  br i1 %i.bb, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %i.ao, align 1, !alias.scope !4905, !noalias !4901 ; 2 uses
  %i.bc = icmp eq i64 %i.aq, 8
  br i1 %i.bc, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i, label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.bd = icmp samesign ugt i64 %i.aq, 1
  br i1 %i.bd, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.n
  %.sroa.015.0.copyload.i.i.i = load i32, ptr %i.ao, align 1, !alias.scope !4905, !noalias !4901
  %i.be = zext i32 %.sroa.015.0.copyload.i.i.i to i64
  %i.bf = add nsw i64 %i.aq, -4                   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bf
  %.sroa.017.0.copyload.i.i.i = load i32, ptr %i.bg, align 1, !alias.scope !4905, !noalias !4901
  %i.bh = zext i32 %.sroa.017.0.copyload.i.i.i to i64
  %i.bi = shl nuw nsw i64 %i.bf, 3
  %i.bj = shl nuw nsw i64 %i.bh, %i.bi
  %i.bk = or i64 %i.bj, %i.be
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bl = icmp eq i64 %i.aq, 1
  br i1 %i.bl, label %bb.t, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.s:                                             ; preds = %bb.p
  %.sroa.019.0.copyload.i.i.i = load i16, ptr %i.ao, align 1, !alias.scope !4905, !noalias !4901
  %i.bm = zext i16 %.sroa.019.0.copyload.i.i.i to i64
  %i.bn = add nsw i64 %i.aq, -2                   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bn
  %.sroa.021.0.copyload.i.i.i = load i16, ptr %i.bo, align 1, !alias.scope !4905, !noalias !4901
  %i.bp = zext i16 %.sroa.021.0.copyload.i.i.i to i64
  %i.bq = shl nuw nsw i64 %i.bn, 3
  %i.br = shl nuw nsw i64 %i.bp, %i.bq
  %i.bs = or i64 %i.br, %i.bm
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.bt = load i8, ptr %i.ao, align 1, !alias.scope !4905, !noalias !4901, !noundef !49
  %i.bu = zext i8 %i.bt to i64
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.u:                                             ; preds = %bb.o
  %i.bv = getelementptr i8, ptr %i.ao, i64 %i.aq
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %.sroa.013.0.copyload.i.i.i = load i64, ptr %i.bw, align 1, !alias.scope !4905, !noalias !4901
  %i.bx = shl nuw nsw i64 %i.aq, 3
  %i.by = sub nuw nsw i64 128, %i.bx
  %i.bz = lshr i64 %.sroa.013.0.copyload.i.i.i, %i.by
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.v:                                             ; preds = %bb.m
  %i.ca = getelementptr i8, ptr %i.ao, i64 %i.aq
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  %.sroa.09.0.copyload.i.i.i = load i64, ptr %i.cb, align 1, !alias.scope !4905, !noalias !4901
  %.neg.i.i.i = mul nuw nsw i64 %i.aq, 56
  %i.cc = and i64 %.neg.i.i.i, 56
  %i.cd = lshr i64 %.sroa.09.0.copyload.i.i.i, %i.cc
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.m
  %.sroa.0.1.i.i.i = phi i64 [ %i.cd, %bb.v ], [ 0, %bb.m ]
  %i.ce = icmp eq i64 %i.aq, 24
  %i.cf = select i1 %i.ce, i64 0, i64 %i.aw
  %spec.select.i.i.i = or i64 %.sroa.0.1.i.i.i, %i.cf
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i: ; preds = %bb.w, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o
  %.sroa.03.1.i.i.i = phi i64 [ %.sroa.07.0.copyload.i.i.i, %bb.w ], [ 0, %bb.o ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.t ], [ %i.bz, %bb.u ]
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.05.0.copyload.i.i.i, %bb.w ], [ %.sroa.011.0.copyload.i.i.i, %bb.o ], [ 0, %bb.r ], [ %i.bk, %bb.q ], [ %i.bs, %bb.s ], [ %i.bu, %bb.t ], [ %.sroa.011.0.copyload.i.i.i, %bb.u ]
  %.sroa.0.0.i.i8.i = phi i64 [ %spec.select.i.i.i, %bb.w ], [ %i.aw, %bb.o ], [ %i.aw, %bb.r ], [ %i.aw, %bb.q ], [ %i.aw, %bb.s ], [ %i.aw, %bb.t ], [ %i.aw, %bb.u ]
  %i.cg = inttoptr i64 %.sroa.02.0.i.i.i to ptr
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i

bb.x:                                             ; preds = %.noexc.i
  invoke void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @470) #60
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !4901, !inline_history !4880

.noexc9.i:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %.noexc.i
  %i.ch = extractvalue { ptr, i64 } %i.as, 1
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i: ; preds = %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i, %bb.y, %bb.i
  %.sroa.078.0 = phi ptr [ %.sroa.078.0.copyload, %bb.i ], [ %i.at, %bb.y ], [ %i.cg, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ]
  %.sroa.579.0 = phi i64 [ %.sroa.579.0.copyload, %bb.i ], [ %i.aq, %bb.y ], [ %.sroa.03.1.i.i.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ]
  %.sroa.780.0 = phi i64 [ %.sroa.780.0.copyload, %bb.i ], [ %i.ch, %bb.y ], [ %.sroa.0.0.i.i8.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.018.0129, i64 24
  %i.cj = load <2 x i32>, ptr %i.ci, align 8, !noalias !4901
  br label %bb.h

bb.z:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4906)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !4901
  %i.ck = tail call noalias noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !4901 ; 6 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.aa, label %.noexc11.i, !prof !50

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #60
          to label %.noexc17 unwind label %bb.ac

.noexc17:                                         ; preds = %bb.aa
  unreachable

.noexc11.i:                                       ; preds = %bb.z
  %i.cm = load ptr, ptr %i.am, align 8, !alias.scope !4906, !noalias !4901, !nonnull !49, !noundef !49 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load <2 x i32>, ptr %i.cn, align 8, !noalias !4907
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cq = load atomic i32, ptr %i.cp monotonic, align 8, !noalias !4907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4908), !noalias !4909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4910
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !4911, !noalias !4907, !nonnull !49, !noundef !49
  %i.cu = load i64, ptr %i.cr, align 8, !alias.scope !4911, !noalias !4907, !noundef !49
  invoke fastcc void @_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.ct, i64 noundef %i.cu)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit.i unwind label %bb.ab, !inline_history !4897

bb.ab:                                            ; preds = %.noexc11.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 40, i64 noundef 8) #61, !noalias !4909
  br label %.body.i

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit.i: ; preds = %.noexc11.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4910
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store <2 x i32> %i.co, ptr %.sroa.484.0..sroa_idx, align 8, !noalias !4909
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i32 %i.cq, ptr %.sroa.686.0..sroa_idx, align 8, !noalias !4909
  br label %.noexc12

bb.ac:                                            ; preds = %bb.aa
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ac, %bb.ab
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cw, %bb.ac ], [ %i.cv, %bb.ab ] ; 2 uses
  %.sroa.671.23.extract.shift.mask = and i64 %.sroa.671.0, -72057594037927936
  %cond = icmp eq i64 %.sroa.671.23.extract.shift.mask, -2882303761517117440
  br i1 %cond, label %bb.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i, !prof !92

bb.ad:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.069.0) ]
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %.sroa.069.0, i64 noundef %.sroa.671.0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i unwind label %bb.ae, !noalias !4901, !inline_history !4880

bb.ae:                                            ; preds = %bb.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !4901, !inline_history !4880
  unreachable

.noexc12:                                         ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit.i, %bb.h
  %.sroa.02.0.i = phi ptr [ null, %bb.h ], [ %i.ck, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4901
  %i.cy = bitcast i64 %.sroa.671.0 to <2 x i32>
  br label %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %.noexc12, %.noexc
  %.sroa.9.sroa.8.0 = phi i32 [ undef, %.noexc ], [ %i.ac, %.noexc12 ]
  %.sroa.9.sroa.7.0 = phi ptr [ undef, %.noexc ], [ %.sroa.02.0.i, %.noexc12 ]
  %.sroa.9.sroa.4.0 = phi ptr [ undef, %.noexc ], [ %i.ad, %.noexc12 ]
  %.sroa.932.0 = phi i8 [ 0, %.noexc ], [ %i.al, %.noexc12 ]
  %.sroa.521.0 = phi i64 [ %i.x, %.noexc ], [ %.sroa.570.0, %.noexc12 ]
  %.sroa.019.0 = phi ptr [ %i.w, %.noexc ], [ %.sroa.069.0, %.noexc12 ]
  %i.cz = phi <2 x i32> [ %i.s, %.noexc ], [ %i.cy, %.noexc12 ]
  %i.da = phi <2 x i32> [ %i.y, %.noexc ], [ %i.ak, %.noexc12 ]
  %i.db = phi <2 x i32> [ undef, %.noexc ], [ %i.aa, %.noexc12 ]
  %i.dc = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.7.0127 ; 9 uses
  store ptr %.sroa.019.0, ptr %i.dc, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %.sroa.521.0, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x i32> %i.cz, ptr %.sroa.555.0..sroa_idx, align 8
  %.sroa.757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store <2 x i32> %i.da, ptr %.sroa.757.0..sroa_idx, align 8
  %.sroa.858.sroa.4.0..sroa.858.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store ptr %.sroa.9.sroa.4.0, ptr %.sroa.858.sroa.4.0..sroa.858.0..sroa_idx.sroa_idx, align 8
  %.sroa.858.sroa.5.0..sroa.858.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store <2 x i32> %i.db, ptr %.sroa.858.sroa.5.0..sroa.858.0..sroa_idx.sroa_idx, align 8
  %.sroa.858.sroa.7.0..sroa.858.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  store ptr %.sroa.9.sroa.7.0, ptr %.sroa.858.sroa.7.0..sroa.858.0..sroa_idx.sroa_idx, align 8
  %.sroa.858.sroa.8.0..sroa.858.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  store i32 %.sroa.9.sroa.8.0, ptr %.sroa.858.sroa.8.0..sroa.858.0..sroa_idx.sroa_idx, align 8
  %.sroa.959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 60
  store i8 %.sroa.932.0, ptr %.sroa.959.0..sroa_idx, align 4
  %i.dd = icmp eq i64 %4, 0
  br i1 %i.dd, label %.thread, label %.lr.ph

bb.af:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.ag:                                            ; preds = %.loopexit.split-lp97.loopexit.split-lp, %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i ], [ %i.ah, %bb.g ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp97.loopexit.split-lp ]
  store i64 %.sroa.7.0127, ptr %i.l, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #58
          to label %bb.ah unwind label %bb.af

bb.ah:                                            ; preds = %bb.ag
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs2I_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_19InterpolatedElementNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1c_7tracker15StandardTrackerEB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !4934 {
_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtBT_7tracker15StandardTrackerEB7_.exit:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.10 = alloca [32 x i8], align 8           ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !noalias !4936
  call fastcc void @_RINvXsbB_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_4ExprNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.d), !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4935
  %i.h = load i64, ptr %i.c, align 8, !noundef !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.049.0.copyload = load ptr, ptr %i.i, align 8 ; 3 uses
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.450.0.copyload = load i64, ptr %.sroa.450.0..sroa_idx, align 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.k = load i8, ptr %i.j, align 1, !range !70, !noundef !49 ; 2 uses
  %.not = icmp eq i8 %i.k, -1
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtBT_7tracker15StandardTrackerEB7_.exit
  %i.l = icmp eq i8 %i.k, -40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i21 = load i64, ptr %i.m, align 8, !alias.scope !4937
  %i.n = and i64 %.val.i21, 72057594037927935
  %.sroa.0.0.i22 = select i1 %i.l, i64 %i.n, i64 0
  br label %bb.b

bb.b:                                             ; preds = %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtBT_7tracker15StandardTrackerEB7_.exit, %bb.a
  %.sroa.016.0 = phi i64 [ %.sroa.0.0.i22, %bb.a ], [ 0, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtBT_7tracker15StandardTrackerEB7_.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !align !57, !noundef !49 ; 4 uses
  %.not20 = icmp eq ptr %i.p, null
  br i1 %.not20, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !4938, !noalias !4939, !nonnull !49, !noundef !49
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !4938, !noalias !4939, !noundef !49 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  br i1 %i.u, label %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB1e_7tracker15StandardTrackerEB7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4106.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4106.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d
  %.sroa.092.0 = phi i64 [ 0, %bb.d ], [ %i.ad, %.noexc ]
  %.sroa.694.0 = phi ptr [ %.sroa.049.0.copyload, %bb.d ], [ %.sroa.5116.0, %.noexc ] ; 2 uses
  %.sroa.897.0 = phi i64 [ %.sroa.450.0.copyload, %bb.d ], [ %.sroa.8118.0, %.noexc ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ae, %.noexc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4106.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %.sroa.01.0.i.i.i ; 3 uses
  store ptr %.sroa.694.0, ptr %i.b, align 8, !noalias !4941
  store i64 %.sroa.897.0, ptr %.sroa.4106.sroa.4.0..sroa_idx, align 8, !noalias !4941
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  %i.y = load i8, ptr %i.x, align 4, !range !58, !noalias !4942, !noundef !49
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.f, label %.noexc26

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !4942, !noundef !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, i64 32, i1 false)
  br label %.noexc

.noexc26:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4942
  call fastcc void @_RINvXs2I_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_19InterpolatedElementNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1c_7tracker15StandardTrackerEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull align 8 %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !inline_history !4933
  %i.ac = load i64, ptr %i.a, align 8, !noalias !4942, !noundef !49
  %.sroa.0122.0.copyload = load ptr, ptr %i.v, align 8, !noalias !4942
  %.sroa.4123.0.copyload = load i64, ptr %.sroa.4123.0..sroa_idx, align 8, !noalias !4942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5124.0..sroa_idx, i64 32, i1 false), !noalias !4943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4942
  br label %.noexc

.noexc:                                           ; preds = %.noexc26, %bb.f
  %.sroa.0115.0 = phi i64 [ %i.ab, %bb.f ], [ %i.ac, %.noexc26 ]
  %.sroa.5116.0 = phi ptr [ %.sroa.694.0, %bb.f ], [ %.sroa.0122.0.copyload, %.noexc26 ] ; 2 uses
  %.sroa.8118.0 = phi i64 [ %.sroa.897.0, %bb.f ], [ %.sroa.4123.0.copyload, %.noexc26 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.ad = add i64 %.sroa.0115.0, %.sroa.092.0     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4940
  %i.ae = add nuw i64 %.sroa.01.0.i.i.i, 1        ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.t
  br i1 %i.af, label %bb.g, label %bb.e

bb.g:                                             ; preds = %.noexc
  %i.ag = add i64 %i.ad, 40
  br label %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB1e_7tracker15StandardTrackerEB7_.exit

_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB1e_7tracker15StandardTrackerEB7_.exit: ; preds = %bb.c, %bb.g
  %.sroa.578.sroa.5.0 = phi i64 [ %.sroa.8118.0, %bb.g ], [ %.sroa.450.0.copyload, %bb.c ]
  %.sroa.578.sroa.0.0 = phi ptr [ %.sroa.5116.0, %bb.g ], [ %.sroa.049.0.copyload, %bb.c ]
  %.sroa.076.0 = phi i64 [ %i.ag, %bb.g ], [ 40, %bb.c ]
  %i.ah = load i64, ptr %i.p, align 8, !range !55, !alias.scope !4938, !noalias !4939, !noundef !49
  %i.ai = shl i64 %i.ah, 6
  %i.aj = add i64 %.sroa.076.0, %i.ai
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB1e_7tracker15StandardTrackerEB7_.exit
  %.sroa.5.sroa.5.0 = phi i64 [ %.sroa.450.0.copyload, %bb.h ], [ %.sroa.578.sroa.5.0, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB1e_7tracker15StandardTrackerEB7_.exit ]
  %.sroa.5.sroa.0.0 = phi ptr [ %.sroa.049.0.copyload, %bb.h ], [ %.sroa.578.sroa.0.0, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB1e_7tracker15StandardTrackerEB7_.exit ]
  %.sroa.027.0 = phi i64 [ 0, %bb.h ], [ %i.aj, %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB1e_7tracker15StandardTrackerEB7_.exit ]
  %i.ak = add i64 %i.h, 72
  %i.al = add i64 %i.ak, %.sroa.016.0
  %i.am = add i64 %i.al, %.sroa.027.0
  store i64 %i.am, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0, ptr %i.an, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtBU_7helpers36any_over_interpolated_string_element00EBU_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #4 personality ptr @rust_eh_personality !guid !4947 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !49, !noundef !49
  %.promoted = load ptr, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = phi ptr [ %i.d, %bb.c ], [ %.promoted, %bb.a ] ; 3 uses
  %.not.not.not.not.not = icmp ne ptr %i.c, %i.b  ; 2 uses
  br i1 %.not.not.not.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  store ptr %i.d, ptr %0, align 8
  %i.e = tail call fastcc noundef zeroext i1 @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers36any_over_interpolated_string_element(ptr noundef nonnull align 8 %i.c, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2), !noalias !4948, !inline_history !4946
  br i1 %i.e, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.b, %bb.c
  ret i1 %.not.not.not.not.not
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs41_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_26InterpolatedStringElementsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1j_7tracker15StandardTrackerEB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !4960 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.10 = alloca [32 x i8], align 8           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4961)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !4961, !nonnull !49, !noundef !49
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !4961, !noundef !49 ; 2 uses
  %.sroa.517.8.copyload = load ptr, ptr %2, align 8, !noalias !4962 ; 2 uses
  %.sroa.718.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.718.8.copyload = load i64, ptr %.sroa.718.8..sroa_idx, align 8, !noalias !4962 ; 2 uses
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq i64 %i.f, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.8..sroa_idx, i64 32, i1 false)
  br i1 %i.g, label %_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.438.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.438.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_0
begin_hunk_1_@_RNvNtCskLngH8kgpZI_15ruff_python_ast3str15is_triple_quote:bb.a
.split.i.i20.16:                                  ; preds = %.split.i.i11.19
  %i.mb = load i32, ptr %0, align 1
  %i.mc = icmp ne i32 572662356, %i.mb
  %i.md = zext i1 %i.mc to i32
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB5_13SliceContains14slice_containsCskLngH8kgpZI_15ruff_python_ast.exit23, label %.split.i.i20.17

.split.i.i20.17:                                  ; preds = %.split.i.i20.16
  %i.mf = load i32, ptr %0, align 1
  %i.mg = icmp ne i32 572662388, %i.mf
  %i.mh = zext i1 %i.mg to i32
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB5_13SliceContains14slice_containsCskLngH8kgpZI_15ruff_python_ast.exit23, label %.split.i.i20.18

.split.i.i20.18:                                  ; preds = %.split.i.i20.17
  %i.mj = load i32, ptr %0, align 1
  %i.mk = icmp ne i32 656877396, %i.mj
  %i.ml = zext i1 %i.mk to i32
  %i.mm = icmp eq i32 %i.ml, 0
  br i1 %i.mm, label %_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB5_13SliceContains14slice_containsCskLngH8kgpZI_15ruff_python_ast.exit23, label %.split.i.i20.19

.split.i.i20.19:                                  ; preds = %.split.i.i20.18
  %i.mn = load i32, ptr %0, align 1
  %i.mo = icmp ne i32 656877428, %i.mn
  %i.mp = zext i1 %i.mo to i32
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB5_13SliceContains14slice_containsCskLngH8kgpZI_15ruff_python_ast.exit23, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0CskLngH8kgpZI_15ruff_python_ast.exit.backedge.i.i17.19

_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0CskLngH8kgpZI_15ruff_python_ast.exit.backedge.i.i17.19: ; preds = %_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB5_13SliceContains14slice_containsCskLngH8kgpZI_15ruff_python_ast.exit, %.split.i.i20.15, %.split.i.i20.19
  br label %_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB5_13SliceContains14slice_containsCskLngH8kgpZI_15ruff_python_ast.exit23

_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB5_13SliceContains14slice_containsCskLngH8kgpZI_15ruff_python_ast.exit23: ; preds = %.split.i.i, %.split.i.i11, %.split.i.i11.1, %.split.i.i11.2, %.split.i.i11.3, %.split.i.i11.4, %.split.i.i11.5, %.split.i.i11.6, %.split.i.i11.7, %.split.i.i11.8, %.split.i.i11.9, %.split.i.i11.10, %.split.i.i11.11, %.split.i.i11.12, %.split.i.i11.13, %.split.i.i11.14, %.split.i.i11.15, %.split.i.i11.16, %.split.i.i11.17, %.split.i.i11.18, %.split.i.i11.19, %.split.i.i20, %.split.i.i20.1, %.split.i.i20.2, %.split.i.i20.3, %.split.i.i20.4, %.split.i.i20.5, %.split.i.i20.6, %.split.i.i20.7, %.split.i.i20.8, %.split.i.i20.9, %.split.i.i20.10, %.split.i.i20.11, %.split.i.i20.12, %.split.i.i20.13, %.split.i.i20.14, %.split.i.i20.15, %.split.i.i20.16, %.split.i.i20.17, %.split.i.i20.18, %.split.i.i20.19, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0CskLngH8kgpZI_15ruff_python_ast.exit.backedge.i.i17.19
  %.sroa.0.0 = phi i1 [ true, %.split.i.i11 ], [ true, %.split.i.i20.10 ], [ false, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0CskLngH8kgpZI_15ruff_python_ast.exit.backedge.i.i17.19 ], [ true, %.split.i.i20 ], [ true, %.split.i.i20.1 ], [ true, %.split.i.i20.19 ], [ true, %.split.i.i20.2 ], [ true, %.split.i.i20.13 ], [ true, %.split.i.i20.3 ], [ true, %.split.i.i20.18 ], [ true, %.split.i.i20.4 ], [ true, %.split.i.i20.11 ], [ true, %.split.i.i20.5 ], [ true, %.split.i.i20.17 ], [ true, %.split.i.i20.6 ], [ true, %.split.i.i20.14 ], [ true, %.split.i.i20.7 ], [ true, %.split.i.i20.16 ], [ true, %.split.i.i20.8 ], [ true, %.split.i.i20.12 ], [ true, %.split.i.i20.9 ], [ true, %.split.i.i20.15 ], [ true, %.split.i.i11.19 ], [ true, %.split.i.i11.18 ], [ true, %.split.i.i11.17 ], [ true, %.split.i.i11.16 ], [ true, %.split.i.i11.15 ], [ true, %.split.i.i11.14 ], [ true, %.split.i.i11.13 ], [ true, %.split.i.i11.12 ], [ true, %.split.i.i11.11 ], [ true, %.split.i.i11.10 ], [ true, %.split.i.i11.9 ], [ true, %.split.i.i11.8 ], [ true, %.split.i.i11.7 ], [ true, %.split.i.i11.6 ], [ true, %.split.i.i11.5 ], [ true, %.split.i.i11.4 ], [ true, %.split.i.i11.3 ], [ true, %.split.i.i11.2 ], [ true, %.split.i.i11.1 ], [ true, %.split.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers11is_constant(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality !guid !8420 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !65, !noundef !49
  switch i32 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvNtBU_7helpers11is_constantEBU_.exit [
    i32 30, label %bb.b
    i32 19, label %bb.c
    i32 20, label %bb.c
    i32 21, label %bb.c
    i32 22, label %bb.c
    i32 23, label %bb.c
    i32 24, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !49, !noundef !49 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !49 ; 2 uses
  %.idx = mul nuw nsw i64 %i.e, 72
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvNtBU_7helpers11is_constantEBU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.b
  %.sroa.0.012 = phi ptr [ %i.i, %.lr.ph ], [ %i.c, %bb.b ] ; 2 uses
  %i.h = tail call fastcc noundef zeroext i1 @_RNvYNvNtCskLngH8kgpZI_15ruff_python_ast7helpers11is_constantINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRNtNtB6_9generated4ExprEE8call_mutB6_(ptr noundef nonnull align 8 %.sroa.0.012) ; 2 uses
  %.not = xor i1 %i.h, true
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 72 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvNtBU_7helpers11is_constantEBU_.exit, label %.lr.ph

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvNtBU_7helpers11is_constantEBU_.exit: ; preds = %.lr.ph, %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.b ], [ %i.h, %.lr.ph ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvNtBU_7helpers11is_constantEBU_.exit
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers12is_stub_body(ptr nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 104811045873349726) %1) unnamed_addr #19 personality ptr @rust_eh_personality !guid !8423 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_7helpers12is_stub_body0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = mul nuw nsw i64 %1, 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.split.backedge.i
  %i.c = phi ptr [ %i.d, %.split.backedge.i ], [ %0, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.f = load i8, ptr %i.e, align 4, !range !53, !noalias !8424, !noundef !49 ; 2 uses
  %i.g = icmp samesign ugt i8 %i.f, 1
  %i.h = zext nneg i8 %i.f to i64
  %i.i = add nsw i64 %i.h, -1
  %i.j = select i1 %i.g, i64 %i.i, i64 0
  switch i64 %i.j, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_7helpers12is_stub_body0EBU_.exit [
    i64 20, label %_RNCNvNtCskLngH8kgpZI_15ruff_python_ast7helpers12is_stub_body0B5_.exit.i
    i64 21, label %.split.backedge.i
  ]

_RNCNvNtCskLngH8kgpZI_15ruff_python_ast7helpers12is_stub_body0B5_.exit.i: ; preds = %.lr.ph.i
  %i.k = load ptr, ptr %i.c, align 8, !noalias !8424, !nonnull !49, !noundef !49
  %i.l = load i32, ptr %i.k, align 8, !range !65, !noalias !8424, !noundef !49
  %i.m = icmp eq i32 %i.l, 24
  br i1 %i.m, label %.split.backedge.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_7helpers12is_stub_body0EBU_.exit

.split.backedge.i:                                ; preds = %_RNCNvNtCskLngH8kgpZI_15ruff_python_ast7helpers12is_stub_body0B5_.exit.i, %.lr.ph.i
  %i.n = icmp eq ptr %i.d, %i.b
  br i1 %i.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_7helpers12is_stub_body0EBU_.exit, label %.lr.ph.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_7helpers12is_stub_body0EBU_.exit: ; preds = %.split.backedge.i, %_RNCNvNtCskLngH8kgpZI_15ruff_python_ast7helpers12is_stub_body0B5_.exit.i, %.lr.ph.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %.lr.ph.i ], [ true, %.split.backedge.i ], [ false, %_RNCNvNtCskLngH8kgpZI_15ruff_python_ast7helpers12is_stub_body0B5_.exit.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers12typing_union(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 0, 128102389400760776) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #2 personality ptr @rust_eh_personality !guid !8433 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [72 x i8], align 8                ; 10 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 0, ptr %.sroa.53.0..sroa_idx, align 4
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 -2, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i8 0, ptr %.sroa.75.0..sroa_idx, align 4
  store i32 28, ptr %i.d, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !8434
  %i.g = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !8434 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newBH_.exit17, !prof !107

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) #58
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.c ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newBH_.exit17: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  store ptr %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8435
  %i.k = mul nuw nsw i64 %2, 72                   ; 2 uses
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newBH_.exit17
  store i64 0, ptr %i.b, align 8, !noalias !8435
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !noalias !8435
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.loopexit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newBH_.exit17
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !8436, !inline_history !23
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, 17) 8) #61, !noalias !8436, !inline_history !23 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %.lr.ph.preheader.i

bb.e:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.k) #60
          to label %.noexc18 unwind label %bb.i, !inline_history !23

.noexc18:                                         ; preds = %bb.e
  unreachable

.lr.ph.preheader.i:                               ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %2, ptr %i.b, align 8, !noalias !8435
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !8435
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %4 = getelementptr inbounds nuw [72 x i8], ptr %1, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.t, %bb.f ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.s, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %5, %bb.f ], [ %2, %.lr.ph.preheader.i ]
  %5 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %6 = icmp eq ptr %.sroa.012.023.i, %4
  br i1 %6, label %.loopexit, label %7

7:                                                ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8435
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %.sroa.012.023.i)
          to label %bb.f unwind label %bb.h, !noalias !8435, !inline_history !23

bb.f:                                             ; preds = %7
  %i.s = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 72
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !8435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8435
  %i.v = icmp eq i64 %5, 0
  br i1 %i.v, label %.loopexit, label %.lr.ph.i

bb.g:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !8435, !inline_history !23
  unreachable

bb.h:                                             ; preds = %7
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.r, align 8, !noalias !8435
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
          to label %.body unwind label %bb.g, !noalias !8435, !inline_history !23

bb.i:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.i, %bb.h ], [ %i.x, %bb.i ], [ %i.ab, %bb.k ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #58
          to label %common.resume unwind label %bb.n

.loopexit:                                        ; preds = %bb.f, %.lr.ph.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i
  %8 = phi ptr [ %i.n, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i ], [ %i.r, %.lr.ph.i ], [ %i.r, %bb.f ]
  store i64 %2, ptr %8, align 8, !noalias !8435
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8435
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 0, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 0, ptr %.sroa.59.0..sroa_idx, align 4
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 -2, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i8 0, ptr %.sroa.711.0..sroa_idx, align 4
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 45
  store i8 0, ptr %.sroa.812.0..sroa_idx, align 1
  store i32 30, ptr %i.c, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !8437
  %i.z = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !8437 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %bb.m, !prof !107

bb.j:                                             ; preds = %.loopexit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60
          to label %.noexc21 unwind label %bb.k

.noexc21:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #58
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.m:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 4
  store i32 26, ptr %0, align 8
  ret void

bb.n:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers13pep_604_union(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 0, 128102389400760776) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !8442 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.i, %bb.a
  %.tr16 = phi ptr [ %1, %bb.a ], [ %i.o, %bb.i ] ; 6 uses
  %.tr17 = phi i64 [ %2, %bb.a ], [ %i.q, %bb.i ] ; 3 uses
  switch i64 %.tr17, label %bb.e [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 -2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 1
  store i32 30, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %bb.j, %bb.b
  ret void

bb.d:                                             ; preds = %tailrecurse
  %i.e = load i32, ptr %.tr16, align 8, !range !65, !noundef !49
  %i.f = icmp eq i32 %i.e, 30
  br i1 %i.f, label %bb.i, label %bb.j

bb.e:                                             ; preds = %tailrecurse
  %i.g = icmp ne i64 %.tr17, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %.tr17, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers13pep_604_union(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %.tr16, i64 noundef %i.h)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !8443
  %i.i = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !8443 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newBH_.exit13, !prof !107

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #58
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newBH_.exit13: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  store ptr %i.i, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %.tr16, i64 %i.h
  invoke void @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers13pep_604_union(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %i.m, i64 noundef 1)
          to label %bb.l unwind label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.tr16, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !49, !noundef !49
  %i.p = getelementptr inbounds nuw i8, ptr %.tr16, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !49
  br label %tailrecurse

bb.j:                                             ; preds = %bb.d
  tail call fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %.tr16)
  br label %bb.c

bb.k:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newBH_.exit13
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.u, %bb.n ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #58
          to label %common.resume unwind label %bb.q

bb.l:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newBH_.exit13
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !8444
  %i.s = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !8444 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.p, !prof !107

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60
          to label %.noexc14 unwind label %bb.n

.noexc14:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #58
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.w, align 8
end_hunk_1
begin_hunk_2_@_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_:bb.a
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  %.sroa.04.066 = phi ptr [ %i.e, %.lr.ph ], [ %i.t, %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ] ; 11 uses
  %.sroa.7.065 = phi i64 [ 0, %.lr.ph ], [ %i.u, %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.10.064 = phi i64 [ %i.f, %.lr.ph ], [ %i.r, %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ]
  %i.r = add nsw i64 %.sroa.10.064, -1            ; 2 uses
  %i.s = icmp eq ptr %.sroa.04.066, %i.p
  br i1 %i.s, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 40
  %i.u = add nuw nsw i64 %.sroa.7.065, 1
  %i.v = load i64, ptr %.sroa.04.066, align 8, !range !61, !noalias !15077, !noundef !49
  %.not.i1 = icmp eq i64 %i.v, -1
  br i1 %.not.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 24
  %i.x = load <2 x i32>, ptr %i.w, align 8, !noalias !15078
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 32
  %i.z = load atomic i32, ptr %i.y monotonic, align 8, !noalias !15078
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15079)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15080
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !15081, !nonnull !49, !noundef !49
  %i.ad = load i64, ptr %i.aa, align 8, !alias.scope !15081, !noundef !49
  invoke fastcc void @_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.ac, i64 noundef %i.ad)
          to label %.noexc unwind label %bb.i, !inline_history !15071

.noexc:                                           ; preds = %bb.f
  %.sroa.053.0.copyload = load i64, ptr %i.a, align 8, !noalias !15079
  %.sroa.454.0.copyload = load ptr, ptr %.sroa.454.0..sroa_idx, align 8, !noalias !15079
  %.sroa.555.0.copyload = load i64, ptr %.sroa.555.0..sroa_idx, align 8, !noalias !15079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15080
  br label %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 24
  %i.ag = load <2 x i32>, ptr %i.af, align 8, !noalias !15077
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 32
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 8, !noalias !15077
  %i.aj = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae)
          to label %.noexc2 unwind label %bb.i, !inline_history !15072 ; 2 uses

.noexc2:                                          ; preds = %bb.g
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  br label %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %.noexc2, %.noexc
  %.sroa.9.0 = phi i32 [ %i.ai, %.noexc2 ], [ %i.z, %.noexc ]
  %.sroa.6.0 = phi i64 [ %i.al, %.noexc2 ], [ %.sroa.555.0.copyload, %.noexc ]
  %.sroa.57.0 = phi ptr [ %i.ak, %.noexc2 ], [ %.sroa.454.0.copyload, %.noexc ]
  %.sroa.05.0 = phi i64 [ -1, %.noexc2 ], [ %.sroa.053.0.copyload, %.noexc ]
  %i.am = phi <2 x i32> [ %i.ag, %.noexc2 ], [ %i.x, %.noexc ]
  %.sroa.1019.0.in = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 36
  %.sroa.1019.0 = load i8, ptr %.sroa.1019.0.in, align 4, !noalias !15077, !noundef !49
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %.sroa.7.065 ; 6 uses
  store i64 %.sroa.05.0, ptr %i.an, align 8, !noalias !15075
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.440.0..sroa_idx, align 8, !noalias !15075
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.541.0..sroa_idx, align 8, !noalias !15075
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store <2 x i32> %i.am, ptr %.sroa.642.0..sroa_idx, align 8, !noalias !15075
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i32 %.sroa.9.0, ptr %.sroa.844.0..sroa_idx, align 8, !noalias !15075
  %.sroa.945.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  store i8 %.sroa.1019.0, ptr %.sroa.945.0..sroa_idx, align 4, !noalias !15075
  %i.ao = icmp eq i64 %i.r, 0
  br i1 %i.ao, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %bb.d

bb.h:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15075, !inline_history !15073
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.065, ptr %i.o, align 8, !noalias !15075
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #58
          to label %bb.j unwind label %bb.h, !noalias !15075, !inline_history !15073

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.loopexit

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit: ; preds = %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit
  %i.aq = phi ptr [ %i.k, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread ], [ %i.o, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.o, %bb.d ], [ %i.o, %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ]
  store i64 %i.f, ptr %i.aq, align 8, !noalias !15075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15075
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !15097 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.02 = alloca [168 x i8], align 8          ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !49, !noundef !49 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !49 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15098
  %i.j = mul i64 %i.i, 184                        ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.i, 50127021939428129
  br i1 %or.cond.i.i, label %bb.c, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread: ; preds = %bb.b
  %i.l = icmp eq i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.l), !noalias !15098
  store i64 0, ptr %i.e, align 8, !noalias !15098
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !noalias !15098
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15099
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, 17) 8) #61, !noalias !15099 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit

bb.c:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.j) #60, !noalias !15098
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  store i64 %i.i, ptr %i.e, align 8, !noalias !15098
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !15098
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw [184 x i8], ptr %i.h, i64 %i.i
  %.sroa.02.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02, i64 24
  %.sroa.02.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit, %.loopexit58
  %.sroa.01.037 = phi ptr [ %i.h, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.x, %.loopexit58 ] ; 9 uses
  %.sroa.7.036 = phi i64 [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.y, %.loopexit58 ] ; 3 uses
  %.sroa.10.035 = phi i64 [ %i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.v, %.loopexit58 ]
  %i.v = add nsw i64 %.sroa.10.035, -1            ; 2 uses
  %i.w = icmp eq ptr %.sroa.01.037, %i.s
  br i1 %i.w, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %bb.e

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 184
  %i.y = add nuw nsw i64 %.sroa.7.036, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 168
  %i.aa = load <2 x i32>, ptr %i.z, align 8, !noalias !15100
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 176
  %i.ac = load atomic i32, ptr %i.ab monotonic, align 8, !noalias !15100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15100
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 24
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull align 8 %i.ad)
          to label %.noexc unwind label %.loopexit, !inline_history !15088

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15100
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 96
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull align 8 %i.ae)
          to label %bb.h unwind label %bb.g, !noalias !15100, !inline_history !15088

bb.f:                                             ; preds = %.body, %bb.g
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body57, %.body ], [ %i.af, %bb.g ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) #58
          to label %bb.p unwind label %bb.n, !noalias !15100, !inline_history !15088

bb.g:                                             ; preds = %.noexc
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %.noexc
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !15101, !noalias !15100, !nonnull !49, !noundef !49 ; 2 uses
  %i.aj = load i64, ptr %i.ag, align 8, !alias.scope !15101, !noalias !15100, !noundef !49 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15102
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i: ; preds = %bb.h
  store i64 0, ptr %i.b, align 8, !noalias !15102
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !15102
  br label %.loopexit58

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.h
  %i.al = mul nuw nsw i64 %i.aj, 72               ; 2 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15103, !inline_history !15095
  %i.am = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 17) 8) #61, !noalias !15103, !inline_history !15095 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %.lr.ph.preheader.i

bb.i:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.al) #60
          to label %.noexc56 unwind label %bb.m, !inline_history !15095

.noexc56:                                         ; preds = %bb.i
  unreachable

.lr.ph.preheader.i:                               ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.aj, ptr %i.b, align 8, !noalias !15102
  store ptr %i.am, ptr %i.t, align 8, !noalias !15102
  %2 = getelementptr inbounds nuw [72 x i8], ptr %i.ai, i64 %i.aj
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.ap, %bb.j ], [ %i.ai, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.ao, %bb.j ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %3, %bb.j ], [ %i.aj, %.lr.ph.preheader.i ]
  %3 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %4 = icmp eq ptr %.sroa.012.023.i, %2
  br i1 %4, label %.loopexit58, label %5

5:                                                ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15102
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %.sroa.012.023.i)
          to label %bb.j unwind label %bb.l, !noalias !15102, !inline_history !15095

bb.j:                                             ; preds = %5
  %i.ao = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 72
  %i.aq = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !15102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15102
  %i.ar = icmp eq i64 %3, 0
  br i1 %i.ar, label %.loopexit58, label %.lr.ph.i

bb.k:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15102, !inline_history !15095
  unreachable

bb.l:                                             ; preds = %5
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.u, align 8, !noalias !15102
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
          to label %.body unwind label %bb.k, !noalias !15102, !inline_history !15095

bb.m:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.m
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.at, %bb.m ], [ %lpad.loopexit.i, %bb.l ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #58
          to label %bb.f unwind label %bb.n, !noalias !15100, !inline_history !15088

bb.n:                                             ; preds = %.body, %bb.f
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15100, !inline_history !15088
  unreachable

.loopexit58:                                      ; preds = %bb.j, %.lr.ph.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i
  store i64 %i.aj, ptr %i.u, align 8, !noalias !15102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !15098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15102
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 180
  %i.aw = load i8, ptr %i.av, align 4, !range !54, !noalias !15100, !noundef !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.02.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !15098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.02.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !15098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15100
  %i.ax = getelementptr inbounds nuw [184 x i8], ptr %i.o, i64 %.sroa.7.036 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ax, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.02, i64 168, i1 false), !noalias !15098
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 168
  store <2 x i32> %i.aa, ptr %.sroa.418.0..sroa_idx, align 8, !noalias !15098
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 176
  store i32 %i.ac, ptr %.sroa.620.0..sroa_idx, align 8, !noalias !15098
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 180
  store i8 %i.aw, ptr %.sroa.721.0..sroa_idx, align 4, !noalias !15098
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02)
  %i.ay = icmp eq i64 %i.v, 0
  br i1 %i.ay, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %bb.d

bb.o:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15098, !inline_history !15096
  unreachable

bb.p:                                             ; preds = %.loopexit, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.036, ptr %i.r, align 8, !noalias !15098
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #58
          to label %bb.q unwind label %bb.o, !noalias !15098, !inline_history !15096

bb.q:                                             ; preds = %bb.p
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit: ; preds = %.loopexit58, %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread
  %i.ba = phi ptr [ %i.n, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread ], [ %i.r, %bb.d ], [ %i.r, %.loopexit58 ]
  store i64 %i.i, ptr %i.ba, align 8, !noalias !15098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15098
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !15117 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.018 = alloca [24 x i8], align 8          ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !49, !noundef !49 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !49 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15118
  %i.g = mul i64 %i.f, 40                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.f, 230584300921369395
  br i1 %or.cond.i.i, label %bb.c, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread: ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.i), !noalias !15118
  store i64 0, ptr %i.b, align 8, !noalias !15118
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !15118
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15119
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 17) 8) #61, !noalias !15119 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit

bb.c:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #60, !noalias !15118
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  store i64 %i.f, ptr %i.b, align 8, !noalias !15118
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !15118
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.f
  %i.q = icmp eq i64 %i.f, 0
  br i1 %i.q, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit, %bb.e
  %.sroa.01.034 = phi ptr [ %i.ac, %bb.e ], [ %i.e, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ] ; 7 uses
  %.sroa.7.033 = phi i64 [ %i.ab, %bb.e ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ] ; 3 uses
  %.sroa.10.032 = phi i64 [ %i.r, %bb.e ], [ %i.f, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ]
  %i.r = add nsw i64 %.sroa.10.032, -1            ; 2 uses
  %i.s = icmp eq ptr %.sroa.01.034, %i.p
  br i1 %i.s, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.034, i64 24
  %i.u = load <2 x i32>, ptr %i.t, align 8, !noalias !15120
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.034, i64 32
  %i.w = load atomic i32, ptr %i.v monotonic, align 8, !noalias !15120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15121
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.034, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.01.034, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !15122, !nonnull !49, !noundef !49
  %i.aa = load i64, ptr %i.x, align 8, !alias.scope !15122, !noundef !49
  invoke fastcc void @_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.z, i64 noundef %i.aa)
          to label %bb.e unwind label %bb.g, !inline_history !15115

bb.e:                                             ; preds = %bb.d
  %i.ab = add nuw nsw i64 %.sroa.7.033, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.01.034, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.018)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !15118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15121
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.01.034, i64 36
  %i.ae = load i8, ptr %i.ad, align 4, !noalias !15120, !noundef !49
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %.sroa.7.033 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, i64 24, i1 false), !noalias !15118
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store <2 x i32> %i.u, ptr %.sroa.419.0..sroa_idx, align 8, !noalias !15118
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 %i.w, ptr %.sroa.621.0..sroa_idx, align 8, !noalias !15118
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  store i8 %i.ae, ptr %.sroa.722.0..sroa_idx, align 4, !noalias !15118
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018)
  %i.ag = icmp eq i64 %i.r, 0
  br i1 %i.ag, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %.lr.ph

bb.f:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15118, !inline_history !15116
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.033, ptr %i.o, align 8, !noalias !15118
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #58
          to label %bb.h unwind label %bb.f, !noalias !15118, !inline_history !15116

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit: ; preds = %bb.e, %.lr.ph, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit
  %i.ai = phi ptr [ %i.k, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread ], [ %i.o, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.o, %.lr.ph ], [ %i.o, %bb.e ]
  store i64 %i.f, ptr %i.ai, align 8, !noalias !15118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15118
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsa_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_9NodeIndexE2eq(ptr nofree noundef nonnull align 4 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #2 !guid !15123 {
bb.a:
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit, !prof !50

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #60
  unreachable

_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit: ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !range !120, !noundef !49
  %i.c = icmp eq i32 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define { i32, i32 } @_RNvXsai_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_14AnyRootNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #18 !guid !15124 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !124, !noundef !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !49, !align !57, !noundef !49 ; 82 uses
  switch i64 %i.a, label %default.unreachable55 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %switch.lookup
    i64 3, label %bb.x
    i64 4, label %bb.y
    i64 5, label %switch.lookup59
    i64 6, label %bb.z
    i64 7, label %bb.aa
    i64 8, label %bb.ab
    i64 9, label %bb.ac
    i64 10, label %bb.ad
    i64 11, label %bb.ae
    i64 12, label %bb.af
    i64 13, label %bb.ag
    i64 14, label %bb.ah
    i64 15, label %bb.ai
    i64 16, label %bb.aj
    i64 17, label %bb.ak
    i64 18, label %bb.al
end_hunk_2
begin_hunk_3_@_RNvXsbr_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_3ModNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size:bb.a

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXsbw_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4StmtNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !15267 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !54, !noalias !15268, !noundef !49
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i, !prof !56

._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.c, align 8, !noalias !15269
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !15269
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit

_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %bb.a
  %i.g = tail call { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys(), !noalias !15270 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.i, ptr %i.j, align 8, !noalias !15270
  store i8 1, ptr %i.d, align 8, !noalias !15270
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %.pre-phi9 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i ], [ %i.i, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i ]
  %i.k = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i ], [ %i.h, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i ] ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.c, align 8, !noalias !15269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @46, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.k, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.pre-phi9, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvXsbw_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_4StmtNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b)
  %i.m = load i64, ptr %i.a, align 8, !noundef !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val7 = load i64, ptr %i.o, align 8, !noundef !49 ; 4 uses
  %i.p = icmp eq i64 %.val7, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit
  %i.q = shl i64 %.val7, 3
  %i.r = icmp slt i64 %.val7, 2305843009213693950
  call void @llvm.assume(i1 %i.r)
  %i.s = and i64 %i.q, -16                        ; 2 uses
  %i.t = add i64 %i.s, 16                         ; 2 uses
  %i.u = add nsw i64 %.val7, 17
  %i.v = add i64 %i.u, %i.t                       ; 4 uses
  %i.w = icmp uge i64 %i.v, %i.t
  %i.x = icmp ult i64 %i.v, 9223372036854775793
  call void @llvm.assume(i1 %i.w)
  call void @llvm.assume(i1 %i.x)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  %i.z = sub nuw nsw i64 -16, %i.s
  %i.aa = getelementptr inbounds i8, ptr %.val, i64 %i.z
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 16) #61
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1) unnamed_addr #4 personality ptr @rust_eh_personality !guid !15535 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [72 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [72 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [72 x i8], align 8                ; 4 uses
  %i.n = alloca [72 x i8], align 8                ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 7 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 4 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = alloca [40 x i8], align 8                ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = alloca [72 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [72 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [72 x i8], align 8               ; 4 uses
  %i.ad = alloca [72 x i8], align 8               ; 4 uses
  %i.ae = alloca [72 x i8], align 8               ; 4 uses
  %i.af = alloca [72 x i8], align 8               ; 4 uses
  %i.ag = alloca [72 x i8], align 8               ; 4 uses
  %i.ah = alloca [72 x i8], align 8               ; 4 uses
  %i.ai = alloca [144 x i8], align 8              ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 10 uses
  %i.ak = alloca [72 x i8], align 8               ; 4 uses
  %i.al = alloca [72 x i8], align 8               ; 4 uses
  %i.am = alloca [72 x i8], align 8               ; 4 uses
  %i.an = alloca [72 x i8], align 8               ; 4 uses
  %i.ao = alloca [72 x i8], align 8               ; 4 uses
  %i.ap = alloca [72 x i8], align 8               ; 4 uses
  %i.aq = alloca [72 x i8], align 8               ; 4 uses
  %i.ar = alloca [72 x i8], align 8               ; 4 uses
  %i.as = alloca [72 x i8], align 8               ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 9 uses
  %i.ay = alloca [16 x i8], align 8               ; 8 uses
  %i.az = alloca [24 x i8], align 8               ; 9 uses
  %i.ba = alloca [24 x i8], align 8               ; 10 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [8 x i8], align 8                ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [8 x i8], align 8                ; 4 uses
  %i.bn = alloca [8 x i8], align 8                ; 4 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [8 x i8], align 8                ; 4 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.11350 = alloca [11 x i8], align 1        ; 2 uses
  %.sroa.11322 = alloca [3 x i8], align 1         ; 2 uses
  %i.bs = load i32, ptr %1, align 8, !range !65, !noundef !49 ; 2 uses
  switch i32 %i.bs, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %bb.n
    i32 3, label %bb.u
    i32 4, label %bb.x
    i32 5, label %bb.ae
    i32 6, label %bb.ap
    i32 7, label %bb.bd
    i32 8, label %bb.bi
    i32 9, label %bb.bn
    i32 10, label %bb.bs
    i32 11, label %bb.cb
    i32 12, label %bb.cg
    i32 13, label %bb.cj
    i32 14, label %bb.cl
    i32 15, label %bb.co
    i32 16, label %bb.db
    i32 17, label %bb.dn
    i32 18, label %bb.dq
    i32 19, label %bb.dt
    i32 20, label %bb.ek
    i32 21, label %bb.ev
    i32 22, label %bb.fb
    i32 23, label %bb.fc
    i32 24, label %bb.fd
    i32 25, label %bb.fe
    i32 26, label %bb.fl
    i32 27, label %bb.fs
    i32 28, label %bb.fv
    i32 29, label %bb.fy
    i32 30, label %bb.gd
    i32 31, label %bb.gi
    i32 32, label %bb.gs
  ]

default.unreachable:                              ; preds = %bb.ev, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bu = load atomic i32, ptr %i.bt monotonic, align 8, !noalias !15536
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bw = load <2 x i32>, ptr %i.bv, align 8, !noalias !15536
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.by = load i8, ptr %i.bx, align 4, !range !54, !noalias !15536, !noundef !49
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !15537, !noalias !15536, !nonnull !49, !noundef !49 ; 2 uses
  %i.cc = load i64, ptr %i.bz, align 8, !alias.scope !15537, !noalias !15536, !noundef !49 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15538
  %i.cd = mul nuw nsw i64 %i.cc, 72               ; 2 uses
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i: ; preds = %bb.b
  store i64 0, ptr %i.l, align 8, !noalias !15538
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cf, align 8, !noalias !15538
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15539, !inline_history !23
  %i.ch = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.cd, i64 noundef range(i64 1, 17) 8) #61, !noalias !15539, !inline_history !23 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cd) #60, !noalias !15538, !inline_history !23
  unreachable

.lr.ph.preheader.i:                               ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.cc, ptr %i.l, align 8, !noalias !15538
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ch, ptr %i.cj, align 8, !noalias !15538
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %2 = getelementptr inbounds nuw [72 x i8], ptr %i.cb, i64 %i.cc
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.cm, %bb.d ], [ %i.cb, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.cl, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %3, %bb.d ], [ %i.cc, %.lr.ph.preheader.i ]
  %3 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %4 = icmp eq ptr %.sroa.012.023.i, %2
  br i1 %4, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %5

5:                                                ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15538
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.k, ptr noundef nonnull align 8 %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !noalias !15538, !inline_history !23

bb.d:                                             ; preds = %5
  %i.cl = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 72
  %i.cn = getelementptr inbounds nuw [72 x i8], ptr %i.ch, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !15538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15538
  %i.co = icmp eq i64 %3, 0
  br i1 %i.co, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15538, !inline_history !23
  unreachable

bb.f:                                             ; preds = %5
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.ck, align 8, !noalias !15538
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #58
          to label %common.resume549 unwind label %bb.e, !noalias !15538, !inline_history !23

common.resume549:                                 ; preds = %bb.gh, %bb.gc, %bb.bh, %bb.i, %bb.p, %bb.w, %bb.ag, %bb.bk, %bb.bp, %bb.cd, %bb.ci, %bb.cn, %bb.cq, %bb.dd, %common.resume.i.i, %bb.er, %bb.fg, %bb.fn, %bb.fu, %.body, %.body71, %.body83, %.body95, %bb.bc, %bb.bl, %bb.bq, %.body111, %bb.ce, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEEB1e_.exit, %.body133, %bb.fj, %.body145, %bb.gn, %bb.f
  %common.resume549.op = phi { ptr, i32 } [ %lpad.loopexit.i537, %bb.gc ], [ %lpad.loopexit.i, %bb.f ], [ %.pn.i62, %bb.gn ], [ %lpad.loopexit.i504, %bb.bh ], [ %i.cz, %bb.i ], [ %eh.lpad-body146, %.body145 ], [ %i.dq, %bb.p ], [ %eh.lpad-body, %.body ], [ %i.el, %bb.w ], [ %eh.lpad-body72, %.body71 ], [ %i.fk, %bb.ag ], [ %eh.lpad-body84, %.body83 ], [ %.pn.i, %.body95 ], [ %i.im, %bb.bk ], [ %eh.lpad-body157, %bb.bc ], [ %i.iz, %bb.bp ], [ %i.in, %bb.bl ], [ %i.ja, %bb.bq ], [ %i.kd, %bb.cd ], [ %.pn.i45, %.body111 ], [ %i.kr, %bb.ci ], [ %i.lj, %bb.cn ], [ %i.lt, %bb.cq ], [ %i.ke, %bb.ce ], [ %i.ng, %bb.dd ], [ %.pn.i47, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEEB1e_.exit ], [ %common.resume.op.i.i, %common.resume.i.i ], [ %i.ta, %bb.er ], [ %i.vb, %bb.fg ], [ %eh.lpad-body134, %.body133 ], [ %i.vy, %bb.fn ], [ %i.vi, %bb.fj ], [ %i.wr, %bb.fu ], [ %lpad.loopexit.i546, %bb.gh ]
  resume { ptr, i32 } %common.resume549.op

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i
  %6 = phi ptr [ %i.cg, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i ], [ %i.ck, %bb.d ], [ %i.ck, %.lr.ph.i ]
  store i64 %i.cc, ptr %6, align 8, !noalias !15538
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15538
  %.sroa.4.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.bw, ptr %.sroa.4.0..sroa_idx161, align 8
  %.sroa.6.0..sroa_idx163 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.bu, ptr %.sroa.6.0..sroa_idx163, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.by, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.gt

bb.g:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cs = load atomic i32, ptr %i.cr monotonic, align 8, !noalias !15540
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cu = load <2 x i32>, ptr %i.ct, align 8, !noalias !15540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !15540
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15541)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15542, !inline_history !15283
  %i.cv = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15542, !inline_history !15283 ; 5 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.h, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i65, !prof !50

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60, !noalias !15542, !inline_history !15283
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i65: ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !15541, !noalias !15540, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !15542
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ar, ptr noundef nonnull align 8 %i.cy)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit67 unwind label %bb.i, !noalias !15542, !inline_history !15284

bb.i:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i65
  %i.cz = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cv, i64 noundef 72, i64 noundef 8) #61, !noalias !15542, !inline_history !15283
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit67: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cv, ptr noundef nonnull align 8 dereferenceable(72) %i.ar, i64 72, i1 false), !noalias !15542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !15542
  store ptr %i.cv, ptr %i.br, align 8, !noalias !15540
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15543)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15544, !inline_history !15283
  %i.da = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15544, !inline_history !15283 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.j, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i, !prof !50

bb.j:                                             ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit67
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60
          to label %.noexc unwind label %bb.l, !inline_history !15283

.noexc:                                           ; preds = %bb.j
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i: ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit67
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !15543, !noalias !15540, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !15544
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.as, ptr noundef nonnull align 8 %i.dd)
          to label %_RNvXsfB_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprNamedNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.k, !noalias !15544, !inline_history !15284

bb.k:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef 72, i64 noundef 8) #61, !noalias !15544, !inline_history !15283
  br label %.body

bb.l:                                             ; preds = %bb.j
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.df, %bb.l ], [ %i.de, %bb.k ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br) #58
          to label %common.resume549 unwind label %bb.m, !noalias !15540, !inline_history !15287

bb.m:                                             ; preds = %.body
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15540, !inline_history !15287
  unreachable

_RNvXsfB_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprNamedNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.da, ptr noundef nonnull align 8 dereferenceable(72) %i.as, i64 72, i1 false), !noalias !15544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !15544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !15540
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.dh, align 8
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.da, ptr %.sroa.4165.0..sroa_idx, align 8
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.cu, ptr %.sroa.5166.0..sroa_idx, align 8
  %.sroa.7168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cs, ptr %.sroa.7168.0..sroa_idx, align 8
  br label %bb.gt

bb.n:                                             ; preds = %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dj = load atomic i32, ptr %i.di monotonic, align 8, !noalias !15545
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dl = load <2 x i32>, ptr %i.dk, align 8, !noalias !15545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !15545
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15546)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15547, !inline_history !15292
  %i.dm = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15547, !inline_history !15292 ; 5 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.o, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i74, !prof !50

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60, !noalias !15547, !inline_history !15292
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i74: ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !15546, !noalias !15545, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !15547
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ap, ptr noundef nonnull align 8 %i.dp)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit76 unwind label %bb.p, !noalias !15547, !inline_history !15293

bb.p:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i74
  %i.dq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dm, i64 noundef 72, i64 noundef 8) #61, !noalias !15547, !inline_history !15292
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit76: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dm, ptr noundef nonnull align 8 dereferenceable(72) %i.ap, i64 72, i1 false), !noalias !15547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !15547
  store ptr %i.dm, ptr %i.bq, align 8, !noalias !15545
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ds = load i8, ptr %i.dr, align 4, !range !116, !noalias !15545, !noundef !49
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15548)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15549, !inline_history !15292
  %i.dt = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15549, !inline_history !15292 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.q, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i68, !prof !50

bb.q:                                             ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit76
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60
          to label %.noexc70 unwind label %bb.s, !inline_history !15292

.noexc70:                                         ; preds = %bb.q
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i68: ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit76
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !15548, !noalias !15545, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !15549
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.aq, ptr noundef nonnull align 8 %i.dw)
          to label %_RNvXsfG_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprBinOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.r, !noalias !15549, !inline_history !15293

bb.r:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i68
  %i.dx = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef 72, i64 noundef 8) #61, !noalias !15549, !inline_history !15292
  br label %.body71

bb.s:                                             ; preds = %bb.q
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.body71:                                          ; preds = %bb.r, %bb.s
  %eh.lpad-body72 = phi { ptr, i32 } [ %i.dy, %bb.s ], [ %i.dx, %bb.r ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bq) #58
          to label %common.resume549 unwind label %bb.t, !noalias !15545, !inline_history !15296

bb.t:                                             ; preds = %.body71
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15545, !inline_history !15296
  unreachable

_RNvXsfG_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprBinOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dt, ptr noundef nonnull align 8 dereferenceable(72) %i.aq, i64 72, i1 false), !noalias !15549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !15549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !15545
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dm, ptr %i.ea, align 8
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dt, ptr %.sroa.4171.0..sroa_idx, align 8
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.dl, ptr %.sroa.5172.0..sroa_idx, align 8
  %.sroa.7174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.dj, ptr %.sroa.7174.0..sroa_idx, align 8
  %.sroa.8175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.ds, ptr %.sroa.8175.0..sroa_idx, align 4
  br label %bb.gt

bb.u:                                             ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ec = load atomic i32, ptr %i.eb monotonic, align 8, !noalias !15550
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ee = load <2 x i32>, ptr %i.ed, align 8, !noalias !15550
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.eg = load i8, ptr %i.ef, align 4, !range !117, !noalias !15550, !noundef !49
end_hunk_3
begin_hunk_4_@_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone:bb.a
          to label %.noexc88 unwind label %bb.an, !inline_history !15314

.noexc88:                                         ; preds = %bb.al
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i86: ; preds = %bb.ak
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !15561, !noalias !15556, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !15562
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.am, ptr noundef nonnull align 8 %i.fu)
          to label %_RNvXsfV_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_6ExprIfNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.am, !noalias !15562, !inline_history !15315

bb.am:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i86
  %i.fv = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fr, i64 noundef 72, i64 noundef 8) #61, !noalias !15562, !inline_history !15314
  br label %.body89

bb.an:                                            ; preds = %bb.al
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body89

.body89:                                          ; preds = %bb.am, %bb.an
  %eh.lpad-body90 = phi { ptr, i32 } [ %i.fw, %bb.an ], [ %i.fv, %bb.am ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn) #58
          to label %.body95 unwind label %bb.ao, !noalias !15556, !inline_history !15318

bb.ao:                                            ; preds = %.body89, %.body95
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15556, !inline_history !15318
  unreachable

_RNvXsfV_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_6ExprIfNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fr, ptr noundef nonnull align 8 dereferenceable(72) %i.am, i64 72, i1 false), !noalias !15562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !15562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !15556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !15556
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fg, ptr %i.fy, align 8
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fl, ptr %.sroa.4189.0..sroa_idx, align 8
  %.sroa.5190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fr, ptr %.sroa.5190.0..sroa_idx, align 8
  %.sroa.6191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.ff, ptr %.sroa.6191.0..sroa_idx, align 8
  %.sroa.8193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.fd, ptr %.sroa.8193.0..sroa_idx, align 8
  br label %bb.gt

bb.ap:                                            ; preds = %bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ga = load atomic i32, ptr %i.fz monotonic, align 8, !noalias !15563
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gc = load <2 x i32>, ptr %i.gb, align 8, !noalias !15563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15564)
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !15564, !noalias !15563, !nonnull !49, !noundef !49 ; 2 uses
  %i.gg = load i64, ptr %i.gd, align 8, !alias.scope !15564, !noalias !15563, !noundef !49 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !15565
  %i.gh = mul i64 %i.gg, 144                      ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.gg, 64051194700380387
  br i1 %or.cond.i.i, label %bb.ar, label %bb.aq, !prof !64

bb.aq:                                            ; preds = %bb.ap
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread: ; preds = %bb.aq
  %i.gj = icmp eq i64 %i.gg, 0
  tail call void @llvm.assume(i1 %i.gj), !noalias !15565
  store i64 0, ptr %i.aj, align 8, !noalias !15565
  %i.gk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.gk, align 8, !noalias !15565
  %i.gl = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.aq
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15566
  %i.gm = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.gh, i64 noundef range(i64 1, 17) 8) #61, !noalias !15566 ; 3 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.ar, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit

bb.ar:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.ap
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.ap ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.gh) #60, !noalias !15565
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  store i64 %i.gg, ptr %i.aj, align 8, !noalias !15565
  %i.go = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.gm, ptr %i.go, align 8, !noalias !15565
  %i.gp = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.gq = getelementptr inbounds nuw [144 x i8], ptr %i.gf, i64 %i.gg
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  br label %bb.as

bb.as:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit, %bb.ba
  %.sroa.0394.0444 = phi ptr [ %i.gf, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.gu, %bb.ba ] ; 4 uses
  %.sroa.7396.0443 = phi i64 [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.gv, %bb.ba ] ; 3 uses
  %.sroa.10397.0442 = phi i64 [ %i.gg, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.gs, %bb.ba ]
  %i.gs = add nsw i64 %.sroa.10397.0442, -1       ; 2 uses
  %i.gt = icmp eq ptr %.sroa.0394.0444, %i.gq
  br i1 %i.gt, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit, label %bb.at

.loopexit:                                        ; preds = %bb.au
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.at:                                            ; preds = %bb.as
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0394.0444, i64 144
  %i.gv = add nuw nsw i64 %.sroa.7396.0443, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15567
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0394.0444, i64 72 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 8, !range !52, !noalias !15567, !noundef !49
  %.not.i154 = icmp eq i32 %i.gx, -1
  br i1 %.not.i154, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15567
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.m, ptr noundef nonnull align 8 %i.gw)
          to label %.noexc155 unwind label %.loopexit, !inline_history !15332

.noexc155:                                        ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false), !noalias !15567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15567
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  store i32 -1, ptr %i.o, align 8, !noalias !15567
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.noexc155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15567
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.n, ptr noundef nonnull align 8 %.sroa.0394.0444)
          to label %bb.ba unwind label %bb.ax, !noalias !15567, !inline_history !15332

bb.ax:                                            ; preds = %bb.aw
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load i32, ptr %i.o, align 8, !range !52, !alias.scope !15568, !noalias !15567, !noundef !49
  %i.ha = icmp eq i32 %i.gz, -1
  br i1 %i.ha, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.o)
          to label %bb.bc unwind label %bb.az, !noalias !15567, !inline_history !15335

bb.az:                                            ; preds = %bb.ay
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15567, !inline_history !15332
  unreachable

bb.ba:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gr, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !noalias !15565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !15565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15567
  %i.hc = getelementptr inbounds nuw [144 x i8], ptr %i.gm, i64 %.sroa.7396.0443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.hc, ptr noundef nonnull align 8 dereferenceable(144) %i.ai, i64 144, i1 false), !noalias !15565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.hd = icmp eq i64 %i.gs, 0
  br i1 %i.hd, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit, label %bb.as

bb.bb:                                            ; preds = %bb.bc
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15565, !inline_history !15336
  unreachable

bb.bc:                                            ; preds = %.loopexit, %bb.ay, %bb.ax
  %eh.lpad-body157 = phi { ptr, i32 } [ %i.gy, %bb.ax ], [ %i.gy, %bb.ay ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7396.0443, ptr %i.gp, align 8, !noalias !15565
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #58
          to label %common.resume549 unwind label %bb.bb, !noalias !15565, !inline_history !15336

_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit: ; preds = %bb.ba, %bb.as, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread
  %i.hf = phi ptr [ %i.gl, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread ], [ %i.gp, %bb.as ], [ %i.gp, %bb.ba ]
  store i64 %i.gg, ptr %i.hf, align 8, !noalias !15565
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !15565
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.gc, ptr %.sroa.4196.0..sroa_idx, align 8
  %.sroa.6198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ga, ptr %.sroa.6198.0..sroa_idx, align 8
  br label %bb.gt

bb.bd:                                            ; preds = %bb.a
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hi = load atomic i32, ptr %i.hh monotonic, align 8, !noalias !15569
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hk = load <2 x i32>, ptr %i.hj, align 8, !noalias !15569
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !15570, !noalias !15569, !nonnull !49, !noundef !49 ; 2 uses
  %i.ho = load i64, ptr %i.hl, align 8, !alias.scope !15570, !noalias !15569, !noundef !49 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15571
  %i.hp = mul nuw nsw i64 %i.ho, 72               ; 2 uses
  %i.hq = icmp eq i64 %i.ho, 0
  br i1 %i.hq, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i505, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i498

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i505: ; preds = %bb.bd
  store i64 0, ptr %i.j, align 8, !noalias !15571
  %i.hr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.hr, align 8, !noalias !15571
  %i.hs = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit506

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i498: ; preds = %bb.bd
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15572, !inline_history !23
  %i.ht = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.hp, i64 noundef range(i64 1, 17) 8) #61, !noalias !15572, !inline_history !23 ; 3 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.be, label %.lr.ph.preheader.i499

bb.be:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i498
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.hp) #60, !noalias !15571, !inline_history !23
  unreachable

.lr.ph.preheader.i499:                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i498
  store i64 %i.ho, ptr %i.j, align 8, !noalias !15571
  %i.hv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ht, ptr %i.hv, align 8, !noalias !15571
  %i.hw = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %7 = getelementptr inbounds nuw [72 x i8], ptr %i.hn, i64 %i.ho
  br label %.lr.ph.i500

.lr.ph.i500:                                      ; preds = %bb.bf, %.lr.ph.preheader.i499
  %.sroa.012.023.i501 = phi ptr [ %i.hy, %bb.bf ], [ %i.hn, %.lr.ph.preheader.i499 ] ; 3 uses
  %.sroa.7.022.i502 = phi i64 [ %i.hx, %bb.bf ], [ 0, %.lr.ph.preheader.i499 ] ; 3 uses
  %.sroa.10.021.i503 = phi i64 [ %8, %bb.bf ], [ %i.ho, %.lr.ph.preheader.i499 ]
  %8 = add nsw i64 %.sroa.10.021.i503, -1         ; 2 uses
  %9 = icmp eq ptr %.sroa.012.023.i501, %7
  br i1 %9, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit506, label %10

10:                                               ; preds = %.lr.ph.i500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15571
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull align 8 %.sroa.012.023.i501)
          to label %bb.bf unwind label %bb.bh, !noalias !15571, !inline_history !23

bb.bf:                                            ; preds = %10
  %i.hx = add nuw nsw i64 %.sroa.7.022.i502, 1
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i501, i64 72
  %i.hz = getelementptr inbounds nuw [72 x i8], ptr %i.ht, i64 %.sroa.7.022.i502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hz, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !15571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15571
  %i.ia = icmp eq i64 %8, 0
  br i1 %i.ia, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit506, label %.lr.ph.i500

bb.bg:                                            ; preds = %bb.bh
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15571, !inline_history !23
  unreachable

bb.bh:                                            ; preds = %10
  %lpad.loopexit.i504 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i502, ptr %i.hw, align 8, !noalias !15571
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #58
          to label %common.resume549 unwind label %bb.bg, !noalias !15571, !inline_history !23

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit506: ; preds = %.lr.ph.i500, %bb.bf, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i505
  %11 = phi ptr [ %i.hs, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i505 ], [ %i.hw, %bb.bf ], [ %i.hw, %.lr.ph.i500 ]
  store i64 %i.ho, ptr %11, align 8, !noalias !15571
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ic, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15571
  %.sroa.4201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.hk, ptr %.sroa.4201.0..sroa_idx, align 8
  %.sroa.6203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.hi, ptr %.sroa.6203.0..sroa_idx, align 8
  br label %bb.gt

bb.bi:                                            ; preds = %bb.a
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.if = load atomic i32, ptr %i.ie monotonic, align 8, !noalias !15573
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ih = load <2 x i32>, ptr %i.ig, align 8, !noalias !15573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !15573
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15574)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15575, !inline_history !15349
  %i.ii = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15575, !inline_history !15349 ; 5 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %bb.bj, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i102, !prof !50

bb.bj:                                            ; preds = %bb.bi
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60, !noalias !15575, !inline_history !15349
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i102: ; preds = %bb.bi
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !15574, !noalias !15573, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !15575
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ah, ptr noundef nonnull align 8 %i.il)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit104 unwind label %bb.bk, !noalias !15575, !inline_history !15350

bb.bk:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i102
  %i.im = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ii, i64 noundef 72, i64 noundef 8) #61, !noalias !15575, !inline_history !15349
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit104: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ii, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 72, i1 false), !noalias !15575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !15575
  store ptr %i.ii, ptr %i.bm, align 8, !noalias !15573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !15573
  invoke fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.id)
          to label %_RNvXsga_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_12ExprListCompNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.bl, !noalias !15573, !inline_history !15351

bb.bl:                                            ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit104
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bm) #58
          to label %common.resume549 unwind label %bb.bm, !noalias !15573, !inline_history !15351

bb.bm:                                            ; preds = %bb.bl
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15573, !inline_history !15351
  unreachable

_RNvXsga_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_12ExprListCompNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit104
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ip, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !15573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !15573
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ii, ptr %.sroa.4206.0..sroa_idx, align 8
  %.sroa.5207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i32> %i.ih, ptr %.sroa.5207.0..sroa_idx, align 8
  %.sroa.7209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.if, ptr %.sroa.7209.0..sroa_idx, align 8
  br label %bb.gt

bb.bn:                                            ; preds = %bb.a
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.is = load atomic i32, ptr %i.ir monotonic, align 8, !noalias !15576
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.iu = load <2 x i32>, ptr %i.it, align 8, !noalias !15576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !15576
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15577)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15578, !inline_history !15356
  %i.iv = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15578, !inline_history !15356 ; 5 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.bo, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i105, !prof !50

bb.bo:                                            ; preds = %bb.bn
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60, !noalias !15578, !inline_history !15356
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i105: ; preds = %bb.bn
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !alias.scope !15577, !noalias !15576, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !15578
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ag, ptr noundef nonnull align 8 %i.iy)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit107 unwind label %bb.bp, !noalias !15578, !inline_history !15357

bb.bp:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i105
  %i.iz = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iv, i64 noundef 72, i64 noundef 8) #61, !noalias !15578, !inline_history !15356
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit107: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.iv, ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i64 72, i1 false), !noalias !15578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !15578
  store ptr %i.iv, ptr %i.bk, align 8, !noalias !15576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !15576
  invoke fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iq)
          to label %_RNvXsgf_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprSetCompNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.bq, !noalias !15576, !inline_history !15358

bb.bq:                                            ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit107
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bk) #58
          to label %common.resume549 unwind label %bb.br, !noalias !15576, !inline_history !15358

bb.br:                                            ; preds = %bb.bq
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15576, !inline_history !15358
  unreachable

_RNvXsgf_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprSetCompNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit107
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !15576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !15576
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.iv, ptr %.sroa.4212.0..sroa_idx, align 8
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i32> %i.iu, ptr %.sroa.5213.0..sroa_idx, align 8
  %.sroa.7215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.is, ptr %.sroa.7215.0..sroa_idx, align 8
  br label %bb.gt

bb.bs:                                            ; preds = %bb.a
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jf = load atomic i32, ptr %i.je monotonic, align 8, !noalias !15579
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jh = load <2 x i32>, ptr %i.jg, align 8, !noalias !15579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !15579
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !noalias !15579, !align !57, !noundef !49
  %.not.i43 = icmp eq ptr %i.jj, null
  br i1 %.not.i43, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jk = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ji), !noalias !15579, !inline_history !15361
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %storemerge.i44 = phi ptr [ %i.jk, %bb.bt ], [ null, %bb.bs ] ; 2 uses
  store ptr %storemerge.i44, ptr %i.bi, align 8, !noalias !15579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !15579
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15580)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15581, !inline_history !15364
  %i.jl = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15581, !inline_history !15364 ; 5 uses
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %bb.bv, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i108, !prof !50

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60
          to label %.noexc110 unwind label %bb.bx, !inline_history !15364

.noexc110:                                        ; preds = %bb.bv
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i108: ; preds = %bb.bu
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !alias.scope !15580, !noalias !15579, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !15581
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.af, ptr noundef nonnull align 8 %i.jo)
          to label %bb.by unwind label %bb.bw, !noalias !15581, !inline_history !15365

bb.bw:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i108
  %i.jp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jl, i64 noundef 72, i64 noundef 8) #61, !noalias !15581, !inline_history !15364
  br label %.body111

.body111:                                         ; preds = %bb.bx, %bb.bw, %bb.bz
  %.pn.i45 = phi { ptr, i32 } [ %i.jr, %bb.bz ], [ %i.jq, %bb.bx ], [ %i.jp, %bb.bw ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bi) #58
          to label %common.resume549 unwind label %bb.ca, !noalias !15579, !inline_history !15361

bb.bx:                                            ; preds = %bb.bv
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.body111

bb.by:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jl, ptr noundef nonnull align 8 dereferenceable(72) %i.af, i64 72, i1 false), !noalias !15581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !15581
  store ptr %i.jl, ptr %i.bh, align 8, !noalias !15579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !15579
  invoke fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jd)
          to label %_RNvXsgk_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_12ExprDictCompNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.bz, !noalias !15579, !inline_history !15361

bb.bz:                                            ; preds = %bb.by
end_hunk_4
begin_hunk_5_@_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone:bb.a

bb.cf:                                            ; preds = %bb.ce
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15582, !inline_history !15372
  unreachable

_RNvXsgp_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit116
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.kh = load i8, ptr %i.kg, align 4, !range !54, !noalias !15582, !noundef !49
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ki, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !15582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !15582
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.jz, ptr %.sroa.4225.0..sroa_idx, align 8
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i32> %i.jy, ptr %.sroa.5226.0..sroa_idx, align 8
  %.sroa.7228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.jw, ptr %.sroa.7228.0..sroa_idx, align 8
  %.sroa.8229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %i.kh, ptr %.sroa.8229.0..sroa_idx, align 4
  br label %bb.gt

bb.cg:                                            ; preds = %bb.a
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kk = load atomic i32, ptr %i.kj monotonic, align 8, !noalias !15585
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.km = load <2 x i32>, ptr %i.kl, align 8, !noalias !15585
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15586)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15587, !inline_history !15377
  %i.kn = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15587, !inline_history !15377 ; 4 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %bb.ch, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i117, !prof !50

bb.ch:                                            ; preds = %bb.cg
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60, !noalias !15587, !inline_history !15377
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i117: ; preds = %bb.cg
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !alias.scope !15586, !noalias !15585, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !15587
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ad, ptr noundef nonnull align 8 %i.kq)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit119 unwind label %bb.ci, !noalias !15587, !inline_history !15378

bb.ci:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i117
  %i.kr = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kn, i64 noundef 72, i64 noundef 8) #61, !noalias !15587, !inline_history !15377
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit119: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.kn, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false), !noalias !15587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !15587
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kn, ptr %i.ks, align 8
  %.sroa.4232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %i.km, ptr %.sroa.4232.0..sroa_idx, align 8
  %.sroa.6234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.kk, ptr %.sroa.6234.0..sroa_idx, align 8
  br label %bb.gt

bb.cj:                                            ; preds = %bb.a
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kv = load atomic i32, ptr %i.ku monotonic, align 8, !noalias !15588
  %i.kw = load <2 x i32>, ptr %i.kt, align 8, !noalias !15588
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !15588, !align !57, !noundef !49
  %.not.i46 = icmp eq ptr %i.ky, null
  br i1 %.not.i46, label %_RNvXsgz_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprYieldNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kz = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.kx), !noalias !15588, !inline_history !15381
  br label %_RNvXsgz_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprYieldNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXsgz_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprYieldNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.cj, %bb.ck
  %.sroa.02.0.i = phi ptr [ %i.kz, %bb.ck ], [ null, %bb.cj ]
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i32> %i.kw, ptr %i.la, align 8
  %.sroa.5238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.02.0.i, ptr %.sroa.5238.0..sroa_idx, align 8
  %.sroa.6239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.kv, ptr %.sroa.6239.0..sroa_idx, align 8
  br label %bb.gt

bb.cl:                                            ; preds = %bb.a
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lc = load atomic i32, ptr %i.lb monotonic, align 8, !noalias !15589
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.le = load <2 x i32>, ptr %i.ld, align 8, !noalias !15589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15590)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15591, !inline_history !15386
  %i.lf = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15591, !inline_history !15386 ; 4 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %bb.cm, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i120, !prof !50

bb.cm:                                            ; preds = %bb.cl
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60, !noalias !15591, !inline_history !15386
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i120: ; preds = %bb.cl
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !alias.scope !15590, !noalias !15589, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !15591
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ac, ptr noundef nonnull align 8 %i.li)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit122 unwind label %bb.cn, !noalias !15591, !inline_history !15387

bb.cn:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i120
  %i.lj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lf, i64 noundef 72, i64 noundef 8) #61, !noalias !15591, !inline_history !15386
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit122: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.lf, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 72, i1 false), !noalias !15591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !15591
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lf, ptr %i.lk, align 8
  %.sroa.4242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %i.le, ptr %.sroa.4242.0..sroa_idx, align 8
  %.sroa.6244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.lc, ptr %.sroa.6244.0..sroa_idx, align 8
  br label %bb.gt

bb.co:                                            ; preds = %bb.a
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.lm = load atomic i32, ptr %i.ll monotonic, align 8, !noalias !15592
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.lo = load <2 x i32>, ptr %i.ln, align 8, !noalias !15592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !15592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15593)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15594, !inline_history !15392
  %i.lp = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15594, !inline_history !15392 ; 5 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %bb.cp, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i127, !prof !50

bb.cp:                                            ; preds = %bb.co
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60, !noalias !15594, !inline_history !15392
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i127: ; preds = %bb.co
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !alias.scope !15593, !noalias !15592, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !15594
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.aa, ptr noundef nonnull align 8 %i.ls)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit129 unwind label %bb.cq, !noalias !15594, !inline_history !15393

bb.cq:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i127
  %i.lt = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lp, i64 noundef 72, i64 noundef 8) #61, !noalias !15594, !inline_history !15392
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit129: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.lp, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false), !noalias !15594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15594
  store ptr %i.lp, ptr %i.bd, align 8, !noalias !15592
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.lu, align 8, !noalias !15592, !nonnull !49, !noundef !49
  %i.lv = getelementptr i8, ptr %1, i64 24
  %.val5.i = load i64, ptr %i.lv, align 8, !noalias !15592, !noundef !49 ; 7 uses
  %i.lw = icmp eq i64 %.val5.i, 0                 ; 2 uses
  br i1 %i.lw, label %bb.cu, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit129
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15595
  %i.lx = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val5.i, i64 noundef range(i64 1, 17) 1) #61, !noalias !15595 ; 3 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val5.i) #60
          to label %.noexc126 unwind label %bb.ct

.noexc126:                                        ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lx, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val5.i, i1 false), !noalias !15596
  br label %bb.cu

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEEB1e_.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i, %.body516, %bb.ct
  %.pn.i47 = phi { ptr, i32 } [ %i.lz, %bb.ct ], [ %eh.lpad-body517, %.body516 ], [ %eh.lpad-body517, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bd) #58
          to label %common.resume549 unwind label %bb.da, !noalias !15592, !inline_history !15399

bb.ct:                                            ; preds = %bb.cr
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEEB1e_.exit

bb.cu:                                            ; preds = %bb.cs, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit129
  %.sroa.5.0.i = phi ptr [ %i.lx, %bb.cs ], [ inttoptr (i64 1 to ptr), %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit129 ] ; 2 uses
  %i.ma = icmp sgt i64 %.val5.i, -1
  tail call void @llvm.assume(i1 %i.ma), !noalias !15592
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15597)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !15598
  %i.mc = load ptr, ptr %i.mb, align 8, !alias.scope !15597, !noalias !15592, !nonnull !49, !noundef !49 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.me = load i64, ptr %i.md, align 8, !alias.scope !15597, !noalias !15592, !noundef !49 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15599
  %i.mf = mul nuw nsw i64 %i.me, 72               ; 2 uses
  %i.mg = icmp eq i64 %i.me, 0
  br i1 %i.mg, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i514, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i507

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i514: ; preds = %bb.cu
  store i64 0, ptr %i.h, align 8, !noalias !15599
  %i.mh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.mh, align 8, !noalias !15599
  %i.mi = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %.noexc124

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i507: ; preds = %bb.cu
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15600, !inline_history !15406
  %i.mj = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.mf, i64 noundef range(i64 1, 17) 8) #61, !noalias !15600, !inline_history !15406 ; 3 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %bb.cv, label %.lr.ph.preheader.i508

bb.cv:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i507
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.mf) #60
          to label %.noexc515 unwind label %bb.cz, !inline_history !15406

.noexc515:                                        ; preds = %bb.cv
  unreachable

.lr.ph.preheader.i508:                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i507
  store i64 %i.me, ptr %i.h, align 8, !noalias !15599
  %i.ml = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.mj, ptr %i.ml, align 8, !noalias !15599
  %i.mm = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %12 = getelementptr inbounds nuw [72 x i8], ptr %i.mc, i64 %i.me
  br label %.lr.ph.i509

.lr.ph.i509:                                      ; preds = %bb.cw, %.lr.ph.preheader.i508
  %.sroa.012.023.i510 = phi ptr [ %i.mo, %bb.cw ], [ %i.mc, %.lr.ph.preheader.i508 ] ; 3 uses
  %.sroa.7.022.i511 = phi i64 [ %i.mn, %bb.cw ], [ 0, %.lr.ph.preheader.i508 ] ; 3 uses
  %.sroa.10.021.i512 = phi i64 [ %13, %bb.cw ], [ %i.me, %.lr.ph.preheader.i508 ]
  %13 = add nsw i64 %.sroa.10.021.i512, -1        ; 2 uses
  %14 = icmp eq ptr %.sroa.012.023.i510, %12
  br i1 %14, label %.noexc124, label %15

15:                                               ; preds = %.lr.ph.i509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15599
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.g, ptr noundef nonnull align 8 %.sroa.012.023.i510)
          to label %bb.cw unwind label %bb.cy, !noalias !15599, !inline_history !15406

bb.cw:                                            ; preds = %15
  %i.mn = add nuw nsw i64 %.sroa.7.022.i511, 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i510, i64 72
  %i.mp = getelementptr inbounds nuw [72 x i8], ptr %i.mj, i64 %.sroa.7.022.i511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.mp, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !noalias !15599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15599
  %i.mq = icmp eq i64 %13, 0
  br i1 %i.mq, label %.noexc124, label %.lr.ph.i509

bb.cx:                                            ; preds = %bb.cy
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15599, !inline_history !15406
  unreachable

bb.cy:                                            ; preds = %15
  %lpad.loopexit.i513 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i511, ptr %i.mm, align 8, !noalias !15599
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #58
          to label %.body516 unwind label %bb.cx, !noalias !15599, !inline_history !15406

.noexc124:                                        ; preds = %bb.cw, %.lr.ph.i509, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i514
  %16 = phi ptr [ %i.mi, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i514 ], [ %i.mm, %.lr.ph.i509 ], [ %i.mm, %bb.cw ]
  store i64 %i.me, ptr %16, align 8, !noalias !15599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15599
  %i.ms = invoke fastcc { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16into_boxed_sliceBH_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab)
          to label %_RNvXsgJ_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprCompareNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.cz, !inline_history !15407 ; 2 uses

bb.cz:                                            ; preds = %bb.cv, %.noexc124
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body516

.body516:                                         ; preds = %bb.cy, %bb.cz
  %eh.lpad-body517 = phi { ptr, i32 } [ %i.mt, %bb.cz ], [ %lpad.loopexit.i513, %bb.cy ] ; 2 uses
  br i1 %i.lw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEEB1e_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %.body516
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i, i64 noundef %.val5.i, i64 noundef 1) #61, !noalias !15601
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEEB1e_.exit

bb.da:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEEB1e_.exit
  %i.mu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15592, !inline_history !15399
  unreachable

_RNvXsgJ_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprCompareNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %.noexc124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !15598
  %i.mv = extractvalue { ptr, i64 } %i.ms, 0
  %i.mw = extractvalue { ptr, i64 } %i.ms, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !15592
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lp, ptr %i.mx, align 8
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0.i, ptr %.sroa.4247.0..sroa_idx, align 8
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val5.i, ptr %.sroa.5248.0..sroa_idx, align 8
  %.sroa.6249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.mv, ptr %.sroa.6249.0..sroa_idx, align 8
  %.sroa.7250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.mw, ptr %.sroa.7250.0..sroa_idx, align 8
  %.sroa.8251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i32> %i.lo, ptr %.sroa.8251.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.lm, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.gt

bb.db:                                            ; preds = %bb.a
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.mz = load atomic i32, ptr %i.my monotonic, align 8, !noalias !15602
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.nb = load <2 x i32>, ptr %i.na, align 8, !noalias !15602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !15602
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15603)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15604, !inline_history !15414
  %i.nc = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15604, !inline_history !15414 ; 5 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %bb.dc, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i135, !prof !50

bb.dc:                                            ; preds = %bb.db
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60, !noalias !15604, !inline_history !15414
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i135: ; preds = %bb.db
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !alias.scope !15603, !noalias !15602, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !15604
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.x, ptr noundef nonnull align 8 %i.nf)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit137 unwind label %bb.dd, !noalias !15604, !inline_history !15415

bb.dd:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i135
  %i.ng = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nc, i64 noundef 72, i64 noundef 8) #61, !noalias !15604, !inline_history !15414
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit137: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.nc, ptr noundef nonnull align 8 dereferenceable(72) %i.x, i64 72, i1 false), !noalias !15604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !15604
  store ptr %i.nc, ptr %i.bc, align 8, !noalias !15602
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.nj = load <2 x i32>, ptr %i.ni, align 8, !noalias !15605
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.nl = load atomic i32, ptr %i.nk monotonic, align 8, !noalias !15605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !15605
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15606), !noalias !15602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !15607
  %i.nm = load ptr, ptr %i.nh, align 8, !alias.scope !15606, !noalias !15605, !nonnull !49, !noundef !49 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.no = load i64, ptr %i.nn, align 8, !alias.scope !15606, !noalias !15605, !noundef !49 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15608
  %i.np = mul nuw nsw i64 %i.no, 72               ; 2 uses
  %i.nq = icmp eq i64 %i.no, 0
  br i1 %i.nq, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i526, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i519

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i526: ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit137
  store i64 0, ptr %i.f, align 8, !noalias !15608
  %i.nr = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.nr, align 8, !noalias !15608
  %i.ns = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %.noexc131

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i519: ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit137
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15609, !inline_history !15424
  %i.nt = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.np, i64 noundef range(i64 1, 17) 8) #61, !noalias !15609, !inline_history !15424 ; 3 uses
  %i.nu = icmp eq ptr %i.nt, null
  br i1 %i.nu, label %bb.de, label %.lr.ph.preheader.i520

bb.de:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i519
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.np) #60
          to label %.noexc527 unwind label %bb.dl, !inline_history !15424

.noexc527:                                        ; preds = %bb.de
  unreachable

.lr.ph.preheader.i520:                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i519
  store i64 %i.no, ptr %i.f, align 8, !noalias !15608
  %i.nv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.nt, ptr %i.nv, align 8, !noalias !15608
  %i.nw = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %17 = getelementptr inbounds nuw [72 x i8], ptr %i.nm, i64 %i.no
  br label %.lr.ph.i521

.lr.ph.i521:                                      ; preds = %bb.df, %.lr.ph.preheader.i520
  %.sroa.012.023.i522 = phi ptr [ %i.ny, %bb.df ], [ %i.nm, %.lr.ph.preheader.i520 ] ; 3 uses
  %.sroa.7.022.i523 = phi i64 [ %i.nx, %bb.df ], [ 0, %.lr.ph.preheader.i520 ] ; 3 uses
  %.sroa.10.021.i524 = phi i64 [ %18, %bb.df ], [ %i.no, %.lr.ph.preheader.i520 ]
  %18 = add nsw i64 %.sroa.10.021.i524, -1        ; 2 uses
  %19 = icmp eq ptr %.sroa.012.023.i522, %17
  br i1 %19, label %.noexc131, label %20

20:                                               ; preds = %.lr.ph.i521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15608
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull align 8 %.sroa.012.023.i522)
          to label %bb.df unwind label %bb.dh, !noalias !15608, !inline_history !15424

bb.df:                                            ; preds = %20
  %i.nx = add nuw nsw i64 %.sroa.7.022.i523, 1
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i522, i64 72
  %i.nz = getelementptr inbounds nuw [72 x i8], ptr %i.nt, i64 %.sroa.7.022.i523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.nz, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !15608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15608
  %i.oa = icmp eq i64 %18, 0
  br i1 %i.oa, label %.noexc131, label %.lr.ph.i521

bb.dg:                                            ; preds = %bb.dh
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15608, !inline_history !15424
  unreachable

bb.dh:                                            ; preds = %20
  %lpad.loopexit.i525 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i523, ptr %i.nw, align 8, !noalias !15608
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #58
          to label %.body133 unwind label %bb.dg, !noalias !15608, !inline_history !15424

.noexc131:                                        ; preds = %bb.df, %.lr.ph.i521, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i526
  %21 = phi ptr [ %i.ns, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i526 ], [ %i.nw, %.lr.ph.i521 ], [ %i.nw, %bb.df ]
  store i64 %i.no, ptr %21, align 8, !noalias !15608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15608
  %i.oc = invoke fastcc { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16into_boxed_sliceBH_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc132 unwind label %bb.dl, !inline_history !15425 ; 2 uses

.noexc132:                                        ; preds = %.noexc131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !15607
  %i.od = extractvalue { ptr, i64 } %i.oc, 0      ; 2 uses
  %i.oe = extractvalue { ptr, i64 } %i.oc, 1      ; 2 uses
  store ptr %i.od, ptr %i.z, align 8, !noalias !15605
  %i.of = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.oe, ptr %i.of, align 8, !noalias !15605
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !noalias !15605, !nonnull !49, !noundef !49
  %i.oi = icmp eq ptr %i.oh, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.oi, label %_RNvXsgO_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprCallNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, label %bb.di, !prof !56

bb.di:                                            ; preds = %.noexc132
  %i.oj = invoke noundef i64 @_RINvNvXsr_CsaSrGj5dYoxL_8thin_vecINtB8_7ThinVecpENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone19clone_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEB1P_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.og)
          to label %_RNvXsgO_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprCallNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.dj, !noalias !15605, !inline_history !15425

bb.dj:                                            ; preds = %bb.di
  %i.ok = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1e_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #58
          to label %.body133 unwind label %bb.dk, !noalias !15605, !inline_history !15425

bb.dk:                                            ; preds = %bb.dj
  %i.ol = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15605, !inline_history !15425
  unreachable

bb.dl:                                            ; preds = %bb.de, %.noexc131
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %.body133

.body133:                                         ; preds = %bb.dl, %bb.dh, %bb.dj
  %eh.lpad-body134 = phi { ptr, i32 } [ %i.ok, %bb.dj ], [ %i.om, %bb.dl ], [ %lpad.loopexit.i525, %bb.dh ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #58
          to label %common.resume549 unwind label %bb.dm, !noalias !15602, !inline_history !15426

bb.dm:                                            ; preds = %.body133
  %i.on = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15602, !inline_history !15426
  unreachable

_RNvXsgO_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprCallNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.di, %.noexc132
  %.sroa.02.0.i130 = phi i64 [ %i.oj, %bb.di ], [ ptrtoint (ptr @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER to i64), %.noexc132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !15605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !15602
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nc, ptr %i.oo, align 8
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.od, ptr %.sroa.4254.0..sroa_idx, align 8
  %.sroa.4254.sroa.4.0..sroa.4254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.oe, ptr %.sroa.4254.sroa.4.0..sroa.4254.0..sroa_idx.sroa_idx, align 8
  %.sroa.4254.sroa.5.0..sroa.4254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.02.0.i130, ptr %.sroa.4254.sroa.5.0..sroa.4254.0..sroa_idx.sroa_idx, align 8
  %.sroa.4254.sroa.6.0..sroa.4254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i32> %i.nj, ptr %.sroa.4254.sroa.6.0..sroa.4254.0..sroa_idx.sroa_idx, align 8
  %.sroa.4254.sroa.8.0..sroa.4254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.nl, ptr %.sroa.4254.sroa.8.0..sroa.4254.0..sroa_idx.sroa_idx, align 8
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i32> %i.nb, ptr %.sroa.5255.0..sroa_idx, align 8
  %.sroa.7257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.mz, ptr %.sroa.7257.0..sroa_idx, align 8
  br label %bb.gt

bb.dn:                                            ; preds = %bb.a
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.or = load atomic i32, ptr %i.oq monotonic, align 8, !noalias !15610
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ot = load <2 x i32>, ptr %i.os, align 8, !noalias !15610
  %i.ou = load i64, ptr %i.op, align 8, !range !60, !noalias !15611, !noundef !49
  %i.ov = icmp eq i64 %i.ou, -2
  br i1 %i.ov, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 16
  call fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ow)
  br label %_RNvXs34_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_12FStringValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.dp:                                            ; preds = %bb.dn
  call fastcc void @_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.v, ptr noundef nonnull align 8 %i.op), !inline_history !15433
  %.sroa.0406.0.copyload = load i64, ptr %i.v, align 8
  %.sroa.6410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.6410.0.copyload = load i64, ptr %.sroa.6410.0..sroa_idx, align 8
  br label %_RNvXs34_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_12FStringValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXs34_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_12FStringValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.do, %bb.dp
  %.sroa.0406.0 = phi i64 [ -2, %bb.do ], [ %.sroa.0406.0.copyload, %bb.dp ]
  %.sroa.6410.0 = phi i64 [ undef, %bb.do ], [ %.sroa.6410.0.copyload, %bb.dp ]
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0406.0, ptr %i.ox, align 8
  %.sroa.0259.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0259.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %.sroa.0259.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6410.0, ptr %.sroa.0259.sroa.5.0..sroa_idx, align 8
  %.sroa.4260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i32> %i.ot, ptr %.sroa.4260.0..sroa_idx, align 8
  %.sroa.6262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.or, ptr %.sroa.6262.0..sroa_idx, align 8
  br label %bb.gt

bb.dq:                                            ; preds = %bb.a
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.pa = load atomic i32, ptr %i.oz monotonic, align 8, !noalias !15612
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pc = load <2 x i32>, ptr %i.pb, align 8, !noalias !15612
  %i.pd = load i64, ptr %i.oy, align 8, !range !61, !noalias !15613, !noundef !49
  %i.pe = icmp eq i64 %i.pd, -1
  br i1 %i.pe, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 16
  call fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pf)
  br label %_RNvXs3k_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_12TStringValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.ds:                                            ; preds = %bb.dq
  call fastcc void @_RNvXs42_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_7TStringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.t, ptr noundef nonnull align 8 %i.oy), !inline_history !15440
  %.sroa.0416.0.copyload = load i64, ptr %i.t, align 8
  %.sroa.6420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.6420.0.copyload = load i64, ptr %.sroa.6420.0..sroa_idx, align 8
  br label %_RNvXs3k_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_12TStringValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXs3k_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_12TStringValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.dr, %bb.ds
  %.sroa.0416.0 = phi i64 [ -1, %bb.dr ], [ %.sroa.0416.0.copyload, %bb.ds ]
  %.sroa.6420.0 = phi i64 [ undef, %bb.dr ], [ %.sroa.6420.0.copyload, %bb.ds ]
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0416.0, ptr %i.pg, align 8
  %.sroa.0264.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0264.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %.sroa.0264.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6420.0, ptr %.sroa.0264.sroa.5.0..sroa_idx, align 8
  %.sroa.4265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i32> %i.pc, ptr %.sroa.4265.0..sroa_idx, align 8
  %.sroa.6267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.pa, ptr %.sroa.6267.0..sroa_idx, align 8
  br label %bb.gt

bb.dt:                                            ; preds = %bb.a
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.pj = load atomic i32, ptr %i.pi monotonic, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.pl = load <2 x i32>, ptr %i.pk, align 8
  %i.pm = load i64, ptr %i.ph, align 8, !range !61, !noalias !15614, !noundef !49
  %.not.i48 = icmp eq i64 %i.pm, -1
  br i1 %.not.i48, label %bb.ej, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !15615
  %i.pn = getelementptr i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.pn, align 8, !noalias !15615, !nonnull !49, !noundef !49 ; 2 uses
  %i.po = getelementptr i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.po, align 8, !noalias !15615, !noundef !49 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !15616
  %i.pp = shl nuw nsw i64 %.val1.i.i, 5           ; 2 uses
  %i.pq = icmp eq i64 %.val1.i.i, 0
  br i1 %i.pq, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i.i: ; preds = %bb.du
  store i64 0, ptr %i.ba, align 8, !noalias !15616
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.pr, align 8, !noalias !15616
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  br label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.du
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15617
  %i.pt = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.pp, i64 noundef range(i64 1, 17) 8) #61, !noalias !15617 ; 3 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %bb.dv, label %.lr.ph.preheader.i.i.i.i

bb.dv:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.pp) #60, !noalias !15616
  unreachable

.lr.ph.preheader.i.i.i.i:                         ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  store i64 %.val1.i.i, ptr %i.ba, align 8, !noalias !15616
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.pt, ptr %i.pv, align 8, !noalias !15616
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %22 = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.val1.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dx, %.lr.ph.preheader.i.i.i.i
  %.sroa.012.048.i.i.i.i = phi ptr [ %i.qd, %bb.dx ], [ %.val.i.i, %.lr.ph.preheader.i.i.i.i ] ; 6 uses
  %.sroa.7.047.i.i.i.i = phi i64 [ %i.qc, %bb.dx ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.sroa.10.046.i.i.i.i = phi i64 [ %23, %bb.dx ], [ %.val1.i.i, %.lr.ph.preheader.i.i.i.i ]
  %23 = add nsw i64 %.sroa.10.046.i.i.i.i, -1     ; 2 uses
  %24 = icmp eq ptr %.sroa.012.048.i.i.i.i, %22
  br i1 %24, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i.i, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i.i.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.012.048.i.i.i.i, i64 16
  %i.py = load <2 x i32>, ptr %i.px, align 8, !noalias !15618
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.012.048.i.i.i.i, i64 24
  %i.qa = load atomic i32, ptr %i.pz monotonic, align 8, !noalias !15618
  %i.qb = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.012.048.i.i.i.i)
          to label %bb.dx unwind label %bb.dy, !noalias !15616 ; 2 uses

bb.dx:                                            ; preds = %bb.dw
  %i.qc = add nuw nsw i64 %.sroa.7.047.i.i.i.i, 1
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.012.048.i.i.i.i, i64 32
  %i.qe = extractvalue { ptr, i64 } %i.qb, 0
  %i.qf = extractvalue { ptr, i64 } %i.qb, 1
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.012.048.i.i.i.i, i64 28
  %i.qh = load i8, ptr %i.qg, align 4, !noalias !15618, !noundef !49
  %i.qi = getelementptr inbounds nuw [32 x i8], ptr %i.pt, i64 %.sroa.7.047.i.i.i.i ; 5 uses
  store ptr %i.qe, ptr %i.qi, align 8, !noalias !15616
  %.sroa.432.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store i64 %i.qf, ptr %.sroa.432.0..sroa_idx.i.i.i.i, align 8, !noalias !15616
  %.sroa.533.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  store <2 x i32> %i.py, ptr %.sroa.533.0..sroa_idx.i.i.i.i, align 8, !noalias !15616
  %.sroa.735.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  store i32 %i.qa, ptr %.sroa.735.0..sroa_idx.i.i.i.i, align 8, !noalias !15616
  %.sroa.836.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 28
  store i8 %i.qh, ptr %.sroa.836.0..sroa_idx.i.i.i.i, align 4, !noalias !15616
  %i.qj = icmp eq i64 %23, 0
  br i1 %i.qj, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i.i, label %.lr.ph.i.i.i.i

common.resume.i.i:                                ; preds = %.body.i.i.i, %bb.dy
  %.sink.i.i = phi ptr [ %i.ba, %bb.dy ], [ %i.bb, %.body.i.i.i ]
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %bb.dy ], [ %.pn.i.i.i, %.body.i.i.i ]
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink.i.i) #58, !noalias !15615
  br label %common.resume549

bb.dy:                                            ; preds = %bb.dw
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.047.i.i.i.i, ptr %i.pw, align 8, !noalias !15616
  br label %common.resume.i.i

_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i.i: ; preds = %bb.dx, %.lr.ph.i.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i.i
  %25 = phi ptr [ %i.ps, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i.i ], [ %i.pw, %.lr.ph.i.i.i.i ], [ %i.pw, %bb.dx ]
  store i64 %.val1.i.i, ptr %25, align 8, !noalias !15616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !15615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !15616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !15619
  %i.qk = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  store i32 3, ptr %i.qk, align 8, !noalias !15619
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.qm = load atomic i32, ptr %i.ql acquire, align 8, !noalias !15619
  %i.qn = icmp eq i32 %i.qm, 0
  br i1 %i.qn, label %bb.ea, label %_RNvXs4D_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

.body.i.i.i:                                      ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i12.i.i.i, %bb.eg, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.ed, %bb.dz
  %.pn.i.i.i = phi { ptr, i32 } [ %i.qw, %bb.ed ], [ %i.qo, %bb.dz ], [ %i.qw, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i ], [ %i.rb, %bb.eg ], [ %i.rb, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i12.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync9once_lock8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEEECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef align 8 dereferenceable(24) %i.az) #58
          to label %common.resume.i.i unwind label %bb.ei, !noalias !15619

bb.dz:                                            ; preds = %bb.ea
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ea:                                            ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i.i
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qq = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.qp)
          to label %bb.eb unwind label %bb.dz, !noalias !15619 ; 2 uses

bb.eb:                                            ; preds = %bb.ea
  %i.qr = extractvalue { ptr, i64 } %i.qq, 0
  %i.qs = extractvalue { ptr, i64 } %i.qq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !15620
  store ptr %i.qr, ptr %i.ay, align 8, !noalias !15620
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  store i64 %i.qs, ptr %i.qt, align 8, !noalias !15620
  %i.qu = load atomic i32, ptr %i.qk acquire, align 8, !noalias !15621
  %i.qv = icmp eq i32 %i.qu, 0
  br i1 %i.qv, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i, label %bb.ec, !prof !56

bb.ec:                                            ; preds = %bb.eb
  invoke fastcc void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECskLngH8kgpZI_15ruff_python_ast(ptr noundef nonnull align 8 %i.az, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i unwind label %bb.ed, !noalias !15622

bb.ed:                                            ; preds = %bb.ec
  %i.qw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !15620, !noundef !49 ; 2 uses
  %.val3.i.i.i.i = load i64, ptr %i.qt, align 8, !noalias !15620 ; 2 uses
  %i.qx = icmp eq ptr %.val.i.i.i.i, null
  %i.qy = icmp eq i64 %.val3.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %i.qx, i1 true, i1 %i.qy
  br i1 %or.cond.i.i.i.i.i, label %.body.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.ed
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val3.i.i.i.i, i64 noundef 1) #61, !noalias !15623
  br label %.body.i.i.i

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i: ; preds = %bb.ec, %bb.eb
  %i.qz = load ptr, ptr %i.ay, align 8, !noalias !15620, !noundef !49 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.qz, null
  br i1 %.not.i.i.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i
  %i.ra = load i64, ptr %i.qt, align 8, !noalias !15620, !noundef !49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !15620
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @654) #60
          to label %bb.eh unwind label %bb.eg, !noalias !15619

bb.ef:                                            ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !15620
  br label %_RNvXs4D_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.eg:                                            ; preds = %bb.ee
  %i.rb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rc = icmp eq i64 %i.ra, 0
  br i1 %i.rc, label %.body.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i12.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i12.i.i.i: ; preds = %bb.eg
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qz, i64 noundef %i.ra, i64 noundef 1) #61, !noalias !15624
  br label %.body.i.i.i

bb.eh:                                            ; preds = %bb.ee
  unreachable

bb.ei:                                            ; preds = %.body.i.i.i
  %i.rd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15619
  unreachable

_RNvXs4D_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i: ; preds = %bb.ef, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i.i
  %i.re = load <2 x i32>, ptr %i.az, align 8, !noalias !15614
  %.sroa.9374.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.9374.24.copyload = load i32, ptr %.sroa.9374.24..sroa_idx, align 8, !noalias !15614
  %.sroa.10375.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %.sroa.10375.24.copyload = load i8, ptr %.sroa.10375.24..sroa_idx, align 4, !noalias !15614
  %.sroa.11376.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.11350, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.11376.24..sroa_idx, i64 11, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !15619
  %.sroa.0369.0.copyload = load i64, ptr %i.bb, align 8, !noalias !15614
  %.sroa.4370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.4370.0.copyload = load ptr, ptr %.sroa.4370.0..sroa_idx, align 8, !noalias !15614
  %.sroa.5371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.5371.0.copyload = load i64, ptr %.sroa.5371.0..sroa_idx, align 8, !noalias !15614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !15615
  br label %_RNvXs4c_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_23StringLiteralValueInnerNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.ej:                                            ; preds = %bb.dt
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.rh = load <2 x i32>, ptr %i.rg, align 8, !noalias !15614
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.rj = load atomic i32, ptr %i.ri monotonic, align 8, !noalias !15614
  %i.rk = tail call { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.rf), !noalias !15614 ; 2 uses
  %i.rl = extractvalue { ptr, i64 } %i.rk, 0
  %i.rm = extractvalue { ptr, i64 } %i.rk, 1
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ro = load i8, ptr %i.rn, align 4, !noalias !15614, !noundef !49
  br label %_RNvXs4c_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_23StringLiteralValueInnerNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXs4c_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_23StringLiteralValueInnerNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %_RNvXs4D_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i, %bb.ej
  %.sroa.10347.0 = phi i8 [ %i.ro, %bb.ej ], [ %.sroa.10375.24.copyload, %_RNvXs4D_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ]
  %.sroa.9344.0 = phi i32 [ %i.rj, %bb.ej ], [ %.sroa.9374.24.copyload, %_RNvXs4D_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ]
  %.sroa.6335.0 = phi i64 [ %i.rm, %bb.ej ], [ %.sroa.5371.0.copyload, %_RNvXs4D_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ]
  %.sroa.5332.0 = phi ptr [ %i.rl, %bb.ej ], [ %.sroa.4370.0.copyload, %_RNvXs4D_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ]
  %.sroa.0330.0 = phi i64 [ -1, %bb.ej ], [ %.sroa.0369.0.copyload, %_RNvXs4D_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ]
  %i.rp = phi <2 x i32> [ %i.rh, %bb.ej ], [ %i.re, %_RNvXs4D_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ]
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0330.0, ptr %i.rq, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5332.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6335.0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.rp, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.9344.0, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sroa.10347.0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 4
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.0.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.11350, i64 11, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i32> %i.pl, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.pj, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.gt

bb.ek:                                            ; preds = %bb.a
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.rt = load atomic i32, ptr %i.rs monotonic, align 8
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.rv = load <2 x i32>, ptr %i.ru, align 8
  %i.rw = load ptr, ptr %i.rr, align 8, !noalias !15625, !noundef !49 ; 2 uses
  %i.rx = icmp eq ptr %i.rw, null
  %i.ry = getelementptr i8, ptr %1, i64 24        ; 2 uses
  br i1 %i.rx, label %bb.el, label %bb.es

bb.el:                                            ; preds = %bb.ek
  %.val4.i = load ptr, ptr %i.ry, align 8, !noalias !15625, !nonnull !49, !noundef !49 ; 2 uses
  %i.rz = getelementptr i8, ptr %1, i64 32
  %.val5.i54 = load i64, ptr %i.rz, align 8, !noalias !15625, !noundef !49 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !15626
  %i.sa = shl nuw nsw i64 %.val5.i54, 5           ; 2 uses
  %i.sb = icmp eq i64 %.val5.i54, 0
  br i1 %i.sb, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i: ; preds = %bb.el
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  br label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.el
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15627
  %i.sd = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.sa, i64 noundef range(i64 1, 17) 8) #61, !noalias !15627 ; 4 uses
  %i.se = icmp eq ptr %i.sd, null
  br i1 %i.se, label %bb.em, label %.lr.ph.preheader.i.i.i

bb.em:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.sa) #60, !noalias !15626
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  store i64 %.val5.i54, ptr %i.ax, align 8, !noalias !15626
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.sd, ptr %i.sf, align 8, !noalias !15626
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %26 = getelementptr inbounds nuw [32 x i8], ptr %.val4.i, i64 %.val5.i54
  %i.sh = ptrtoint ptr %i.sd to i64               ; 2 uses
  %i.si = trunc i64 %i.sh to i32                  ; 2 uses
  %i.sj = lshr i64 %i.sh, 32
  %i.sk = trunc nuw i64 %i.sj to i32              ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.eq, %.lr.ph.preheader.i.i.i
  %.sroa.012.048.i.i.i = phi ptr [ %i.sl, %bb.eq ], [ %.val4.i, %.lr.ph.preheader.i.i.i ] ; 7 uses
  %.sroa.7.047.i.i.i = phi i64 [ %i.sm, %bb.eq ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.10.046.i.i.i = phi i64 [ %27, %bb.eq ], [ %.val5.i54, %.lr.ph.preheader.i.i.i ]
  %27 = add nsw i64 %.sroa.10.046.i.i.i, -1       ; 2 uses
  %28 = icmp eq ptr %.sroa.012.048.i.i.i, %26
  br i1 %28, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i, label %bb.en

bb.en:                                            ; preds = %.lr.ph.i.i.i
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.012.048.i.i.i, i64 32
  %i.sm = add nuw nsw i64 %.sroa.7.047.i.i.i, 1
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.012.048.i.i.i, i64 16
  %i.so = load <2 x i32>, ptr %i.sn, align 8, !noalias !15628
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.012.048.i.i.i, i64 24
  %i.sq = load atomic i32, ptr %i.sp monotonic, align 8, !noalias !15628
  %.val.i.i.i.i55 = load ptr, ptr %.sroa.012.048.i.i.i, align 8, !noalias !15628, !nonnull !49, !noundef !49
  %i.sr = getelementptr i8, ptr %.sroa.012.048.i.i.i, i64 8
  %.val3.i.i.i.i56 = load i64, ptr %i.sr, align 8, !noalias !15628, !noundef !49 ; 6 uses
  %i.ss = icmp eq i64 %.val3.i.i.i.i56, 0
  br i1 %i.ss, label %bb.eq, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.en
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15629
  %i.st = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val3.i.i.i.i56, i64 noundef range(i64 1, 17) 1) #61, !noalias !15629 ; 3 uses
  %i.su = icmp eq ptr %i.st, null
  br i1 %i.su, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i.i56) #60
          to label %.noexc.i.i.i unwind label %bb.er, !noalias !15626

.noexc.i.i.i:                                     ; preds = %bb.eo
  unreachable

bb.ep:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.st, ptr nonnull readonly align 1 %.val.i.i.i.i55, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i.i56, i1 false), !noalias !15630
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.en
  %.sroa.5.0.i.i.i.i.i = phi ptr [ %i.st, %bb.ep ], [ inttoptr (i64 1 to ptr), %bb.en ]
  %i.sv = icmp sgt i64 %.val3.i.i.i.i56, -1
  tail call void @llvm.assume(i1 %i.sv)
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.012.048.i.i.i, i64 28
  %i.sx = load i8, ptr %i.sw, align 4, !noalias !15628, !noundef !49
  %i.sy = getelementptr inbounds nuw [32 x i8], ptr %i.sd, i64 %.sroa.7.047.i.i.i ; 5 uses
  store ptr %.sroa.5.0.i.i.i.i.i, ptr %i.sy, align 8, !noalias !15626
  %.sroa.432.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  store i64 %.val3.i.i.i.i56, ptr %.sroa.432.0..sroa_idx.i.i.i, align 8, !noalias !15626
  %.sroa.533.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  store <2 x i32> %i.so, ptr %.sroa.533.0..sroa_idx.i.i.i, align 8, !noalias !15626
  %.sroa.735.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sy, i64 24
  store i32 %i.sq, ptr %.sroa.735.0..sroa_idx.i.i.i, align 8, !noalias !15626
  %.sroa.836.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sy, i64 28
  store i8 %i.sx, ptr %.sroa.836.0..sroa_idx.i.i.i, align 4, !noalias !15626
  %i.sz = icmp eq i64 %27, 0
  br i1 %i.sz, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i, label %.lr.ph.i.i.i

bb.er:                                            ; preds = %bb.eo
  %i.ta = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.047.i.i.i, ptr %i.sg, align 8, !noalias !15626
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.ax) #58, !noalias !15626
  br label %common.resume549

_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i: ; preds = %bb.eq, %.lr.ph.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i
  %.sroa.8319.8.copyload = phi i32 [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i ], [ %i.sk, %.lr.ph.i.i.i ], [ %i.sk, %bb.eq ]
  %.sroa.7318.8.copyload = phi i32 [ 8, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i ], [ %i.si, %.lr.ph.i.i.i ], [ %i.si, %bb.eq ]
  %29 = phi ptr [ %i.sc, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i.i ], [ %i.sg, %.lr.ph.i.i.i ], [ %i.sg, %bb.eq ]
  store i64 %.val5.i54, ptr %29, align 8, !noalias !15626
  %i.tb = trunc i64 %.val5.i54 to i32
  %.sroa.10321.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %.sroa.10321.8.copyload = load i8, ptr %.sroa.10321.8..sroa_idx, align 4
  %.sroa.11322.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.11322, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.11322.8..sroa_idx, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !15626
  br label %_RNvXs4K_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.es:                                            ; preds = %bb.ek
  %i.tc = load i32, ptr %i.ry, align 8, !noalias !15625, !noundef !49
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.te = load i32, ptr %i.td, align 4, !noalias !15625, !noundef !49
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.tg = load atomic i32, ptr %i.tf monotonic, align 8, !noalias !15625
  %i.th = getelementptr i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.th, align 8, !noalias !15625, !noundef !49 ; 6 uses
  %i.ti = icmp eq i64 %.val3.i, 0
  br i1 %i.ti, label %_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskLngH8kgpZI_15ruff_python_ast.exit.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i6.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i6.i: ; preds = %bb.es
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15631
  %i.tj = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val3.i, i64 noundef range(i64 1, 17) 1) #61, !noalias !15631 ; 3 uses
  %i.tk = icmp eq ptr %i.tj, null
  br i1 %i.tk, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i6.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val3.i) #60, !noalias !15632
  unreachable

bb.eu:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i6.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tj, ptr nonnull readonly align 1 %i.rw, i64 range(i64 0, -9223372036854775808) %.val3.i, i1 false), !noalias !15633
  br label %_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskLngH8kgpZI_15ruff_python_ast.exit.i

_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskLngH8kgpZI_15ruff_python_ast.exit.i: ; preds = %bb.eu, %bb.es
  %.sroa.5.0.i.i = phi ptr [ %i.tj, %bb.eu ], [ inttoptr (i64 1 to ptr), %bb.es ]
  %i.tl = icmp sgt i64 %.val3.i, -1
  tail call void @llvm.assume(i1 %i.tl)
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.tn = load i8, ptr %i.tm, align 4, !noalias !15625, !noundef !49
  br label %_RNvXs4K_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXs4K_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i, %_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskLngH8kgpZI_15ruff_python_ast.exit.i
  %.sroa.10321.0 = phi i8 [ %.sroa.10321.8.copyload, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i ], [ %i.tn, %_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskLngH8kgpZI_15ruff_python_ast.exit.i ]
  %.sroa.9320.0 = phi i32 [ %i.tb, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i ], [ %i.tg, %_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskLngH8kgpZI_15ruff_python_ast.exit.i ]
  %.sroa.8319.0 = phi i32 [ %.sroa.8319.8.copyload, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i ], [ %i.te, %_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskLngH8kgpZI_15ruff_python_ast.exit.i ]
  %.sroa.7318.0 = phi i32 [ %.sroa.7318.8.copyload, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i ], [ %i.tc, %_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskLngH8kgpZI_15ruff_python_ast.exit.i ]
  %.sroa.5317.0 = phi i64 [ %.val5.i54, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i ], [ %.val3.i, %_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskLngH8kgpZI_15ruff_python_ast.exit.i ]
  %.sroa.0316.0 = phi ptr [ null, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit.i ], [ %.sroa.5.0.i.i, %_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskLngH8kgpZI_15ruff_python_ast.exit.i ]
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0316.0, ptr %i.to, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5317.0, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.7318.0, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.8319.0, ptr %.sroa.01.sroa.6.0..sroa_idx, align 4
  %.sroa.01.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.9320.0, ptr %.sroa.01.sroa.7.0..sroa_idx, align 8
  %.sroa.01.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %.sroa.10321.0, ptr %.sroa.01.sroa.8.0..sroa_idx, align 4
  %.sroa.01.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.01.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.11322, i64 3, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i32> %i.rv, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.rt, ptr %.sroa.64.0..sroa_idx, align 8
  br label %bb.gt

bb.ev:                                            ; preds = %bb.a
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.tr = load atomic i32, ptr %i.tq monotonic, align 8, !noalias !15634
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.tt = load <2 x i32>, ptr %i.ts, align 8, !noalias !15634
  %i.tu = load i64, ptr %i.tp, align 8, !range !67, !noalias !15634, !noundef !49 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !noalias !15634 ; 3 uses
  switch i64 %i.tu, label %default.unreachable [
    i64 0, label %bb.ew
    i64 1, label %bb.ex
    i64 2, label %bb.ey
  ]

bb.ew:                                            ; preds = %bb.ev
  %.not.i57 = icmp eq ptr %i.tw, null
  br i1 %.not.i57, label %bb.fa, label %bb.ez

bb.ex:                                            ; preds = %bb.ev
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !15634
  br label %_RNvXshd_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.ey:                                            ; preds = %bb.ev
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.sroa.6.0.copyload14.i = load i64, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx5.sroa_idx.i, align 8, !noalias !15634
  br label %_RNvXshd_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.ez:                                            ; preds = %bb.ew
  %i.tx = tail call { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.tv), !noalias !15634 ; 2 uses
  %i.ty = extractvalue { ptr, i64 } %i.tx, 0
  %i.tz = extractvalue { ptr, i64 } %i.tx, 1
  br label %_RNvXshd_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.fa:                                            ; preds = %bb.ew
  %.sroa.5.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i58, align 8, !noalias !15634
  br label %_RNvXshd_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXshd_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.ex, %bb.ey, %bb.ez, %bb.fa
  %.sroa.6.sroa.6.0.i = phi i64 [ %.sroa.6.sroa.6.0.copyload14.i, %bb.ey ], [ %.sroa.6.sroa.6.0.copyload.i, %bb.ex ], [ %i.tz, %bb.ez ], [ %.sroa.5.0.copyload.i, %bb.fa ]
  %.sroa.6.sroa.0.0.i = phi ptr [ %i.tw, %bb.ey ], [ %i.tw, %bb.ex ], [ %i.ty, %bb.ez ], [ null, %bb.fa ]
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.tu, ptr %i.ua, align 8
  %.sroa.4270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.sroa.0.0.i, ptr %.sroa.4270.0..sroa_idx, align 8
  %.sroa.5271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.sroa.6.0.i, ptr %.sroa.5271.0..sroa_idx, align 8
  %.sroa.6272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.tt, ptr %.sroa.6272.0..sroa_idx, align 8
  %.sroa.8274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.tr, ptr %.sroa.8274.0..sroa_idx, align 8
  br label %bb.gt

bb.fb:                                            ; preds = %bb.a
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.uc = load atomic i32, ptr %i.ub monotonic, align 4
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.uf = load i8, ptr %i.ue, align 8, !range !54, !noundef !49
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.uc, ptr %i.ug, align 4
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.uh = load <2 x i32>, ptr %i.ud, align 8
  store <2 x i32> %i.uh, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.uf, ptr %.sroa.610.0..sroa_idx, align 8
  br label %bb.gt

bb.fc:                                            ; preds = %bb.a
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.uk = load atomic i32, ptr %i.uj monotonic, align 4
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.um = load <2 x i32>, ptr %i.ui, align 4
  store <2 x i32> %i.um, ptr %i.ul, align 4
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.uk, ptr %.sroa.514.0..sroa_idx, align 4
  br label %bb.gt

bb.fd:                                            ; preds = %bb.a
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.up = load atomic i32, ptr %i.uo monotonic, align 4
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ur = load <2 x i32>, ptr %i.un, align 4
  store <2 x i32> %i.ur, ptr %i.uq, align 4
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.up, ptr %.sroa.517.0..sroa_idx, align 4
  br label %bb.gt

bb.fe:                                            ; preds = %bb.a
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.uu = load atomic i32, ptr %i.ut monotonic, align 8, !noalias !15635
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.uw = load <2 x i32>, ptr %i.uv, align 8, !noalias !15635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !15635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15636)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15637, !inline_history !15490
  %i.ux = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15637, !inline_history !15490 ; 5 uses
  %i.uy = icmp eq ptr %i.ux, null
  br i1 %i.uy, label %bb.ff, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i139, !prof !50

bb.ff:                                            ; preds = %bb.fe
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60, !noalias !15637, !inline_history !15490
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i139: ; preds = %bb.fe
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.va = load ptr, ptr %i.uz, align 8, !alias.scope !15636, !noalias !15635, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !15637
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.s, ptr noundef nonnull align 8 %i.va)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit141 unwind label %bb.fg, !noalias !15637, !inline_history !15491

bb.fg:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i139
  %i.vb = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ux, i64 noundef 72, i64 noundef 8) #61, !noalias !15637, !inline_history !15490
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit141: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ux, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !noalias !15637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15637
  store ptr %i.ux, ptr %i.aw, align 8, !noalias !15635
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15638), !noalias !15635
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.ve = load i8, ptr %i.vd, align 1, !range !72, !alias.scope !15638, !noalias !15639, !noundef !49
  %i.vf = and i8 %i.ve, -2
  %switch.i.i = icmp eq i8 %i.vf, -48
end_hunk_5
begin_hunk_6_@_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone:bb.a
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.vl = load atomic i32, ptr %i.vk monotonic, align 8, !noalias !15639
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.vn = load i8, ptr %i.vm, align 4, !range !117, !noalias !15635, !noundef !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !15635
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.vp = load <2 x i32>, ptr %i.us, align 8, !noalias !15639
  store <2 x i32> %i.vp, ptr %i.vo, align 8
  %.sroa.0276.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.vl, ptr %.sroa.0276.sroa.6.0..sroa_idx, align 8
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ux, ptr %.sroa.4277.0..sroa_idx, align 8
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i32> %i.uw, ptr %.sroa.5278.0..sroa_idx, align 8
  %.sroa.7280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.uu, ptr %.sroa.7280.0..sroa_idx, align 8
  %.sroa.8281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.vn, ptr %.sroa.8281.0..sroa_idx, align 4
  br label %bb.gt

bb.fl:                                            ; preds = %bb.a
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.vr = load atomic i32, ptr %i.vq monotonic, align 8, !noalias !15641
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.vt = load <2 x i32>, ptr %i.vs, align 8, !noalias !15641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !15641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15642)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15643, !inline_history !15502
  %i.vu = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15643, !inline_history !15502 ; 5 uses
  %i.vv = icmp eq ptr %i.vu, null
  br i1 %i.vv, label %bb.fm, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i148, !prof !50

bb.fm:                                            ; preds = %bb.fl
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60, !noalias !15643, !inline_history !15502
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i148: ; preds = %bb.fl
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8, !alias.scope !15642, !noalias !15641, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !15643
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull align 8 %i.vx)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit150 unwind label %bb.fn, !noalias !15643, !inline_history !15503

bb.fn:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i148
  %i.vy = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vu, i64 noundef 72, i64 noundef 8) #61, !noalias !15643, !inline_history !15502
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit150: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.vu, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !noalias !15643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15643
  store ptr %i.vu, ptr %i.av, align 8, !noalias !15641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15644)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15645, !inline_history !15502
  %i.vz = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15645, !inline_history !15502 ; 4 uses
  %i.wa = icmp eq ptr %i.vz, null
  br i1 %i.wa, label %bb.fo, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i142, !prof !50

bb.fo:                                            ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit150
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60
          to label %.noexc144 unwind label %bb.fq, !inline_history !15502

.noexc144:                                        ; preds = %bb.fo
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i142: ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit150
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.wc = load ptr, ptr %i.wb, align 8, !alias.scope !15644, !noalias !15641, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !15645
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.r, ptr noundef nonnull align 8 %i.wc)
          to label %_RNvXshF_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprSubscriptNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.fp, !noalias !15645, !inline_history !15503

bb.fp:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i142
  %i.wd = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vz, i64 noundef 72, i64 noundef 8) #61, !noalias !15645, !inline_history !15502
  br label %.body145

bb.fq:                                            ; preds = %bb.fo
  %i.we = landingpad { ptr, i32 }
          cleanup
  br label %.body145

.body145:                                         ; preds = %bb.fp, %bb.fq
  %eh.lpad-body146 = phi { ptr, i32 } [ %i.we, %bb.fq ], [ %i.wd, %bb.fp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.av) #58
          to label %common.resume549 unwind label %bb.fr, !noalias !15641, !inline_history !15506

bb.fr:                                            ; preds = %.body145
  %i.wf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15641, !inline_history !15506
  unreachable

_RNvXshF_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprSubscriptNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.vz, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !noalias !15645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !15645
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.wh = load i8, ptr %i.wg, align 4, !range !117, !noalias !15641, !noundef !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !15641
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.vu, ptr %i.wi, align 8
  %.sroa.4284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.vz, ptr %.sroa.4284.0..sroa_idx, align 8
  %.sroa.5285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.vt, ptr %.sroa.5285.0..sroa_idx, align 8
  %.sroa.7287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.vr, ptr %.sroa.7287.0..sroa_idx, align 8
  %.sroa.8288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.wh, ptr %.sroa.8288.0..sroa_idx, align 4
  br label %bb.gt

bb.fs:                                            ; preds = %bb.a
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.wk = load atomic i32, ptr %i.wj monotonic, align 8, !noalias !15646
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.wm = load <2 x i32>, ptr %i.wl, align 8, !noalias !15646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15647)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15648, !inline_history !15511
  %i.wn = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !15648, !inline_history !15511 ; 4 uses
  %i.wo = icmp eq ptr %i.wn, null
  br i1 %i.wo, label %bb.ft, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i151, !prof !50

bb.ft:                                            ; preds = %bb.fs
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #60, !noalias !15648, !inline_history !15511
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i151: ; preds = %bb.fs
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wq = load ptr, ptr %i.wp, align 8, !alias.scope !15647, !noalias !15646, !nonnull !49, !noundef !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !15648
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull align 8 %i.wq)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit153 unwind label %bb.fu, !noalias !15648, !inline_history !15512

bb.fu:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i151
  %i.wr = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wn, i64 noundef 72, i64 noundef 8) #61, !noalias !15648, !inline_history !15511
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit153: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.wn, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !noalias !15648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15648
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.wt = load i8, ptr %i.ws, align 4, !range !117, !noalias !15646, !noundef !49
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.wn, ptr %i.wu, align 8
  %.sroa.4291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %i.wm, ptr %.sroa.4291.0..sroa_idx, align 8
  %.sroa.6293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.wk, ptr %.sroa.6293.0..sroa_idx, align 8
  %.sroa.7294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.wt, ptr %.sroa.7294.0..sroa_idx, align 4
  br label %bb.gt

bb.fv:                                            ; preds = %bb.a
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.wx = load atomic i32, ptr %i.ww monotonic, align 8
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.wz = load <2 x i32>, ptr %i.wy, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15649)
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.xb = load i8, ptr %i.xa, align 1, !range !72, !alias.scope !15649, !noundef !49
  %i.xc = and i8 %i.xb, -2
  %switch.i = icmp eq i8 %i.xc, -48
  br i1 %switch.i, label %bb.fw, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit

bb.fw:                                            ; preds = %bb.fv
  %.pn.i59 = load ptr, ptr %i.wv, align 8, !alias.scope !15649, !nonnull !49, !noundef !49
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i59, i64 -8
  %i.xd = atomicrmw add ptr %.sroa.0.0.i, i64 1 monotonic, align 8, !noalias !15650
  %i.xe = icmp slt i64 %i.xd, 0
  br i1 %i.xe, label %bb.fx, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit, !prof !50

bb.fx:                                            ; preds = %bb.fw
  tail call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.wv) #60, !noalias !15651
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit: ; preds = %bb.fv, %bb.fw
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xf, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.wv, i64 16, i1 false)
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.xh = load i8, ptr %i.xg, align 4, !range !117, !noundef !49
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.wz, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.wx, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.xh, ptr %.sroa.722.0..sroa_idx, align 4
  br label %bb.gt

bb.fy:                                            ; preds = %bb.a
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.xj = load atomic i32, ptr %i.xi monotonic, align 8, !noalias !15652
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.xl = load <2 x i32>, ptr %i.xk, align 8, !noalias !15652
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.xn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xo = load ptr, ptr %i.xn, align 8, !alias.scope !15653, !noalias !15652, !nonnull !49, !noundef !49 ; 2 uses
  %i.xp = load i64, ptr %i.xm, align 8, !alias.scope !15653, !noalias !15652, !noundef !49 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15654
  %i.xq = mul nuw nsw i64 %i.xp, 72               ; 2 uses
  %i.xr = icmp eq i64 %i.xp, 0
  br i1 %i.xr, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i538, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i531

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i538: ; preds = %bb.fy
  store i64 0, ptr %i.d, align 8, !noalias !15654
  %i.xs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.xs, align 8, !noalias !15654
  %i.xt = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit539

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i531: ; preds = %bb.fy
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15655, !inline_history !23
  %i.xu = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.xq, i64 noundef range(i64 1, 17) 8) #61, !noalias !15655, !inline_history !23 ; 3 uses
  %i.xv = icmp eq ptr %i.xu, null
  br i1 %i.xv, label %bb.fz, label %.lr.ph.preheader.i532

bb.fz:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i531
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.xq) #60, !noalias !15654, !inline_history !23
  unreachable

.lr.ph.preheader.i532:                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i531
  store i64 %i.xp, ptr %i.d, align 8, !noalias !15654
  %i.xw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.xu, ptr %i.xw, align 8, !noalias !15654
  %i.xx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %30 = getelementptr inbounds nuw [72 x i8], ptr %i.xo, i64 %i.xp
  br label %.lr.ph.i533

.lr.ph.i533:                                      ; preds = %bb.ga, %.lr.ph.preheader.i532
  %.sroa.012.023.i534 = phi ptr [ %i.xz, %bb.ga ], [ %i.xo, %.lr.ph.preheader.i532 ] ; 3 uses
  %.sroa.7.022.i535 = phi i64 [ %i.xy, %bb.ga ], [ 0, %.lr.ph.preheader.i532 ] ; 3 uses
  %.sroa.10.021.i536 = phi i64 [ %31, %bb.ga ], [ %i.xp, %.lr.ph.preheader.i532 ]
  %31 = add nsw i64 %.sroa.10.021.i536, -1        ; 2 uses
  %32 = icmp eq ptr %.sroa.012.023.i534, %30
  br i1 %32, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit539, label %33

33:                                               ; preds = %.lr.ph.i533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15654
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull align 8 %.sroa.012.023.i534)
          to label %bb.ga unwind label %bb.gc, !noalias !15654, !inline_history !23

bb.ga:                                            ; preds = %33
  %i.xy = add nuw nsw i64 %.sroa.7.022.i535, 1
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i534, i64 72
  %i.ya = getelementptr inbounds nuw [72 x i8], ptr %i.xu, i64 %.sroa.7.022.i535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ya, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !15654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15654
  %i.yb = icmp eq i64 %31, 0
  br i1 %i.yb, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit539, label %.lr.ph.i533

bb.gb:                                            ; preds = %bb.gc
  %i.yc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15654, !inline_history !23
  unreachable

bb.gc:                                            ; preds = %33
  %lpad.loopexit.i537 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i535, ptr %i.xx, align 8, !noalias !15654
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #58
          to label %common.resume549 unwind label %bb.gb, !noalias !15654, !inline_history !23

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit539: ; preds = %.lr.ph.i533, %bb.ga, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i538
  %34 = phi ptr [ %i.xt, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i538 ], [ %i.xx, %bb.ga ], [ %i.xx, %.lr.ph.i533 ]
  store i64 %i.xp, ptr %34, align 8, !noalias !15654
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yd, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15654
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.yf = load i8, ptr %i.ye, align 4, !range !117, !noalias !15652, !noundef !49
  %.sroa.4297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.xl, ptr %.sroa.4297.0..sroa_idx, align 8
  %.sroa.6299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.xj, ptr %.sroa.6299.0..sroa_idx, align 8
  %.sroa.7300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.yf, ptr %.sroa.7300.0..sroa_idx, align 4
  br label %bb.gt

bb.gd:                                            ; preds = %bb.a
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.yh = load atomic i32, ptr %i.yg monotonic, align 8, !noalias !15656
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.yj = load <2 x i32>, ptr %i.yi, align 8, !noalias !15656
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ym = load ptr, ptr %i.yl, align 8, !alias.scope !15657, !noalias !15656, !nonnull !49, !noundef !49 ; 2 uses
  %i.yn = load i64, ptr %i.yk, align 8, !alias.scope !15657, !noalias !15656, !noundef !49 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15658
  %i.yo = mul nuw nsw i64 %i.yn, 72               ; 2 uses
  %i.yp = icmp eq i64 %i.yn, 0
  br i1 %i.yp, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i547, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i540

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i547: ; preds = %bb.gd
  store i64 0, ptr %i.b, align 8, !noalias !15658
  %i.yq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.yq, align 8, !noalias !15658
  %i.yr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit548

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i540: ; preds = %bb.gd
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !15659, !inline_history !23
  %i.ys = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.yo, i64 noundef range(i64 1, 17) 8) #61, !noalias !15659, !inline_history !23 ; 3 uses
  %i.yt = icmp eq ptr %i.ys, null
  br i1 %i.yt, label %bb.ge, label %.lr.ph.preheader.i541

bb.ge:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i540
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.yo) #60, !noalias !15658, !inline_history !23
  unreachable

.lr.ph.preheader.i541:                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i540
  store i64 %i.yn, ptr %i.b, align 8, !noalias !15658
  %i.yu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ys, ptr %i.yu, align 8, !noalias !15658
  %i.yv = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %35 = getelementptr inbounds nuw [72 x i8], ptr %i.ym, i64 %i.yn
  br label %.lr.ph.i542

.lr.ph.i542:                                      ; preds = %bb.gf, %.lr.ph.preheader.i541
  %.sroa.012.023.i543 = phi ptr [ %i.yx, %bb.gf ], [ %i.ym, %.lr.ph.preheader.i541 ] ; 3 uses
  %.sroa.7.022.i544 = phi i64 [ %i.yw, %bb.gf ], [ 0, %.lr.ph.preheader.i541 ] ; 3 uses
  %.sroa.10.021.i545 = phi i64 [ %36, %bb.gf ], [ %i.yn, %.lr.ph.preheader.i541 ]
  %36 = add nsw i64 %.sroa.10.021.i545, -1        ; 2 uses
  %37 = icmp eq ptr %.sroa.012.023.i543, %35
  br i1 %37, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit548, label %38

38:                                               ; preds = %.lr.ph.i542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15658
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %.sroa.012.023.i543)
          to label %bb.gf unwind label %bb.gh, !noalias !15658, !inline_history !23

bb.gf:                                            ; preds = %38
  %i.yw = add nuw nsw i64 %.sroa.7.022.i544, 1
  %i.yx = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i543, i64 72
  %i.yy = getelementptr inbounds nuw [72 x i8], ptr %i.ys, i64 %.sroa.7.022.i544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.yy, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !15658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15658
  %i.yz = icmp eq i64 %36, 0
  br i1 %i.yz, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit548, label %.lr.ph.i542

bb.gg:                                            ; preds = %bb.gh
  %i.za = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15658, !inline_history !23
  unreachable

bb.gh:                                            ; preds = %38
  %lpad.loopexit.i546 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i544, ptr %i.yv, align 8, !noalias !15658
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
          to label %common.resume549 unwind label %bb.gg, !noalias !15658, !inline_history !23

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit548: ; preds = %.lr.ph.i542, %bb.gf, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i547
  %39 = phi ptr [ %i.yr, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i547 ], [ %i.yv, %bb.gf ], [ %i.yv, %.lr.ph.i542 ]
  store i64 %i.yn, ptr %39, align 8, !noalias !15658
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zb, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15658
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.zd = load i8, ptr %i.zc, align 1, !range !117, !noalias !15656, !noundef !49
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.zf = load i8, ptr %i.ze, align 4, !range !54, !noalias !15656, !noundef !49
  %.sroa.4303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.yj, ptr %.sroa.4303.0..sroa_idx, align 8
  %.sroa.6305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.yh, ptr %.sroa.6305.0..sroa_idx, align 8
  %.sroa.7306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.zf, ptr %.sroa.7306.0..sroa_idx, align 4
  %.sroa.8307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 %i.zd, ptr %.sroa.8307.0..sroa_idx, align 1
  br label %bb.gt

bb.gi:                                            ; preds = %bb.a
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.zi = load atomic i32, ptr %i.zh monotonic, align 8, !noalias !15660
  %i.zj = load <2 x i32>, ptr %i.zg, align 8, !noalias !15660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !15660
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.zl = load ptr, ptr %i.zk, align 8, !noalias !15660, !align !57, !noundef !49
  %.not.i60 = icmp eq ptr %i.zl, null
  br i1 %.not.i60, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.zm = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.zk), !noalias !15660, !inline_history !15534
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %storemerge.i61 = phi ptr [ %i.zm, %bb.gj ], [ null, %bb.gi ] ; 2 uses
  store ptr %storemerge.i61, ptr %i.au, align 8, !noalias !15660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !15660
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.zo = load ptr, ptr %i.zn, align 8, !noalias !15660, !align !57, !noundef !49
  %.not5.i = icmp eq ptr %i.zo, null
  br i1 %.not5.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.zp = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.zn)
          to label %bb.gm unwind label %bb.go, !noalias !15660, !inline_history !15534

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %storemerge6.i = phi ptr [ null, %bb.gk ], [ %i.zp, %bb.gl ] ; 2 uses
  store ptr %storemerge6.i, ptr %i.at, align 8, !noalias !15660
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !noalias !15660, !align !57, !noundef !49
  %.not7.i = icmp eq ptr %i.zr, null
  br i1 %.not7.i, label %_RNvXsi4_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprSliceNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, label %bb.gp

bb.gn:                                            ; preds = %bb.gq, %bb.go
  %.pn.i62 = phi { ptr, i32 } [ %i.zu, %bb.gq ], [ %i.zs, %bb.go ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.au) #58
          to label %common.resume549 unwind label %bb.gr, !noalias !15660, !inline_history !15534

bb.go:                                            ; preds = %bb.gl
  %i.zs = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.gp:                                            ; preds = %bb.gm
  %i.zt = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.zq)
          to label %_RNvXsi4_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprSliceNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.gq, !noalias !15660, !inline_history !15534

bb.gq:                                            ; preds = %bb.gp
  %i.zu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at) #58
          to label %bb.gn unwind label %bb.gr, !noalias !15660, !inline_history !15534

bb.gr:                                            ; preds = %bb.gq, %bb.gn
  %i.zv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #59, !noalias !15660, !inline_history !15534
  unreachable

_RNvXsi4_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprSliceNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.gm, %bb.gp
  %.sroa.02.0.i63 = phi ptr [ null, %bb.gm ], [ %i.zt, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !15660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !15660
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i32> %i.zj, ptr %i.zw, align 8
  %.sroa.5311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %storemerge.i61, ptr %.sroa.5311.0..sroa_idx, align 8
  %.sroa.6312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %storemerge6.i, ptr %.sroa.6312.0..sroa_idx, align 8
  %.sroa.7313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.02.0.i63, ptr %.sroa.7313.0..sroa_idx, align 8
  %.sroa.8314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.zi, ptr %.sroa.8314.0..sroa_idx, align 8
  br label %bb.gt

bb.gs:                                            ; preds = %bb.a
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.zz = load atomic i32, ptr %i.zy monotonic, align 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aac = load i8, ptr %i.aab, align 4, !range !121, !noundef !49
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aae = load <2 x i32>, ptr %i.aaa, align 8
  %i.aaf = tail call { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.zx) ; 2 uses
  %i.aag = extractvalue { ptr, i64 } %i.aaf, 0
  %i.aah = extractvalue { ptr, i64 } %i.aaf, 1
  store ptr %i.aag, ptr %i.aad, align 8
  store i64 %i.aah, ptr %.sroa.424.0..sroa_idx, align 8
  store <2 x i32> %i.aae, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.zz, ptr %.sroa.727.0..sroa_idx, align 8
  %.sroa.828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.aac, ptr %.sroa.828.0..sroa_idx, align 4
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %_RNvXsi4_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprSliceNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit548, %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit539, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit153, %_RNvXshF_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprSubscriptNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXshA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprAttributeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %bb.fd, %bb.fc, %bb.fb, %_RNvXshd_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXs4K_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXs4c_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_23StringLiteralValueInnerNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXs3k_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_12TStringValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXs34_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_12FStringValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXsgO_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprCallNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXsgJ_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprCompareNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit122, %_RNvXsgz_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprYieldNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit119, %_RNvXsgp_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXsgk_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_12ExprDictCompNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXsgf_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprSetCompNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXsga_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_12ExprListCompNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit506, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit, %_RNvXsfV_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_6ExprIfNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXsfQ_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10ExprLambdaNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit79, %_RNvXsfG_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprBinOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RNvXsfB_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprNamedNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit
  store i32 %i.bs, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsby_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !guid !15661 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = load i32, ptr %0, align 8, !range !65, !noundef !49
  switch i32 %i.ah, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 15, label %bb.q
    i32 16, label %bb.r
    i32 17, label %bb.s
    i32 18, label %bb.t
    i32 19, label %bb.u
    i32 20, label %bb.v
    i32 21, label %bb.w
    i32 22, label %bb.x
    i32 23, label %bb.y
    i32 24, label %bb.z
    i32 25, label %bb.aa
    i32 26, label %bb.ab
    i32 27, label %bb.ac
    i32 28, label %bb.ad
    i32 29, label %bb.ae
    i32 30, label %bb.af
    i32 31, label %bb.ag
    i32 32, label %bb.ah
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
end_hunk_6
