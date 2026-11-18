Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_datasets-6e6d6245fef4de79.candle_datasets.60f338b118604b5e-cgu.5?download=true
inline.NumInlined: 345
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3newRSmECs8k3UfHgJ3Xe_15candle_datasets:bb.a
  %.sroa.5.0..sroa_idx.i.i17.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i17.i.i, align 8, !alias.scope !128, !noalias !114
  store i64 1, ptr %i.e, align 8, !alias.scope !129, !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !114
  invoke void @_RNvXs0_NtCsltEA4u8Pgfu_11candle_core19dummy_metal_backendNtB5_11MetalDeviceNtNtB7_7backend13BackendDevice30storage_from_cpu_storage_owned(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %.noexc49.i unwind label %.thread87.i, !noalias !122

.noexc49.i:                                       ; preds = %_RNvXs0_NtCsltEA4u8Pgfu_11candle_core6deviceRSmNtB5_7NdArray14to_cpu_storageCs8k3UfHgJ3Xe_15candle_datasets.exit18.i.i
  %i.bg = load i64, ptr %i.d, align 8, !range !5, !noalias !114, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bg, -1
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.r:                                             ; preds = %.noexc46.i
  %.sroa.10.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bh = load <2 x i64>, ptr %.sroa.10.0..sroa_idx55.i, align 8, !noalias !130
  %.sroa.16.0..sroa_idx61.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.16.0.copyload62.i = load ptr, ptr %.sroa.16.0..sroa_idx61.i, align 8, !noalias !130
  %.sroa.17.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.17.0.copyload65.i = load i64, ptr %.sroa.17.0..sroa_idx64.i, align 8, !noalias !130
  %.sroa.18.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.0..sroa_idx67.i, i64 40, i1 false), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !114
  br label %_RINvMs9_NtCsltEA4u8Pgfu_11candle_core6deviceNtB6_6Device7storageRSmECs8k3UfHgJ3Xe_15candle_datasets.exit.i

bb.s:                                             ; preds = %.noexc46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !114
  br label %bb.y

bb.t:                                             ; preds = %.noexc49.i
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bi = load <2 x i64>, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !130
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.16.0.copyload.i = load ptr, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !130
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !130
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.0..sroa_idx.i, i64 40, i1 false), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !114
  br label %_RINvMs9_NtCsltEA4u8Pgfu_11candle_core6deviceNtB6_6Device7storageRSmECs8k3UfHgJ3Xe_15candle_datasets.exit.i

bb.u:                                             ; preds = %.noexc49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !114
  br label %bb.y

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit42.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !107
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !106
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %i.t, ptr %i.bk, align 8, !noalias !107
  store i64 -9223372036854775801, ptr %i.k, align 8, !noalias !107
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.k), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !107
  br label %bb.aa

_RINvMs9_NtCsltEA4u8Pgfu_11candle_core6deviceNtB6_6Device7storageRSmECs8k3UfHgJ3Xe_15candle_datasets.exit.i: ; preds = %bb.t, %bb.r
  %.sroa.17.0.i = phi i64 [ %.sroa.17.0.copyload.i, %bb.t ], [ %.sroa.17.0.copyload65.i, %bb.r ]
  %.sroa.16.0.i = phi ptr [ %.sroa.16.0.copyload.i, %bb.t ], [ %.sroa.16.0.copyload62.i, %bb.r ]
  %.sroa.053.0.i = phi i64 [ %i.bg, %bb.t ], [ %i.au, %bb.r ]
  %i.bl = phi <2 x i64> [ %i.bi, %bb.t ], [ %i.bh, %bb.r ]
  store i64 %.sroa.053.0.i, ptr %0, align 8, !alias.scope !104
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.bl, ptr %.sroa.434.0..sroa_idx.i, align 8, !alias.scope !104
  %.sroa.434.sroa.5.0..sroa.434.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.16.0.i, ptr %.sroa.434.sroa.5.0..sroa.434.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !104
  %.sroa.434.sroa.6.0..sroa.434.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.17.0.i, ptr %.sroa.434.sroa.6.0..sroa.434.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !104
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.535.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.i, i64 40, i1 false), !noalias !132
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit52.i unwind label %bb.w, !noalias !122

bb.w:                                             ; preds = %_RINvMs9_NtCsltEA4u8Pgfu_11candle_core6deviceNtB6_6Device7storageRSmECs8k3UfHgJ3Xe_15candle_datasets.exit.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume.i unwind label %bb.x, !noalias !122

bb.x:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14, !noalias !122
  unreachable

