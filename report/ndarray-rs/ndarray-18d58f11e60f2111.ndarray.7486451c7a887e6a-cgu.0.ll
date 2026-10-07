Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ndarray-rs/original/ndarray-18d58f11e60f2111.ndarray.7486451c7a887e6a-cgu.0?download=true
inline.NumInlined: 162
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtCsa0fWqW2HhWg_7ndarray9dimension8do_slice:bb.a
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !91, !noalias !92, !noundef !5 ; 2 uses
  %i.d = load i64, ptr %2, align 8, !range !6, !alias.scope !91, !noalias !92, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !91, !noalias !92
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !91, !noalias !92, !noundef !5 ; 4 uses
  %i.i = icmp slt i64 %i.c, 0
  %i.j = select i1 %i.i, i64 %i.a, i64 0
  %.sroa.02.0.i = add i64 %i.j, %i.c              ; 4 uses
  %i.k = trunc nuw i64 %i.d to i1
  %.sroa.06.0.i = select i1 %i.k, i64 %i.f, i64 %i.a ; 2 uses
  %i.l = icmp slt i64 %.sroa.06.0.i, 0
  %i.m = select i1 %i.l, i64 %i.a, i64 0
  %.sroa.09.0.i = add i64 %i.m, %.sroa.06.0.i     ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.02.0.i, %i.a
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 35, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #27, !noalias !93
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not14.i = icmp ugt i64 %.sroa.09.0.i, %i.a
  br i1 %.not14.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #27, !noalias !93
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.h, 0
  br i1 %i.n, label %bb.f, label %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12to_abs_slice.exit, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #27, !noalias !93
  unreachable

_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12to_abs_slice.exit: ; preds = %bb.e
  %.sroa.09.1.i = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0.i, i64 %.sroa.02.0.i) ; 2 uses
  %i.o = sub nuw i64 %.sroa.09.1.i, %.sroa.02.0.i ; 4 uses
  %i.p = load i64, ptr %1, align 8, !noundef !5   ; 3 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12to_abs_slice.exit
  %i.r = icmp slt i64 %i.h, 0
  br i1 %i.r, label %bb.j, label %bb.i

bb.h:                                             ; preds = %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12to_abs_slice.exit, %bb.i, %bb.j
  %.sroa.0.0 = phi i64 [ %i.s, %bb.i ], [ %i.u, %bb.j ], [ 0, %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12to_abs_slice.exit ]
  %.sroa.07.0 = tail call i64 @llvm.abs.i64(i64 %i.h, i1 false) ; 3 uses
  %cond = icmp eq i64 %.sroa.07.0, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.s = mul i64 %i.p, %.sroa.02.0.i
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.t = add i64 %.sroa.09.1.i, -1
  %i.u = mul i64 %i.p, %i.t
  br label %bb.h

bb.k:                                             ; preds = %bb.h, %bb.l
  %.sroa.01.0 = phi i64 [ %i.z, %bb.l ], [ %i.o, %bb.h ] ; 2 uses
  store i64 %.sroa.01.0, ptr %0, align 8
  %i.v = icmp ult i64 %.sroa.01.0, 2
  %i.w = mul i64 %i.p, %i.h
  %.sroa.06.0 = select i1 %i.v, i64 0, i64 %i.w
  store i64 %.sroa.06.0, ptr %1, align 8
  ret i64 %.sroa.0.0

