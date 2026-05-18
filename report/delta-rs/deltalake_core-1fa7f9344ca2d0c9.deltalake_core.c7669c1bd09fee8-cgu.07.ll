inline.NumInlined: 9995
inline.NumDeleted: 4212
begin_hunk_0_@_RINvMs2_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB6_24SerializedRowGroupWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE13append_columnNtNtNtBa_5arrow12arrow_writer20ArrowColumnChunkDataECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.18.sroa.26.0.copyload431 = load i32, ptr %.sroa.18.sroa.26.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  %.sroa.18.sroa.27.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  %.sroa.18.sroa.27.0.copyload444 = load i32, ptr %.sroa.18.sroa.27.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.28.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 332
  %.sroa.18.sroa.28.0.copyload457 = load i32, ptr %.sroa.18.sroa.28.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  %.sroa.18.sroa.29.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 336
  %.sroa.18.sroa.29.0.copyload470 = load i32, ptr %.sroa.18.sroa.29.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.30.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 340
  %.sroa.18.sroa.30.0.copyload483 = load i32, ptr %.sroa.18.sroa.30.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  %.sroa.18.sroa.31.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  %.sroa.18.sroa.31.0.copyload496 = load i32, ptr %.sroa.18.sroa.31.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.32.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 348
  %.sroa.18.sroa.32.0.copyload509 = load i32, ptr %.sroa.18.sroa.32.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  %.sroa.18.sroa.33.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  %.sroa.18.sroa.33.0.copyload522 = load ptr, ptr %.sroa.18.sroa.33.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.34.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 360
  %.sroa.18.sroa.34.0.copyload535 = load i64, ptr %.sroa.18.sroa.34.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.35.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  %.sroa.18.sroa.35.0.copyload548 = load i64, ptr %.sroa.18.sroa.35.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.36.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 376
  %.sroa.18.sroa.36.0.copyload561 = load i64, ptr %.sroa.18.sroa.36.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.37.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  %.sroa.18.sroa.37.0.copyload574 = load i64, ptr %.sroa.18.sroa.37.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.38.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 392
  %.sroa.18.sroa.38.0.copyload587 = load i64, ptr %.sroa.18.sroa.38.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.39.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 400
  %.sroa.18.sroa.39.0.copyload600 = load i64, ptr %.sroa.18.sroa.39.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.40.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  %.sroa.18.sroa.40.0.copyload613 = load i32, ptr %.sroa.18.sroa.40.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.41.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 412
  %.sroa.18.sroa.41.0.copyload626 = load i32, ptr %.sroa.18.sroa.41.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.be

bb.be:                                            ; preds = %bb.au, %bb.bd
  %.sroa.18.sroa.0.4 = phi i64 [ %.sroa.18.sroa.0.3, %bb.au ], [ %.sroa.18.sroa.0.0.copyload349, %bb.bd ]
  %.sroa.18.sroa.17.4 = phi i64 [ %.sroa.18.sroa.17.3, %bb.au ], [ %.sroa.18.sroa.17.0.copyload362, %bb.bd ]
  %.sroa.18.sroa.19.4 = phi i64 [ %.sroa.18.sroa.19.3, %bb.au ], [ %.sroa.18.sroa.19.0.copyload376, %bb.bd ]
  %.sroa.18.sroa.21.4 = phi i64 [ %.sroa.18.sroa.21.3, %bb.au ], [ %.sroa.18.sroa.21.0.copyload390, %bb.bd ]
  %.sroa.18.sroa.23.4 = phi i64 [ %.sroa.18.sroa.23.3, %bb.au ], [ %.sroa.18.sroa.23.0.copyload404, %bb.bd ]
  %.sroa.18.sroa.25.4 = phi i32 [ %.sroa.18.sroa.25.3, %bb.au ], [ %.sroa.18.sroa.25.0.copyload418, %bb.bd ]
  %.sroa.18.sroa.26.4 = phi i32 [ %.sroa.18.sroa.26.3, %bb.au ], [ %.sroa.18.sroa.26.0.copyload431, %bb.bd ]
  %.sroa.18.sroa.27.4 = phi i32 [ %.sroa.18.sroa.27.3, %bb.au ], [ %.sroa.18.sroa.27.0.copyload444, %bb.bd ]
  %.sroa.18.sroa.28.4 = phi i32 [ %.sroa.18.sroa.28.3, %bb.au ], [ %.sroa.18.sroa.28.0.copyload457, %bb.bd ]
  %.sroa.18.sroa.29.4 = phi i32 [ %.sroa.18.sroa.29.3, %bb.au ], [ %.sroa.18.sroa.29.0.copyload470, %bb.bd ]
  %.sroa.18.sroa.30.4 = phi i32 [ %.sroa.18.sroa.30.3, %bb.au ], [ %.sroa.18.sroa.30.0.copyload483, %bb.bd ]
  %.sroa.18.sroa.31.4 = phi i32 [ %.sroa.18.sroa.31.3, %bb.au ], [ %.sroa.18.sroa.31.0.copyload496, %bb.bd ]
  %.sroa.18.sroa.32.4 = phi i32 [ %.sroa.18.sroa.32.3, %bb.au ], [ %.sroa.18.sroa.32.0.copyload509, %bb.bd ]
  %.sroa.18.sroa.33.4 = phi ptr [ %.sroa.18.sroa.33.3, %bb.au ], [ %.sroa.18.sroa.33.0.copyload522, %bb.bd ]
  %.sroa.18.sroa.34.4 = phi i64 [ %.sroa.18.sroa.34.3, %bb.au ], [ %.sroa.18.sroa.34.0.copyload535, %bb.bd ]
  %.sroa.18.sroa.35.4 = phi i64 [ %.sroa.18.sroa.35.3, %bb.au ], [ %.sroa.18.sroa.35.0.copyload548, %bb.bd ]
  %.sroa.18.sroa.36.4 = phi i64 [ %.sroa.18.sroa.36.3, %bb.au ], [ %.sroa.18.sroa.36.0.copyload561, %bb.bd ]
  %.sroa.18.sroa.37.4 = phi i64 [ %.sroa.18.sroa.37.3, %bb.au ], [ %.sroa.18.sroa.37.0.copyload574, %bb.bd ]
  %.sroa.18.sroa.38.4 = phi i64 [ %.sroa.18.sroa.38.3, %bb.au ], [ %.sroa.18.sroa.38.0.copyload587, %bb.bd ]
  %.sroa.18.sroa.39.4 = phi i64 [ %.sroa.18.sroa.39.3, %bb.au ], [ %.sroa.18.sroa.39.0.copyload600, %bb.bd ]
  %.sroa.18.sroa.40.4 = phi i32 [ %.sroa.18.sroa.40.3, %bb.au ], [ %.sroa.18.sroa.40.0.copyload613, %bb.bd ]
  %.sroa.18.sroa.41.4 = phi i32 [ %.sroa.18.sroa.41.3, %bb.au ], [ %.sroa.18.sroa.41.0.copyload626, %bb.bd ]
  %.sroa.0201.sroa.0.4 = phi i64 [ %.sroa.0201.sroa.0.3, %bb.au ], [ %.sroa.0201.sroa.0.0.copyload639, %bb.bd ]
  %.sroa.0201.sroa.16.4 = phi i64 [ %.sroa.0201.sroa.16.3, %bb.au ], [ %.sroa.0201.sroa.16.0.copyload660, %bb.bd ]
  %.sroa.0201.sroa.17.4 = phi i64 [ %.sroa.0201.sroa.17.3, %bb.au ], [ %.sroa.0201.sroa.17.0.copyload682, %bb.bd ]
  %.sroa.0201.sroa.18.4 = phi i64 [ %.sroa.0201.sroa.18.3, %bb.au ], [ %.sroa.0201.sroa.18.0.copyload704, %bb.bd ]
  %.sroa.0201.sroa.19.4 = phi i64 [ %.sroa.0201.sroa.19.3, %bb.au ], [ %.sroa.0201.sroa.19.0.copyload726, %bb.bd ]
  %.sroa.0201.sroa.20.4 = phi i64 [ %.sroa.0201.sroa.20.3, %bb.au ], [ %.sroa.0201.sroa.20.0.copyload748, %bb.bd ]
  %.sroa.0201.sroa.21.4 = phi i64 [ %.sroa.0201.sroa.21.3, %bb.au ], [ %.sroa.0201.sroa.21.0.copyload770, %bb.bd ]
  %.sroa.0201.sroa.22.4 = phi i64 [ %.sroa.0201.sroa.22.3, %bb.au ], [ %.sroa.0201.sroa.22.0.copyload792, %bb.bd ]
  %.sroa.0201.sroa.23.4 = phi i64 [ %.sroa.0201.sroa.23.3, %bb.au ], [ %.sroa.0201.sroa.23.0.copyload814, %bb.bd ]
  %.sroa.0201.sroa.24.4 = phi i64 [ %.sroa.0201.sroa.24.3, %bb.au ], [ %.sroa.0201.sroa.24.0.copyload836, %bb.bd ]
  %.sroa.16.4 = phi i64 [ %.sroa.16.3, %bb.au ], [ %.sroa.16.0.copyload219, %bb.bd ]
  %.sroa.17.4 = phi i64 [ %.sroa.17.3, %bb.au ], [ %.sroa.17.0.copyload243, %bb.bd ]
  store i64 %.sroa.0201.sroa.0.4, ptr %3, align 8
  %.sroa.0301.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.0201.sroa.16.4, ptr %.sroa.0301.sroa.2.0..sroa_idx, align 8
  %.sroa.0301.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.0201.sroa.17.4, ptr %.sroa.0301.sroa.3.0..sroa_idx, align 8
  %.sroa.0301.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.sroa.0201.sroa.18.4, ptr %.sroa.0301.sroa.4.0..sroa_idx, align 8
  %.sroa.0301.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.sroa.0201.sroa.19.4, ptr %.sroa.0301.sroa.5.0..sroa_idx, align 8
  %.sroa.0301.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %.sroa.0201.sroa.20.4, ptr %.sroa.0301.sroa.6.0..sroa_idx, align 8
  %.sroa.0301.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %.sroa.0201.sroa.21.4, ptr %.sroa.0301.sroa.7.0..sroa_idx, align 8
  %.sroa.0301.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %.sroa.0201.sroa.22.4, ptr %.sroa.0301.sroa.8.0..sroa_idx, align 8
  %.sroa.0301.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %.sroa.0201.sroa.23.4, ptr %.sroa.0301.sroa.9.0..sroa_idx, align 8
  %.sroa.0301.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %.sroa.0201.sroa.24.4, ptr %.sroa.0301.sroa.10.0..sroa_idx, align 8
  %.sroa.2302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %.sroa.16.4, ptr %.sroa.2302.0..sroa_idx, align 8
  %.sroa.3303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %.sroa.17.4, ptr %.sroa.3303.0..sroa_idx, align 8
  %.sroa.4304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %.sroa.18.sroa.0.4, ptr %.sroa.4304.0..sroa_idx, align 8
  %.sroa.4304.sroa.2.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4304.sroa.2.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.18.sroa.16, i64 120, i1 false)
  %.sroa.4304.sroa.3.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 224
  store i64 %.sroa.18.sroa.17.4, ptr %.sroa.4304.sroa.3.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.4.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4304.sroa.4.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.18, i64 16, i1 false)
  %.sroa.4304.sroa.5.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 248
  store i64 %.sroa.18.sroa.19.4, ptr %.sroa.4304.sroa.5.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.6.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4304.sroa.6.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.20, i64 16, i1 false)
  %.sroa.4304.sroa.7.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i64 %.sroa.18.sroa.21.4, ptr %.sroa.4304.sroa.7.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.8.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4304.sroa.8.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.22, i64 16, i1 false)
  %.sroa.4304.sroa.9.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 296
  store i64 %.sroa.18.sroa.23.4, ptr %.sroa.4304.sroa.9.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.10.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4304.sroa.10.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.24, i64 16, i1 false)
  %.sroa.4304.sroa.11.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 320
  store i32 %.sroa.18.sroa.25.4, ptr %.sroa.4304.sroa.11.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.12.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 324
  store i32 %.sroa.18.sroa.26.4, ptr %.sroa.4304.sroa.12.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %.sroa.4304.sroa.13.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 328
  store i32 %.sroa.18.sroa.27.4, ptr %.sroa.4304.sroa.13.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.14.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 332
  store i32 %.sroa.18.sroa.28.4, ptr %.sroa.4304.sroa.14.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %.sroa.4304.sroa.15.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 336
  store i32 %.sroa.18.sroa.29.4, ptr %.sroa.4304.sroa.15.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.16.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 340
  store i32 %.sroa.18.sroa.30.4, ptr %.sroa.4304.sroa.16.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %.sroa.4304.sroa.17.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 344
  store i32 %.sroa.18.sroa.31.4, ptr %.sroa.4304.sroa.17.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.18.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 348
  store i32 %.sroa.18.sroa.32.4, ptr %.sroa.4304.sroa.18.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %.sroa.4304.sroa.19.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 352
  store ptr %.sroa.18.sroa.33.4, ptr %.sroa.4304.sroa.19.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.20.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 360
  store i64 %.sroa.18.sroa.34.4, ptr %.sroa.4304.sroa.20.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.21.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 368
  store i64 %.sroa.18.sroa.35.4, ptr %.sroa.4304.sroa.21.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.22.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 376
  store i64 %.sroa.18.sroa.36.4, ptr %.sroa.4304.sroa.22.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.23.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 384
  store i64 %.sroa.18.sroa.37.4, ptr %.sroa.4304.sroa.23.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.24.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 392
  store i64 %.sroa.18.sroa.38.4, ptr %.sroa.4304.sroa.24.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.25.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 400
  store i64 %.sroa.18.sroa.39.4, ptr %.sroa.4304.sroa.25.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.26.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 408
  store i32 %.sroa.18.sroa.40.4, ptr %.sroa.4304.sroa.26.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.27.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 412
  store i32 %.sroa.18.sroa.41.4, ptr %.sroa.4304.sroa.27.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 648
  %i.fh = load i64, ptr %i.fg, align 8, !range !57, !noundef !3
  %.not147 = icmp eq i64 %i.fh, -9223372036854775808
  br i1 %.not147, label %.loopexit, label %bb.bh