common.resume.i:                                  ; preds = %.thread.i, %bb.w
  %common.resume.op.i = phi { ptr, i32 } [ %i.bm, %bb.w ], [ %.pn83.i, %.thread.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit52.i: ; preds = %_RINvMs9_NtCsltEA4u8Pgfu_11candle_core6deviceNtB6_6Device7storageRSmECs8k3UfHgJ3Xe_15candle_datasets.exit.i
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o), !noalias !122
  br label %bb.aa

bb.y:                                             ; preds = %bb.u, %bb.s, %bb.k, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i
  %.sroa.17.0.ph.i = phi i64 [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i ], [ %2, %bb.k ], [ undef, %bb.u ], [ undef, %bb.s ]
  %.sroa.16.0.ph.i = phi ptr [ %i.ag, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i ], [ %i.ag, %bb.k ], [ undef, %bb.u ], [ undef, %bb.s ]
  %.sroa.15.0.ph.i = phi i64 [ %i.ab, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i ], [ %i.ab, %bb.k ], [ undef, %bb.u ], [ undef, %bb.s ]
  %.sroa.10.0.ph.i = phi i64 [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i ], [ 1, %bb.k ], [ 15, %bb.u ], [ 14, %bb.s ]
  store i64 %.sroa.10.0.ph.i, ptr %i.j, align 8, !noalias !107
  %.sroa.67.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.15.0.ph.i, ptr %.sroa.67.sroa.7.0..sroa_idx.i, align 8, !noalias !107
  %.sroa.67.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.16.0.ph.i, ptr %.sroa.67.sroa.8.0..sroa_idx.i, align 8, !noalias !107
  %.sroa.67.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.17.0.ph.i, ptr %.sroa.67.sroa.9.0..sroa_idx.i, align 8, !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !107
  store i8 -1, ptr %i.i, align 8, !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !106
  %i.bo = call fastcc noundef nonnull ptr @_RINvNtCsltEA4u8Pgfu_11candle_core6tensor12from_storageNtNtB4_5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.i, i1 noundef zeroext false), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !107
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !alias.scope !104
  store i64 -1, ptr %0, align 8, !alias.scope !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !107
  br label %bb.aa

bb.z:                                             ; preds = %.thread.i, %bb.d
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14, !noalias !122
  unreachable

.thread.i:                                        ; preds = %bb.f, %bb.d, %.thread87.i
  %.pn83.i = phi { ptr, i32 } [ %i.u, %bb.d ], [ %lpad.thr_comm.i, %.thread87.i ], [ %i.v, %bb.f ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #15
          to label %common.resume.i unwind label %bb.z, !noalias !122

bb.aa:                                            ; preds = %bb.y, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit52.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7permuteTjjjjEECs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 12 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.611 = alloca [56 x i8], align 8          ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.06 = alloca [112 x i8], align 8          ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [80 x i8], align 8                ; 5 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.l = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @_RNvYTjjjjENtNtCsltEA4u8Pgfu_11candle_core5shape4Dims10to_indexesCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 7)
  %i.n = load i64, ptr %i.j, align 8, !range !5, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.n, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.525.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.n, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 6 uses
  %i.r = icmp ult i64 %i.q, 1152921504606846976
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 3 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.q, %i.t
  br i1 %i.v, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.not71 = icmp eq i64 %i.q, 0
  br i1 %.not71, label %.loopexit73, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !149, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = and i64 %i.q, 1152921504606846968        ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y ; 7 uses
  %i.aa = shl nuw nsw i64 %i.q, 3
  %.idx = and i64 %i.aa, 56                       ; 7 uses
  %.not.i.i.i.i82 = icmp eq i64 %i.y, 0
  %.not.not.not.i.not.not.i.not.i.i.i85 = icmp samesign eq i64 %.idx, 0
  %.not.not.not.i.not.not.i.not.i.i.i = icmp samesign eq i64 %.idx, 8
  %3 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.not.not.i.not.not.i.not.i.i.i.1 = icmp samesign eq i64 %.idx, 16
  %4 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.not.not.not.i.not.not.i.not.i.i.i.2 = icmp samesign eq i64 %.idx, 24
  %5 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.not.not.not.i.not.not.i.not.i.i.i.3 = icmp samesign eq i64 %.idx, 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.not.i.i.i.i82.a = icmp samesign eq i64 %.idx, 40
  %6 = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.not.not.not.i.not.not.i.not.i.i.i85.a = icmp samesign eq i64 %.idx, 48
  %7 = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjEE0E0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i, %.lr.ph.i
  %i.ac = phi i64 [ 0, %.lr.ph.i ], [ %i.ad, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjEE0E0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i ] ; 16 uses
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  br i1 %.not.i.i.i.i82, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i