bb.l:                                             ; preds = %bb.h
  %i.x = udiv i64 %i.o, %.sroa.07.0
  %i.y = urem i64 %i.o, %.sroa.07.0
  %.not = icmp ne i64 %i.y, 0
  %. = zext i1 %.not to i64
  %i.z = add nuw i64 %i.x, %.
  br label %bb.k
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvNtNtCsa0fWqW2HhWg_7ndarray6linalg11impl_linalg15dot_shape_error(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %0, ptr %i.f, align 8
  store i64 %1, ptr %i.e, align 8
  store i64 %2, ptr %i.d, align 8
  store i64 %3, ptr %i.c, align 8
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %3) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = icmp slt i64 %i.i, 0
  %or.cond.not = or i1 %i.h, %i.j
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.l, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.m, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.n, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #27
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvNtNtCsa0fWqW2HhWg_7ndarray6linalg11impl_linalg23general_dot_shape_error(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 14 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.g, align 8
  store i64 %1, ptr %i.f, align 8
  store i64 %2, ptr %i.e, align 8
  store i64 %3, ptr %i.d, align 8
  store i64 %4, ptr %i.c, align 8
  store i64 %5, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.i, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.d, ptr %i.j, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.k, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.b, ptr %i.l, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @33, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB4_6LayoutNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 17 uses
  %i.c = alloca [8 x i8], align 8                 ; 16 uses
  %i.d = alloca [8 x i8], align 8                 ; 12 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load i32, ptr %0, align 4, !noundef !5   ; 6 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.419.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !nonnull !5   ; 6 uses
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !5, !align !12 ; 6 uses
  %.not.i.i.peel = trunc i32 %i.f to i1
  br i1 %.not.i.i.peel, label %.split.i.peel, label %.peel.next

.split.i.peel:                                    ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97
  store ptr @4, ptr %i.c, align 8, !noalias !97, !captures !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  store ptr %i.c, ptr %i.b, align 8, !noalias !97
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRReNtB6_7Display3fmtCsa0fWqW2HhWg_7ndarray, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !97
  %i.k = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @6, ptr noundef nonnull %i.b), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !97
  br i1 %i.k, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph.i, %.split.i.peel
  %i.l = and i32 %i.f, 2
  %.not.i.i.peel30 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.peel30, label %.peel.next29, label %.split.i.peel32

.split.i.peel32:                                  ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97
  store ptr getelementptr inbounds nuw (i8, ptr @4, i64 16), ptr %i.c, align 8, !noalias !97, !captures !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  store ptr %i.c, ptr %i.b, align 8, !noalias !97
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRReNtB6_7Display3fmtCsa0fWqW2HhWg_7ndarray, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !97
  %i.m = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @6, ptr noundef nonnull %i.b), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !97
  br i1 %i.m, label %.loopexit, label %.peel.next29

.peel.next29:                                     ; preds = %.peel.next, %.split.i.peel32
  %i.n = and i32 %i.f, 4
  %.not.i.i.peel36 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.peel36, label %.peel.next35, label %.split.i.peel38

.split.i.peel38:                                  ; preds = %.peel.next29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97
  store ptr getelementptr inbounds nuw (i8, ptr @4, i64 32), ptr %i.c, align 8, !noalias !97, !captures !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  store ptr %i.c, ptr %i.b, align 8, !noalias !97
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRReNtB6_7Display3fmtCsa0fWqW2HhWg_7ndarray, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !97
  %i.o = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @6, ptr noundef nonnull %i.b), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !97
  br i1 %i.o, label %.loopexit, label %.peel.next35

.peel.next35:                                     ; preds = %.peel.next29, %.split.i.peel38
  %i.p = and i32 %i.f, 8
  %.not.i.i.peel42 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.peel42, label %.peel.next41.preheader, label %.split.i.peel44

.split.i.peel44:                                  ; preds = %.peel.next35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97
  store ptr getelementptr inbounds nuw (i8, ptr @4, i64 48), ptr %i.c, align 8, !noalias !97, !captures !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  store ptr %i.c, ptr %i.b, align 8, !noalias !97
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRReNtB6_7Display3fmtCsa0fWqW2HhWg_7ndarray, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !97
  %i.q = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @6, ptr noundef nonnull %i.b), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !97
  br i1 %i.q, label %.loopexit, label %.peel.next41.preheader

.peel.next41.preheader:                           ; preds = %.peel.next35, %.split.i.peel44
  br label %.peel.next41

.peel.next41:                                     ; preds = %.peel.next41.preheader, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldjuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB1T_6LayoutNtB1w_5Debug3fmt0NCB1O_s_0E0B1V_.exit.backedge.i
  %i.r = phi i64 [ %i.s, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldjuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB1T_6LayoutNtB1w_5Debug3fmt0NCB1O_s_0E0B1V_.exit.backedge.i ], [ 4, %.peel.next41.preheader ] ; 3 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.t = trunc i64 %i.r to i32
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.u, %i.f
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldjuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB1T_6LayoutNtB1w_5Debug3fmt0NCB1O_s_0E0B1V_.exit.backedge.i, label %_RNCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB6_6LayoutNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmts_0B8_.exit.i.i

_RNCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB6_6LayoutNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmts_0B8_.exit.i.i: ; preds = %.peel.next41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !97
  store i64 %i.r, ptr %i.d, align 8, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97
  store ptr %i.d, ptr %i.a, align 8, !noalias !97
  store ptr @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !97
  %i.w = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @5, ptr noundef nonnull %i.a), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !97
  br i1 %i.w, label %.loopexit, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldjuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB1T_6LayoutNtB1w_5Debug3fmt0NCB1O_s_0E0B1V_.exit.backedge.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldjuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB1T_6LayoutNtB1w_5Debug3fmt0NCB1O_s_0E0B1V_.exit.backedge.i: ; preds = %_RNCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB6_6LayoutNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmts_0B8_.exit.i.i, %.peel.next41
  %exitcond.not.i = icmp eq i64 %i.s, 32
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6filter15filter_try_foldjuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB37_6LayoutNtB2K_5Debug3fmt0NCB32_s_0E0B2l_EB39_.exit, label %.peel.next41, !llvm.loop !96

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = load ptr, ptr %i.h, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !5, !nonnull !5
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 6) #29
  br i1 %i.ab, label %.loopexit, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6filter15filter_try_foldjuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB37_6LayoutNtB2K_5Debug3fmt0NCB32_s_0E0B2l_EB39_.exit

_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6filter15filter_try_foldjuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB37_6LayoutNtB2K_5Debug3fmt0NCB32_s_0E0B2l_EB39_.exit: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldjuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB1T_6LayoutNtB1w_5Debug3fmt0NCB1O_s_0E0B1V_.exit.backedge.i, %bb.b
  %i.ac = phi ptr [ %i.y, %bb.b ], [ %i.j, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldjuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB1T_6LayoutNtB1w_5Debug3fmt0NCB1O_s_0E0B1V_.exit.backedge.i ]
  %i.ad = phi ptr [ %i.x, %bb.b ], [ %i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldjuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB1T_6LayoutNtB1w_5Debug3fmt0NCB1O_s_0E0B1V_.exit.backedge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsu_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8LowerHex3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.ae = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noundef nonnull @36, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB6_6LayoutNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmts_0B8_.exit.i.i, %.split.i.peel, %.split.i.peel32, %.split.i.peel38, %.split.i.peel44, %bb.b, %_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6filter15filter_try_foldjuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB37_6LayoutNtB2K_5Debug3fmt0NCB32_s_0E0B2l_EB39_.exit
  %.sroa.0.1 = phi i1 [ true, %bb.b ], [ %i.ae, %_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6filter15filter_try_foldjuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB37_6LayoutNtB2K_5Debug3fmt0NCB32_s_0E0B2l_EB39_.exit ], [ true, %.split.i.peel ], [ true, %.split.i.peel44 ], [ true, %.split.i.peel38 ], [ true, %.split.i.peel32 ], [ true, %_RNCNvXNtNtCsa0fWqW2HhWg_7ndarray6layout9layoutfmtNtB6_6LayoutNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmts_0B8_.exit.i.i ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs6_NtCsa0fWqW2HhWg_7ndarray11array_serdeNtB8_10ArrayFieldNtNtCs81C6PKbazDz_5serde2de11Deserialize11deserializeNtB2_17ArrayFieldVisitorNtB12_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 21)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsa0fWqW2HhWg_7ndarray5sliceNtB5_13SliceInfoElemNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load i64, ptr %0, align 8, !range !14, !noundef !5 ; 2 uses
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 %i.i, i64 1)
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  store i64 %i.l, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  store i64 %i.p, ptr %i.e, align 8
  %i.q = icmp eq i64 %i.l, 0
  %.pre = load ptr, ptr %1, align 8               ; 4 uses
  br i1 %i.q, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre95 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  store i64 %i.s, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsj_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impiNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.t = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !align !12, !noundef !5
  %i.w = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsj_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impiNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.z = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noundef nonnull @6, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.z, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.aa = phi ptr [ %.pre95, %._crit_edge ], [ %i.y, %bb.d ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !5, !nonnull !5
end_hunk_0
begin_hunk_1_@_RNvXsb_NtNtCsa0fWqW2HhWg_7ndarray9dimension7ndindexRSjINtB5_7NdIndexINtNtB7_3dim3DimNtNtB7_12dynindeximpl9IxDynImplEE15index_unchecked:bb.a
  %i.k = load i32, ptr %i.j, align 4, !alias.scope !234, !noalias !235
  %i.l = zext i32 %i.k to i64
  %.sroa.3.0.i.i.i = select i1 %i.e, i64 %i.i, i64 %i.l
  %.sroa.0.0.i.i.i = select i1 %i.e, ptr %i.g, ptr %i.f ; 2 uses
  %i.m = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i, i64 range(i64 0, 1152921504606846976) %i.c) ; 5 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtB8_3map8map_foldTRjB2i_EiiNCNvXsb_NtNtCsa0fWqW2HhWg_7ndarray9dimension7ndindexRSjINtB2z_7NdIndexINtNtB2B_3dim3DimNtNtB2B_12dynindeximpl9IxDynImplEE15index_unchecked0NCINvXsm_NtNtBa_6traits5accumiNtB4P_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.m, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi1 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x i64>, ptr %i.n, align 8, !noalias !236
  %wide.load2 = load <2 x i64>, ptr %i.p, align 8, !noalias !236
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load3 = load <2 x i64>, ptr %i.o, align 8, !noalias !236
  %wide.load4 = load <2 x i64>, ptr %i.q, align 8, !noalias !236
  %i.r = mul <2 x i64> %wide.load3, %wide.load
  %i.s = mul <2 x i64> %wide.load4, %wide.load2
  %i.t = add <2 x i64> %i.r, %vec.phi             ; 2 uses
  %i.u = add <2 x i64> %i.s, %vec.phi1            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.u, %i.t
  %i.w = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtB8_3map8map_foldTRjB2i_EiiNCNvXsb_NtNtCsa0fWqW2HhWg_7ndarray9dimension7ndindexRSjINtB2z_7NdIndexINtNtB2B_3dim3DimNtNtB2B_12dynindeximpl9IxDynImplEE15index_unchecked0NCINvXsm_NtNtBa_6traits5accumiNtB4P_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit, label %.lr.ph.i.preheader5