bb.bf:                                            ; preds = %bb.ba
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %.body.thread, %bb.bn, %bb.bf, %.critedge, %bb.cw, %bb.cv, %bb.cu, %bb.cq, %.body191, %bb.co, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174, %.body187
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 656
  %i.fl = load ptr, ptr %i.fk, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !3 ; 2 uses
  %.idx = mul i64 %i.fn, 24                       ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx
  %i.fp = icmp eq i64 %i.fn, 0
  br i1 %i.fp, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bh
  %i.fq = sub i64 %i.dd, %.                       ; 9 uses
  %i.fr = add i64 %.idx, -24                      ; 2 uses
  %i.fs = udiv i64 %i.fr, 24
  %i.ft = add nuw nsw i64 %i.fs, 1
  %xtraiter = and i64 %i.ft, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.sroa.078.0324.prol = phi ptr [ %i.fu, %.prol.preheader ], [ %i.fl, %.lr.ph ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.078.0324.prol, i64 24 ; 2 uses
  %i.fv = load i64, ptr %.sroa.078.0324.prol, align 8, !noundef !3
  %i.fw = add i64 %i.fq, %i.fv
  store i64 %i.fw, ptr %.sroa.078.0324.prol, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !405

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.sroa.078.0324.unr = phi ptr [ %i.fl, %.lr.ph ], [ %i.fu, %.prol.preheader ]
  %i.fx = icmp ult i64 %i.fr, 168
  br i1 %i.fx, label %.loopexit, label %.lr.ph.new

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %bb.bh, %bb.be
  %i.fy = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 56)
          to label %bb.bj unwind label %bb.bi     ; 3 uses

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.sroa.078.0324 = phi ptr [ %i.gu, %.lr.ph.new ], [ %.sroa.078.0324.unr, %.prol.loopexit ] ; 10 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 24 ; 2 uses
  %i.ga = load i64, ptr %.sroa.078.0324, align 8, !noundef !3
  %i.gb = add i64 %i.fq, %i.ga
  store i64 %i.gb, ptr %.sroa.078.0324, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 48 ; 2 uses
  %i.gd = load i64, ptr %i.fz, align 8, !noundef !3
  %i.ge = add i64 %i.fq, %i.gd
  store i64 %i.ge, ptr %i.fz, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 72 ; 2 uses
  %i.gg = load i64, ptr %i.gc, align 8, !noundef !3
  %i.gh = add i64 %i.fq, %i.gg
  store i64 %i.gh, ptr %i.gc, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 96 ; 2 uses
  %i.gj = load i64, ptr %i.gf, align 8, !noundef !3
  %i.gk = add i64 %i.fq, %i.gj
  store i64 %i.gk, ptr %i.gf, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 120 ; 2 uses
  %i.gm = load i64, ptr %i.gi, align 8, !noundef !3
  %i.gn = add i64 %i.fq, %i.gm
  store i64 %i.gn, ptr %i.gi, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 144 ; 2 uses
  %i.gp = load i64, ptr %i.gl, align 8, !noundef !3
  %i.gq = add i64 %i.fq, %i.gp
  store i64 %i.gq, ptr %i.gl, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 168 ; 2 uses
  %i.gs = load i64, ptr %i.go, align 8, !noundef !3
  %i.gt = add i64 %i.fq, %i.gs
  store i64 %i.gt, ptr %i.go, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 192 ; 2 uses
  %i.gv = load i64, ptr %i.gr, align 8, !noundef !3
  %i.gw = add i64 %i.fq, %i.gv
  store i64 %i.gw, ptr %i.gr, align 8
  %i.gx = icmp eq ptr %i.gu, %i.fo
  br i1 %i.gx, label %.loopexit, label %.lr.ph.new

bb.bi:                                            ; preds = %.loopexit, %bb.bj
  %.sroa.089.6 = phi i8 [ 0, %bb.bj ], [ 1, %.loopexit ] ; 2 uses
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174

bb.bj:                                            ; preds = %.loopexit
  %4 = getelementptr i8, ptr %1, <6 x i64> <i64 136, i64 144, i64 16, i64 40, i64 64, i64 88>
  store <6 x ptr> %4, ptr %i.fy, align 8
  %.sroa.9293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store ptr %1, ptr %.sroa.9293.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.g, ptr noundef nonnull align 8 dereferenceable(712) %3, i64 712, i1 false)
  invoke void @_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtNtCs4tdlwR1I4n2_7parquet6column6writer17ColumnCloseResultEEp6OutputINtNtBP_6result6ResultuNtNtB1z_6errors12ParquetErrorEEL_EIBJ_B1s_E9call_onceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %i.fy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.g)
          to label %bb.bk unwind label %bb.bi

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.x)
          to label %bb.bl unwind label %bb.r

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(416) %i.ab)
          to label %bb.bp unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bo, %.body187
  %.sroa.081.7 = phi i8 [ 0, %bb.bo ], [ %.sroa.081.2, %.body187 ] ; 2 uses
  %.sroa.089.7 = phi i8 [ %.sroa.089.8, %bb.bo ], [ %.sroa.089.2, %.body187 ] ; 2 uses
  %.pn153 = phi { ptr, i32 } [ %i.hc, %bb.bo ], [ %.pn151, %.body187 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.gz = load ptr, ptr %i.ac, align 8, !alias.scope !413, !nonnull !3, !noundef !3
  %i.ha = atomicrmw sub ptr %i.gz, i64 1 release, align 8, !noalias !413
  %i.hb = icmp eq i64 %i.ha, 1
  br i1 %i.hb, label %bb.bn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac) #61
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bg

bb.bo:                                            ; preds = %bb.ch, %bb.bl
  %.sroa.089.8 = phi i8 [ 1, %bb.ch ], [ 0, %bb.bl ]
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bp:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.hd = load ptr, ptr %i.ac, align 8, !alias.scope !420, !nonnull !3, !noundef !3
  %i.he = atomicrmw sub ptr %i.hd, i64 1 release, align 8, !noalias !420
  %i.hf = icmp eq i64 %i.he, 1
  br i1 %i.hf, label %bb.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit177

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac) #61
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit177 unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit177: ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.br

bb.br:                                            ; preds = %bb.cs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit177
  ret void

.body.thread:                                     ; preds = %bb.aw, %.body.thread320
  %eh.lpad-body319 = phi { ptr, i32 } [ %i.ey, %.body.thread320 ], [ %i.fd, %bb.aw ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bs:                                            ; preds = %bb.ao
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bt:                                            ; preds = %bb.aj
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bu:                                            ; preds = %bb.ae
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bv:                                            ; preds = %bb.ab
  %i.hj = load i64, ptr %i.e, align 8, !range !381, !noundef !3
  %i.hk = trunc nuw i64 %i.hj to i1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !range !57, !noundef !3 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.hk, label %bb.bw, label %bb.bx, !prof !21

bb.bw:                                            ; preds = %bb.bv
  %i.ho = load i64, ptr %i.hn, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hm, i64 %i.ho) #60
          to label %bb.cf unwind label %bb.w

