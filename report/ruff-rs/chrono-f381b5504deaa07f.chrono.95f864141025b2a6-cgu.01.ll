inline.NumInlined: 121
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor17read_optional_tag:bb.a
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.d = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.e, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp ugt i64 %3, %i.c
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 158913789955 to ptr), ptr %i.f, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = sub nuw i64 %i.c, %3
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  store ptr %i.h, ptr %1, align 8, !alias.scope !154, !noalias !157
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !154, !noalias !157
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !154, !noalias !157, !noundef !3
  %i.k = add i64 %i.j, %3
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !154, !noalias !157
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.l, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.sink = phi i8 [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor8read_tag(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !159, !noalias !162, !noundef !3 ; 2 uses
  %.not.i = icmp ugt i64 %2, %i.b
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !alias.scope !159, !noalias !162, !nonnull !3 ; 2 uses
  %i.d = sub nuw i64 %i.b, %2
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %2
  store ptr %i.e, ptr %0, align 8, !alias.scope !159, !noalias !162
  store i64 %i.d, ptr %i.a, align 8, !alias.scope !159, !noalias !162
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !159, !noalias !162, !noundef !3
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !159, !noalias !162
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %1, i64 %2)
  %i.i = icmp eq i32 %bcmp, 0
  %spec.select = select i1 %i.i, ptr null, ptr inttoptr (i64 90194313219 to ptr)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.b ], [ inttoptr (i64 158913789955 to ptr), %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parser5parse(ptr dead_on_unwind noalias noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.0132 = alloca [45 x i8], align 8         ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [48 x i8], align 4                ; 6 uses
  %i.u = alloca [72 x i8], align 8                ; 13 uses
  %i.v = alloca [24 x i8], align 8                ; 13 uses
  %i.w = alloca [24 x i8], align 8                ; 13 uses
  %i.x = alloca [72 x i8], align 8                ; 11 uses
  %i.y = alloca [72 x i8], align 8                ; 2 uses
  %i.z = alloca [24 x i8], align 8                ; 15 uses
  %i.aa = alloca [176 x i8], align 8              ; 24 uses
  %i.ab = alloca [176 x i8], align 8              ; 24 uses
  %i.ac = alloca [24 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %1, ptr %i.ac, align 8, !alias.scope !164, !noalias !167
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  store i64 %2, ptr %i.ad, align 8, !alias.scope !164, !noalias !167
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %i.ae, align 8, !alias.scope !164, !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call fastcc void @_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB2_5State3new(ptr noalias noundef align 8 captures(none) dereferenceable(176) %i.ab, ptr noalias noundef align 8 dereferenceable(24) %i.ac, i1 noundef zeroext true)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.ag = load i8, ptr %i.af, align 8, !range !169, !noundef !3 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, -1
  %.sroa.0385.0.copyload = load ptr, ptr %i.ab, align 8 ; 2 uses
  %.sroa.4386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.4386.0.copyload = load i64, ptr %.sroa.4386.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5387.0.copyload = load ptr, ptr %.sroa.5387.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0385.0.copyload, ptr %i.ai, align 8
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4386.0.copyload, ptr %.sroa.4389.0..sroa_idx, align 8
  %.sroa.5390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.5387.0.copyload, ptr %.sroa.5390.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.be

bb.c:                                             ; preds = %bb.a
  %.sroa.0144.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.0144.sroa.6.0.copyload = load i64, ptr %.sroa.0144.sroa.6.0..sroa_idx, align 8
  %.sroa.0144.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.0144.sroa.7.0.copyload = load ptr, ptr %.sroa.0144.sroa.7.0..sroa_idx, align 8
  %.sroa.0144.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.0144.sroa.8.0.copyload = load i64, ptr %.sroa.0144.sroa.8.0..sroa_idx, align 8
  %.sroa.0144.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.0144.sroa.9.0.copyload = load ptr, ptr %.sroa.0144.sroa.9.0..sroa_idx, align 8
  %.sroa.0144.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %.sroa.0144.sroa.10.0.copyload = load i64, ptr %.sroa.0144.sroa.10.0..sroa_idx, align 8
  %.sroa.0144.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %.sroa.0144.sroa.11.0.copyload = load ptr, ptr %.sroa.0144.sroa.11.0..sroa_idx, align 8
  %.sroa.0144.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %.sroa.0144.sroa.12.0.copyload = load i64, ptr %.sroa.0144.sroa.12.0..sroa_idx, align 8
  %.sroa.0144.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %.sroa.0144.sroa.13.0.copyload = load ptr, ptr %.sroa.0144.sroa.13.0..sroa_idx, align 8
  %.sroa.0144.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %.sroa.0144.sroa.14.0.copyload = load i64, ptr %.sroa.0144.sroa.14.0..sroa_idx, align 8
  %.sroa.0144.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %.sroa.0144.sroa.15.0.copyload = load ptr, ptr %.sroa.0144.sroa.15.0..sroa_idx, align 8
  %.sroa.0144.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %.sroa.0144.sroa.16.0.copyload = load i64, ptr %.sroa.0144.sroa.16.0..sroa_idx, align 8
  %.sroa.0144.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %.sroa.0144.sroa.17.0.copyload = load i64, ptr %.sroa.0144.sroa.17.0..sroa_idx, align 8
  %.sroa.0144.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %.sroa.0144.sroa.19.0.copyload = load i64, ptr %.sroa.0144.sroa.19.0..sroa_idx, align 8
  %.sroa.0144.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %.sroa.0144.sroa.20.0.copyload = load i64, ptr %.sroa.0144.sroa.20.0..sroa_idx, align 8
  %.sroa.0144.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  %.sroa.0144.sroa.21.0.copyload = load i64, ptr %.sroa.0144.sroa.21.0..sroa_idx, align 8
  %.sroa.0144.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %.sroa.0144.sroa.22.0.copyload = load i64, ptr %.sroa.0144.sroa.22.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.aj = icmp eq i8 %i.ag, 0
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val = load i64, ptr %i.ad, align 8, !noundef !3
  %i.ak = icmp eq i64 %.val, 0
  br i1 %i.ak, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call fastcc void @_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB2_5State3new(ptr noalias noundef align 8 captures(none) dereferenceable(176) %i.aa, ptr noalias noundef align 8 dereferenceable(24) %i.ac, i1 noundef zeroext false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.am = load i8, ptr %i.al, align 8, !range !169, !noundef !3 ; 2 uses
  %i.an = icmp eq i8 %i.am, -1
  %.sroa.0394.0.copyload = load ptr, ptr %i.aa, align 8 ; 2 uses
  %.sroa.4395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.4395.0.copyload = load i64, ptr %.sroa.4395.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.5396.0.copyload = load ptr, ptr %.sroa.5396.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.an, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.ao, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @10, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 46, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.be

bb.g:                                             ; preds = %bb.d, %bb.i
  %.sroa.013.sroa.11.0 = phi i64 [ %.sroa.0144.sroa.12.0.copyload, %bb.d ], [ %.sroa.0147.sroa.12.0.copyload, %bb.i ] ; 2 uses
  %.sroa.013.sroa.10.0 = phi ptr [ %.sroa.0144.sroa.11.0.copyload, %bb.d ], [ %.sroa.0147.sroa.11.0.copyload, %bb.i ] ; 2 uses
  %.sroa.013.sroa.9.0 = phi i64 [ %.sroa.0144.sroa.10.0.copyload, %bb.d ], [ %.sroa.0147.sroa.10.0.copyload, %bb.i ] ; 7 uses
  %.sroa.013.sroa.8.0 = phi ptr [ %.sroa.0144.sroa.9.0.copyload, %bb.d ], [ %.sroa.0147.sroa.9.0.copyload, %bb.i ] ; 3 uses
  %.sroa.013.sroa.7.0 = phi i64 [ %.sroa.0144.sroa.8.0.copyload, %bb.d ], [ %.sroa.0147.sroa.8.0.copyload, %bb.i ] ; 3 uses
  %.sroa.013.sroa.6.0 = phi ptr [ %.sroa.0144.sroa.7.0.copyload, %bb.d ], [ %.sroa.0147.sroa.7.0.copyload, %bb.i ] ; 2 uses
  %.sroa.013.sroa.5.0 = phi i64 [ %.sroa.0144.sroa.6.0.copyload, %bb.d ], [ %.sroa.0147.sroa.6.0.copyload, %bb.i ]
  %.sroa.013.sroa.4.0 = phi ptr [ %.sroa.5387.0.copyload, %bb.d ], [ %.sroa.5396.0.copyload, %bb.i ] ; 3 uses
  %.sroa.013.sroa.3.0 = phi i64 [ %.sroa.4386.0.copyload, %bb.d ], [ %.sroa.4395.0.copyload, %bb.i ] ; 2 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %.sroa.0385.0.copyload, %bb.d ], [ %.sroa.0394.0.copyload, %bb.i ] ; 3 uses
  %.sroa.013.sroa.12.0 = phi ptr [ %.sroa.0144.sroa.13.0.copyload, %bb.d ], [ %.sroa.0147.sroa.13.0.copyload, %bb.i ] ; 3 uses
  %.sroa.013.sroa.13.0 = phi i64 [ %.sroa.0144.sroa.14.0.copyload, %bb.d ], [ %.sroa.0147.sroa.14.0.copyload, %bb.i ]
  %.sroa.013.sroa.14.0 = phi ptr [ %.sroa.0144.sroa.15.0.copyload, %bb.d ], [ %.sroa.0147.sroa.15.0.copyload, %bb.i ] ; 3 uses
  %.sroa.013.sroa.15.0 = phi i64 [ %.sroa.0144.sroa.16.0.copyload, %bb.d ], [ %.sroa.0147.sroa.16.0.copyload, %bb.i ]
  %.sroa.013.sroa.16.0 = phi i64 [ %.sroa.0144.sroa.17.0.copyload, %bb.d ], [ %.sroa.0147.sroa.17.0.copyload, %bb.i ]
  %.sroa.013.sroa.18.0 = phi i64 [ %.sroa.0144.sroa.19.0.copyload, %bb.d ], [ %.sroa.0147.sroa.19.0.copyload, %bb.i ] ; 2 uses
  %.sroa.013.sroa.19.0 = phi i64 [ %.sroa.0144.sroa.20.0.copyload, %bb.d ], [ %.sroa.0147.sroa.20.0.copyload, %bb.i ] ; 2 uses
  %.sroa.013.sroa.20.0 = phi i64 [ %.sroa.0144.sroa.21.0.copyload, %bb.d ], [ %.sroa.0147.sroa.21.0.copyload, %bb.i ] ; 3 uses
  %.sroa.013.sroa.21.0 = phi i64 [ %.sroa.0144.sroa.22.0.copyload, %bb.d ], [ %.sroa.0147.sroa.22.0.copyload, %bb.i ]
  %.sroa.416.0 = phi i64 [ undef, %bb.d ], [ %.val242, %bb.i ]
  %.sroa.014.0 = phi ptr [ null, %bb.d ], [ %.val241, %bb.i ] ; 2 uses
  %.sroa.3.0 = phi i8 [ 0, %bb.d ], [ %i.am, %bb.i ] ; 3 uses
  %.sroa.013.sroa.16.0.fr = freeze i64 %.sroa.013.sroa.16.0 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %.sroa.013.sroa.19.0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.ap = load i64, ptr %i.n, align 8, !range !18, !noundef !3
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !170, !noundef !3 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.aq, label %bb.j, label %bb.k, !prof !24

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0394.0.copyload, ptr %i.au, align 8
  %.sroa.4398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4395.0.copyload, ptr %.sroa.4398.0..sroa_idx, align 8
  %.sroa.5399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.5396.0.copyload, ptr %.sroa.5399.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.be

bb.i:                                             ; preds = %bb.e
  %.sroa.0147.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.0147.sroa.6.0.copyload = load i64, ptr %.sroa.0147.sroa.6.0..sroa_idx, align 8
  %.sroa.0147.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.0147.sroa.7.0.copyload = load ptr, ptr %.sroa.0147.sroa.7.0..sroa_idx, align 8
  %.sroa.0147.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.0147.sroa.8.0.copyload = load i64, ptr %.sroa.0147.sroa.8.0..sroa_idx, align 8
  %.sroa.0147.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.0147.sroa.9.0.copyload = load ptr, ptr %.sroa.0147.sroa.9.0..sroa_idx, align 8
  %.sroa.0147.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %.sroa.0147.sroa.10.0.copyload = load i64, ptr %.sroa.0147.sroa.10.0..sroa_idx, align 8
  %.sroa.0147.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %.sroa.0147.sroa.11.0.copyload = load ptr, ptr %.sroa.0147.sroa.11.0..sroa_idx, align 8
  %.sroa.0147.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %.sroa.0147.sroa.12.0.copyload = load i64, ptr %.sroa.0147.sroa.12.0..sroa_idx, align 8
  %.sroa.0147.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %.sroa.0147.sroa.13.0.copyload = load ptr, ptr %.sroa.0147.sroa.13.0..sroa_idx, align 8
  %.sroa.0147.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %.sroa.0147.sroa.14.0.copyload = load i64, ptr %.sroa.0147.sroa.14.0..sroa_idx, align 8
  %.sroa.0147.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %.sroa.0147.sroa.15.0.copyload = load ptr, ptr %.sroa.0147.sroa.15.0..sroa_idx, align 8
  %.sroa.0147.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %.sroa.0147.sroa.16.0.copyload = load i64, ptr %.sroa.0147.sroa.16.0..sroa_idx, align 8
  %.sroa.0147.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %.sroa.0147.sroa.17.0.copyload = load i64, ptr %.sroa.0147.sroa.17.0..sroa_idx, align 8
  %.sroa.0147.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  %.sroa.0147.sroa.19.0.copyload = load i64, ptr %.sroa.0147.sroa.19.0..sroa_idx, align 8
  %.sroa.0147.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %.sroa.0147.sroa.20.0.copyload = load i64, ptr %.sroa.0147.sroa.20.0..sroa_idx, align 8
  %.sroa.0147.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %.sroa.0147.sroa.21.0.copyload = load i64, ptr %.sroa.0147.sroa.21.0..sroa_idx, align 8
  %.sroa.0147.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %.sroa.0147.sroa.22.0.copyload = load i64, ptr %.sroa.0147.sroa.22.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.val241 = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3
  %.val242 = load i64, ptr %i.ad, align 8, !noundef !3
  br label %bb.g

bb.j:                                             ; preds = %bb.g
  %i.av = load i64, ptr %i.at, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.as, i64 %i.av) #16
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.at, align 8, !nonnull !3, !noundef !3
  %i.ax = icmp ule i64 %.sroa.013.sroa.19.0, %i.as
  tail call void @llvm.assume(i1 %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %i.as, ptr %i.z, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 5 uses
  store i64 0, ptr %i.az, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.sroa.0.0) ]
  %i.ba = icmp eq i64 %.sroa.013.sroa.16.0.fr, 0
  br i1 %i.ba, label %bb.l, label %bb.m, !prof !24

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #16
          to label %.noexc unwind label %.loopexit.split-lp456

.noexc:                                           ; preds = %bb.l
  unreachable

.loopexit455.split.split:                         ; preds = %.lr.ph.split.split
  %lpad.loopexit457 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit455

.loopexit.split-lp456:                            ; preds = %.split.us.invoke, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.thread, %bb.z, %bb.l, %bb.m, %bb.bw
  %lpad.loopexit.split-lp458 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit455

bb.m:                                             ; preds = %bb.k
  %i.bb = urem i64 %.sroa.013.sroa.3.0, %.sroa.013.sroa.16.0.fr ; 2 uses
  %i.bc = sub nuw nsw i64 %.sroa.013.sroa.3.0, %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.0.0, i64 %i.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.sroa.4.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !171
  store ptr %.sroa.013.sroa.0.0, ptr %i.g, align 8, !noalias !176
  %.sroa.4319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.bc, ptr %.sroa.4319.0..sroa_idx, align 8, !noalias !176
  %.sroa.5320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.bd, ptr %.sroa.5320.0..sroa_idx, align 8, !noalias !176
  %.sroa.6321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.bb, ptr %.sroa.6321.0..sroa_idx, align 8, !noalias !176
  %.sroa.7322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.sroa.013.sroa.16.0.fr, ptr %.sroa.7322.0..sroa_idx, align 8, !noalias !176
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.4.0, i64 %.sroa.013.sroa.5.0
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E3newCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.g, ptr noundef nonnull readonly %.sroa.013.sroa.4.0, ptr noundef nonnull readonly %i.be)
          to label %bb.n unwind label %.loopexit.split-lp456

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 3 uses
  %i.bh = load i64, ptr %i.bf, align 8, !alias.scope !177, !noalias !180, !noundef !3 ; 7 uses
  %i.bi = load i64, ptr %i.bg, align 8, !alias.scope !177, !noalias !180, !noundef !3
  %i.bj = icmp ult i64 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.thread