.lr.ph.i.preheader5:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.0.014.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.02.013.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader5, %.lr.ph.i
  %.sroa.0.014.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %.sroa.0.014.i.ph, %.lr.ph.i.preheader5 ]
  %.sroa.02.013.i = phi i64 [ %i.x, %.lr.ph.i ], [ %.sroa.02.013.i.ph, %.lr.ph.i.preheader5 ] ; 3 uses
  %i.x = add nuw i64 %.sroa.02.013.i, 1           ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i, i64 %.sroa.02.013.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.02.013.i
  %.val11.i = load i64, ptr %i.y, align 8, !noalias !236, !noundef !5
  %.val12.i = load i64, ptr %i.z, align 8, !noalias !236, !noundef !5
  %i.aa = mul i64 %.val12.i, %.val11.i
  %i.ab = add i64 %i.aa, %.sroa.0.014.i           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.x, %i.m
  br i1 %exitcond.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtB8_3map8map_foldTRjB2i_EiiNCNvXsb_NtNtCsa0fWqW2HhWg_7ndarray9dimension7ndindexRSjINtB2z_7NdIndexINtNtB2B_3dim3DimNtNtB2B_12dynindeximpl9IxDynImplEE15index_unchecked0NCINvXsm_NtNtBa_6traits5accumiNtB4P_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit, label %.lr.ph.i, !llvm.loop !233

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtB8_3map8map_foldTRjB2i_EiiNCNvXsb_NtNtCsa0fWqW2HhWg_7ndarray9dimension7ndindexRSjINtB2z_7NdIndexINtNtB2B_3dim3DimNtNtB2B_12dynindeximpl9IxDynImplEE15index_unchecked0NCINvXsm_NtNtBa_6traits5accumiNtB4P_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.w, %middle.block ], [ %i.ab, %.lr.ph.i ]
  ret i64 %.sroa.0.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXsd_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvXsd_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB1L_3dim3DimAjj1_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero0EB1N_.exit:
  %.val.i = load i64, ptr %0, align 8, !noalias !239, !noundef !5
  %i.a = icmp eq i64 %.val.i, 0
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplINtNtB7_3dim3DimNtB5_9IxDynImplENtNtB7_11remove_axis10RemoveAxis11remove_axis(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 15 uses
  %.sroa.10.sroa.7.i = alloca [24 x i8], align 8  ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.c = load i32, ptr %1, align 8, !range !9, !alias.scope !253, !noalias !254, !noundef !5
  %i.d = trunc nuw i32 %i.c to i1                 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !alias.scope !253, !noalias !254 ; 2 uses
  br i1 %i.d, label %._crit_edge44.i, label %bb.b

._crit_edge44.i:                                  ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !253, !noalias !254
  %i.g = zext i32 %.pre.i to i64
  %.sroa.317.0.i = select i1 %i.d, i64 %i.f, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !255
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !253, !noalias !254, !nonnull !5
  %.sroa.018.0.i = select i1 %i.d, ptr %i.i, ptr %i.h ; 3 uses
  %i.j = add i64 %.sroa.317.0.i, -1               ; 7 uses
  %.not.i = icmp eq i64 %.sroa.317.0.i, 0
  br i1 %.not.i, label %bb.l, label %bb.h, !prof !11

bb.b:                                             ; preds = %bb.a
  switch i32 %.pre.i, label %._crit_edge44.i [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.7.i, i8 0, i64 24, i1 false)
  br label %_RNvMs8_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImpl6remove.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.7.i, i8 0, i64 24, i1 false)
  br label %_RNvMs8_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImpl6remove.exit

