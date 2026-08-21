Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_numfmt-ef49e477fd601728.uu_numfmt.86976827d2a51656-cgu.0?download=true
inline.NumInlined: 1038
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXNtCsbyqtxyC5WYI_9uu_numfmt6formatNtB2_18WhitespaceSplitterNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next:bb.a
bb.ad:                                            ; preds = %bb.ab
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !2710, !noundef !18
  %i.dk = icmp sgt i8 %i.dj, -65
  br i1 %i.dk, label %bb.ac, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread29, !prof !2543

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit: ; preds = %bb.ac
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dc
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !2710, !noundef !18
  %i.dn = icmp sgt i8 %i.dm, -65
  br i1 %i.dn, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread29, !prof !2544

.loopexit:                                        ; preds = %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i, %bb.l, %bb.k, %bb.q, %bb.f, %bb.w, %bb.g, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsbyqtxyC5WYI_9uu_numfmt.exit.i, %bb.s, %bb.r
  %.not.i19 = icmp eq i64 %i.t, 0
  %..i = select i1 %.not.i19, ptr null, ptr %i.r
  store ptr %..i, ptr %i.f, align 8
  store i64 %i.t, ptr %i.h, align 8
  store ptr %i.j, ptr %0, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %.sroa.513.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.p, ptr %.sroa.614.0..sroa_idx, align 8
  br label %bb.d

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread29: ; preds = %bb.ad, %bb.z, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef %i.l, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #27
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread: ; preds = %bb.ac, %bb.aa, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit
  %i.do = icmp ne i64 %i.dc, 0
  %.not.i20 = icmp ult i64 %i.dc, %i.i
  %or.cond = select i1 %i.do, i1 %.not.i20, i1 false
  br i1 %or.cond, label %bb.ae, label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit

bb.ae:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dc
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !2713, !noundef !18
  %i.dr = icmp sgt i8 %i.dq, -65
  br i1 %i.dr, label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %bb.ae, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dc
  %i.dt = sub nuw i64 %i.i, %i.dc
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %i.dv = sub nuw i64 %i.dc, %i.l
  %.not5.i = icmp eq i64 %i.i, %i.dc
  %.sroa.03.0.i = select i1 %.not5.i, ptr null, ptr %i.ds
  store ptr %.sroa.03.0.i, ptr %i.f, align 8
  store i64 %i.dt, ptr %i.h, align 8
  store ptr %i.j, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.du, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dv, ptr %.sroa.610.0..sroa_idx, align 8
  br label %bb.d

_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %bb.ae
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef %i.dc, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #27
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i64 @_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %1, 31
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !alias.scope !2716, !nonnull !18, !noundef !18 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2716, !nonnull !18, !noundef !18 ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 2 uses
  %.idx = and i64 %i.g, -32                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.i = icmp eq i64 %1, 32
  %i.j = icmp samesign eq i64 %.idx, 0
  %or.cond38 = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond38, label %._crit_edge, label %.lr.ph.i.i

.loopexit:                                        ; preds = %.lr.ph47, %bb.c, %bb.a
  %.sroa.0.0 = phi i64 [ %1, %bb.a ], [ %.sroa.0.1.lcssa, %bb.c ], [ %.sroa.0.1.lcssa, %.lr.ph47 ] ; 2 uses
  %.not2950 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not2950, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %._crit_edge, %.loopexit
  %.sroa.0.0130 = phi i64 [ %.sroa.0.0, %.loopexit ], [ %.sroa.0.1.lcssa, %._crit_edge ]
  %.promoted49 = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2719, !nonnull !18, !noundef !18 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  br label %bb.d