.lr.ph:                                           ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %i.bl = icmp eq i8 %.sroa.3.0, 0
  br i1 %i.bl, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bm = icmp ugt i64 %.sroa.013.sroa.16.0.fr, 3
  br i1 %i.bm, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split, !prof !182

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.r
  %i.bn = phi i64 [ %i.ce, %bb.r ], [ %i.bh, %.lr.ph.split.us ] ; 3 uses
  %i.bo = add nuw i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bf, align 8, !alias.scope !177, !noalias !180
  %i.bp = invoke { ptr, i64 } @_RNvXs1q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.x, i64 noundef %i.bn)
          to label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.us.us unwind label %.loopexit455.split.us.split.us ; 2 uses

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.us.us: ; preds = %.lr.ph.split.us.split.us
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0      ; 2 uses
  %.not.us.us = icmp eq ptr %i.bq, null
  br i1 %.not.us.us, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.thread, label %bb.o

bb.o:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.us.us
  %i.br = extractvalue { ptr, i64 } %i.bp, 1      ; 2 uses
  %.val.i.us.us = load ptr, ptr %i.bk, align 8, !alias.scope !177, !noalias !180, !nonnull !3, !noundef !3
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.us.us, i64 %i.bn
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !3
  %.not236.us.us = icmp ugt i64 %.sroa.013.sroa.16.0.fr, %i.br
  br i1 %.not236.us.us, label %.split.us.invoke, label %bb.p, !prof !183

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !184
  store i32 0, ptr %i.a, align 4, !noalias !184
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECscShS5OxKAqE_6chrono(ptr noalias noundef nonnull %i.a, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
          to label %_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB2_5State10parse_time.exit273.thread.us.us unwind label %.loopexit455.split.us.split.us

_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB2_5State10parse_time.exit273.thread.us.us: ; preds = %bb.p
  %.sroa.02.0.copyload.i21.i269.us.us = load i32, ptr %i.a, align 4, !noalias !184
  %i.bu = call i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i21.i269.us.us)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !184
  %i.bv = sext i32 %i.bu to i64
  %i.bw = zext i8 %i.bt to i64
  %i.bx = load i64, ptr %i.az, align 8, !alias.scope !191, !noundef !3 ; 3 uses
  %i.by = load i64, ptr %i.z, align 8, !range !194, !alias.scope !191, !noundef !3
  %i.bz = icmp eq i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB2_5State10parse_time.exit273.thread.us.us
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10TransitionE8grow_oneBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.r unwind label %.loopexit455.split.us.split.us