bb.e:                                             ; preds = %bb.b
  %i.k = sub i64 1, %2                            ; 3 uses
  %i.l = icmp ult i64 %i.k, 4
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !253, !noalias !254, !noundef !5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.7.i, i8 0, i64 24, i1 false)
  br label %_RNvMs8_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImpl6remove.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27, !noalias !255
  unreachable

bb.h:                                             ; preds = %._crit_edge44.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = icmp ult i64 %.sroa.317.0.i, 6
  br i1 %i.p, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.j, 3                  ; 3 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !257
  %i.r = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.q, i64 noundef 8) #26, !noalias !257 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE16into_boxed_sliceCsa0fWqW2HhWg_7ndarray.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.q) #25, !noalias !258
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE16into_boxed_sliceCsa0fWqW2HhWg_7ndarray.exit.i.i: ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(1) %.sroa.018.0.i, i64 %i.q, i1 false), !noalias !259
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.r, ptr %i.t, align 8, !alias.scope !256, !noalias !260
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.j, ptr %i.u, align 8, !alias.scope !256, !noalias !260
  br label %_RNvMs1_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplINtB5_9IxDynReprjE9copy_fromB9_.exit.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !noalias !261
  %i.v = shl nuw nsw i64 %i.j, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 8 %.sroa.018.0.i, i64 %i.v, i1 false), !noalias !262
  %i.w = trunc nuw nsw i64 %i.j to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.w, ptr %i.x, align 4, !alias.scope !256, !noalias !260
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !260
  br label %_RNvMs1_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplINtB5_9IxDynReprjE9copy_fromB9_.exit.i

_RNvMs1_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplINtB5_9IxDynReprjE9copy_fromB9_.exit.i: ; preds = %bb.k, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE16into_boxed_sliceCsa0fWqW2HhWg_7ndarray.exit.i.i
  %.sink.i.i = phi i32 [ 0, %bb.k ], [ 1, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE16into_boxed_sliceCsa0fWqW2HhWg_7ndarray.exit.i.i ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.b, align 8, !alias.scope !256, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = icmp ult i64 %2, %i.j
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs1_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplINtB5_9IxDynReprjE9copy_fromB9_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge44.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #27, !noalias !255
  unreachable

._crit_edge.loopexit.i:                           ; preds = %bb.p
  %.sroa.03.0.copyload4.pre.i = load i32, ptr %i.b, align 8, !noalias !255
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_RNvMs1_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplINtB5_9IxDynReprjE9copy_fromB9_.exit.i
  %.sroa.03.0.copyload4.i = phi i32 [ %.sroa.03.0.copyload4.pre.i, %._crit_edge.loopexit.i ], [ %.sink.i.i, %_RNvMs1_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplINtB5_9IxDynReprjE9copy_fromB9_.exit.i ]
  %.sroa.7.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.7.0.copyload6.i = load i32, ptr %.sroa.7.0..sroa_idx5.i, align 4, !noalias !255
  %.sroa.10.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.10.sroa.0.0.copyload9.i = load i64, ptr %.sroa.10.0..sroa_idx7.i, align 8, !noalias !255
  %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx7.sroa_idx.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !255
  br label %_RNvMs8_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImpl6remove.exit

bb.m:                                             ; preds = %bb.p, %.lr.ph.i
  %.sroa.0.041.i = phi i64 [ %2, %.lr.ph.i ], [ %i.al, %bb.p ] ; 4 uses
  %i.ad = load i32, ptr %i.b, align 8, !range !9, !noalias !255, !noundef !5
  %i.ae = trunc nuw i32 %i.ad to i1               ; 3 uses
  %i.af = load i64, ptr %i.aa, align 8, !noalias !255 ; 3 uses
  %i.ag = load i32, ptr %i.ab, align 4, !noalias !255
  %i.ah = zext i32 %i.ag to i64
  %.sroa.630.0.i = select i1 %i.ae, i64 %i.af, i64 %i.ah ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.041.i, %.sroa.630.0.i
  br i1 %i.ai, label %bb.p, label %bb.q

bb.n:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %3 = icmp ne i64 %i.af, 0
  %or.cond.i = select i1 %i.ae, i1 %3, i1 false
  br i1 %or.cond.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximpl9IxDynReprjEEBI_.exit.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.n
  %.val.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !263, !noalias !255, !nonnull !5, !noundef !5
  %i.ak = shl nuw nsw i64 %i.af, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ak, i64 noundef 8) #26, !noalias !264
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximpl9IxDynReprjEEBI_.exit.i