._crit_edge:                                      ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.07.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.r, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.1.lcssa = phi i64 [ %1, %bb.b ], [ %op.rdx, %.lr.ph.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.07.0.lcssa ; 3 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !2722
  %.not = icmp ule i64 %.sroa.07.0.lcssa, %i.g
  tail call void @llvm.assume(i1 %.not)
  %.not2745 = icmp eq ptr %i.d, %i.n
  br i1 %.not2745, label %.lr.ph53, label %.lr.ph47

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.0.141 = phi i64 [ %op.rdx, %.lr.ph.i.i ], [ %1, %bb.b ]
  %.sroa.06.040 = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.07.039 = phi i64 [ %i.r, %.lr.ph.i.i ], [ 0, %bb.b ]
  %i.o = load <32 x i8>, ptr %.sroa.06.040, align 1
  %i.p = icmp sgt <32 x i8> %i.o, splat (i8 -65)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.040, i64 32 ; 2 uses
  %i.r = add i64 %.sroa.07.039, 32                ; 2 uses
  %i.s = bitcast <32 x i1> %i.p to i32
  %i.t = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.s)
  %i.u = zext nneg i32 %i.t to i64
  %op.rdx = sub i64 %.sroa.0.141, %i.u            ; 3 uses
  %i.v = icmp ult i64 %op.rdx, 33
  %i.w = icmp eq ptr %i.q, %i.h
  %or.cond = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond, label %._crit_edge, label %.lr.ph.i.i

.lr.ph47:                                         ; preds = %._crit_edge, %bb.c
  %i.x = phi ptr [ %i.aa, %bb.c ], [ %i.n, %._crit_edge ] ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !noundef !18
  %i.z = icmp slt i8 %i.y, -64
  br i1 %i.z, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !alias.scope !2725
  %.not27 = icmp eq ptr %i.d, %i.aa
  br i1 %.not27, label %.loopexit, label %.lr.ph47

bb.d:                                             ; preds = %.lr.ph53, %bb.e
  %.sroa.0.251 = phi i64 [ %.sroa.0.0130, %.lr.ph53 ], [ %i.ae, %bb.e ] ; 2 uses
  %i.ab = phi ptr [ %.promoted49, %.lr.ph53 ], [ %i.ak, %bb.e ] ; 4 uses
  %.not30 = icmp eq ptr %i.l, %i.ab
  br i1 %.not30, label %._crit_edge54, label %bb.e

._crit_edge54:                                    ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.0.2.lcssa = phi i64 [ 0, %.loopexit ], [ %.sroa.0.251, %bb.d ], [ 0, %bb.e ]
  ret i64 %.sroa.0.2.lcssa