bb.r:                                             ; preds = %bb.q, %_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB2_5State10parse_time.exit273.thread.us.us
  %i.ca = load ptr, ptr %i.ay, align 8, !alias.scope !191, !nonnull !3, !noundef !3
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.bx ; 2 uses
  store i64 %i.bv, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.bw, ptr %i.cc, align 8
  %i.cd = add i64 %i.bx, 1
  store i64 %i.cd, ptr %i.az, align 8, !alias.scope !191
  %i.ce = load i64, ptr %i.bf, align 8, !alias.scope !177, !noalias !180, !noundef !3 ; 2 uses
  %i.cf = load i64, ptr %i.bg, align 8, !alias.scope !177, !noalias !180, !noundef !3
  %i.cg = icmp ult i64 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph.split.us.split.us, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.thread

.loopexit455.split.us.split.us:                   ; preds = %bb.q, %bb.p, %.lr.ph.split.us.split.us
  %lpad.loopexit457.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit455

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ch = add nuw i64 %i.bh, 1
  store i64 %i.ch, ptr %i.bf, align 8, !alias.scope !177, !noalias !180
  %i.ci = invoke { ptr, i64 } @_RNvXs1q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.x, i64 noundef %i.bh)
          to label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.us unwind label %.loopexit455.split.us.split ; 2 uses

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.us: ; preds = %.lr.ph.split.us.split
  %i.cj = extractvalue { ptr, i64 } %i.ci, 0
  %.not.us = icmp eq ptr %i.cj, null
  br i1 %.not.us, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.thread, label %bb.s