bb.bx:                                            ; preds = %bb.bv
  %i.hp = load ptr, ptr %i.hn, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.hq = icmp samesign ugt i64 %i.hm, 70
  call void @llvm.assume(i1 %i.hq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.hp, ptr noundef nonnull align 1 dereferenceable(71) @3, i64 71, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hm, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hp, ptr %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx, align 8
  %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 71, ptr %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.cg, %bb.bx
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.3200.0..sroa_idx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.hs = load i64, ptr %i.x, align 8, !range !381, !alias.scope !424, !noundef !3
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %.body187, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.hu = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !434, !noundef !3 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %.body187, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !441, !nonnull !3, !noundef !3
  %i.hy = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !442, !noundef !3
  %i.ib = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !442, !noundef !3
  invoke void %i.hx(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef %i.ia, i64 noundef %i.ic)
          to label %.body187 unwind label %bb.ce, !inline_history !443

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.id = load i64, ptr %i.x, align 8, !range !381, !alias.scope !447, !noundef !3
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.if = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !451, !noundef !3 ; 2 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !458, !nonnull !3, !noundef !3
  %i.ij = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !459, !noundef !3
  %i.im = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.in = load i64, ptr %i.im, align 8, !alias.scope !459, !noundef !3
  invoke void %i.ii(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef %i.il, i64 noundef %i.in)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r, !inline_history !460

bb.ce:                                            ; preds = %bb.cb
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.cf:                                            ; preds = %bb.bw
  unreachable

bb.cg:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.by

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.cd, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ch

bb.ch:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(416) %i.ab)
          to label %bb.ci unwind label %bb.bo

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXsx_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.ch

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB6_24SerializedRowGroupWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE13append_columnNtNtNtBa_5arrow12arrow_writer20ArrowColumnChunkDataEB1k_:bb.a
  %.sroa.18.sroa.26.0.copyload431 = load i32, ptr %.sroa.18.sroa.26.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  %.sroa.18.sroa.27.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  %.sroa.18.sroa.27.0.copyload444 = load i32, ptr %.sroa.18.sroa.27.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.28.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 332
  %.sroa.18.sroa.28.0.copyload457 = load i32, ptr %.sroa.18.sroa.28.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  %.sroa.18.sroa.29.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 336
  %.sroa.18.sroa.29.0.copyload470 = load i32, ptr %.sroa.18.sroa.29.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.30.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 340
  %.sroa.18.sroa.30.0.copyload483 = load i32, ptr %.sroa.18.sroa.30.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  %.sroa.18.sroa.31.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  %.sroa.18.sroa.31.0.copyload496 = load i32, ptr %.sroa.18.sroa.31.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.32.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 348
  %.sroa.18.sroa.32.0.copyload509 = load i32, ptr %.sroa.18.sroa.32.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  %.sroa.18.sroa.33.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  %.sroa.18.sroa.33.0.copyload522 = load ptr, ptr %.sroa.18.sroa.33.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.34.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 360
  %.sroa.18.sroa.34.0.copyload535 = load i64, ptr %.sroa.18.sroa.34.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.35.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  %.sroa.18.sroa.35.0.copyload548 = load i64, ptr %.sroa.18.sroa.35.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.36.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 376
  %.sroa.18.sroa.36.0.copyload561 = load i64, ptr %.sroa.18.sroa.36.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.37.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  %.sroa.18.sroa.37.0.copyload574 = load i64, ptr %.sroa.18.sroa.37.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.38.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 392
  %.sroa.18.sroa.38.0.copyload587 = load i64, ptr %.sroa.18.sroa.38.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.39.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 400
  %.sroa.18.sroa.39.0.copyload600 = load i64, ptr %.sroa.18.sroa.39.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.40.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  %.sroa.18.sroa.40.0.copyload613 = load i32, ptr %.sroa.18.sroa.40.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.41.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 412
  %.sroa.18.sroa.41.0.copyload626 = load i32, ptr %.sroa.18.sroa.41.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.be

bb.be:                                            ; preds = %bb.au, %bb.bd
  %.sroa.18.sroa.0.4 = phi i64 [ %.sroa.18.sroa.0.3, %bb.au ], [ %.sroa.18.sroa.0.0.copyload349, %bb.bd ]
  %.sroa.18.sroa.17.4 = phi i64 [ %.sroa.18.sroa.17.3, %bb.au ], [ %.sroa.18.sroa.17.0.copyload362, %bb.bd ]
  %.sroa.18.sroa.19.4 = phi i64 [ %.sroa.18.sroa.19.3, %bb.au ], [ %.sroa.18.sroa.19.0.copyload376, %bb.bd ]
  %.sroa.18.sroa.21.4 = phi i64 [ %.sroa.18.sroa.21.3, %bb.au ], [ %.sroa.18.sroa.21.0.copyload390, %bb.bd ]
  %.sroa.18.sroa.23.4 = phi i64 [ %.sroa.18.sroa.23.3, %bb.au ], [ %.sroa.18.sroa.23.0.copyload404, %bb.bd ]
  %.sroa.18.sroa.25.4 = phi i32 [ %.sroa.18.sroa.25.3, %bb.au ], [ %.sroa.18.sroa.25.0.copyload418, %bb.bd ]
  %.sroa.18.sroa.26.4 = phi i32 [ %.sroa.18.sroa.26.3, %bb.au ], [ %.sroa.18.sroa.26.0.copyload431, %bb.bd ]
  %.sroa.18.sroa.27.4 = phi i32 [ %.sroa.18.sroa.27.3, %bb.au ], [ %.sroa.18.sroa.27.0.copyload444, %bb.bd ]
  %.sroa.18.sroa.28.4 = phi i32 [ %.sroa.18.sroa.28.3, %bb.au ], [ %.sroa.18.sroa.28.0.copyload457, %bb.bd ]
  %.sroa.18.sroa.29.4 = phi i32 [ %.sroa.18.sroa.29.3, %bb.au ], [ %.sroa.18.sroa.29.0.copyload470, %bb.bd ]
  %.sroa.18.sroa.30.4 = phi i32 [ %.sroa.18.sroa.30.3, %bb.au ], [ %.sroa.18.sroa.30.0.copyload483, %bb.bd ]
  %.sroa.18.sroa.31.4 = phi i32 [ %.sroa.18.sroa.31.3, %bb.au ], [ %.sroa.18.sroa.31.0.copyload496, %bb.bd ]
  %.sroa.18.sroa.32.4 = phi i32 [ %.sroa.18.sroa.32.3, %bb.au ], [ %.sroa.18.sroa.32.0.copyload509, %bb.bd ]
  %.sroa.18.sroa.33.4 = phi ptr [ %.sroa.18.sroa.33.3, %bb.au ], [ %.sroa.18.sroa.33.0.copyload522, %bb.bd ]
  %.sroa.18.sroa.34.4 = phi i64 [ %.sroa.18.sroa.34.3, %bb.au ], [ %.sroa.18.sroa.34.0.copyload535, %bb.bd ]
  %.sroa.18.sroa.35.4 = phi i64 [ %.sroa.18.sroa.35.3, %bb.au ], [ %.sroa.18.sroa.35.0.copyload548, %bb.bd ]
  %.sroa.18.sroa.36.4 = phi i64 [ %.sroa.18.sroa.36.3, %bb.au ], [ %.sroa.18.sroa.36.0.copyload561, %bb.bd ]
  %.sroa.18.sroa.37.4 = phi i64 [ %.sroa.18.sroa.37.3, %bb.au ], [ %.sroa.18.sroa.37.0.copyload574, %bb.bd ]
  %.sroa.18.sroa.38.4 = phi i64 [ %.sroa.18.sroa.38.3, %bb.au ], [ %.sroa.18.sroa.38.0.copyload587, %bb.bd ]
  %.sroa.18.sroa.39.4 = phi i64 [ %.sroa.18.sroa.39.3, %bb.au ], [ %.sroa.18.sroa.39.0.copyload600, %bb.bd ]
  %.sroa.18.sroa.40.4 = phi i32 [ %.sroa.18.sroa.40.3, %bb.au ], [ %.sroa.18.sroa.40.0.copyload613, %bb.bd ]
  %.sroa.18.sroa.41.4 = phi i32 [ %.sroa.18.sroa.41.3, %bb.au ], [ %.sroa.18.sroa.41.0.copyload626, %bb.bd ]
  %.sroa.0201.sroa.0.4 = phi i64 [ %.sroa.0201.sroa.0.3, %bb.au ], [ %.sroa.0201.sroa.0.0.copyload639, %bb.bd ]
  %.sroa.0201.sroa.16.4 = phi i64 [ %.sroa.0201.sroa.16.3, %bb.au ], [ %.sroa.0201.sroa.16.0.copyload660, %bb.bd ]
  %.sroa.0201.sroa.17.4 = phi i64 [ %.sroa.0201.sroa.17.3, %bb.au ], [ %.sroa.0201.sroa.17.0.copyload682, %bb.bd ]
  %.sroa.0201.sroa.18.4 = phi i64 [ %.sroa.0201.sroa.18.3, %bb.au ], [ %.sroa.0201.sroa.18.0.copyload704, %bb.bd ]
  %.sroa.0201.sroa.19.4 = phi i64 [ %.sroa.0201.sroa.19.3, %bb.au ], [ %.sroa.0201.sroa.19.0.copyload726, %bb.bd ]
  %.sroa.0201.sroa.20.4 = phi i64 [ %.sroa.0201.sroa.20.3, %bb.au ], [ %.sroa.0201.sroa.20.0.copyload748, %bb.bd ]
  %.sroa.0201.sroa.21.4 = phi i64 [ %.sroa.0201.sroa.21.3, %bb.au ], [ %.sroa.0201.sroa.21.0.copyload770, %bb.bd ]
  %.sroa.0201.sroa.22.4 = phi i64 [ %.sroa.0201.sroa.22.3, %bb.au ], [ %.sroa.0201.sroa.22.0.copyload792, %bb.bd ]
  %.sroa.0201.sroa.23.4 = phi i64 [ %.sroa.0201.sroa.23.3, %bb.au ], [ %.sroa.0201.sroa.23.0.copyload814, %bb.bd ]
  %.sroa.0201.sroa.24.4 = phi i64 [ %.sroa.0201.sroa.24.3, %bb.au ], [ %.sroa.0201.sroa.24.0.copyload836, %bb.bd ]
  %.sroa.16.4 = phi i64 [ %.sroa.16.3, %bb.au ], [ %.sroa.16.0.copyload219, %bb.bd ]
  %.sroa.17.4 = phi i64 [ %.sroa.17.3, %bb.au ], [ %.sroa.17.0.copyload243, %bb.bd ]
  store i64 %.sroa.0201.sroa.0.4, ptr %3, align 8
  %.sroa.0301.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.0201.sroa.16.4, ptr %.sroa.0301.sroa.2.0..sroa_idx, align 8
  %.sroa.0301.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.0201.sroa.17.4, ptr %.sroa.0301.sroa.3.0..sroa_idx, align 8
  %.sroa.0301.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.sroa.0201.sroa.18.4, ptr %.sroa.0301.sroa.4.0..sroa_idx, align 8
  %.sroa.0301.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.sroa.0201.sroa.19.4, ptr %.sroa.0301.sroa.5.0..sroa_idx, align 8
  %.sroa.0301.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %.sroa.0201.sroa.20.4, ptr %.sroa.0301.sroa.6.0..sroa_idx, align 8
  %.sroa.0301.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %.sroa.0201.sroa.21.4, ptr %.sroa.0301.sroa.7.0..sroa_idx, align 8
  %.sroa.0301.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %.sroa.0201.sroa.22.4, ptr %.sroa.0301.sroa.8.0..sroa_idx, align 8
  %.sroa.0301.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %.sroa.0201.sroa.23.4, ptr %.sroa.0301.sroa.9.0..sroa_idx, align 8
  %.sroa.0301.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %.sroa.0201.sroa.24.4, ptr %.sroa.0301.sroa.10.0..sroa_idx, align 8
  %.sroa.2302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %.sroa.16.4, ptr %.sroa.2302.0..sroa_idx, align 8
  %.sroa.3303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %.sroa.17.4, ptr %.sroa.3303.0..sroa_idx, align 8
  %.sroa.4304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %.sroa.18.sroa.0.4, ptr %.sroa.4304.0..sroa_idx, align 8
  %.sroa.4304.sroa.2.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4304.sroa.2.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.18.sroa.16, i64 120, i1 false)
  %.sroa.4304.sroa.3.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 224
  store i64 %.sroa.18.sroa.17.4, ptr %.sroa.4304.sroa.3.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.4.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4304.sroa.4.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.18, i64 16, i1 false)
  %.sroa.4304.sroa.5.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 248
  store i64 %.sroa.18.sroa.19.4, ptr %.sroa.4304.sroa.5.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.6.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4304.sroa.6.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.20, i64 16, i1 false)
  %.sroa.4304.sroa.7.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i64 %.sroa.18.sroa.21.4, ptr %.sroa.4304.sroa.7.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.8.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4304.sroa.8.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.22, i64 16, i1 false)
  %.sroa.4304.sroa.9.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 296
  store i64 %.sroa.18.sroa.23.4, ptr %.sroa.4304.sroa.9.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.10.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4304.sroa.10.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.24, i64 16, i1 false)
  %.sroa.4304.sroa.11.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 320
  store i32 %.sroa.18.sroa.25.4, ptr %.sroa.4304.sroa.11.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.12.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 324
  store i32 %.sroa.18.sroa.26.4, ptr %.sroa.4304.sroa.12.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %.sroa.4304.sroa.13.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 328
  store i32 %.sroa.18.sroa.27.4, ptr %.sroa.4304.sroa.13.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.14.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 332
  store i32 %.sroa.18.sroa.28.4, ptr %.sroa.4304.sroa.14.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %.sroa.4304.sroa.15.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 336
  store i32 %.sroa.18.sroa.29.4, ptr %.sroa.4304.sroa.15.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.16.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 340
  store i32 %.sroa.18.sroa.30.4, ptr %.sroa.4304.sroa.16.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %.sroa.4304.sroa.17.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 344
  store i32 %.sroa.18.sroa.31.4, ptr %.sroa.4304.sroa.17.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.18.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 348
  store i32 %.sroa.18.sroa.32.4, ptr %.sroa.4304.sroa.18.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %.sroa.4304.sroa.19.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 352
  store ptr %.sroa.18.sroa.33.4, ptr %.sroa.4304.sroa.19.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.20.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 360
  store i64 %.sroa.18.sroa.34.4, ptr %.sroa.4304.sroa.20.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.21.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 368
  store i64 %.sroa.18.sroa.35.4, ptr %.sroa.4304.sroa.21.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.22.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 376
  store i64 %.sroa.18.sroa.36.4, ptr %.sroa.4304.sroa.22.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.23.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 384
  store i64 %.sroa.18.sroa.37.4, ptr %.sroa.4304.sroa.23.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.24.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 392
  store i64 %.sroa.18.sroa.38.4, ptr %.sroa.4304.sroa.24.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.25.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 400
  store i64 %.sroa.18.sroa.39.4, ptr %.sroa.4304.sroa.25.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.26.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 408
  store i32 %.sroa.18.sroa.40.4, ptr %.sroa.4304.sroa.26.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.27.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 412
  store i32 %.sroa.18.sroa.41.4, ptr %.sroa.4304.sroa.27.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 648
  %i.fh = load i64, ptr %i.fg, align 8, !range !57, !noundef !3
  %.not147 = icmp eq i64 %i.fh, -9223372036854775808
  br i1 %.not147, label %.loopexit, label %bb.bh

