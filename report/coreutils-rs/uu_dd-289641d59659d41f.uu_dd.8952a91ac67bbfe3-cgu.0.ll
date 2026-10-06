Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_dd-289641d59659d41f.uu_dd.8952a91ac67bbfe3-cgu.0?download=true
inline.NumInlined: 1600
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvMNtCsbMXVmEvvZJf_5uu_dd9parseargsNtB2_6Parser18parse_output_flags:.lr.ph

bb.an:                                            ; preds = %bb.am
  %i.gf = icmp eq i64 %.sroa.4.1.i.ph, 0
  br i1 %i.gf, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit48.thread85, label %.thread76

.thread76:                                        ; preds = %bb.ai, %bb.ae, %bb.m, %bb.y, %bb.al, %bb.ak, %bb.aa, %bb.ab, %bb.ad, %bb.an
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2704
  %i.gg = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.1.i.ph, i64 noundef range(i64 1, 9) 1) #27, !noalias !2704 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.ao, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit48.thread85.sink.split

bb.ao:                                            ; preds = %bb.am, %.thread76
  %.sroa.450.0.ph = phi i64 [ 1, %.thread76 ], [ 0, %bb.am ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.450.0.ph, i64 %.sroa.4.1.i.ph) #32
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit48.thread85.sink.split: ; preds = %.thread76, %.loopexit
  %.sink203 = phi ptr [ %i.dj, %.loopexit ], [ %i.gg, %.thread76 ] ; 2 uses
  %.sink185.ph = phi i64 [ -9223372036854775797, %.loopexit ], [ -9223372036854775803, %.thread76 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink203, ptr nonnull align 1 %.sroa.0.1.i.ph, i64 %.sroa.4.1.i.ph, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit48.thread85

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit48.thread85: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit48.thread85.sink.split, %bb.an
  %.sink185 = phi i64 [ -9223372036854775803, %bb.an ], [ %.sink185.ph, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit48.thread85.sink.split ]
  %.sroa.4.1.i.ph183.sink184 = phi i64 [ 0, %bb.an ], [ %.sroa.4.1.i.ph, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit48.thread85.sink.split ] ; 2 uses
  %.sink = phi ptr [ inttoptr (i64 1 to ptr), %bb.an ], [ %.sink203, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit48.thread85.sink.split ]
  store i64 %.sink185, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.1.i.ph183.sink184, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.1.i.ph183.sink184, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.ap:                                            ; preds = %.loopexit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.4.1.i.ph) #32
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtCsbMXVmEvvZJf_5uu_dd9parseargsNtB2_6Parser7parse_n(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs31parse_bytes_with_opt_multiplier(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #27
  %i.b = load i64, ptr %i.a, align 8, !range !37, !noundef !8 ; 2 uses
  %.not = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.513.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %.sroa.415.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ult i64 %2, 16
  br i1 %i.e, label %.preheader.i.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit

.preheader.i.i:                                   ; preds = %bb.c
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.d
  %.sroa.01.05.i.i = phi i64 [ %i.i, %bb.d ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.i.i
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !2709, !noundef !8
  %i.h = icmp eq i8 %i.g, 66
  br i1 %i.h, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread19, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.i = add nuw nsw i64 %.sroa.01.05.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.i, %2
  br i1 %exitcond.not.i.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %.lr.ph.i.i

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit: ; preds = %bb.c
  %i.j = tail call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 66, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) #27
  %.fr22 = freeze { i64, i64 } %i.j
  %i.k = extractvalue { i64, i64 } %.fr22, 0
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread19, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread19: ; preds = %.lr.ph.i.i, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  br label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread: ; preds = %bb.d, %.preheader.i.i, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread19
  %i.m = phi i64 [ 1, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread19 ], [ 0, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit ], [ 0, %.preheader.i.i ], [ 0, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMNtCsbMXVmEvvZJf_5uu_dd9parseargsNtB2_6Parser8validate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(216) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 1               ; 5 uses
  %i.b = alloca [256 x i8], align 1               ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.j = load i8, ptr %i.i, align 8, !range !11, !noundef !8 ; 2 uses
  %i.k = trunc nuw i8 %i.j to i1                  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 161
  %i.m = load i8, ptr %i.l, align 1, !range !11, !noundef !8 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 162
  %i.p = load i8, ptr %i.o, align 2, !range !11, !noundef !8 ; 2 uses
  %i.q = trunc nuw i8 %i.p to i1                  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 163
  %i.s = load i8, ptr %i.r, align 1, !range !11, !noundef !8
  %i.t = trunc nuw i8 %i.s to i1                  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.v = load i8, ptr %i.u, align 4, !range !11, !noundef !8
  %i.w = trunc nuw i8 %i.v to i1                  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 165
  %i.y = load i8, ptr %i.x, align 1, !range !11, !noundef !8 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 166
  %i.ab = load i8, ptr %i.aa, align 2, !range !11, !noundef !8 ; 2 uses
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 167
  %i.ae = load i8, ptr %i.ad, align 1, !range !11, !noundef !8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ag = load i8, ptr %i.af, align 8, !range !11, !noundef !8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 169
  %i.ai = load i8, ptr %i.ah, align 1, !range !11, !noundef !8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.ak = load <4 x i8>, ptr %i.aj, align 2       ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 174
  %i.am = load i8, ptr %i.al, align 2, !range !11, !noundef !8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 175
  %i.ao = load i8, ptr %i.an, align 1, !range !11, !noundef !8
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.n, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ap = icmp ne i8 %i.m, %i.p
  %brmerge = or i1 %i.ap, %i.n
  br i1 %brmerge, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  %.124 = select i1 %i.q, i8 2, i8 -1
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %not. = phi i1 [ true, %bb.e ], [ %i.q, %bb.d ], [ true, %bb.c ] ; 3 uses
  %.sroa.0.0 = phi i8 [ 1, %bb.e ], [ %.124, %bb.d ], [ 0, %bb.c ] ; 4 uses
  br i1 %i.t, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.aq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.av

bb.h:                                             ; preds = %bb.f
  br i1 %i.w, label %bb.w, label %.thread

bb.i:                                             ; preds = %bb.f
  %.sroa.018.0 = and i1 %not., %i.k               ; 6 uses
  %.not.i = icmp eq i8 %.sroa.0.0, -1
  br i1 %.not.i, label %bb.k, label %bb.j

.thread:                                          ; preds = %bb.h
  %.sroa.018.0154 = and i1 %not., %i.k            ; 2 uses
  %.not.i155 = icmp eq i8 %.sroa.0.0, -1
  br i1 %.not.i155, label %.thread167, label %.thread161

bb.j:                                             ; preds = %bb.i
  br i1 %i.w, label %.thread161, label %bb.q

bb.k:                                             ; preds = %bb.i
  br i1 %i.w, label %bb.n, label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs10get_ctable.exit

.thread167:                                       ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ar = tail call noundef ptr @setlocale(i32 noundef 0, ptr noundef nonnull @183) #27, !noalias !2732 ; 0 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %2, i8 0, i64 255, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.thread167
  %.sroa.0.0.idx10.i.i.i = phi i64 [ 0, %.thread167 ], [ %.sroa.0.0.add.i.i.i, %bb.l ] ; 3 uses
  %indvars11.i.i.i = trunc i64 %.sroa.0.0.idx10.i.i.i to i32
  %.sroa.0.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.idx10.i.i.i
  %.sroa.0.0.add.i.i.i = add nuw nsw i64 %.sroa.0.0.idx10.i.i.i, 1 ; 2 uses
  %i.as = tail call noundef i32 @toupper(i32 noundef %indvars11.i.i.i) #27, !noalias !2732
  %i.at = trunc i32 %i.as to i8
  store i8 %i.at, ptr %.sroa.0.0.ptr.i.i.i, align 1
  %i.au = icmp eq i64 %.sroa.0.0.add.i.i.i, 256
  br i1 %i.au, label %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables17build_ucase_table.exit.i.i, label %bb.l

_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables17build_ucase_table.exit.i.i: ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2733
  %i.av = tail call noundef dereferenceable_or_null(256) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 129) 1) #27, !noalias !2733 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.m, label %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables24get_lcase_to_ucase_table.exit.i, !prof !10

bb.m:                                             ; preds = %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables17build_ucase_table.exit.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 256) #32, !noalias !2733
  unreachable