bb.s:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.us
  %i.ck = extractvalue { ptr, i64 } %i.ci, 1      ; 2 uses
  %.not236.us = icmp ugt i64 %.sroa.013.sroa.16.0.fr, %i.ck
  br i1 %.not236.us, label %.split.us, label %.split.us.invoke, !prof !183

.loopexit455.split.us.split:                      ; preds = %.lr.ph.split.us.split
  %lpad.loopexit457.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit455

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cl = icmp eq i64 %.sroa.013.sroa.16.0.fr, 8
  br i1 %i.cl, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.w
  %i.cm = phi i64 [ %i.dc, %bb.w ], [ %i.bh, %.lr.ph.split ] ; 3 uses
  %i.cn = add nuw i64 %i.cm, 1
  store i64 %i.cn, ptr %i.bf, align 8, !alias.scope !177, !noalias !180
  %i.co = invoke { ptr, i64 } @_RNvXs1q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.x, i64 noundef %i.cm)
          to label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.us474 unwind label %.loopexit455.split.split.us ; 2 uses

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.us474: ; preds = %.lr.ph.split.split.us
  %i.cp = extractvalue { ptr, i64 } %i.co, 0      ; 2 uses
  %.not.us475 = icmp eq ptr %i.cp, null
  br i1 %.not.us475, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.thread, label %bb.t