bb.f:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 64
  %i.af = add nsw i64 %.sroa.5.0.i.i.i.i83, -8    ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i

.preheader.i.preheader:                           ; preds = %bb.f, %bb.e
  br i1 %.not.not.not.i.not.not.i.not.i.i.i85, label %.loopexit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  br i1 %.not.not.not.i.not.not.i.not.i.i.i, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader.i
  %.val2.i.i.i.i.i.1 = load i64, ptr %3, align 8, !alias.scope !150, !noalias !151, !noundef !4
  %8 = icmp eq i64 %.val2.i.i.i.i.i.1, %i.ac
  br i1 %8, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjEE0E0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.lr.ph.1
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader.i.1
  %.val2.i.i.i.i.i.2 = load i64, ptr %4, align 8, !alias.scope !150, !noalias !151, !noundef !4
  %9 = icmp eq i64 %.val2.i.i.i.i.i.2, %i.ac
  br i1 %9, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjEE0E0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.lr.ph.2
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.2, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.preheader.i.2
  %.val2.i.i.i.i.i.3 = load i64, ptr %5, align 8, !alias.scope !150, !noalias !151, !noundef !4
  %10 = icmp eq i64 %.val2.i.i.i.i.i.3, %i.ac
  br i1 %10, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjEE0E0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.lr.ph.3
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.preheader.i.3
  %.val2.i.i.i.i.i.4 = load i64, ptr %i.ab, align 8, !alias.scope !150, !noalias !151, !noundef !4
  %11 = icmp eq i64 %.val2.i.i.i.i.i.4, %i.ac
  br i1 %11, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjEE0E0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i, label %.preheader.i.4

.preheader.i.4:                                   ; preds = %.lr.ph.4
  br i1 %.not.i.i.i.i82.a, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.preheader.i.4
  %.val2.i.i.i.i.i.5 = load i64, ptr %6, align 8, !alias.scope !150, !noalias !151, !noundef !4
  %12 = icmp eq i64 %.val2.i.i.i.i.i.5, %i.ac
  br i1 %12, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjEE0E0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i, label %.preheader.i.preheader.a

.preheader.i.preheader.a:                         ; preds = %.lr.ph.5
  br i1 %.not.not.not.i.not.not.i.not.i.i.i85.a, label %.loopexit, label %.preheader.i.a

.preheader.i.a:                                   ; preds = %.preheader.i.preheader.a
  %.val2.i.i.i.i.i.6 = load i64, ptr %7, align 8, !alias.scope !150, !noalias !151, !noundef !4
  %.not.not.not.i.not.not.i.not.i.i.i.a = icmp eq i64 %.val2.i.i.i.i.i.6, %i.ac
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.a, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjEE0E0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i, label %.loopexit

.lr.ph:                                           ; preds = %.preheader.i.preheader
  %.val2.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !150, !noalias !151, !noundef !4
  %i.ag = icmp eq i64 %.val2.i.i.i.i.i, %i.ac
  br i1 %i.ag, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjEE0E0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i, label %.preheader.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i: ; preds = %bb.e, %bb.f
  %.sroa.0.05.i.i.i.i84 = phi ptr [ %i.ae, %bb.f ], [ %i.x, %bb.e ] ; 9 uses
  %.sroa.5.0.i.i.i.i83 = phi i64 [ %i.af, %bb.f ], [ %i.y, %bb.e ]
  %.val11.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i84, align 8, !alias.scope !150, !noalias !149, !noundef !4
  %i.ah = icmp eq i64 %.val11.i.i.i.i.i, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 8
  %.val11.i.1.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !150, !noalias !149, !noundef !4
  %i.aj = icmp eq i64 %.val11.i.1.i.i.i.i, %i.ac
  %i.ak = or i1 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 16
  %.val11.i.2.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !150, !noalias !149, !noundef !4
  %i.am = icmp eq i64 %.val11.i.2.i.i.i.i, %i.ac
  %i.an = or i1 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 24
  %.val11.i.3.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !150, !noalias !149, !noundef !4
  %i.ap = icmp eq i64 %.val11.i.3.i.i.i.i, %i.ac
  %i.aq = or i1 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 32
  %.val11.i.4.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !150, !noalias !149, !noundef !4
  %i.as = icmp eq i64 %.val11.i.4.i.i.i.i, %i.ac
  %i.at = or i1 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 40
  %.val11.i.5.i.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !150, !noalias !149, !noundef !4
  %i.av = icmp eq i64 %.val11.i.5.i.i.i.i, %i.ac
  %i.aw = or i1 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 48
  %.val11.i.6.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !150, !noalias !149, !noundef !4
  %i.ay = icmp eq i64 %.val11.i.6.i.i.i.i, %i.ac
  %i.az = or i1 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 56
  %.val11.i.7.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !150, !noalias !149, !noundef !4
  %i.bb = icmp eq i64 %.val11.i.7.i.i.i.i, %i.ac
  %i.bc = or i1 %i.az, %i.bb
  br i1 %i.bc, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjEE0E0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i, label %bb.f

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjEE0E0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.preheader.i.a
  %exitcond.not.i = icmp eq i64 %i.ad, %i.q
  br i1 %exitcond.not.i, label %.loopexit73, label %bb.e