bb.o:                                             ; preds = %bb.q
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.al = add nuw i64 %.sroa.0.041.i, 1           ; 3 uses
  %i.am = load ptr, ptr %i.ac, align 8, !noalias !255, !nonnull !5
  %.sroa.028.0.i = select i1 %i.ae, ptr %i.am, ptr %i.ac
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0.i, i64 %i.al
  %i.ao = load i64, ptr %i.an, align 8, !noalias !254, !noundef !5
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.028.0.i, i64 %.sroa.0.041.i
  store i64 %i.ao, ptr %i.ap, align 8, !noalias !255
  %exitcond.not.i = icmp eq i64 %i.al, %i.j
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.m

bb.q:                                             ; preds = %bb.m
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.041.i, i64 noundef %.sroa.630.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25
          to label %bb.o unwind label %bb.n, !noalias !255

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximpl9IxDynReprjEEBI_.exit.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.n
  resume { ptr, i32 } %i.aj

_RNvMs8_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImpl6remove.exit: ; preds = %bb.c, %bb.d, %bb.f, %._crit_edge.i
  %.sroa.10.sroa.0.0.i = phi i64 [ %.sroa.10.sroa.0.0.copyload9.i, %._crit_edge.i ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.o, %bb.f ]
  %.sroa.7.0.i = phi i32 [ %.sroa.7.0.copyload6.i, %._crit_edge.i ], [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %bb.f ]
  %.sroa.03.0.i = phi i32 [ %.sroa.03.0.copyload4.i, %._crit_edge.i ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ]
  store i32 %.sroa.03.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.7.0.i, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.7.i, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXsj_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvXsj_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB1L_3dim3DimAjj2_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero0EB1N_.exit:
  %.val.i = load i64, ptr %0, align 8, !noalias !267, !noundef !5
  %i.a = icmp eq i64 %.val.i, 0
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.1 = load i64, ptr %.ptr.1, align 8
  %i.b = icmp eq i64 %.val.i.1, 0
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  ret i1 %or.cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXsp_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj3_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvXsp_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB1L_3dim3DimAjj3_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero0EB1N_.exit:
  %.val.i = load i64, ptr %0, align 8, !noalias !270, !noundef !5
  %i.a = icmp eq i64 %.val.i, 0
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.1 = load i64, ptr %.ptr.1, align 8
  %i.b = icmp eq i64 %.val.i.1, 0
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.2 = load i64, ptr %.ptr.2, align 8
  %i.c = icmp eq i64 %.val.i.2, 0
  %or.cond2 = select i1 %or.cond, i1 %i.c, i1 false
  ret i1 %or.cond2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXsv_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj4_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvXsv_NtNtCsa0fWqW2HhWg_7ndarray9dimension10conversionINtNtB1L_3dim3DimAjj4_ENtNtCs5edjjqr81J3_10num_traits10identities4Zero7is_zero0EB1N_.exit:
  %.val.i = load i64, ptr %0, align 8, !noalias !273, !noundef !5
  %i.a = icmp eq i64 %.val.i, 0
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.1 = load i64, ptr %.ptr.1, align 8
  %i.b = icmp eq i64 %.val.i.1, 0
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.2 = load i64, ptr %.ptr.2, align 8
  %i.c = icmp eq i64 %.val.i.2, 0
  %or.cond2 = select i1 %or.cond, i1 %i.c, i1 false
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.3 = load i64, ptr %.ptr.3, align 8
  %i.d = icmp eq i64 %.val.i.3, 0
  %or.cond3 = select i1 %or.cond2, i1 %i.d, i1 false
  ret i1 %or.cond3
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const24panic_const_div_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsj_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impiNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #3

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCs5Xr050g3D4S_3std7process5abort() unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #21

attributes #0 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
end_hunk_1