bb.t:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.us474
  %i.cq = extractvalue { ptr, i64 } %i.co, 1      ; 2 uses
  %.val.i.us476 = load ptr, ptr %i.bk, align 8, !alias.scope !177, !noalias !180, !nonnull !3, !noundef !3
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.us476, i64 %i.cm
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !3
  %.not236.us477 = icmp ult i64 %i.cq, 8
  br i1 %.not236.us477, label %.split.us.invoke, label %bb.u, !prof !183

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !195
  store i64 0, ptr %i.b, align 8, !noalias !195
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECscShS5OxKAqE_6chrono(ptr noalias noundef nonnull %i.b, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB2_5State10parse_time.exit273.thread444.us unwind label %.loopexit455.split.split.us

_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB2_5State10parse_time.exit273.thread444.us: ; preds = %bb.u
  %.sroa.02.0.copyload.i.i268.us = load i64, ptr %i.b, align 8, !noalias !195
  %i.ct = call i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i268.us)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !195
  %i.cu = zext i8 %i.cs to i64
  %i.cv = load i64, ptr %i.az, align 8, !alias.scope !191, !noundef !3 ; 3 uses
  %i.cw = load i64, ptr %i.z, align 8, !range !194, !alias.scope !191, !noundef !3
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB2_5State10parse_time.exit273.thread444.us
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10TransitionE8grow_oneBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.w unwind label %.loopexit455.split.split.us