bb.bf:                                            ; preds = %bb.ba
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %.body.thread, %bb.bn, %bb.bf, %.critedge, %bb.cw, %bb.cv, %bb.cu, %bb.cq, %.body191, %bb.co, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174, %.body187
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 656
  %i.fl = load ptr, ptr %i.fk, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !3 ; 2 uses
  %.idx = mul i64 %i.fn, 24                       ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx
  %i.fp = icmp eq i64 %i.fn, 0
  br i1 %i.fp, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bh
  %i.fq = sub i64 %i.dd, %.                       ; 9 uses
  %i.fr = add i64 %.idx, -24                      ; 2 uses
  %i.fs = udiv i64 %i.fr, 24
  %i.ft = add nuw nsw i64 %i.fs, 1
  %xtraiter = and i64 %i.ft, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.sroa.078.0324.prol = phi ptr [ %i.fu, %.prol.preheader ], [ %i.fl, %.lr.ph ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.078.0324.prol, i64 24 ; 2 uses
  %i.fv = load i64, ptr %.sroa.078.0324.prol, align 8, !noundef !3
  %i.fw = add i64 %i.fq, %i.fv
  store i64 %i.fw, ptr %.sroa.078.0324.prol, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !495

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.sroa.078.0324.unr = phi ptr [ %i.fl, %.lr.ph ], [ %i.fu, %.prol.preheader ]
  %i.fx = icmp ult i64 %i.fr, 168
  br i1 %i.fx, label %.loopexit, label %.lr.ph.new

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %bb.bh, %bb.be
  %i.fy = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 56)
          to label %bb.bj unwind label %bb.bi     ; 3 uses

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.sroa.078.0324 = phi ptr [ %i.gu, %.lr.ph.new ], [ %.sroa.078.0324.unr, %.prol.loopexit ] ; 10 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 24 ; 2 uses
  %i.ga = load i64, ptr %.sroa.078.0324, align 8, !noundef !3
  %i.gb = add i64 %i.fq, %i.ga
  store i64 %i.gb, ptr %.sroa.078.0324, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 48 ; 2 uses
  %i.gd = load i64, ptr %i.fz, align 8, !noundef !3
  %i.ge = add i64 %i.fq, %i.gd
  store i64 %i.ge, ptr %i.fz, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 72 ; 2 uses
  %i.gg = load i64, ptr %i.gc, align 8, !noundef !3
  %i.gh = add i64 %i.fq, %i.gg
  store i64 %i.gh, ptr %i.gc, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 96 ; 2 uses
  %i.gj = load i64, ptr %i.gf, align 8, !noundef !3
  %i.gk = add i64 %i.fq, %i.gj
  store i64 %i.gk, ptr %i.gf, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 120 ; 2 uses
  %i.gm = load i64, ptr %i.gi, align 8, !noundef !3
  %i.gn = add i64 %i.fq, %i.gm
  store i64 %i.gn, ptr %i.gi, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 144 ; 2 uses
  %i.gp = load i64, ptr %i.gl, align 8, !noundef !3
  %i.gq = add i64 %i.fq, %i.gp
  store i64 %i.gq, ptr %i.gl, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 168 ; 2 uses
  %i.gs = load i64, ptr %i.go, align 8, !noundef !3
  %i.gt = add i64 %i.fq, %i.gs
  store i64 %i.gt, ptr %i.go, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 192 ; 2 uses
  %i.gv = load i64, ptr %i.gr, align 8, !noundef !3
  %i.gw = add i64 %i.fq, %i.gv
  store i64 %i.gw, ptr %i.gr, align 8
  %i.gx = icmp eq ptr %i.gu, %i.fo
  br i1 %i.gx, label %.loopexit, label %.lr.ph.new

bb.bi:                                            ; preds = %.loopexit, %bb.bj
  %.sroa.089.6 = phi i8 [ 0, %bb.bj ], [ 1, %.loopexit ] ; 2 uses
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174

bb.bj:                                            ; preds = %.loopexit
  %4 = getelementptr i8, ptr %1, <6 x i64> <i64 136, i64 144, i64 16, i64 40, i64 64, i64 88>
  store <6 x ptr> %4, ptr %i.fy, align 8
  %.sroa.9293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store ptr %1, ptr %.sroa.9293.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.g, ptr noundef nonnull align 8 dereferenceable(712) %3, i64 712, i1 false)
  invoke void @_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtNtCs4tdlwR1I4n2_7parquet6column6writer17ColumnCloseResultEEp6OutputINtNtBP_6result6ResultuNtNtB1z_6errors12ParquetErrorEEL_EIBJ_B1s_E9call_onceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %i.fy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.g)
          to label %bb.bk unwind label %bb.bi

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.x)
          to label %bb.bl unwind label %bb.r

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(416) %i.ab)
          to label %bb.bp unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bo, %.body187
  %.sroa.081.7 = phi i8 [ 0, %bb.bo ], [ %.sroa.081.2, %.body187 ] ; 2 uses
  %.sroa.089.7 = phi i8 [ %.sroa.089.8, %bb.bo ], [ %.sroa.089.2, %.body187 ] ; 2 uses
  %.pn153 = phi { ptr, i32 } [ %i.hc, %bb.bo ], [ %.pn151, %.body187 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.gz = load ptr, ptr %i.ac, align 8, !alias.scope !502, !nonnull !3, !noundef !3
  %i.ha = atomicrmw sub ptr %i.gz, i64 1 release, align 8, !noalias !502
  %i.hb = icmp eq i64 %i.ha, 1
  br i1 %i.hb, label %bb.bn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac) #61
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bg

bb.bo:                                            ; preds = %bb.ch, %bb.bl
  %.sroa.089.8 = phi i8 [ 1, %bb.ch ], [ 0, %bb.bl ]
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bp:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.hd = load ptr, ptr %i.ac, align 8, !alias.scope !509, !nonnull !3, !noundef !3
  %i.he = atomicrmw sub ptr %i.hd, i64 1 release, align 8, !noalias !509
  %i.hf = icmp eq i64 %i.he, 1
  br i1 %i.hf, label %bb.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit177

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac) #61
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit177 unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit177: ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.br

bb.br:                                            ; preds = %bb.cs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit177
  ret void