_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables24get_lcase_to_ucase_table.exit.i: ; preds = %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables17build_ucase_table.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.av, ptr noundef nonnull readonly align 1 dereferenceable(256) %i.b, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs10get_ctable.exit

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ax = tail call noundef ptr @setlocale(i32 noundef 0, ptr noundef nonnull @183) #27, !noalias !2734 ; 0 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %3, i8 0, i64 255, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.0.idx10.i.i13.i = phi i64 [ 0, %bb.n ], [ %.sroa.0.0.add.i.i16.i, %bb.o ] ; 3 uses
  %indvars11.i.i14.i = trunc i64 %.sroa.0.0.idx10.i.i13.i to i32
  %.sroa.0.0.ptr.i.i15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.idx10.i.i13.i
  %.sroa.0.0.add.i.i16.i = add nuw nsw i64 %.sroa.0.0.idx10.i.i13.i, 1 ; 2 uses
  %i.ay = tail call noundef i32 @tolower(i32 noundef %indvars11.i.i14.i) #27, !noalias !2734
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %.sroa.0.0.ptr.i.i15.i, align 1
  %i.ba = icmp eq i64 %.sroa.0.0.add.i.i16.i, 256
  br i1 %i.ba, label %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables17build_lcase_table.exit.i.i, label %bb.o