bb.w:                                             ; preds = %bb.v, %_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB2_5State10parse_time.exit273.thread444.us
  %i.cy = load ptr, ptr %i.ay, align 8, !alias.scope !191, !nonnull !3, !noundef !3
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cv ; 2 uses
  store i64 %i.ct, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %i.cu, ptr %i.da, align 8
  %i.db = add i64 %i.cv, 1
  store i64 %i.db, ptr %i.az, align 8, !alias.scope !191
  %i.dc = load i64, ptr %i.bf, align 8, !alias.scope !177, !noalias !180, !noundef !3 ; 2 uses
  %i.dd = load i64, ptr %i.bg, align 8, !alias.scope !177, !noalias !180, !noundef !3
  %i.de = icmp ult i64 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph.split.split.us, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.thread

.loopexit455.split.split.us:                      ; preds = %bb.v, %bb.u, %.lr.ph.split.split.us
  %lpad.loopexit457.us478 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit455

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.df = add nuw i64 %i.bh, 1
  store i64 %i.df, ptr %i.bf, align 8, !alias.scope !177, !noalias !180
  %i.dg = invoke { ptr, i64 } @_RNvXs1q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.x, i64 noundef %i.bh)
          to label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit unwind label %.loopexit455.split.split ; 2 uses

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit: ; preds = %.lr.ph.split.split
  %i.dh = extractvalue { ptr, i64 } %i.dg, 0
  %.not = icmp eq ptr %i.dh, null
  br i1 %.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.thread, label %bb.x