.body.thread:                                     ; preds = %bb.aw, %.body.thread320
  %eh.lpad-body319 = phi { ptr, i32 } [ %i.ey, %.body.thread320 ], [ %i.fd, %bb.aw ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bs:                                            ; preds = %bb.ao
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bt:                                            ; preds = %bb.aj
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bu:                                            ; preds = %bb.ae
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bv:                                            ; preds = %bb.ab
  %i.hj = load i64, ptr %i.e, align 8, !range !381, !noundef !3
  %i.hk = trunc nuw i64 %i.hj to i1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !range !57, !noundef !3 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.hk, label %bb.bw, label %bb.bx, !prof !21

bb.bw:                                            ; preds = %bb.bv
  %i.ho = load i64, ptr %i.hn, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hm, i64 %i.ho) #60
          to label %bb.cf unwind label %bb.w

bb.bx:                                            ; preds = %bb.bv
  %i.hp = load ptr, ptr %i.hn, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.hq = icmp samesign ugt i64 %i.hm, 70
  call void @llvm.assume(i1 %i.hq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.hp, ptr noundef nonnull align 1 dereferenceable(71) @3, i64 71, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hm, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hp, ptr %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx, align 8
  %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 71, ptr %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.cg, %bb.bx
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.3200.0..sroa_idx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.hs = load i64, ptr %i.x, align 8, !range !381, !alias.scope !513, !noundef !3
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %.body187, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.hu = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !523, !noundef !3 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %.body187, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !530, !nonnull !3, !noundef !3
  %i.hy = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !531, !noundef !3
  %i.ib = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !531, !noundef !3
  invoke void %i.hx(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef %i.ia, i64 noundef %i.ic)
          to label %.body187 unwind label %bb.ce, !inline_history !443

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.id = load i64, ptr %i.x, align 8, !range !381, !alias.scope !535, !noundef !3
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.if = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !539, !noundef !3 ; 2 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !546, !nonnull !3, !noundef !3
  %i.ij = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !547, !noundef !3
  %i.im = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.in = load i64, ptr %i.im, align 8, !alias.scope !547, !noundef !3
  invoke void %i.ii(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef %i.il, i64 noundef %i.in)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r, !inline_history !460

bb.ce:                                            ; preds = %bb.cb
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.cf:                                            ; preds = %bb.bw
  unreachable

bb.cg:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.by

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.cd, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ch

bb.ch:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(416) %i.ab)
          to label %bb.ci unwind label %bb.bo

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXsx_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.ch

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB6_24SerializedRowGroupWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE13append_columnNtNtNtBa_5arrow12arrow_writer20ArrowColumnChunkDataECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.18.sroa.26.0.copyload431 = load i32, ptr %.sroa.18.sroa.26.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  %.sroa.18.sroa.27.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  %.sroa.18.sroa.27.0.copyload444 = load i32, ptr %.sroa.18.sroa.27.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.28.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 332
  %.sroa.18.sroa.28.0.copyload457 = load i32, ptr %.sroa.18.sroa.28.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  %.sroa.18.sroa.29.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 336
  %.sroa.18.sroa.29.0.copyload470 = load i32, ptr %.sroa.18.sroa.29.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.30.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 340
  %.sroa.18.sroa.30.0.copyload483 = load i32, ptr %.sroa.18.sroa.30.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  %.sroa.18.sroa.31.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  %.sroa.18.sroa.31.0.copyload496 = load i32, ptr %.sroa.18.sroa.31.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.32.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 348
  %.sroa.18.sroa.32.0.copyload509 = load i32, ptr %.sroa.18.sroa.32.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  %.sroa.18.sroa.33.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  %.sroa.18.sroa.33.0.copyload522 = load ptr, ptr %.sroa.18.sroa.33.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.34.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 360
  %.sroa.18.sroa.34.0.copyload535 = load i64, ptr %.sroa.18.sroa.34.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.35.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  %.sroa.18.sroa.35.0.copyload548 = load i64, ptr %.sroa.18.sroa.35.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.36.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 376
  %.sroa.18.sroa.36.0.copyload561 = load i64, ptr %.sroa.18.sroa.36.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.37.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  %.sroa.18.sroa.37.0.copyload574 = load i64, ptr %.sroa.18.sroa.37.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.38.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 392
  %.sroa.18.sroa.38.0.copyload587 = load i64, ptr %.sroa.18.sroa.38.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.39.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 400
  %.sroa.18.sroa.39.0.copyload600 = load i64, ptr %.sroa.18.sroa.39.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.40.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  %.sroa.18.sroa.40.0.copyload613 = load i32, ptr %.sroa.18.sroa.40.0..sroa.18.0..sroa_idx258.sroa_idx, align 8
  %.sroa.18.sroa.41.0..sroa.18.0..sroa_idx258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 412
  %.sroa.18.sroa.41.0.copyload626 = load i32, ptr %.sroa.18.sroa.41.0..sroa.18.0..sroa_idx258.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.be

