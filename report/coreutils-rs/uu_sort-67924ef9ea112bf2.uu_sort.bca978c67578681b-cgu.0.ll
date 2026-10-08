Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_sort-67924ef9ea112bf2.uu_sort.bca978c67578681b-cgu.0?download=true
inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RNvCsgcf5BHVXlUt_7uu_sort15legacy_key_to_k:bb.a
  %i.an = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.an)
  store i64 %i.ai, ptr %i.aa, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit44

bb.k:                                             ; preds = %bb.j
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !9805
  %i.ao = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !9805 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit, %bb.k
  %.sroa.468.0.ph = phi i64 [ 1, %bb.k ], [ 0, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.468.0.ph, i64 %i.al) #37
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %i.ak, i64 %i.al, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = load i64, ptr %i.g, align 8, !range !22, !noundef !11
  %i.ar = sub i64 %i.aq, %i.ai
  %i.as = icmp ugt i64 %i.al, %i.ar
  br i1 %i.as, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i, !prof !9806

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.thread.i: ; preds = %bb.m
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ai, i64 noundef %i.al, i64 noundef 1, i64 noundef 1) #34
  %i.at = load i64, ptr %i.aa, align 8, !noundef !11 ; 2 uses
  %i.au = icmp sgt i64 %i.at, -1
  call void @llvm.assume(i1 %i.au)
  %.pre = load ptr, ptr %i.af, align 8
  br label %bb.n

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.m
  %i.av = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.av)
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.thread.i
  %i.aw = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.thread.i ], [ %i.ag, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i ] ; 2 uses
  %i.ax = phi i64 [ %i.at, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.thread.i ], [ %i.ai, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %i.ao, i64 %i.al, i1 false), !noalias !9807
  %i.az = add nuw i64 %i.ax, %i.al                ; 2 uses
  store i64 %i.az, ptr %i.aa, align 8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !9808
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit44

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit44: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgcf5BHVXlUt_7uu_sort.exit.thread, %bb.n
  %i.ba = phi ptr [ %i.ag, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgcf5BHVXlUt_7uu_sort.exit.thread ], [ %i.aw, %bb.n ]
  %i.bb = phi i64 [ %i.ai, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgcf5BHVXlUt_7uu_sort.exit.thread ], [ %i.az, %bb.n ] ; 6 uses
  br i1 %i.w, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit60, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit44
  %i.bc = icmp sgt i64 %i.bb, -1
  call void @llvm.assume(i1 %i.bc)
  %i.bd = load i64, ptr %i.g, align 8, !range !22, !noundef !11
  %i.be = icmp eq i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.p, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit46, !prof !21

bb.p:                                             ; preds = %bb.o
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bb, i64 noundef 1, i64 noundef 1, i64 noundef 1) #34
  %.pre123 = load ptr, ptr %i.af, align 8
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit46

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit46: ; preds = %bb.o, %bb.p
  %i.bf = phi ptr [ %i.ba, %bb.o ], [ %.pre123, %bb.p ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bb
  store i8 46, ptr %i.bg, align 1, !noalias !9809
  %i.bh = add nuw i64 %i.bb, 1                    ; 7 uses
  store i64 %i.bh, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bi = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.v, ptr noalias nofree noundef nonnull %i.a, i64 noundef 20) #34 ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %i.bi, 0
  %i.bk = extractvalue { ptr, i64 } %i.bi, 1      ; 10 uses
  %.not.i47 = icmp slt i64 %i.bk, 0
  br i1 %.not.i47, label %bb.t, label %bb.q, !prof !12

bb.q:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit46
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgcf5BHVXlUt_7uu_sort.exit57.thread, label %bb.r

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgcf5BHVXlUt_7uu_sort.exit57.thread: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = icmp sgt i64 %i.bh, -1
  call void @llvm.assume(i1 %i.bm)
  store i64 %i.bh, ptr %i.aa, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit60