.loopexit:                                        ; preds = %.preheader.i.preheader, %.preheader.i.a, %.preheader.i, %.preheader.i.1, %.preheader.i.2, %.preheader.i.3, %.preheader.i.4, %.preheader.i.preheader.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !4, !noundef !4
  store ptr %i.be, ptr %i.f, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.t, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRSjNtB6_5Debug3fmtCs8k3UfHgJ3Xe_15candle_datasets, ptr %.sroa.432.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.bg, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCs8k3UfHgJ3Xe_15candle_datasets, ptr %.sroa.436.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @1, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.v, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit.thread, %bb.g
  %.pn54 = phi { ptr, i32 } [ %i.bh, %bb.g ], [ %.pn68, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit.thread ], [ %i.cj, %bb.v ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #15
          to label %common.resume unwind label %bb.ac

bb.g:                                             ; preds = %.loopexit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit59, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8k3UfHgJ3Xe_15candle_datasets.exit, %.loopexit73
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit

.loopexit73:                                      ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjEE0E0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs8_NtCsltEA4u8Pgfu_11candle_core2opNtB6_10BackpropOp4new1NCINvMs1_NtB8_6tensorNtB17_6Tensor7permuteTjjjjEEs_0ECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull align 8 %i.k)
          to label %bb.l unwind label %bb.g

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 -9223372036854775766, ptr %i.h, align 8
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.h)
          to label %bb.h unwind label %bb.g

bb.h:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8k3UfHgJ3Xe_15candle_datasets.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.i

bb.i:                                             ; preds = %bb.ab, %bb.h
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit, %bb.y, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.cn, %bb.y ], [ %i.bj, %bb.j ], [ %.pn54, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.aa

bb.l:                                             ; preds = %.loopexit73
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06)
  %i.bl = atomicrmw add ptr @_RNvNvMNtCsltEA4u8Pgfu_11candle_core6tensorNtB4_8TensorId3new7COUNTER, i64 1 monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4
  %i.bo = atomicrmw add ptr %i.bn, i64 1 monotonic, align 8
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4 ; 4 uses
  store ptr %i.bq, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4
  %i.bt = load i64, ptr %i.p, align 8, !noundef !4
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout7permute(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bs, i64 noundef %i.bt)
          to label %bb.q unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !152
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit.thread

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEE9drop_slowB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #17
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit.thread unwind label %bb.ac

bb.q:                                             ; preds = %bb.m
  %i.bx = load i64, ptr %i.b, align 8, !range !5, !noundef !4 ; 2 uses
  %.not52.not = icmp eq i64 %i.bx, -1
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.611, ptr noundef nonnull align 8 dereferenceable(56) %i.by, i64 56, i1 false)
  br i1 %.not52.not, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.547.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.446.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.611, i64 56, i1 false)
  store i64 %i.bx, ptr %0, align 8
  %i.bz = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !153
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit59

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEE9drop_slowB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #17
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit59 unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit.thread69

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.611, i64 56, i1 false)
  %.sroa.06.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 146
  %i.cc = load i8, ptr %i.cb, align 2, !range !154, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 145
  %i.ce = load i8, ptr %i.cd, align 1, !range !6, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cg, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.06, i64 112, i1 false)
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.bq, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.bl, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 0, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 145
  store i8 %i.ce, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i8 %i.cc, ptr %.sroa.10.0..sroa_idx, align 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !155
  %i.ch = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 64, 153) 152, i64 noundef 8) #18, !noalias !155 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.u, label %bb.x, !prof !7

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #16
          to label %.noexc60 unwind label %bb.v

.noexc60:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.a) #15
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit.thread69: ; preds = %bb.s
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs8k3UfHgJ3Xe_15candle_datasets.exit.thread

bb.x:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ch, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.cm, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets.exit62 unwind label %bb.y
end_hunk_0