bb.e:                                             ; preds = %bb.d
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub nuw i64 %i.m, %i.ac
  %i.ae = add i64 %.sroa.0.251, -1                ; 2 uses
  %i.af = load i8, ptr %i.ab, align 1, !noundef !18
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @158, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !18
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aj ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !alias.scope !2728
  %.not32 = icmp uge i64 %i.ad, %i.aj
  tail call void @llvm.assume(i1 %.not32)
  %.not29 = icmp eq i64 %i.ae, 0
  br i1 %.not29, label %._crit_edge54, label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsbyqtxyC5WYI_9uu_numfmt5unitsNtB5_17DisplayableSuffixNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !2021, !noundef !18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !323, !noundef !18
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !545, !noundef !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = icmp eq i64 %i.c, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ne i8 %i.h, 4
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i8 %i.h, 3
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.d
  %storemerge = phi i32 [ %i.p, %bb.d ], [ 107, %bb.b ]
  store i32 %storemerge, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsk_NtCs6JMX4GRUq9U_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  %i.l = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !18, !align !143, !noundef !18 ; 2 uses
  %i.o = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @125, ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.o, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %.0..sroa_stride = shl nuw nsw i64 %i.c, 2
  %.0..sroa_idx = getelementptr inbounds nuw i8, ptr @159, i64 %.0..sroa_stride
  %i.p = load i32, ptr %.0..sroa_idx, align 4
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !18, !nonnull !18
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 1) #28
  br i1 %i.s, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g, %bb.c, %bb.f
  %.sroa.0.0 = phi i1 [ false, %bb.f ], [ true, %bb.c ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs0_NtCsbyqtxyC5WYI_9uu_numfmt7optionsNtB5_12InvalidModesNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs3_NtCs7tKScEop1B6_5alloc3stre12to_lowercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #26
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !18, !noundef !18 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !18 ; 17 uses
  switch i64 %i.j, label %bb.i [
    i64 5, label %bb.b
    i64 4, label %bb.d
    i64 6, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.h, align 1
  %i.l = xor i32 %i.k, 1919902305
  %i.m = getelementptr i8, ptr %i.h, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = xor i32 %i.o, 116
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %.thread19

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.u, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.d:                                             ; preds = %bb.a
  %i.v = load i32, ptr %i.h, align 1
  %i.w = icmp ne i32 %i.v, 1818845542
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.z, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.f:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.h, align 1
  %i.ab = icmp ne i32 %i.aa, 1852989815
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %.thread19

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ae, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.h:                                             ; preds = %bb.a
  %i.af = load i32, ptr %i.h, align 1
  %i.ag = xor i32 %i.af, 1869506409
  %i.ah = getelementptr i8, ptr %i.h, i64 4
  %i.ai = load i16, ptr %i.ah, align 1
  %i.aj = zext i16 %i.ai to i32
  %i.ak = xor i32 %i.aj, 25970
  %i.al = or i32 %i.ag, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %.thread19

.thread19:                                        ; preds = %bb.h, %bb.b, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx16, align 8
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx17, align 8
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.not.i = icmp slt i64 %i.j, 0
  br i1 %.not.i, label %bb.l, label %bb.j, !prof !433

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp eq i64 %i.j, 0
  br i1 %i.ap, label %.thread31, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %.thread19, %bb.j
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2731
  %i.aq = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.j, i64 noundef range(i64 1, 9) 1) #26, !noalias !2731 ; 18 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.as, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.l:                                             ; preds = %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.i ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.j) #29
  unreachable

bb.m:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull align 1 %i.h, i64 %i.j, i1 false)
  %cond = icmp eq i64 %i.j, 1
  %i.at = load i8, ptr %i.aq, align 1, !alias.scope !2734, !noalias !2737 ; 2 uses
  br i1 %cond, label %bb.n, label %thread-pre-split.i

bb.n:                                             ; preds = %bb.m
  switch i8 %i.at, label %bb.u [
    i8 43, label %.thread31
    i8 45, label %.thread31
  ]

thread-pre-split.i:                               ; preds = %bb.m
  switch i8 %i.at, label %bb.u [
    i8 43, label %bb.o
    i8 45, label %bb.p
  ]

bb.o:                                             ; preds = %thread-pre-split.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.av = add nsw i64 %i.j, -1
  br label %bb.u

bb.p:                                             ; preds = %thread-pre-split.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.ax = add nsw i64 %i.j, -1                    ; 3 uses
  %i.ay = icmp samesign ult i64 %i.j, 17
  br i1 %i.ay, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.p
  %.not103137.i = icmp eq i64 %i.ax, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.p, %bb.s
  %.sroa.0.1136.i = phi ptr [ %i.az, %bb.s ], [ %i.aw, %bb.p ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.ba, %bb.s ], [ %i.ax, %bb.p ]
  %.sroa.084.0134.i = phi i64 [ %i.bl, %bb.s ], [ 0, %bb.p ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.ba = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.bb = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0
  %i.bd = extractvalue { i64, i1 } %i.bb, 1
  br i1 %i.bd, label %.thread31, label %bb.q, !prof !221

bb.q:                                             ; preds = %.lr.ph.i
  %i.be = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !2734, !noalias !2737, !noundef !18
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nsw i32 %i.bf, -48                  ; 2 uses
  %i.bh = icmp ult i32 %i.bg, 10
  br i1 %i.bh, label %bb.r, label %.thread31

bb.r:                                             ; preds = %bb.q
  %i.bi = zext nneg i32 %i.bg to i64
  %i.bj = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bc, i64 %i.bi) ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %.thread31, label %bb.s, !prof !221

bb.s:                                             ; preds = %bb.r
  %i.bl = extractvalue { i64, i1 } %i.bj, 0       ; 2 uses
end_hunk_0