bb.r:                                             ; preds = %bb.q
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !9810
  %i.bn = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !9810 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.t, label %bb.u

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit60: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i54, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgcf5BHVXlUt_7uu_sort.exit57.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit44
  %i.bp = phi i64 [ %i.cm, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i54 ], [ %i.bh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgcf5BHVXlUt_7uu_sort.exit57.thread ], [ %i.bb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit44 ] ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !11, !noundef !11
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !11 ; 5 uses
  %i.bu = load i64, ptr %i.g, align 8, !range !22, !noundef !11
  %i.bv = sub i64 %i.bu, %i.bp
  %i.bw = icmp ugt i64 %i.bt, %i.bv
  br i1 %i.bw, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.thread.i52, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i50, !prof !21

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.thread.i52: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit60
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bp, i64 noundef %i.bt, i64 noundef 1, i64 noundef 1) #34
  %i.bx = load i64, ptr %i.aa, align 8, !noundef !11 ; 2 uses
  %i.by = icmp sgt i64 %i.bx, -1
  call void @llvm.assume(i1 %i.by)
  br label %bb.s

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i50: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit60
  %i.bz = icmp sgt i64 %i.bp, -1
  call void @llvm.assume(i1 %i.bz)
  %.not.i51 = icmp eq i64 %i.bt, 0
  br i1 %.not.i51, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgcf5BHVXlUt_7uu_sort.exit53, label %bb.s

bb.s:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i50, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.thread.i52
  %i.ca = phi i64 [ %i.bx, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.thread.i52 ], [ %i.bp, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i50 ] ; 2 uses
  %i.cb = load ptr, ptr %i.af, align 8, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull readonly align 1 %i.br, i64 %i.bt, i1 false), !noalias !9811
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgcf5BHVXlUt_7uu_sort.exit53

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgcf5BHVXlUt_7uu_sort.exit53: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i50, %bb.s
  %i.cd = phi i64 [ %i.ca, %bb.s ], [ %i.bp, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i50 ]
  %i.ce = add i64 %i.cd, %i.bt
  store i64 %i.ce, ptr %i.aa, align 8
  br label %bb.e