bb.x:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit
  %i.di = extractvalue { ptr, i64 } %i.dg, 1      ; 2 uses
  %.not236 = icmp ugt i64 %.sroa.013.sroa.16.0.fr, %i.di
  br i1 %.not236, label %.split.us.invoke, label %bb.ct, !prof !183

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.thread: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.us474, %bb.w, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.us.us, %bb.r, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.us, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %.sroa.013.sroa.20.0, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16)
          to label %bb.y unwind label %.loopexit.split-lp456

bb.y:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1w_E4nextCscShS5OxKAqE_6chrono.exit.thread
  %i.dj = load i64, ptr %i.m, align 8, !range !18, !noundef !3
  %i.dk = trunc nuw i64 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !range !170, !noundef !3 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.dk, label %bb.z, label %bb.aa, !prof !24

bb.z:                                             ; preds = %bb.y
  %i.do = load i64, ptr %i.dn, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dm, i64 %i.do) #16
          to label %bb.bt unwind label %.loopexit.split-lp456

.loopexit449:                                     ; preds = %bb.cj, %bb.ca, %bb.cn
  %lpad.loopexit451 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.loopexit.split-lp450:                            ; preds = %.invoke, %._crit_edge, %bb.ac, %bb.bi
  %lpad.loopexit.split-lp452 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.aa:                                            ; preds = %bb.y
  %i.dp = load ptr, ptr %i.dn, align 8, !nonnull !3, !noundef !3
  %i.dq = icmp ule i64 %.sroa.013.sroa.20.0, %i.dm
  call void @llvm.assume(i1 %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.dm, ptr %i.w, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.dp, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store i64 0, ptr %i.ds, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.sroa.6.0) ]
  %.not223485 = icmp ult i64 %.sroa.013.sroa.7.0, 6
  br i1 %.not223485, label %._crit_edge, label %.lr.ph488

.lr.ph488:                                        ; preds = %bb.aa
  %3 = urem i64 %.sroa.013.sroa.7.0, 6
  %4 = sub nuw nsw i64 %.sroa.013.sroa.7.0, %3
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.8.0, i64 %.sroa.013.sroa.9.0
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %bb.ca

._crit_edge:                                      ; preds = %bb.co, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %.sroa.013.sroa.18.0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.ab unwind label %.loopexit.split-lp450

bb.ab:                                            ; preds = %._crit_edge
  %i.dv = load i64, ptr %i.l, align 8, !range !18, !noundef !3
  %i.dw = trunc nuw i64 %i.dv to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !170, !noundef !3 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.dw, label %bb.ac, label %bb.ad, !prof !24

bb.ac:                                            ; preds = %bb.ab
  %i.ea = load i64, ptr %i.dz, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dy, i64 %i.ea) #16
          to label %bb.bt unwind label %.loopexit.split-lp450

bb.ad:                                            ; preds = %bb.ab
  %i.eb = load ptr, ptr %i.dz, align 8, !nonnull !3, !noundef !3
  %i.ec = icmp ule i64 %.sroa.013.sroa.18.0, %i.dy
  call void @llvm.assume(i1 %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.dy, ptr %i.v, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.eb, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store i64 0, ptr %i.ee, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.sroa.10.0) ]
  %i.ef = add i64 %.sroa.013.sroa.16.0.fr, 4      ; 7 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %bb.ae, label %bb.af, !prof !24

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16
          to label %.noexc247 unwind label %.loopexit.split-lp

.noexc247:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.eh = urem i64 %.sroa.013.sroa.11.0, %i.ef
  %i.ei = sub nuw nsw i64 %.sroa.013.sroa.11.0, %i.eh ; 2 uses
  %.not224489 = icmp ugt i64 %i.ef, %i.ei
  br i1 %.not224489, label %._crit_edge494, label %.lr.ph493

.lr.ph493:                                        ; preds = %bb.af
  %.not226 = icmp ugt i64 %.sroa.013.sroa.16.0.fr, -5
  %i.ej = icmp eq i8 %.sroa.3.0, 0
  %i.ek = icmp eq i64 %.sroa.013.sroa.16.0.fr, 8
  %i.el = icmp samesign ugt i64 %.sroa.013.sroa.16.0.fr, 3
  br i1 %.not226, label %.invoke548, label %.lr.ph493.split, !prof !183