bb.be:                                            ; preds = %bb.au, %bb.bd
  %.sroa.18.sroa.0.4 = phi i64 [ %.sroa.18.sroa.0.3, %bb.au ], [ %.sroa.18.sroa.0.0.copyload349, %bb.bd ]
  %.sroa.18.sroa.17.4 = phi i64 [ %.sroa.18.sroa.17.3, %bb.au ], [ %.sroa.18.sroa.17.0.copyload362, %bb.bd ]
  %.sroa.18.sroa.19.4 = phi i64 [ %.sroa.18.sroa.19.3, %bb.au ], [ %.sroa.18.sroa.19.0.copyload376, %bb.bd ]
  %.sroa.18.sroa.21.4 = phi i64 [ %.sroa.18.sroa.21.3, %bb.au ], [ %.sroa.18.sroa.21.0.copyload390, %bb.bd ]
  %.sroa.18.sroa.23.4 = phi i64 [ %.sroa.18.sroa.23.3, %bb.au ], [ %.sroa.18.sroa.23.0.copyload404, %bb.bd ]
  %.sroa.18.sroa.25.4 = phi i32 [ %.sroa.18.sroa.25.3, %bb.au ], [ %.sroa.18.sroa.25.0.copyload418, %bb.bd ]
  %.sroa.18.sroa.26.4 = phi i32 [ %.sroa.18.sroa.26.3, %bb.au ], [ %.sroa.18.sroa.26.0.copyload431, %bb.bd ]
  %.sroa.18.sroa.27.4 = phi i32 [ %.sroa.18.sroa.27.3, %bb.au ], [ %.sroa.18.sroa.27.0.copyload444, %bb.bd ]
  %.sroa.18.sroa.28.4 = phi i32 [ %.sroa.18.sroa.28.3, %bb.au ], [ %.sroa.18.sroa.28.0.copyload457, %bb.bd ]
  %.sroa.18.sroa.29.4 = phi i32 [ %.sroa.18.sroa.29.3, %bb.au ], [ %.sroa.18.sroa.29.0.copyload470, %bb.bd ]
  %.sroa.18.sroa.30.4 = phi i32 [ %.sroa.18.sroa.30.3, %bb.au ], [ %.sroa.18.sroa.30.0.copyload483, %bb.bd ]
  %.sroa.18.sroa.31.4 = phi i32 [ %.sroa.18.sroa.31.3, %bb.au ], [ %.sroa.18.sroa.31.0.copyload496, %bb.bd ]
  %.sroa.18.sroa.32.4 = phi i32 [ %.sroa.18.sroa.32.3, %bb.au ], [ %.sroa.18.sroa.32.0.copyload509, %bb.bd ]
  %.sroa.18.sroa.33.4 = phi ptr [ %.sroa.18.sroa.33.3, %bb.au ], [ %.sroa.18.sroa.33.0.copyload522, %bb.bd ]
  %.sroa.18.sroa.34.4 = phi i64 [ %.sroa.18.sroa.34.3, %bb.au ], [ %.sroa.18.sroa.34.0.copyload535, %bb.bd ]
  %.sroa.18.sroa.35.4 = phi i64 [ %.sroa.18.sroa.35.3, %bb.au ], [ %.sroa.18.sroa.35.0.copyload548, %bb.bd ]
  %.sroa.18.sroa.36.4 = phi i64 [ %.sroa.18.sroa.36.3, %bb.au ], [ %.sroa.18.sroa.36.0.copyload561, %bb.bd ]
  %.sroa.18.sroa.37.4 = phi i64 [ %.sroa.18.sroa.37.3, %bb.au ], [ %.sroa.18.sroa.37.0.copyload574, %bb.bd ]
  %.sroa.18.sroa.38.4 = phi i64 [ %.sroa.18.sroa.38.3, %bb.au ], [ %.sroa.18.sroa.38.0.copyload587, %bb.bd ]
  %.sroa.18.sroa.39.4 = phi i64 [ %.sroa.18.sroa.39.3, %bb.au ], [ %.sroa.18.sroa.39.0.copyload600, %bb.bd ]
  %.sroa.18.sroa.40.4 = phi i32 [ %.sroa.18.sroa.40.3, %bb.au ], [ %.sroa.18.sroa.40.0.copyload613, %bb.bd ]
  %.sroa.18.sroa.41.4 = phi i32 [ %.sroa.18.sroa.41.3, %bb.au ], [ %.sroa.18.sroa.41.0.copyload626, %bb.bd ]
  %.sroa.0201.sroa.0.4 = phi i64 [ %.sroa.0201.sroa.0.3, %bb.au ], [ %.sroa.0201.sroa.0.0.copyload639, %bb.bd ]
  %.sroa.0201.sroa.16.4 = phi i64 [ %.sroa.0201.sroa.16.3, %bb.au ], [ %.sroa.0201.sroa.16.0.copyload660, %bb.bd ]
  %.sroa.0201.sroa.17.4 = phi i64 [ %.sroa.0201.sroa.17.3, %bb.au ], [ %.sroa.0201.sroa.17.0.copyload682, %bb.bd ]
  %.sroa.0201.sroa.18.4 = phi i64 [ %.sroa.0201.sroa.18.3, %bb.au ], [ %.sroa.0201.sroa.18.0.copyload704, %bb.bd ]
  %.sroa.0201.sroa.19.4 = phi i64 [ %.sroa.0201.sroa.19.3, %bb.au ], [ %.sroa.0201.sroa.19.0.copyload726, %bb.bd ]
  %.sroa.0201.sroa.20.4 = phi i64 [ %.sroa.0201.sroa.20.3, %bb.au ], [ %.sroa.0201.sroa.20.0.copyload748, %bb.bd ]
  %.sroa.0201.sroa.21.4 = phi i64 [ %.sroa.0201.sroa.21.3, %bb.au ], [ %.sroa.0201.sroa.21.0.copyload770, %bb.bd ]
  %.sroa.0201.sroa.22.4 = phi i64 [ %.sroa.0201.sroa.22.3, %bb.au ], [ %.sroa.0201.sroa.22.0.copyload792, %bb.bd ]
  %.sroa.0201.sroa.23.4 = phi i64 [ %.sroa.0201.sroa.23.3, %bb.au ], [ %.sroa.0201.sroa.23.0.copyload814, %bb.bd ]
  %.sroa.0201.sroa.24.4 = phi i64 [ %.sroa.0201.sroa.24.3, %bb.au ], [ %.sroa.0201.sroa.24.0.copyload836, %bb.bd ]
  %.sroa.16.4 = phi i64 [ %.sroa.16.3, %bb.au ], [ %.sroa.16.0.copyload219, %bb.bd ]
  %.sroa.17.4 = phi i64 [ %.sroa.17.3, %bb.au ], [ %.sroa.17.0.copyload243, %bb.bd ]
  store i64 %.sroa.0201.sroa.0.4, ptr %3, align 8
  %.sroa.0301.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.0201.sroa.16.4, ptr %.sroa.0301.sroa.2.0..sroa_idx, align 8
  %.sroa.0301.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.0201.sroa.17.4, ptr %.sroa.0301.sroa.3.0..sroa_idx, align 8
  %.sroa.0301.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.sroa.0201.sroa.18.4, ptr %.sroa.0301.sroa.4.0..sroa_idx, align 8
  %.sroa.0301.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.sroa.0201.sroa.19.4, ptr %.sroa.0301.sroa.5.0..sroa_idx, align 8
  %.sroa.0301.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %.sroa.0201.sroa.20.4, ptr %.sroa.0301.sroa.6.0..sroa_idx, align 8
  %.sroa.0301.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %.sroa.0201.sroa.21.4, ptr %.sroa.0301.sroa.7.0..sroa_idx, align 8
  %.sroa.0301.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %.sroa.0201.sroa.22.4, ptr %.sroa.0301.sroa.8.0..sroa_idx, align 8
  %.sroa.0301.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %.sroa.0201.sroa.23.4, ptr %.sroa.0301.sroa.9.0..sroa_idx, align 8
  %.sroa.0301.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %.sroa.0201.sroa.24.4, ptr %.sroa.0301.sroa.10.0..sroa_idx, align 8
  %.sroa.2302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %.sroa.16.4, ptr %.sroa.2302.0..sroa_idx, align 8
  %.sroa.3303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %.sroa.17.4, ptr %.sroa.3303.0..sroa_idx, align 8
  %.sroa.4304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %.sroa.18.sroa.0.4, ptr %.sroa.4304.0..sroa_idx, align 8
  %.sroa.4304.sroa.2.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4304.sroa.2.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.18.sroa.16, i64 120, i1 false)
  %.sroa.4304.sroa.3.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 224
  store i64 %.sroa.18.sroa.17.4, ptr %.sroa.4304.sroa.3.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.4.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4304.sroa.4.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.18, i64 16, i1 false)
  %.sroa.4304.sroa.5.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 248
  store i64 %.sroa.18.sroa.19.4, ptr %.sroa.4304.sroa.5.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.6.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4304.sroa.6.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.20, i64 16, i1 false)
  %.sroa.4304.sroa.7.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i64 %.sroa.18.sroa.21.4, ptr %.sroa.4304.sroa.7.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.8.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4304.sroa.8.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.22, i64 16, i1 false)
  %.sroa.4304.sroa.9.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 296
  store i64 %.sroa.18.sroa.23.4, ptr %.sroa.4304.sroa.9.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.10.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4304.sroa.10.0..sroa.4304.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.24, i64 16, i1 false)
  %.sroa.4304.sroa.11.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 320
  store i32 %.sroa.18.sroa.25.4, ptr %.sroa.4304.sroa.11.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.12.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 324
  store i32 %.sroa.18.sroa.26.4, ptr %.sroa.4304.sroa.12.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %.sroa.4304.sroa.13.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 328
  store i32 %.sroa.18.sroa.27.4, ptr %.sroa.4304.sroa.13.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.14.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 332
  store i32 %.sroa.18.sroa.28.4, ptr %.sroa.4304.sroa.14.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %.sroa.4304.sroa.15.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 336
  store i32 %.sroa.18.sroa.29.4, ptr %.sroa.4304.sroa.15.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.16.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 340
  store i32 %.sroa.18.sroa.30.4, ptr %.sroa.4304.sroa.16.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %.sroa.4304.sroa.17.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 344
  store i32 %.sroa.18.sroa.31.4, ptr %.sroa.4304.sroa.17.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.18.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 348
  store i32 %.sroa.18.sroa.32.4, ptr %.sroa.4304.sroa.18.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %.sroa.4304.sroa.19.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 352
  store ptr %.sroa.18.sroa.33.4, ptr %.sroa.4304.sroa.19.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.20.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 360
  store i64 %.sroa.18.sroa.34.4, ptr %.sroa.4304.sroa.20.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.21.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 368
  store i64 %.sroa.18.sroa.35.4, ptr %.sroa.4304.sroa.21.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.22.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 376
  store i64 %.sroa.18.sroa.36.4, ptr %.sroa.4304.sroa.22.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.23.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 384
  store i64 %.sroa.18.sroa.37.4, ptr %.sroa.4304.sroa.23.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.24.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 392
  store i64 %.sroa.18.sroa.38.4, ptr %.sroa.4304.sroa.24.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.25.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 400
  store i64 %.sroa.18.sroa.39.4, ptr %.sroa.4304.sroa.25.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.26.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 408
  store i32 %.sroa.18.sroa.40.4, ptr %.sroa.4304.sroa.26.0..sroa.4304.0..sroa_idx.sroa_idx, align 8
  %.sroa.4304.sroa.27.0..sroa.4304.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 412
  store i32 %.sroa.18.sroa.41.4, ptr %.sroa.4304.sroa.27.0..sroa.4304.0..sroa_idx.sroa_idx, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 648
  %i.fh = load i64, ptr %i.fg, align 8, !range !57, !noundef !3
  %.not147 = icmp eq i64 %i.fh, -9223372036854775808
  br i1 %.not147, label %.loopexit, label %bb.bh

bb.bf:                                            ; preds = %bb.ba
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %.body.thread, %bb.bn, %bb.bf, %.critedge, %bb.cw, %bb.cv, %bb.cu, %bb.cq, %.body191, %bb.co, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174, %.body187
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 656
  %i.fl = load ptr, ptr %i.fk, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !3 ; 2 uses
  %.idx = mul i64 %i.fn, 24                       ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx
  %i.fp = icmp eq i64 %i.fn, 0
  br i1 %i.fp, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bh
  %i.fq = sub i64 %i.dd, %.                       ; 9 uses
  %i.fr = add i64 %.idx, -24                      ; 2 uses
  %i.fs = udiv i64 %i.fr, 24
  %i.ft = add nuw nsw i64 %i.fs, 1
  %xtraiter = and i64 %i.ft, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.sroa.078.0324.prol = phi ptr [ %i.fu, %.prol.preheader ], [ %i.fl, %.lr.ph ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.078.0324.prol, i64 24 ; 2 uses
  %i.fv = load i64, ptr %.sroa.078.0324.prol, align 8, !noundef !3
  %i.fw = add i64 %i.fq, %i.fv
  store i64 %i.fw, ptr %.sroa.078.0324.prol, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !582

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.sroa.078.0324.unr = phi ptr [ %i.fl, %.lr.ph ], [ %i.fu, %.prol.preheader ]
  %i.fx = icmp ult i64 %i.fr, 168
  br i1 %i.fx, label %.loopexit, label %.lr.ph.new

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %bb.bh, %bb.be
  %i.fy = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 56)
          to label %bb.bj unwind label %bb.bi     ; 3 uses

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.sroa.078.0324 = phi ptr [ %i.gu, %.lr.ph.new ], [ %.sroa.078.0324.unr, %.prol.loopexit ] ; 10 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 24 ; 2 uses
  %i.ga = load i64, ptr %.sroa.078.0324, align 8, !noundef !3
  %i.gb = add i64 %i.fq, %i.ga
  store i64 %i.gb, ptr %.sroa.078.0324, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 48 ; 2 uses
  %i.gd = load i64, ptr %i.fz, align 8, !noundef !3
  %i.ge = add i64 %i.fq, %i.gd
  store i64 %i.ge, ptr %i.fz, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 72 ; 2 uses
  %i.gg = load i64, ptr %i.gc, align 8, !noundef !3
  %i.gh = add i64 %i.fq, %i.gg
  store i64 %i.gh, ptr %i.gc, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 96 ; 2 uses
  %i.gj = load i64, ptr %i.gf, align 8, !noundef !3
  %i.gk = add i64 %i.fq, %i.gj
  store i64 %i.gk, ptr %i.gf, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 120 ; 2 uses
  %i.gm = load i64, ptr %i.gi, align 8, !noundef !3
  %i.gn = add i64 %i.fq, %i.gm
  store i64 %i.gn, ptr %i.gi, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 144 ; 2 uses
  %i.gp = load i64, ptr %i.gl, align 8, !noundef !3
  %i.gq = add i64 %i.fq, %i.gp
  store i64 %i.gq, ptr %i.gl, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 168 ; 2 uses
  %i.gs = load i64, ptr %i.go, align 8, !noundef !3
  %i.gt = add i64 %i.fq, %i.gs
  store i64 %i.gt, ptr %i.go, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.078.0324, i64 192 ; 2 uses
  %i.gv = load i64, ptr %i.gr, align 8, !noundef !3
  %i.gw = add i64 %i.fq, %i.gv
  store i64 %i.gw, ptr %i.gr, align 8
  %i.gx = icmp eq ptr %i.gu, %i.fo
  br i1 %i.gx, label %.loopexit, label %.lr.ph.new

bb.bi:                                            ; preds = %.loopexit, %bb.bj
  %.sroa.089.6 = phi i8 [ 0, %bb.bj ], [ 1, %.loopexit ] ; 2 uses
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174

bb.bj:                                            ; preds = %.loopexit
  %4 = getelementptr i8, ptr %1, <6 x i64> <i64 136, i64 144, i64 16, i64 40, i64 64, i64 88>
  store <6 x ptr> %4, ptr %i.fy, align 8
  %.sroa.9293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store ptr %1, ptr %.sroa.9293.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.g, ptr noundef nonnull align 8 dereferenceable(712) %3, i64 712, i1 false)
  invoke void @_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtNtCs4tdlwR1I4n2_7parquet6column6writer17ColumnCloseResultEEp6OutputINtNtBP_6result6ResultuNtNtB1z_6errors12ParquetErrorEEL_EIBJ_B1s_E9call_onceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %i.fy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.g)
          to label %bb.bk unwind label %bb.bi

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.x)
          to label %bb.bl unwind label %bb.r

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(416) %i.ab)
          to label %bb.bp unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bo, %.body187
  %.sroa.081.7 = phi i8 [ 0, %bb.bo ], [ %.sroa.081.2, %.body187 ] ; 2 uses
  %.sroa.089.7 = phi i8 [ %.sroa.089.8, %bb.bo ], [ %.sroa.089.2, %.body187 ] ; 2 uses
  %.pn153 = phi { ptr, i32 } [ %i.hc, %bb.bo ], [ %.pn151, %.body187 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.gz = load ptr, ptr %i.ac, align 8, !alias.scope !589, !nonnull !3, !noundef !3
  %i.ha = atomicrmw sub ptr %i.gz, i64 1 release, align 8, !noalias !589
  %i.hb = icmp eq i64 %i.ha, 1
  br i1 %i.hb, label %bb.bn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac) #61
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bg