_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables17build_lcase_table.exit.i.i: ; preds = %bb.o
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2735
  %i.bb = tail call noundef dereferenceable_or_null(256) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 129) 1) #27, !noalias !2735 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.p, label %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables24get_ucase_to_lcase_table.exit.i, !prof !10

bb.p:                                             ; preds = %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables17build_lcase_table.exit.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 256) #32, !noalias !2735
  unreachable

_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables24get_ucase_to_lcase_table.exit.i: ; preds = %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables17build_lcase_table.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.bb, ptr noundef nonnull readonly align 1 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs10get_ctable.exit

.thread161:                                       ; preds = %.thread, %bb.j
  %.sroa.018.0159165 = phi i1 [ %.sroa.018.0, %bb.j ], [ %.sroa.018.0154, %.thread ] ; 3 uses
  switch i8 %.sroa.0.0, label %default.unreachable.i [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
  ]

bb.q:                                             ; preds = %bb.j
  switch i8 %.sroa.0.0, label %default.unreachable [
    i8 0, label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs10get_ctable.exit
    i8 1, label %bb.r
    i8 2, label %bb.s
  ]

default.unreachable:                              ; preds = %bb.q
  unreachable

default.unreachable.i:                            ; preds = %.thread161
  unreachable

bb.r:                                             ; preds = %bb.q
  br label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs10get_ctable.exit

bb.s:                                             ; preds = %bb.q
  br label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs10get_ctable.exit

bb.t:                                             ; preds = %.thread161
  %..i = select i1 %i.t, ptr @191, ptr @190
  br label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs10get_ctable.exit

bb.u:                                             ; preds = %.thread161
  %.11.i = select i1 %i.t, ptr @193, ptr @192
  br label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs10get_ctable.exit

bb.v:                                             ; preds = %.thread161
  %.12.i = select i1 %i.t, ptr @190, ptr @191
  br label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs10get_ctable.exit

_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs10get_ctable.exit: ; preds = %bb.k, %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables24get_lcase_to_ucase_table.exit.i, %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables24get_ucase_to_lcase_table.exit.i, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.sroa.018.0158 = phi i1 [ %.sroa.018.0, %bb.k ], [ %.sroa.018.0159165, %bb.v ], [ %.sroa.018.0159165, %bb.u ], [ %.sroa.018.0159165, %bb.t ], [ %.sroa.018.0, %bb.q ], [ %.sroa.018.0154, %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables24get_lcase_to_ucase_table.exit.i ], [ %.sroa.018.0, %bb.s ], [ %.sroa.018.0, %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables24get_ucase_to_lcase_table.exit.i ], [ %.sroa.018.0, %bb.r ] ; 2 uses
  %.sroa.07.0.i = phi ptr [ null, %bb.k ], [ %.12.i, %bb.v ], [ %.11.i, %bb.u ], [ %..i, %bb.t ], [ @187, %bb.q ], [ %i.av, %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables24get_lcase_to_ucase_table.exit.i ], [ @189, %bb.s ], [ %i.bb, %_RNvNtCsbMXVmEvvZJf_5uu_dd17conversion_tables24get_ucase_to_lcase_table.exit.i ], [ @188, %bb.r ] ; 5 uses
  %i.bd = extractelement <4 x i8> %i.ak, i64 1
  %i.be = extractelement <4 x i8> %i.ak, i64 2
  %i.bf = and i8 %i.be, %i.bd
  %.not = icmp eq i8 %i.bf, 0
  br i1 %.not, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775806, ptr %i.bg, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.av