.lr.ph493.split:                                  ; preds = %.lr.ph493, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecondE8push_mutBO_.exit
  %.sroa.681.0491 = phi i64 [ %i.en, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecondE8push_mutBO_.exit ], [ %i.ei, %.lr.ph493 ]
  %.sroa.080.0490 = phi ptr [ %i.em, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecondE8push_mutBO_.exit ], [ %.sroa.013.sroa.10.0, %.lr.ph493 ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.080.0490, i64 %i.ef
  %i.en = sub nuw i64 %.sroa.681.0491, %i.ef      ; 2 uses
  br i1 %i.ej, label %bb.bk, label %bb.bl

._crit_edge494:                                   ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecondE8push_mutBO_.exit, %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.sroa.12.0) ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.12.0, i64 %.sroa.013.sroa.13.0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.sroa.14.0) ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.14.0, i64 %.sroa.013.sroa.15.0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i8 0, i64 16, i1 false)
  %.sroa.4372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %.sroa.013.sroa.12.0, ptr %.sroa.4372.0..sroa_idx, align 8
  %.sroa.5373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.eo, ptr %.sroa.5373.0..sroa_idx, align 8
  %.sroa.6374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i8 1, ptr %.sroa.6374.0..sroa_idx, align 8
  %.sroa.7375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 41
  store i8 0, ptr %.sroa.7375.0..sroa_idx, align 1
  %.sroa.9377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %.sroa.013.sroa.14.0, ptr %.sroa.9377.0..sroa_idx, align 8
  %.sroa.10378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr %i.ep, ptr %.sroa.10378.0..sroa_idx, align 8
  %.sroa.11379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i8 1, ptr %.sroa.11379.0..sroa_idx, align 8
  %.sroa.12380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 65
  store i8 0, ptr %.sroa.12380.0..sroa_idx, align 1
  store i64 %.sroa.013.sroa.20.0, ptr %i.u, align 8
  %i.er = invoke fastcc noundef zeroext i1 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeINtNtB7_3zip3ZipINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEEINtNtNtB9_7sources6repeat6RepeathEEB1e_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB32_3any5checkThhENCNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parser5parses_0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB4l_(ptr noalias noundef align 8 dereferenceable(72) %i.u)
          to label %bb.ag unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %._crit_edge494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.er, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not225 = icmp eq ptr %.sroa.014.0, null
  br i1 %.not225, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.es, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @14, ptr %.sroa.4115.0..sroa_idx, align 8
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 55, ptr %.sroa.5116.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bg

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.014.0, i64 noundef %.sroa.416.0)
          to label %bb.am unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ah
  %i.et = getelementptr inbounds nuw i8, ptr %i.t, i64 45
  store i8 -1, ptr %i.et, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.az, %bb.bd, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB2_8TimeZone3new(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(48) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.be

bb.am:                                            ; preds = %bb.aj
  %i.eu = load i64, ptr %i.s, align 8, !range !18, !noundef !3
  %i.ev = trunc nuw i64 %i.eu to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0209.0.copyload = load ptr, ptr %i.ew, align 8 ; 4 uses
  %.sroa.4210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.4210.0.copyload = load i64, ptr %.sroa.4210.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %i.ev, label %bb.bf, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 10, ptr %i.j, align 4
  %i.ex = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0209.0.copyload, i64 noundef %.sroa.4210.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 1)
          to label %bb.ao unwind label %.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.ex, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.ey, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @13, ptr %.sroa.4126.0..sroa_idx, align 8
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 14, ptr %.sroa.5127.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bg

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 10, ptr %i.i, align 4
  %i.ez = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0209.0.copyload, i64 noundef %.sroa.4210.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1)
          to label %bb.ar unwind label %.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.ez, label %bb.as, label %bb.ap

bb.as:                                            ; preds = %bb.ar
  %i.fa = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNCNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parser5parses0_0EBT_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0209.0.copyload, i64 noundef %.sroa.4210.0.copyload)
          to label %bb.at unwind label %.loopexit.split-lp ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.fb = extractvalue { ptr, i64 } %i.fa, 0      ; 3 uses
  %i.fc = extractvalue { ptr, i64 } %i.fa, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 58, ptr %i.h, align 4
  %i.fd = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fb, i64 noundef %i.fc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1)
          to label %bb.au unwind label %.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.fd, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fe = invoke fastcc noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fb, i64 noundef %i.fc)
          to label %bb.ax unwind label %.loopexit.split-lp

bb.aw:                                            ; preds = %bb.ax, %bb.au
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.ff, align 8
end_hunk_0