bb.bo:                                            ; preds = %bb.ch, %bb.bl
  %.sroa.089.8 = phi i8 [ 1, %bb.ch ], [ 0, %bb.bl ]
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bp:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.hd = load ptr, ptr %i.ac, align 8, !alias.scope !596, !nonnull !3, !noundef !3
  %i.he = atomicrmw sub ptr %i.hd, i64 1 release, align 8, !noalias !596
  %i.hf = icmp eq i64 %i.he, 1
  br i1 %i.hf, label %bb.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit177

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac) #61
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit177 unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit177: ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.br

bb.br:                                            ; preds = %bb.cs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEECs14kWLkQVSKO_14deltalake_core.exit177
  ret void

.body.thread:                                     ; preds = %bb.aw, %.body.thread320
  %eh.lpad-body319 = phi { ptr, i32 } [ %i.ey, %.body.thread320 ], [ %i.fd, %bb.aw ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bs:                                            ; preds = %bb.ao
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bt:                                            ; preds = %bb.aj
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bu:                                            ; preds = %bb.ae
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata26ColumnChunkMetaDataBuilderECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.bg

bb.bv:                                            ; preds = %bb.ab
  %i.hj = load i64, ptr %i.e, align 8, !range !381, !noundef !3
  %i.hk = trunc nuw i64 %i.hj to i1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !range !57, !noundef !3 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.hk, label %bb.bw, label %bb.bx, !prof !21

bb.bw:                                            ; preds = %bb.bv
  %i.ho = load i64, ptr %i.hn, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hm, i64 %i.ho) #60
          to label %bb.cf unwind label %bb.w

bb.bx:                                            ; preds = %bb.bv
  %i.hp = load ptr, ptr %i.hn, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.hq = icmp samesign ugt i64 %i.hm, 70
  call void @llvm.assume(i1 %i.hq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.hp, ptr noundef nonnull align 1 dereferenceable(71) @3, i64 71, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hm, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hp, ptr %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx, align 8
  %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 71, ptr %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.cg, %bb.bx
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.3200.0..sroa_idx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.hs = load i64, ptr %i.x, align 8, !range !381, !alias.scope !600, !noundef !3
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %.body187, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.hu = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !610, !noundef !3 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %.body187, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !617, !nonnull !3, !noundef !3
  %i.hy = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !618, !noundef !3
  %i.ib = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !618, !noundef !3
  invoke void %i.hx(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef %i.ia, i64 noundef %i.ic)
          to label %.body187 unwind label %bb.ce, !inline_history !443

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.id = load i64, ptr %i.x, align 8, !range !381, !alias.scope !622, !noundef !3
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.if = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !626, !noundef !3 ; 2 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !633, !nonnull !3, !noundef !3
  %i.ij = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !634, !noundef !3
  %i.im = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.in = load i64, ptr %i.im, align 8, !alias.scope !634, !noundef !3
  invoke void %i.ii(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef %i.il, i64 noundef %i.in)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r, !inline_history !460

bb.ce:                                            ; preds = %bb.cb
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.cf:                                            ; preds = %bb.bw
  unreachable

bb.cg:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.by

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.cd, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ch

bb.ch:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2pqxYH9ZEk8_3std2io4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECs14kWLkQVSKO_14deltalake_core.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(416) %i.ab)
          to label %bb.ci unwind label %bb.bo

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXsx_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.ch

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
end_hunk_2
begin_hunk_3_@_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2D_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph1422:                                       ; preds = %bb.fn, %bb.fo
  %.sroa.01.0.i9181421 = phi i64 [ %i.abw, %bb.fo ], [ 0, %bb.fn ] ; 3 uses
  %i.abw = add nuw nsw i64 %.sroa.01.0.i9181421, 1 ; 2 uses
  %i.abx = getelementptr inbounds nuw [656 x i8], ptr %i.abo, i64 %.sroa.01.0.i9181421 ; 2 uses
  %i.aby = getelementptr inbounds nuw [656 x i8], ptr %i.abs, i64 %.sroa.01.0.i9181421 ; 2 uses
  %i.abz = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(656) %i.abx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(656) %i.aby) #59, !inline_history !18579 ; 2 uses
  %i.aca = icmp eq i8 %i.abz, 0
  br i1 %i.aca, label %bb.fp, label %_RNvXs6A_NtCs4lawaffTVVK_9sqlparser3astNtB6_8CaseWhenNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.fp:                                            ; preds = %.lr.ph1422
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abx, i64 328
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aby, i64 328
  %i.acd = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.acb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.acc) #59, !inline_history !18579
  br label %_RNvXs6A_NtCs4lawaffTVVK_9sqlparser3astNtB6_8CaseWhenNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

_RNvXs6A_NtCs4lawaffTVVK_9sqlparser3astNtB6_8CaseWhenNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i: ; preds = %bb.fp, %.lr.ph1422
  %.sroa.0.0.i16.i = phi i8 [ %i.acd, %bb.fp ], [ %i.abz, %.lr.ph1422 ] ; 2 uses
  %i.ace = icmp eq i8 %.sroa.0.0.i16.i, 0
  br i1 %i.ace, label %bb.fo, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2D_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2D_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs6A_NtCs4lawaffTVVK_9sqlparser3astNtB6_8CaseWhenNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i, %._crit_edge
  %.sroa.0.0.i920 = phi i8 [ %i.abv, %._crit_edge ], [ %.sroa.0.0.i16.i, %_RNvXs6A_NtCs4lawaffTVVK_9sqlparser3astNtB6_8CaseWhenNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i ] ; 2 uses
  %i.acf = icmp eq i8 %.sroa.0.0.i920, 0
  br i1 %i.acf, label %bb.fr, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.fq:                                            ; preds = %bb.fl
  %i.acg = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.hw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.hy) #59 ; 2 uses
  %i.ach = icmp eq i8 %i.acg, 0
  br i1 %i.ach, label %bb.fn, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.fr:                                            ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2D_s_0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.aci = getelementptr inbounds nuw i8, ptr %.tr603, i64 216
  %i.acj = load ptr, ptr %i.aci, align 8, !align !356, !noundef !3 ; 2 uses
  %.not287 = icmp eq ptr %i.acj, null
  %i.ack = getelementptr inbounds nuw i8, ptr %.tr376604, i64 216
  %i.acl = load ptr, ptr %i.ack, align 8, !align !356, !noundef !3 ; 3 uses
  br i1 %.not287, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %.not289 = icmp eq ptr %i.acl, null
  br i1 %.not289, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %tailrecurse.backedge

bb.ft:                                            ; preds = %bb.fr
  %.not288 = icmp ne ptr %i.acl, null
  %.343 = sext i1 %.not288 to i8
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.fu:                                            ; preds = %bb.at
  %i.acm = getelementptr inbounds nuw i8, ptr %.tr603, i64 16
  %i.acn = load i8, ptr %i.acm, align 8, !range !804, !noundef !3
  %i.aco = getelementptr inbounds nuw i8, ptr %.tr376604, i64 16
  %i.acp = load i8, ptr %i.aco, align 8, !range !804, !noundef !3
  %i.acq = sub nsw i8 %i.acn, %i.acp
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.fv:                                            ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2z_s_0ECs14kWLkQVSKO_14deltalake_core.exit887
  %i.acr = getelementptr inbounds nuw i8, ptr %.tr603, i64 40
  %i.acs = load ptr, ptr %i.acr, align 8, !nonnull !3, !noundef !3
  %i.act = getelementptr inbounds nuw i8, ptr %.tr603, i64 48
  %i.acu = load i64, ptr %i.act, align 8, !noundef !3
  %i.acv = getelementptr inbounds nuw i8, ptr %.tr376604, i64 40
  %i.acw = load ptr, ptr %i.acv, align 8, !nonnull !3, !noundef !3
  %i.acx = getelementptr inbounds nuw i8, ptr %.tr376604, i64 48
  %i.acy = load i64, ptr %i.acx, align 8, !noundef !3
  %i.acz = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.acs, i64 noundef %i.acu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.acw, i64 noundef %i.acy) #59
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.fw:                                            ; preds = %bb.bc
  %i.ada = getelementptr inbounds nuw i8, ptr %.tr376604, i64 8
  %i.adb = getelementptr inbounds nuw i8, ptr %.tr603, i64 8
  %i.adc = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.adb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ada)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.fx:                                            ; preds = %bb.bh
  %i.add = getelementptr inbounds nuw i8, ptr %.tr376604, i64 32
  %i.ade = getelementptr inbounds nuw i8, ptr %.tr603, i64 32
  %i.adf = tail call fastcc noundef i8 @_RNvXso_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ade, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.add) #59 ; 2 uses
  %i.adg = icmp eq i8 %i.adf, 0
  br i1 %i.adg, label %bb.fy, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.fy:                                            ; preds = %bb.fx
  %i.adh = getelementptr inbounds nuw i8, ptr %.tr603, i64 80
  %i.adi = load i8, ptr %i.adh, align 8, !range !2347, !noundef !3 ; 2 uses
  %.not281 = icmp eq i8 %i.adi, 4
  %i.adj = getelementptr inbounds nuw i8, ptr %.tr376604, i64 80
  %i.adk = load i8, ptr %i.adj, align 8, !range !2347, !noundef !3 ; 3 uses
  br i1 %.not281, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %.not283 = icmp eq i8 %i.adk, 4
  br i1 %.not283, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.gb

bb.ga:                                            ; preds = %bb.fy
  %.not282 = icmp ne i8 %i.adk, 4
  %.344 = sext i1 %.not282 to i8
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.gb:                                            ; preds = %bb.fz
  %i.adl = zext nneg i8 %i.adi to i64
  %i.adm = zext nneg i8 %i.adk to i64
  %i.adn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.adl, i64 %i.adm)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RNvXs6Q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly captures(none) dereferenceable(3) %0, ptr noalias noundef nonnull readonly captures(none) dereferenceable(3) %1) unnamed_addr #21 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !363, !noundef !3 ; 2 uses
  %.not = icmp eq i8 %i.a, 2
  %i.b = load i8, ptr %1, align 1, !range !363, !noundef !3 ; 2 uses
  %.not4 = icmp eq i8 %i.b, 2                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not4, label %bb.l, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not4, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !range !363, !noundef !3 ; 2 uses
  %.not6 = icmp eq i8 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !363, !noundef !3 ; 2 uses
  %.not7 = icmp eq i8 %i.f, 2                     ; 2 uses
  br i1 %.not6, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = sub nsw i8 %i.a, %i.b                    ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.l