bb.x:                                             ; preds = %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs10get_ctable.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bi = load i64, ptr %i.bh, align 8, !range !9, !noundef !8
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs10get_ctable.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775804, ptr %i.bk, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.av

bb.z:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !8 ; 4 uses
  br i1 %not., label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.bn = icmp ne i8 %i.y, %i.ab
  %brmerge3 = or i1 %i.bn, %i.z
  br i1 %brmerge3, label %bb.ak, label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit

bb.ab:                                            ; preds = %bb.z
  %i.bo = icmp eq i8 %i.j, 0
  br label %bb.af

bb.ac:                                            ; preds = %bb.z
  br i1 %i.z, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ac, label %.thread191, label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.ac, label %bb.aj, label %bb.af

_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit: ; preds = %bb.aa, %bb.ad
  %.not.i136 = icmp eq ptr %.sroa.07.0.i, null
  %i.bp = ptrtoint ptr %.sroa.07.0.i to i64
  %spec.select183 = sext i1 %.not.i136 to i8
  br label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit139

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.sroa.022.1 = phi i1 [ true, %bb.ae ], [ %i.bo, %bb.ab ] ; 2 uses
  %.not.i137 = icmp eq ptr %.sroa.07.0.i, null
  br i1 %.not.i137, label %bb.ah, label %bb.ag

.thread191:                                       ; preds = %bb.ad
  %.not.i137193 = icmp eq ptr %.sroa.07.0.i, null
  br i1 %.not.i137193, label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit139, label %.thread196

bb.ag:                                            ; preds = %bb.af
  br i1 %.sroa.022.1, label %bb.ai, label %.thread196

bb.ah:                                            ; preds = %bb.af
  %spec.select200 = select i1 %.sroa.022.1, i8 1, i8 2
  br label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit139

.thread196:                                       ; preds = %.thread191, %bb.ag
  %spec.select184 = select i1 %.sroa.018.0158, i8 6, i8 5
  br label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit139

bb.ai:                                            ; preds = %bb.ag
  %spec.select185 = select i1 %.sroa.018.0158, i8 4, i8 3
  br label %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit139

bb.aj:                                            ; preds = %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.bq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.av

bb.ak:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775799, ptr %i.br, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.av

_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit139: ; preds = %bb.ah, %.thread191, %.thread196, %bb.ai, %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit
  %.sroa.17142.0 = phi i64 [ %i.bp, %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit ], [ %i.bm, %bb.ai ], [ %i.bm, %.thread196 ], [ %i.bm, %.thread191 ], [ %i.bm, %bb.ah ]
  %.sroa.0.0152 = phi i8 [ %spec.select183, %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit ], [ %spec.select185, %bb.ai ], [ %spec.select184, %.thread196 ], [ 2, %.thread191 ], [ %spec.select200, %bb.ah ]
  %.sroa.732.0 = phi i8 [ 0, %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit ], [ 32, %bb.ai ], [ 32, %.thread196 ], [ 32, %.thread191 ], [ 32, %bb.ah ]
  %i.bs = load i64, ptr %1, align 8, !range !9, !noundef !8 ; 2 uses
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit139
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !8 ; 2 uses
  br label %bb.an

bb.am:                                            ; preds = %_RNvNtCsbMXVmEvvZJf_5uu_dd9parseargs15conversion_mode.exit139
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !9, !noundef !8
  %i.by = trunc nuw i64 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  %.sroa.038.0 = select i1 %i.by, i64 %i.ca, i64 512
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !range !9, !noundef !8
  %i.cd = trunc nuw i64 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cf = load i64, ptr %i.ce, align 8
  %.sroa.043.0 = select i1 %i.cd, i64 %i.cf, i64 512
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.043.1 = phi i64 [ %i.bv, %bb.al ], [ %.sroa.043.0, %bb.am ] ; 2 uses
  %.sroa.038.1 = phi i64 [ %i.bv, %bb.al ], [ %.sroa.038.0, %bb.am ] ; 2 uses
  %.not120 = icmp eq i64 %i.bs, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ch = load i8, ptr %i.cg, align 8, !range !11
  %.sroa.049.0 = select i1 %.not120, i8 1, i8 %i.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cj = load i64, ptr %i.ci, align 8, !range !9, !noundef !8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 176
end_hunk_0