bb.t:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit46, %bb.r
  %.sroa.471.0.ph = phi i64 [ 1, %bb.r ], [ 0, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit46 ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.471.0.ph, i64 %i.bk) #37
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %i.bj, i64 %i.bk, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = load i64, ptr %i.g, align 8, !range !22, !noundef !11
  %i.cg = sub i64 %i.cf, %i.bh
  %i.ch = icmp ugt i64 %i.bk, %i.cg
  br i1 %i.ch, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.thread.i56, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i54, !prof !9806

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.thread.i56: ; preds = %bb.u
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bh, i64 noundef %i.bk, i64 noundef 1, i64 noundef 1) #34
  %i.ci = load i64, ptr %i.aa, align 8, !noundef !11
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i54

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.i54: ; preds = %bb.u, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.thread.i56
  %.sink132 = phi i64 [ %i.ci, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgcf5BHVXlUt_7uu_sort.exit.thread.i56 ], [ %i.bh, %bb.u ] ; 3 uses
  %i.cj = icmp sgt i64 %.sink132, -1
  call void @llvm.assume(i1 %i.cj)
  %i.ck = load ptr, ptr %i.af, align 8, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink132
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull readonly align 1 %i.bn, i64 %i.bk, i1 false), !noalias !9812
  %i.cm = add nuw i64 %.sink132, %i.bk            ; 2 uses
  store i64 %i.cm, ptr %i.aa, align 8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !9813
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit60
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCsgcf5BHVXlUt_7uu_sort17parse_field_count(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 29, 35) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = icmp eq i64 %.sroa.0.030, 0
  br i1 %i.a, label %.thread.thread, label %bb.d

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.030 = phi i64 [ %i.e, %bb.c ], [ 0, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.030
  %i.c = load i8, ptr %i.b, align 1, !noundef !11 ; 2 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.e = add nuw i64 %.sroa.0.030, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %2
  br i1 %exitcond.not, label %.split3.i, label %.lr.ph

.thread.thread:                                   ; preds = %bb.a, %bb.b
  %i.f = tail call fastcc ptr @_RNvCsgcf5BHVXlUt_7uu_sort19invalid_count_error(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @89, ptr %i.h, align 8
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = icmp sgt i8 %i.c, -65
  br i1 %i.i, label %.split3.i, label %bb.j

.split3.i:                                        ; preds = %bb.c, %bb.d
  %.sroa.0.028 = phi i64 [ %.sroa.0.030, %bb.d ], [ %2, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.028
  %i.k = sub nuw i64 %2, %.sroa.0.028
  %cond = icmp eq i64 %.sroa.0.028, 1
  %i.l = load i8, ptr %1, align 1, !alias.scope !9817, !noalias !9818 ; 2 uses
  br i1 %cond, label %bb.e, label %thread-pre-split.i

bb.e:                                             ; preds = %.split3.i
  switch i8 %i.l, label %thread-pre-split.i [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %.split3.i, %bb.e
  %cond.i = icmp eq i8 %i.l, 43                   ; 2 uses
  %i.m = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.0.028, %i.m  ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.n = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.n, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %thread-pre-split.i
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.h
  %.not52.i = icmp eq i64 %i.p, 0
  br i1 %.not52.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %thread-pre-split.i, %.preheader56.i
  %.sroa.0.1.i60 = phi ptr [ %i.o, %.preheader56.i ], [ %.sroa.0.0.i, %thread-pre-split.i ] ; 2 uses
  %.sroa.15.1.i59 = phi i64 [ %i.p, %.preheader56.i ], [ %.sroa.15.0.i, %thread-pre-split.i ]
  %.sroa.042.0.i58 = phi i64 [ %i.aa, %.preheader56.i ], [ 0, %thread-pre-split.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i60, i64 1
  %i.p = add nsw i64 %.sroa.15.1.i59, -1          ; 2 uses
  %i.q = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i58, i64 10) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 0         ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.q, 1
  %i.t = load i8, ptr %.sroa.0.1.i60, align 1, !alias.scope !9817, !noalias !9818, !noundef !11 ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.f, !prof !21

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.u = zext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -48                    ; 2 uses
  %i.w = icmp ult i32 %i.v, 10
  br i1 %i.w, label %bb.h, label %.loopexit

bb.g:                                             ; preds = %.preheader56.i.preheader
  %i.x = add i8 %i.t, -48
  %i.y = icmp ult i8 %i.x, 10
  br i1 %i.y, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.z = zext nneg i32 %i.v to i64
  %i.aa = add i64 %i.r, %i.z                      ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.r
  br i1 %i.ab, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i, !prof !21

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.sroa.0.269.i = phi ptr [ %i.ai, %bb.i ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.ah, %bb.i ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ak, %bb.i ], [ 0, %.preheader.i ]
  %i.ac = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !9817, !noalias !9818, !noundef !11
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48                  ; 2 uses
  %i.af = icmp ult i32 %i.ae, 10
  br i1 %i.af, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.ag = mul i64 %.sroa.042.267.i, 10
  %i.ah = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.aj = zext nneg i32 %i.ae to i64
  %i.ak = add i64 %i.ag, %i.aj                    ; 2 uses
  %.not53.i = icmp eq i64 %i.ah, 0
  br i1 %.not53.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

bb.j:                                             ; preds = %bb.d
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %.sroa.0.030, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #40
  unreachable

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.h, %bb.i, %bb.g, %.preheader.i
  %.sroa.06.0 = phi i64 [ 0, %.preheader.i ], [ -1, %bb.g ], [ %i.ak, %bb.i ], [ %i.aa, %.preheader56.i ], [ -1, %bb.h ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.06.0, ptr %i.al, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.k

.loopexit:                                        ; preds = %bb.f, %.lr.ph.i, %bb.g, %bb.e, %bb.e
  %i.am = tail call fastcc ptr @_RNvCsgcf5BHVXlUt_7uu_sort19invalid_count_error(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #34
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @89, ptr %i.ao, align 8
  br label %bb.k

bb.k:                                             ; preds = %.thread.thread, %.loopexit, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit
  %.sink = phi i64 [ 1, %.thread.thread ], [ 1, %.loopexit ], [ 0, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsgcf5BHVXlUt_7uu_sort17parse_legacy_part(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 8 uses
  %.not.i18.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i18.i.i.i, label %_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNvMNtNtBc_4char7methodsc14is_ascii_digitENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2e_5count0ECsgcf5BHVXlUt_7uu_sort.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RNCINvNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENvMNtNtBg_4char7methodsc14is_ascii_digitNCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i
  %.sroa.01.019.i.i.i = phi i64 [ %i.am, %_RNCINvNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENvMNtNtBg_4char7methodsc14is_ascii_digitNCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = phi ptr [ %i.ak, %_RNCINvNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENvMNtNtBg_4char7methodsc14is_ascii_digitNCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ %1, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.d = load i8, ptr %i.b, align 1, !noalias !9861, !noundef !11 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp ne ptr %i.c, %i.a
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  %i.j = load i8, ptr %i.c, align 1, !noalias !9861, !noundef !11
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.p = zext nneg i8 %i.d to i32
  br label %bb.c

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit12.i.i.i.i.i
  %i.q = icmp ne ptr %i.i, %i.a
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 3 uses
  %i.s = load i8, ptr %i.i, align 1, !noalias !9861, !noundef !11
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit14.i.i.i.i.i
  %i.aa = icmp ne ptr %i.r, %i.a
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !noalias !9861, !noundef !11
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit12.i.i.i.i.i
  %i.ak = phi ptr [ %i.r, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit14.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit16.i.i.i.i.i ], [ %i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit12.i.i.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.y, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit14.i.i.i.i.i ], [ %i.aj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit16.i.i.i.i.i ], [ %i.n, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgcf5BHVXlUt_7uu_sort.exit12.i.i.i.i.i ], [ %i.p, %bb.b ]
  %i.al = add nsw i32 %spec.select.i.ph.i.i.i, -48
  %.sroa.0.0.i.i.i.i.i.i = icmp ult i32 %i.al, 10
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %_RNCINvNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENvMNtNtBg_4char7methodsc14is_ascii_digitNCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i, label %_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNvMNtNtBc_4char7methodsc14is_ascii_digitENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2e_5count0ECsgcf5BHVXlUt_7uu_sort.exit

_RNCINvNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENvMNtNtBg_4char7methodsc14is_ascii_digitNCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i: ; preds = %bb.c
  %i.am = add i64 %.sroa.01.019.i.i.i, 1          ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.a
  br i1 %.not.i.i.i.i, label %_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNvMNtNtBc_4char7methodsc14is_ascii_digitENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2e_5count0ECsgcf5BHVXlUt_7uu_sort.exit, label %.lr.ph.i.i.i

_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNvMNtNtBc_4char7methodsc14is_ascii_digitENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2e_5count0ECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.c, %_RNCINvNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENvMNtNtBg_4char7methodsc14is_ascii_digitNCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i
  %.sroa.0.1.i.i = phi i64 [ %.sroa.01.019.i.i.i, %bb.c ], [ %i.am, %_RNCINvNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENvMNtNtBg_4char7methodsc14is_ascii_digitNCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ] ; 13 uses
  %i.an = icmp eq i64 %.sroa.0.1.i.i, 0
  br i1 %i.an, label %_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNvMNtNtBc_4char7methodsc14is_ascii_digitENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2e_5count0ECsgcf5BHVXlUt_7uu_sort.exit.thread, label %bb.d

_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNvMNtNtBc_4char7methodsc14is_ascii_digitENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2e_5count0ECsgcf5BHVXlUt_7uu_sort.exit.thread: ; preds = %bb.a, %_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNvMNtNtBc_4char7methodsc14is_ascii_digitENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2e_5count0ECsgcf5BHVXlUt_7uu_sort.exit
  store i64 -1, ptr %0, align 8
  br label %bb.ac

bb.d:                                             ; preds = %_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNvMNtNtBc_4char7methodsc14is_ascii_digitENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2e_5count0ECsgcf5BHVXlUt_7uu_sort.exit
  %.not.i = icmp ult i64 %.sroa.0.1.i.i, %2       ; 2 uses
  br i1 %.not.i, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %.split

.split:                                           ; preds = %bb.d
  %i.ao = icmp eq i64 %.sroa.0.1.i.i, %2
  br i1 %i.ao, label %bb.e, label %bb.k, !prof !17

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !9862, !noundef !11
  %i.ar = icmp sgt i8 %i.aq, -65
  br i1 %i.ar, label %bb.e, label %bb.k, !prof !17

bb.e:                                             ; preds = %.split, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
end_hunk_0
begin_hunk_1_@_RNvCsgcf5BHVXlUt_7uu_sort21index_legacy_warnings:bb.a

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dq, i64 noundef %i.dp, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !11047
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit64

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit64: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit64
  %.sroa.07.1 = phi i64 [ %i.fp, %bb.ac ], [ %i.eh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit64 ] ; 4 uses
  %.sroa.04.1 = phi i64 [ %i.fo, %bb.ac ], [ %i.eg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit64 ] ; 4 uses
  %i.ej = add i64 %.sroa.07.1, -1                 ; 2 uses
  br i1 %i.n, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = xor i64 %.val.i65, %i.ej
  %i.el = load i64, ptr @_RNvNtNtCs8xMRKdnofT_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !11048, !noundef !11
  %i.em = zext i64 %i.ek to i128
  %i.en = zext i64 %i.el to i128
  %i.eo = mul nuw i128 %i.en, %i.em               ; 2 uses
  %i.ep = lshr i128 %i.eo, 64
  %i.eq = xor i128 %i.ep, %i.eo
  %i.er = trunc i128 %i.eq to i64                 ; 2 uses
  %i.es = lshr i64 %i.er, 57
  %i.et = trunc nuw nsw i64 %i.es to i8
  %i.eu = insertelement <16 x i8> poison, i8 %i.et, i64 0
  %i.ev = shufflevector <16 x i8> %i.eu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.y ], [ %i.fm, %bb.ab ]
  %.pn.i.i = phi i64 [ %i.er, %bb.y ], [ %i.fn, %bb.ab ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.p      ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val53.pre.pre, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.ew, align 1, !noalias !11049 ; 2 uses
  %i.ex = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.ev
  %i.ey = bitcast <16 x i1> %i.ex to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %bb.aa
  %.sroa.06.0.i31.i.i = phi i16 [ %i.fl, %bb.aa ], [ %i.ey, %bb.z ] ; 3 uses
  %i.ez = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.fa = zext nneg i16 %i.ez to i64
  %i.fb = add i64 %.sroa.01.0.i.i.i, %i.fa
  %i.fc = and i64 %i.fb, %i.p
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr inbounds [16 x i8], ptr %.val53.pre.pre, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -16
  %.val2.i.i.i = load i64, ptr %i.ff, align 8, !noalias !11050, !noundef !11
  %i.fg = icmp eq i64 %i.ej, %.val2.i.i.i
  br i1 %i.fg, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE3getjECsgcf5BHVXlUt_7uu_sort.exit, label %bb.aa, !prof !17

._crit_edge.i.i:                                  ; preds = %bb.aa, %bb.z
  %i.fh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.fi = bitcast <16 x i1> %i.fh to i16
  %i.fj = icmp eq i16 %i.fi, 0
  br i1 %i.fj, label %bb.ab, label %select.unfold, !prof !21

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.fk = add i16 %.sroa.06.0.i31.i.i, -1
  %i.fl = and i16 %i.fk, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.fl, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.fm = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.fn = add i64 %.sroa.01.0.i.i.i, %i.fm
  br label %bb.z

bb.ac:                                            ; preds = %bb.r
  %i.fo = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.04.095, i64 1)
  %i.fp = add nuw nsw i64 %.sroa.07.094, 2
  br label %bb.x

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.x, %bb.r, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit, %bb.ad
  %.sroa.07.2 = phi i64 [ %.sroa.07.1, %bb.ad ], [ %i.dd, %bb.r ], [ %i.ee, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit ], [ %.sroa.07.1, %bb.x ], [ %.sroa.07.1, %._crit_edge.i.i ] ; 2 uses
  %.sroa.04.2 = phi i64 [ %.sroa.04.1, %bb.ad ], [ %.sroa.04.095, %bb.r ], [ %.sroa.04.095, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgcf5BHVXlUt_7uu_sort.exit ], [ %.sroa.04.1, %bb.x ], [ %.sroa.04.1, %._crit_edge.i.i ]
  %i.fq = icmp ult i64 %.sroa.07.2, %1
  br i1 %i.fq, label %bb.o, label %._crit_edge

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE3getjECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %.lr.ph.i.i
  %i.fr = getelementptr inbounds i8, ptr %i.fe, i64 -8
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !11 ; 3 uses
  %i.ft = icmp ult i64 %i.fs, %3
  br i1 %i.ft, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE3getjECsgcf5BHVXlUt_7uu_sort.exit
  %i.fu = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.fs ; 2 uses
  store i64 1, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i64 %.sroa.04.1, ptr %i.fv, align 8
  br label %select.unfold

bb.ae:                                            ; preds = %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapjjNtNtCs8xMRKdnofT_8foldhash4fast11RandomStateE3getjECsgcf5BHVXlUt_7uu_sort.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.fs, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #40
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCsgcf5BHVXlUt_7uu_sort22parse_ordering_options(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull captures(none) dereferenceable(6) %3, ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(6) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.promoted = load i8, ptr %i.e, align 1
  br label %bb.d

bb.b:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %.sroa.01.018, 0
  br i1 %i.j, label %.thread.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp sgt i8 %i.n, -65
  br i1 %i.k, label %.thread.thread, label %bb.q

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %i.l = phi i8 [ %.promoted, %.lr.ph ], [ %i.p, %bb.o ] ; 10 uses
  %.sroa.0.019 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0.1, %bb.o ] ; 13 uses
  %.sroa.01.018 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.o ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.018
  %i.n = load i8, ptr %i.m, align 1, !noundef !11 ; 2 uses
  switch i8 %i.n, label %bb.b [
    i8 98, label %bb.o
    i8 100, label %bb.e
    i8 102, label %bb.f
    i8 103, label %bb.g
    i8 104, label %bb.h
    i8 105, label %bb.i
    i8 77, label %bb.j
    i8 110, label %bb.k
    i8 82, label %bb.l
    i8 114, label %bb.m
    i8 86, label %bb.n
  ]

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.e, align 1
  store i8 0, ptr %i.f, align 1
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.i, align 1
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  store i8 1, ptr %i.h, align 1
  br label %bb.o

bb.h:                                             ; preds = %bb.d
  store i8 1, ptr %i.g, align 1
  br label %bb.o

bb.i:                                             ; preds = %bb.d
  %i.o = trunc nuw i8 %i.l to i1
  br i1 %i.o, label %bb.o, label %bb.p

bb.j:                                             ; preds = %bb.d
  store i8 1, ptr %i.d, align 1
  br label %bb.o

bb.k:                                             ; preds = %bb.d
  store i8 1, ptr %4, align 1
  br label %bb.o

bb.l:                                             ; preds = %bb.d
  store i8 1, ptr %i.c, align 1
  br label %bb.o

bb.m:                                             ; preds = %bb.d
  store i8 1, ptr %i.b, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.d
  store i8 1, ptr %i.a, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.i, %bb.p, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e
  %i.p = phi i8 [ %i.l, %bb.n ], [ 1, %bb.e ], [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %i.l, %bb.h ], [ 1, %bb.i ], [ 0, %bb.p ], [ %i.l, %bb.j ], [ %i.l, %bb.k ], [ %i.l, %bb.l ], [ %i.l, %bb.m ], [ %i.l, %bb.d ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.019, %bb.n ], [ %.sroa.0.019, %bb.e ], [ %.sroa.0.019, %bb.f ], [ %.sroa.0.019, %bb.g ], [ %.sroa.0.019, %bb.h ], [ %.sroa.0.019, %bb.i ], [ %.sroa.0.019, %bb.p ], [ %.sroa.0.019, %bb.j ], [ %.sroa.0.019, %bb.k ], [ %.sroa.0.019, %bb.l ], [ %.sroa.0.019, %bb.m ], [ 1, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.sroa.01.018, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %2
  br i1 %exitcond.not, label %.thread.thread, label %bb.d

bb.p:                                             ; preds = %bb.i
  store i8 1, ptr %i.f, align 1
  br label %bb.o

.thread.thread:                                   ; preds = %bb.o, %bb.a, %bb.c, %bb.b
  %.sroa.01.016 = phi i64 [ 0, %bb.b ], [ %.sroa.01.018, %bb.c ], [ 0, %bb.a ], [ %2, %bb.o ] ; 2 uses
  %.sroa.0.014 = phi i8 [ %.sroa.0.019, %bb.b ], [ %.sroa.0.019, %bb.c ], [ 0, %bb.a ], [ %.sroa.0.1, %bb.o ]
  %i.r = sub nuw i64 %2, %.sroa.01.016
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.016
  store ptr %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.0.014, ptr %i.u, align 8
  ret void

bb.q:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.018, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269) #40
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsgcf5BHVXlUt_7uu_sort23salt_from_random_source(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.4.i = alloca [24 x i8], align 8          ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = alloca [8192 x i8], align 8              ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11073)
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %bb.b, label %.split1.i

.split1.i:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11075
  store i128 18446745954905227264, ptr %i.b, align 16, !noalias !11075
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #34, !noalias !11076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11075
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %lhsc.i = load i8, ptr %1, align 1, !alias.scope !11073, !noalias !11076
  %i.h = icmp eq i8 %lhsc.i, 45
  br i1 %i.h, label %bb.d, label %.split.i

.split.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11077
  store i128 18446745954905227264, ptr %i.a, align 16, !noalias !11077
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 1) #34, !noalias !11076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11077
  br label %bb.c

bb.c:                                             ; preds = %.split.i, %.split1.i
  %i.i = load i32, ptr %i.c, align 8, !range !14, !noalias !11074, !noundef !11
  %i.j = trunc nuw i32 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio5stdin() #34, !noalias !11074
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !11074
  %i.l = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !11074 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RINvCsgcf5BHVXlUt_7uu_sort27open_with_open_failed_errorRNtNtCs2vKOLqTMYjT_3std4path4PathEB2_.exit.thread, !prof !15

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #37, !noalias !11074
  unreachable

_RINvCsgcf5BHVXlUt_7uu_sort27open_with_open_failed_errorRNtNtCs2vKOLqTMYjT_3std4path4PathEB2_.exit.thread: ; preds = %bb.d
  store ptr %i.k, ptr %i.l, align 8, !noalias !11074
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !11074, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !noalias !11074
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #34, !noalias !11076
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !11078
  %i.p = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !11078 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.j, !prof !15

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #37, !noalias !11078
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.s = load i32, ptr %i.r, align 4, !range !16, !noalias !11074, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !11076
  %i.t = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #34, !noalias !11076 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %_RINvCsgcf5BHVXlUt_7uu_sort27open_with_open_failed_errorRNtNtCs2vKOLqTMYjT_3std4path4PathEB2_.exit, !prof !15

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #37, !noalias !11076
  unreachable

_RINvCsgcf5BHVXlUt_7uu_sort27open_with_open_failed_errorRNtNtCs2vKOLqTMYjT_3std4path4PathEB2_.exit: ; preds = %bb.h
  store i32 %i.s, ptr %i.t, align 4, !noalias !11076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11074
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  store i64 -9223372036854775808, ptr %i.p, align 8, !noalias !11076
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, i64 24, i1 false), !noalias !11076
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !11076
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !noalias !11074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11074
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @6, ptr %i.w, align 8
  store i8 1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadNtNtB4_6marker4SendEL_EECsgcf5BHVXlUt_7uu_sort.exit50

bb.k:                                             ; preds = %_RINvCsgcf5BHVXlUt_7uu_sort27open_with_open_failed_errorRNtNtCs2vKOLqTMYjT_3std4path4PathEB2_.exit, %_RINvCsgcf5BHVXlUt_7uu_sort27open_with_open_failed_errorRNtNtCs2vKOLqTMYjT_3std4path4PathEB2_.exit.thread
  %.sroa.6.089 = phi ptr [ %i.l, %_RINvCsgcf5BHVXlUt_7uu_sort27open_with_open_failed_errorRNtNtCs2vKOLqTMYjT_3std4path4PathEB2_.exit.thread ], [ %i.t, %_RINvCsgcf5BHVXlUt_7uu_sort27open_with_open_failed_errorRNtNtCs2vKOLqTMYjT_3std4path4PathEB2_.exit ] ; 5 uses
  %.sroa.10.088 = phi ptr [ @7, %_RINvCsgcf5BHVXlUt_7uu_sort27open_with_open_failed_errorRNtNtCs2vKOLqTMYjT_3std4path4PathEB2_.exit.thread ], [ @4, %_RINvCsgcf5BHVXlUt_7uu_sort27open_with_open_failed_errorRNtNtCs2vKOLqTMYjT_3std4path4PathEB2_.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.f, i8 0, i64 8192, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.10.088, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !11, !nonnull !11
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs_NtCs8xMRKdnofT_8foldhash4fastNtB4_10FoldHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit, %bb.k
  %.sroa.9.0 = phi i64 [ 1, %bb.k ], [ %storemerge.i38, %_RNvXs_NtCs8xMRKdnofT_8foldhash4fastNtB4_10FoldHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit ] ; 3 uses
  %.sroa.03.0 = phi i64 [ 0, %bb.k ], [ %i.cm, %_RNvXs_NtCs8xMRKdnofT_8foldhash4fastNtB4_10FoldHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit ] ; 3 uses
  %i.z = call { i64, ptr } %i.y(ptr noundef nonnull %.sroa.6.089, ptr noalias nofree noundef nonnull %i.f, i64 noundef 8192) #38 ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = trunc nuw i64 %i.aa to i1
  br i1 %i.ad, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #34
  %.sroa.423.8.copyload = load i64, ptr %i.d, align 8
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !11079
  %i.ae = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !11079 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.n, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #37, !noalias !11079
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.m
  store i64 -9223372036854775807, ptr %i.ae, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %.sroa.423.8.copyload, ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.578.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.ab, ptr %.sroa.679.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @6, ptr %i.ah, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ai = load ptr, ptr %.sroa.10.088, align 8, !invariant.load !11 ; 2 uses
  %.not.i47 = icmp eq ptr %i.ai, null
  br i1 %.not.i47, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  call void %i.ai(ptr noundef nonnull %.sroa.6.089) #38, !inline_history !11064
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.10.088, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !22, !invariant.load !11 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadNtNtB4_6marker4SendEL_EECsgcf5BHVXlUt_7uu_sort.exit50, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.10.088, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !35, !invariant.load !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.089, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) %i.an) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadNtNtB4_6marker4SendEL_EECsgcf5BHVXlUt_7uu_sort.exit50

bb.q:                                             ; preds = %bb.l
  %i.ao = icmp eq ptr %i.ab, null
  %i.ap = icmp samesign ugt i64 %.sroa.03.0, 1048575
  %or.cond = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond, label %_RNvXs_NtCs8xMRKdnofT_8foldhash4fastNtB4_10FoldHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher6finish.exit, label %bb.t

_RNvXs_NtCs8xMRKdnofT_8foldhash4fastNtB4_10FoldHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher6finish.exit: ; preds = %_RNvXs_NtCs8xMRKdnofT_8foldhash4fastNtB4_10FoldHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit, %bb.q
  %.sroa.9.1 = phi i64 [ %.sroa.9.0, %bb.q ], [ %storemerge.i38, %_RNvXs_NtCs8xMRKdnofT_8foldhash4fastNtB4_10FoldHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit ] ; 2 uses
  %i.aq = call noundef i64 @_RNvCs8xMRKdnofT_8foldhash15hash_bytes_long(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @270, i64 noundef 25, i64 noundef 1099511627776, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @8) #39, !noalias !11080
  %i.ar = xor i64 %i.aq, %.sroa.9.1
  %i.as = zext i64 %i.ar to i128
  %i.at = mul nuw i128 %i.as, 13883517620612518109 ; 2 uses
  %i.au = lshr i128 %i.at, 64
  %i.av = xor i128 %i.au, %i.at
  %i.aw = trunc i128 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %.sroa.9.1, ptr %i.ax, align 1
  %.sroa.4.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i64 %i.aw, ptr %.sroa.4.0..sroa_idx75, align 1
  store i8 0, ptr %0, align 8
end_hunk_1