bb.f:                                             ; preds = %bb.d
  br i1 %.not7, label %bb.l, label %bb.i

bb.g:                                             ; preds = %bb.d
  br i1 %.not7, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g, %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1, !range !363, !noundef !3 ; 2 uses
  %.not9 = icmp eq i8 %i.j, 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i8, ptr %i.k, align 1, !range !363, !noundef !3 ; 3 uses
  br i1 %.not9, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.m = sub nsw i8 %i.d, %i.f                    ; 2 uses
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not11 = icmp eq i8 %i.l, 2
  %i.o = sub nsw i8 %i.j, %i.l
  %spec.select = select i1 %.not11, i8 1, i8 %i.o
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %.not10 = icmp ne i8 %i.l, 2
  %. = sext i1 %.not10 to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f, %bb.g, %bb.e, %bb.b, %bb.c, %bb.i
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ %spec.select, %bb.j ], [ -1, %bb.c ], [ %., %bb.k ], [ 1, %bb.f ], [ %i.m, %bb.i ], [ -1, %bb.g ], [ %i.g, %bb.e ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsNtB5_10StatisticsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.sroa.4.i22 = alloca [24 x i8], align 8 ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.sroa.4.i = alloca [24 x i8], align 8   ; 2 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.52.i = alloca [12 x i8], align 4         ; 2 uses
  %.sroa.5.i = alloca [12 x i8], align 4          ; 2 uses
  %i.g = load i64, ptr %1, align 8, !range !2571, !noundef !3 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  switch i64 %i.g, label %default.unreachable128 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.z
  ]

default.unreachable128:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.j = load i8, ptr %i.i, align 1, !range !363, !alias.scope !18580, !noalias !18583, !noundef !3
  %i.k = load i64, ptr %i.h, align 8, !range !381, !alias.scope !18580, !noalias !18583, !noundef !3 ; 2 uses
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !18580, !noalias !18583
  %.sroa.5.0.i = select i1 %i.l, i64 %i.n, i64 undef
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !range !381, !alias.scope !18580, !noalias !18583, !noundef !3 ; 2 uses
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !18580, !noalias !18583
  %.sroa.54.0.i = select i1 %i.q, i64 %i.s, i64 undef
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.54.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = load <5 x i8>, ptr %i.t, align 8, !alias.scope !18580, !noalias !18583
  store <5 x i8> %2, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i32, ptr %i.v, align 8, !range !18585, !alias.scope !18586, !noalias !18589, !noundef !3 ; 2 uses
  %i.x = trunc nuw i32 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !18586, !noalias !18589
  %.sroa.5.0.i1 = select i1 %i.x, i32 %i.z, i32 undef
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load i32, ptr %i.aa, align 8, !range !18585, !alias.scope !18586, !noalias !18589, !noundef !3 ; 2 uses
  %i.ac = trunc nuw i32 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !alias.scope !18586, !noalias !18589
  %.sroa.52.0.i = select i1 %i.ac, i32 %i.ae, i32 undef
  %i.af = load i64, ptr %i.h, align 8, !range !381, !alias.scope !18586, !noalias !18589, !noundef !3 ; 2 uses
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !18586, !noalias !18589
  %.sroa.54.0.i2 = select i1 %i.ag, i64 %i.ai, i64 undef
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !range !381, !alias.scope !18586, !noalias !18589, !noundef !3 ; 2 uses
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !18586, !noalias !18589
  %.sroa.56.0.i = select i1 %i.al, i64 %i.an, i64 undef
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !range !804, !alias.scope !18586, !noalias !18589, !noundef !3
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.ar = load i8, ptr %i.aq, align 1, !range !804, !alias.scope !18586, !noalias !18589, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.at = load i8, ptr %i.as, align 2, !range !804, !alias.scope !18586, !noalias !18589, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.av = load i8, ptr %i.au, align 1, !range !804, !alias.scope !18586, !noalias !18589, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.aw, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.54.0.i2, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ak, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.56.0.i, ptr %.sroa.637.0..sroa_idx, align 8
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.w, ptr %.sroa.738.0..sroa_idx, align 8
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.5.0.i1, ptr %.sroa.839.0..sroa_idx, align 4
  %.sroa.940.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ab, ptr %.sroa.940.0..sroa_idx, align 8
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.52.0.i, ptr %.sroa.1041.0..sroa_idx, align 4
  %.sroa.1142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.ap, ptr %.sroa.1142.0..sroa_idx, align 8
  %.sroa.1243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %i.ar, ptr %.sroa.1243.0..sroa_idx, align 1
  %.sroa.1344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %i.at, ptr %.sroa.1344.0..sroa_idx, align 2
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  %i.ax = load i64, ptr %i.h, align 8, !range !381, !alias.scope !18591, !noalias !18594, !noundef !3 ; 2 uses
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !18591, !noalias !18594
  %.sroa.5.0.i3 = select i1 %i.ay, i64 %i.ba, i64 undef
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !range !381, !alias.scope !18591, !noalias !18594, !noundef !3 ; 2 uses
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !18591, !noalias !18594
  %.sroa.52.0.i4 = select i1 %i.bd, i64 %i.bf, i64 undef
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !range !381, !alias.scope !18591, !noalias !18594, !noundef !3 ; 2 uses
  %i.bi = trunc nuw i64 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !18591, !noalias !18594
  %.sroa.54.0.i5 = select i1 %i.bi, i64 %i.bk, i64 undef
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !range !381, !alias.scope !18591, !noalias !18594, !noundef !3 ; 2 uses
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !18591, !noalias !18594
  %.sroa.56.0.i6 = select i1 %i.bn, i64 %i.bp, i64 undef
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.br = load i8, ptr %i.bq, align 8, !range !804, !alias.scope !18591, !noalias !18594, !noundef !3
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.bt = load i8, ptr %i.bs, align 1, !range !804, !alias.scope !18591, !noalias !18594, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.bv = load i8, ptr %i.bu, align 2, !range !804, !alias.scope !18591, !noalias !18594, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.bx = load i8, ptr %i.bw, align 1, !range !804, !alias.scope !18591, !noalias !18594, !noundef !3
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %i.by, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i3, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bc, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.52.0.i4, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bh, ptr %.sroa.749.0..sroa_idx, align 8
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.54.0.i5, ptr %.sroa.850.0..sroa_idx, align 8
  %.sroa.951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bm, ptr %.sroa.951.0..sroa_idx, align 8
  %.sroa.1052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.56.0.i6, ptr %.sroa.1052.0..sroa_idx, align 8
  %.sroa.1153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.br, ptr %.sroa.1153.0..sroa_idx, align 8
  %.sroa.1254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.bt, ptr %.sroa.1254.0..sroa_idx, align 1
  %.sroa.1355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %i.bv, ptr %.sroa.1355.0..sroa_idx, align 2
  br label %bb.ao

bb.e:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !range !18585, !alias.scope !18596, !noalias !18599, !noundef !3
  %i.cb = trunc nuw i32 %i.ca to i1
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cc, i64 12, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i32 [ 1, %bb.f ], [ 0, %bb.e ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ce = load i32, ptr %i.cd, align 8, !range !18585, !alias.scope !18596, !noalias !18599, !noundef !3
  %i.cf = trunc nuw i32 %i.ce to i1
  br i1 %i.cf, label %bb.h, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.52.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cg, i64 12, i1 false)
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g, %bb.h
  %.sroa.01.0.i = phi i32 [ 1, %bb.h ], [ 0, %bb.g ]
  %i.ch = load i64, ptr %i.h, align 8, !range !381, !alias.scope !18596, !noalias !18599, !noundef !3 ; 2 uses
  %i.ci = trunc nuw i64 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !18596, !noalias !18599
  %.sroa.54.0.i7 = select i1 %i.ci, i64 %i.ck, i64 undef
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !range !381, !alias.scope !18596, !noalias !18599, !noundef !3 ; 2 uses
  %i.cn = trunc nuw i64 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !18596, !noalias !18599
  %.sroa.56.0.i8 = select i1 %i.cn, i64 %i.cp, i64 undef
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = load i8, ptr %i.cq, align 8, !range !804, !alias.scope !18596, !noalias !18599, !noundef !3
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.ct = load i8, ptr %i.cs, align 1, !range !804, !alias.scope !18596, !noalias !18599, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.cv = load i8, ptr %i.cu, align 2, !range !804, !alias.scope !18596, !noalias !18599, !noundef !3
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.cx = load i8, ptr %i.cw, align 1, !range !804, !alias.scope !18596, !noalias !18599, !noundef !3
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ch, ptr %i.cy, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.54.0.i7, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cm, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.56.0.i8, ptr %.sroa.661.0..sroa_idx, align 8
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.0.0.i, ptr %.sroa.762.0..sroa_idx, align 8
  %.sroa.863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.863.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, i64 12, i1 false)
  %.sroa.964.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.01.0.i, ptr %.sroa.964.0..sroa_idx, align 8
  %.sroa.1065.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.1065.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.52.i, i64 12, i1 false)
  %.sroa.1166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.cr, ptr %.sroa.1166.0..sroa_idx, align 8
  %.sroa.1267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.ct, ptr %.sroa.1267.0..sroa_idx, align 1
  %.sroa.1368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %i.cv, ptr %.sroa.1368.0..sroa_idx, align 2
  br label %bb.ao

bb.i:                                             ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.da = load i32, ptr %i.cz, align 8, !range !18585, !alias.scope !18601, !noalias !18604, !noundef !3 ; 2 uses
  %i.db = trunc nuw i32 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dd = load float, ptr %i.dc, align 4, !alias.scope !18601, !noalias !18604
  %.sroa.5.0.i9 = select i1 %i.db, float %i.dd, float undef
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.df = load i32, ptr %i.de, align 8, !range !18585, !alias.scope !18601, !noalias !18604, !noundef !3 ; 2 uses
  %i.dg = trunc nuw i32 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.di = load float, ptr %i.dh, align 4, !alias.scope !18601, !noalias !18604
  %.sroa.52.0.i10 = select i1 %i.dg, float %i.di, float undef
  %i.dj = load i64, ptr %i.h, align 8, !range !381, !alias.scope !18601, !noalias !18604, !noundef !3 ; 2 uses
  %i.dk = trunc nuw i64 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !18601, !noalias !18604
  %.sroa.54.0.i11 = select i1 %i.dk, i64 %i.dm, i64 undef
end_hunk_3
