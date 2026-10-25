Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field9data_type:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.at = load i64, ptr %i.as, align 8, !noundef !23
  %.not27 = icmp eq i64 %i.at, 0
  br i1 %.not27, label %bb.bc, label %bb.ay

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp samesign ult i64 %.val31, 23
  br i1 %.not.i.i, label %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit.thread, label %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit

_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit: ; preds = %bb.c
  %i.au = load i128, ptr %.val, align 1
  %i.av = xor i128 77699871020716352803869274228175432038, %i.au
  %i.aw = getelementptr i8, ptr %.val, i64 7
  %i.ax = load i128, ptr %i.aw, align 1
  %i.ay = xor i128 77699547454783006982786303841112783465, %i.ax
  %i.az = or i128 %i.av, %i.ay
  %i.ba = icmp ne i128 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.e, label %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit.thread

bb.d:                                             ; preds = %.split48, %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType13is_large_list.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.be = load i64, ptr %i.bd, align 8, !noundef !23
  %.not26 = icmp eq i64 %i.be, 0
  br i1 %.not26, label %bb.ax, label %bb.at

_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit.thread: ; preds = %bb.c, %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit
  switch i64 %.val31, label %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit.thread.thread [
    i64 6, label %bb.f
    i64 3, label %bb.h
  ]

bb.e:                                             ; preds = %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.val31, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.val, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.val31, ptr %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %.val31, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 58, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.510.sroa.8.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 58, ptr %.sroa.510.sroa.8.0..sroa.510.0..sroa_idx.sroa_idx, align 4
  %.sroa.510.sroa.9.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i8 1, ptr %.sroa.510.sroa.9.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 65
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.bf = call fastcc { ptr, i64 } @_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE9next_backCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(72) %i.h) ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0      ; 6 uses
  %.not24 = icmp eq ptr %i.bg, null
  br i1 %.not24, label %bb.an, label %bb.t, !prof !26

bb.f:                                             ; preds = %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit.thread
  %i.bh = load i32, ptr %.val, align 1
  %i.bi = xor i32 %i.bh, 1970435187
  %i.bj = getelementptr i8, ptr %.val, i64 4
  %i.bk = load i16, ptr %i.bj, align 1
  %i.bl = zext i16 %i.bk to i32
  %i.bm = xor i32 %i.bl, 29795
  %i.bn = or i32 %i.bi, %i.bm
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.g, label %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit.thread.thread

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !23
  %i.bv = getelementptr inbounds nuw [192 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = tail call fastcc { ptr, i64 } @_RINvXs1_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB6_6FieldsINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorNtNtB8_5field5FieldE9from_iterINtNtNtB10_8adapters3map3MapINtNtNtB12_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENvYB1T_INtNtB12_7convert4FromRB3g_E4fromEEB3m_(ptr noundef nonnull %i.bs, ptr noundef %i.bv) ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0
  %i.by = extractvalue { ptr, i64 } %i.bw, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.by, ptr %i.ca, align 8
  store i8 32, ptr %0, align 8
  br label %bb.n

bb.h:                                             ; preds = %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit.thread
  %i.cb = load i16, ptr %.val, align 1
  %i.cc = xor i16 %i.cb, 24941
  %i.cd = getelementptr i8, ptr %.val, i64 2
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i16
  %i.cg = xor i16 %i.cf, 112
  %i.ch = or i16 %i.cc, %i.cg
  %i.ci = icmp ne i16 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.m, label %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit.thread.thread

_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit.thread.thread: ; preds = %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType7is_list.exit, %.split, %.split48, %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType13is_large_list.exit, %bb.f, %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit.thread, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs4_NtCs63DIHKhvmTb_10lance_core9datatypesNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtB5_11LogicalTypeE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14920)
  %i.cl = load i8, ptr %i.g, align 8, !range !102, !alias.scope !14920, !noundef !23
  %.not.i = icmp eq i8 %i.cl, -1
  br i1 %.not.i, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE6unwrapB1z_.exit, label %bb.i, !prof !28

bb.i:                                             ; preds = %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !14919
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @348, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @359, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @421) #68
          to label %bb.k unwind label %bb.j, !noalias !14921

bb.j:                                             ; preds = %bb.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #69
          to label %common.resume unwind label %bb.l, !noalias !14921

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !14921
  unreachable

common.resume:                                    ; preds = %bb.ba, %bb.av, %bb.aq, %bb.q, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.hj, %bb.av ], [ %i.cm, %bb.j ], [ %i.cx, %bb.q ], [ %i.gz, %bb.aq ], [ %i.hs, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE6unwrapB1z_.exit: ; preds = %_RNvMs1_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalType25is_fixed_size_list_struct.exit.thread.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.co, i64 24, i1 false), !alias.scope !14921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !23
  %.not = icmp eq i64 %i.cq, 0
  br i1 %.not, label %bb.s, label %bb.o

bb.n:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCs63DIHKhvmTb_10lance_core.exit, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCs63DIHKhvmTb_10lance_core.exit28, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCs63DIHKhvmTb_10lance_core.exit29, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCs63DIHKhvmTb_10lance_core.exit30, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE6unwrapB1z_.exit, %bb.g
  ret void

bb.o:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !23, !noundef !23
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs2_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_5FieldE4from(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.cs)
  store i64 1, ptr %i.c, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.cu, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !14922
  %i.cv = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !14922 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.p, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCs63DIHKhvmTb_10lance_core.exit30, !prof !39

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #68
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c) #69
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCs63DIHKhvmTb_10lance_core.exit30: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cv, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.da, align 1
  store i8 39, ptr %0, align 8
  br label %bb.n

bb.s:                                             ; preds = %bb.m
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @422) #68
  unreachable

bb.t:                                             ; preds = %bb.e
  %i.db = extractvalue { ptr, i64 } %i.bf, 1      ; 5 uses
  switch i64 %i.db, label %thread-pre-split.i [
    i64 0, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.dc = load i8, ptr %i.bg, align 1, !alias.scope !14923, !noundef !23 ; 2 uses
  switch i8 %i.dc, label %bb.v [
    i8 43, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread
    i8 45, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.t
  %.pr.i = load i8, ptr %i.bg, align 1, !alias.scope !14923
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split.i, %bb.u
  %i.dd = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.dc, %bb.u ]
  switch i8 %i.dd, label %bb.ac [
    i8 43, label %bb.w
    i8 45, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.df = add nsw i64 %i.db, -1
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %i.dh = add nsw i64 %i.db, -1                   ; 3 uses
  %i.di = icmp samesign ult i64 %i.db, 9
  br i1 %i.di, label %.preheader118.i, label %.lr.ph.i

.preheader118.i:                                  ; preds = %bb.x
  %.not105139.i = icmp eq i64 %i.dh, 0
  br i1 %.not105139.i, label %.loopexit.i, label %.lr.ph143.i

.loopexit.i:                                      ; preds = %bb.aa, %bb.ab, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %.preheader.i, %.preheader118.i
  %.sroa.086.1.i = phi i32 [ %i.ei, %bb.ab ], [ %i.gp, %bb.am ], [ %i.ev, %bb.af ], [ 0, %.preheader.i ], [ 0, %.preheader118.i ], [ %i.ey, %bb.ag ], [ %i.fg, %bb.ah ], [ %i.fn, %bb.ai ], [ %i.fu, %bb.aj ], [ %i.gb, %bb.ak ], [ %i.gi, %bb.al ], [ %i.dw, %bb.aa ]
  %i.dj = zext i32 %.sroa.086.1.i to i64
  %i.dk = shl nuw i64 %i.dj, 32
  br label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit

.lr.ph.i:                                         ; preds = %bb.x, %bb.aa
  %.sroa.0.1138.i = phi ptr [ %i.dl, %bb.aa ], [ %i.dg, %bb.x ] ; 3 uses
  %.sroa.26.1137.i = phi i64 [ %i.dm, %bb.aa ], [ %i.dh, %bb.x ]
  %.sroa.086.0136.i = phi i32 [ %i.dw, %bb.aa ], [ 0, %bb.x ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i, i64 1
  %i.dm = add nsw i64 %.sroa.26.1137.i, -1        ; 2 uses
  %i.dn = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i, i32 10) ; 2 uses
  %i.do = extractvalue { i32, i1 } %i.dn, 0
  %i.dp = extractvalue { i32, i1 } %i.dn, 1
  br i1 %i.dp, label %.loopexit114.sink.split.i, label %bb.y, !prof !26

bb.y:                                             ; preds = %.lr.ph.i
  %i.dq = load i8, ptr %.sroa.0.1138.i, align 1, !alias.scope !14923, !noundef !23
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -48                  ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %bb.z, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.du = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.do, i32 %i.ds) ; 2 uses
  %i.dv = extractvalue { i32, i1 } %i.du, 1
  br i1 %i.dv, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread, label %bb.aa, !prof !26

bb.aa:                                            ; preds = %bb.z
  %i.dw = extractvalue { i32, i1 } %i.du, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.dm, 0
  br i1 %.not104.i, label %.loopexit.i, label %.lr.ph.i

.loopexit114.sink.split.i:                        ; preds = %.lr.ph.i, %.preheader115.i
  %.sroa.0.3147.lcssa.sink.i = phi ptr [ %.sroa.0.3147.i, %.preheader115.i ], [ %.sroa.0.1138.i, %.lr.ph.i ]
  %.sink190.i = phi i64 [ 513, %.preheader115.i ], [ 769, %.lr.ph.i ]
  %i.dx = load i8, ptr %.sroa.0.3147.lcssa.sink.i, align 1, !alias.scope !14923, !noundef !23
  %i.dy = add i8 %i.dx, -48
  %i.dz = icmp ult i8 %i.dy, 10
  %i.ea = select i1 %i.dz, i64 %.sink190.i, i64 257
  br label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit

.lr.ph143.i:                                      ; preds = %.preheader118.i, %bb.ab
  %.sroa.0.2142.i = phi ptr [ %i.eh, %bb.ab ], [ %i.dg, %.preheader118.i ] ; 2 uses
  %.sroa.26.2141.i = phi i64 [ %i.eg, %bb.ab ], [ %i.dh, %.preheader118.i ]
  %.sroa.086.2140.i = phi i32 [ %i.ei, %bb.ab ], [ 0, %.preheader118.i ]
  %i.eb = load i8, ptr %.sroa.0.2142.i, align 1, !alias.scope !14923, !noundef !23
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nsw i32 %i.ec, -48                  ; 2 uses
  %i.ee = icmp ult i32 %i.ed, 10
  br i1 %i.ee, label %bb.ab, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.ab:                                            ; preds = %.lr.ph143.i
  %i.ef = mul i32 %.sroa.086.2140.i, 10
  %i.eg = add nsw i64 %.sroa.26.2141.i, -1        ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.2142.i, i64 1
  %i.ei = sub i32 %i.ef, %i.ed                    ; 2 uses
  %.not105.i = icmp eq i64 %i.eg, 0
  br i1 %.not105.i, label %.loopexit.i, label %.lr.ph143.i

bb.ac:                                            ; preds = %bb.w, %bb.v
  %.sroa.26.0.i = phi i64 [ %i.df, %bb.w ], [ %i.db, %bb.v ] ; 9 uses
  %.sroa.0.0.i39 = phi ptr [ %i.de, %bb.w ], [ %i.bg, %bb.v ] ; 8 uses
  %i.ej = icmp samesign ult i64 %.sroa.26.0.i, 8
  br i1 %i.ej, label %.preheader.i, label %.preheader115.i

.preheader.i:                                     ; preds = %bb.ac
  %.not107148.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not107148.i, label %.loopexit.i, label %.lr.ph152.i

.preheader115.i:                                  ; preds = %bb.ac, %bb.af
  %.sroa.0.3147.i = phi ptr [ %i.ek, %bb.af ], [ %.sroa.0.0.i39, %bb.ac ] ; 3 uses
  %.sroa.26.3146.i = phi i64 [ %i.el, %bb.af ], [ %.sroa.26.0.i, %bb.ac ]
  %.sroa.086.3145.i = phi i32 [ %i.ev, %bb.af ], [ 0, %bb.ac ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i, i64 1
  %i.el = add nsw i64 %.sroa.26.3146.i, -1        ; 2 uses
  %i.em = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i, i32 10) ; 2 uses
  %i.en = extractvalue { i32, i1 } %i.em, 0
  %i.eo = extractvalue { i32, i1 } %i.em, 1
  br i1 %i.eo, label %.loopexit114.sink.split.i, label %bb.ad, !prof !26

bb.ad:                                            ; preds = %.preheader115.i
  %i.ep = load i8, ptr %.sroa.0.3147.i, align 1, !alias.scope !14923, !noundef !23
  %i.eq = zext i8 %i.ep to i32
  %i.er = add nsw i32 %i.eq, -48                  ; 2 uses
  %i.es = icmp ult i32 %i.er, 10
  br i1 %i.es, label %bb.ae, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.et = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.en, i32 %i.er) ; 2 uses
  %i.eu = extractvalue { i32, i1 } %i.et, 1
  br i1 %i.eu, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread, label %bb.af, !prof !26

bb.af:                                            ; preds = %bb.ae
  %i.ev = extractvalue { i32, i1 } %i.et, 0       ; 2 uses
  %.not106.i = icmp eq i64 %i.el, 0
  br i1 %.not106.i, label %.loopexit.i, label %.preheader115.i

.lr.ph152.i:                                      ; preds = %.preheader.i
  %i.ew = load i8, ptr %.sroa.0.0.i39, align 1, !alias.scope !14923, !noundef !23
  %i.ex = zext i8 %i.ew to i32
  %i.ey = add nsw i32 %i.ex, -48                  ; 3 uses
  %i.ez = icmp ult i32 %i.ey, 10
  br i1 %i.ez, label %bb.ag, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.ag:                                            ; preds = %.lr.ph152.i
  %.not107.i = icmp eq i64 %.sroa.26.0.i, 1
  br i1 %.not107.i, label %.loopexit.i, label %.lr.ph152.i.1

.lr.ph152.i.1:                                    ; preds = %bb.ag
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i39, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !alias.scope !14923, !noundef !23
  %i.fc = zext i8 %i.fb to i32
  %i.fd = add nsw i32 %i.fc, -48                  ; 2 uses
  %i.fe = icmp ult i32 %i.fd, 10
  br i1 %i.fe, label %bb.ah, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.ah:                                            ; preds = %.lr.ph152.i.1
  %i.ff = mul nuw nsw i32 %i.ey, 10
  %i.fg = add nuw nsw i32 %i.fd, %i.ff            ; 2 uses
  %.not107.i.1 = icmp eq i64 %.sroa.26.0.i, 2
  br i1 %.not107.i.1, label %.loopexit.i, label %.lr.ph152.i.2

.lr.ph152.i.2:                                    ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i39, i64 2
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !14923, !noundef !23
  %i.fj = zext i8 %i.fi to i32
  %i.fk = add nsw i32 %i.fj, -48                  ; 2 uses
  %i.fl = icmp ult i32 %i.fk, 10
  br i1 %i.fl, label %bb.ai, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.ai:                                            ; preds = %.lr.ph152.i.2
  %i.fm = mul nuw nsw i32 %i.fg, 10
  %i.fn = add nuw nsw i32 %i.fk, %i.fm            ; 2 uses
  %.not107.i.2 = icmp eq i64 %.sroa.26.0.i, 3
  br i1 %.not107.i.2, label %.loopexit.i, label %.lr.ph152.i.3

.lr.ph152.i.3:                                    ; preds = %bb.ai
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i39, i64 3
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !14923, !noundef !23
  %i.fq = zext i8 %i.fp to i32
  %i.fr = add nsw i32 %i.fq, -48                  ; 2 uses
  %i.fs = icmp ult i32 %i.fr, 10
  br i1 %i.fs, label %bb.aj, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.aj:                                            ; preds = %.lr.ph152.i.3
  %i.ft = mul nuw nsw i32 %i.fn, 10
  %i.fu = add nuw nsw i32 %i.fr, %i.ft            ; 2 uses
  %.not107.i.3 = icmp eq i64 %.sroa.26.0.i, 4
  br i1 %.not107.i.3, label %.loopexit.i, label %.lr.ph152.i.4

.lr.ph152.i.4:                                    ; preds = %bb.aj
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i39, i64 4
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !14923, !noundef !23
  %i.fx = zext i8 %i.fw to i32
  %i.fy = add nsw i32 %i.fx, -48                  ; 2 uses
  %i.fz = icmp ult i32 %i.fy, 10
  br i1 %i.fz, label %bb.ak, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.ak:                                            ; preds = %.lr.ph152.i.4
  %i.ga = mul i32 %i.fu, 10
  %i.gb = add i32 %i.fy, %i.ga                    ; 2 uses
  %.not107.i.4 = icmp eq i64 %.sroa.26.0.i, 5
  br i1 %.not107.i.4, label %.loopexit.i, label %.lr.ph152.i.5

.lr.ph152.i.5:                                    ; preds = %bb.ak
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i39, i64 5
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !14923, !noundef !23
  %i.ge = zext i8 %i.gd to i32
  %i.gf = add nsw i32 %i.ge, -48                  ; 2 uses
  %i.gg = icmp ult i32 %i.gf, 10
  br i1 %i.gg, label %bb.al, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.al:                                            ; preds = %.lr.ph152.i.5
  %i.gh = mul i32 %i.gb, 10
  %i.gi = add i32 %i.gf, %i.gh                    ; 2 uses
  %.not107.i.5 = icmp eq i64 %.sroa.26.0.i, 6
  br i1 %.not107.i.5, label %.loopexit.i, label %.lr.ph152.i.6

.lr.ph152.i.6:                                    ; preds = %bb.al
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i39, i64 6
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !14923, !noundef !23
  %i.gl = zext i8 %i.gk to i32
  %i.gm = add nsw i32 %i.gl, -48                  ; 2 uses
  %i.gn = icmp ult i32 %i.gm, 10
  br i1 %i.gn, label %bb.am, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.am:                                            ; preds = %.lr.ph152.i.6
  %i.go = mul i32 %i.gi, 10
  %i.gp = add i32 %i.gm, %i.go
  br label %.loopexit.i

_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit: ; preds = %.loopexit114.sink.split.i, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.ea, %.loopexit114.sink.split.i ], [ %i.dk, %.loopexit.i ] ; 3 uses
  %i.gq = trunc i64 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.gq, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultlNtNtNtB4_3num5error13ParseIntErrorE6expectCs63DIHKhvmTb_10lance_core.exit, !prof !47

_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread: ; preds = %bb.z, %bb.y, %.lr.ph143.i, %bb.ad, %bb.ae, %.lr.ph152.i, %.lr.ph152.i.1, %.lr.ph152.i.2, %.lr.ph152.i.3, %.lr.ph152.i.4, %.lr.ph152.i.5, %.lr.ph152.i.6, %bb.t, %bb.u, %bb.u, %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit
  %.sroa.12.0.insert.insert.i56 = phi i64 [ %.sroa.12.0.insert.insert.i, %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit ], [ 1, %bb.t ], [ 257, %.lr.ph143.i ], [ 257, %.lr.ph152.i ], [ 257, %bb.u ], [ 257, %bb.u ], [ 257, %bb.ad ], [ 257, %.lr.ph152.i.6 ], [ 257, %.lr.ph152.i.5 ], [ 257, %.lr.ph152.i.4 ], [ 257, %.lr.ph152.i.3 ], [ 257, %.lr.ph152.i.2 ], [ 257, %.lr.ph152.i.1 ], [ 513, %bb.ae ], [ 257, %bb.y ], [ 769, %bb.z ]
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.12.0.insert.insert.i56, 8
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.a, align 1
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @425, i64 noundef 52, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @363, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @426) #68
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultlNtNtNtB4_3num5error13ParseIntErrorE6expectCs63DIHKhvmTb_10lance_core.exit: ; preds = %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.12.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gs = load i64, ptr %i.gr, align 8, !noundef !23
  %.not25 = icmp eq i64 %i.gs, 0
  br i1 %.not25, label %bb.as, label %bb.ao

bb.an:                                            ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @423, i64 noundef 55, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @424) #68
  unreachable

bb.ao:                                            ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultlNtNtNtB4_3num5error13ParseIntErrorE6expectCs63DIHKhvmTb_10lance_core.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gu = load ptr, ptr %i.gt, align 8, !nonnull !23, !noundef !23
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_5FieldE4from(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.gu)
  store i64 1, ptr %i.d, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.gw, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !14924
  %i.gx = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !14924 ; 3 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.ap, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCs63DIHKhvmTb_10lance_core.exit29, !prof !39

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #68
          to label %.noexc40 unwind label %bb.aq

.noexc40:                                         ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.d) #69
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCs63DIHKhvmTb_10lance_core.exit29: ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.gx, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gx, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.hc, align 4
  store i8 29, ptr %0, align 8
  br label %bb.n

bb.as:                                            ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultlNtNtNtB4_3num5error13ParseIntErrorE6expectCs63DIHKhvmTb_10lance_core.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @427) #68
  unreachable

bb.at:                                            ; preds = %bb.d
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !23, !noundef !23
  %i.hf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs2_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_5FieldE4from(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.hf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.he)
  store i64 1, ptr %i.e, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.hg, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !14925
  %i.hh = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !14925 ; 3 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %bb.au, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCs63DIHKhvmTb_10lance_core.exit28, !prof !39

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #68
          to label %.noexc42 unwind label %bb.av

.noexc42:                                         ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.e) #69
          to label %common.resume unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCs63DIHKhvmTb_10lance_core.exit28: ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.hh, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hh, ptr %i.hl, align 8
  store i8 30, ptr %0, align 8
  br label %bb.n

bb.ax:                                            ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @428) #68
  unreachable

bb.ay:                                            ; preds = %bb.b
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.hn = load ptr, ptr %i.hm, align 8, !nonnull !23, !noundef !23
  %i.ho = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs2_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_5FieldE4from(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ho, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.hn)
  store i64 1, ptr %i.f, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.hp, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !14926
  %i.hq = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !14926 ; 3 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.az, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCs63DIHKhvmTb_10lance_core.exit, !prof !39

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #68
          to label %.noexc44 unwind label %bb.ba

.noexc44:                                         ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.az
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.f) #69
          to label %common.resume unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.hq, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hq, ptr %i.hu, align 8
  store i8 27, ptr %0, align 8
  br label %bb.n

bb.bc:                                            ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @429) #68
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field9new_arrow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5Field3newReECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dereferenceable(24) %3, i1 noundef zeroext %4)
  call void @_RNvXs1_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldINtNtCscI6d9CVNmLh_4core7convert7TryFromNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE8try_from(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 ptr @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field9sub_field(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(192) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_BQ_9sub_field0EBW_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_BQ_9sub_field0EBW_.exit
  %.tr712 = phi i64 [ %i.t, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_BQ_9sub_field0EBW_.exit ], [ %2, %bb.a ]
  %.tr611 = phi ptr [ %i.u, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_BQ_9sub_field0EBW_.exit ], [ %1, %bb.a ] ; 3 uses
  %.tr10 = phi ptr [ %i.k, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_BQ_9sub_field0EBW_.exit ], [ %0, %bb.a ] ; 2 uses
  %i.b = load ptr, ptr %.tr611, align 8, !nonnull !23, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %.tr611, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !23 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.tr10, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.tr10, i64 104
  %i.h = load i64, ptr %i.g, align 8, !noundef !23 ; 2 uses
  %.idx = mul nuw nsw i64 %i.h, 192
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_BQ_9sub_field0EBW_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field9sub_field0B8_.exit.thread.i
  %i.k = phi ptr [ %i.l, %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field9sub_field0B8_.exit.thread.i ], [ %i.f, %.lr.ph ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.n = load i64, ptr %i.m, align 8, !noalias !14930, !noundef !23
  %i.o = icmp eq i64 %i.n, %i.d
  br i1 %i.o, label %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field9sub_field0B8_.exit.i, label %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field9sub_field0B8_.exit.thread.i

_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field9sub_field0B8_.exit.i: ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5utils7testingNtB5_16ProxyObjectStore13before_method:bb.a
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %.loopexit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.bi, %bb.q ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils7testing22ProxyObjectStorePolicyEEB1C_(ptr nonnull %i.d, i8 %.sroa.01.0.i.i) #69
          to label %common.resume unwind label %bb.x

bb.j:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs63DIHKhvmTb_10lance_core5utils7testing22ProxyObjectStorePolicyE4lockB13_.exit
  %i.s = trunc nuw i8 %.sroa.01.0.i.i to i1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16505)
  %i.t = getelementptr inbounds nuw i8, ptr %.16.val, i64 48
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !16505, !noundef !23 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.16.val, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !16505, !nonnull !23, !noundef !23 ; 3 uses
  %.val3.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !16506
  %i.y = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %.sroa.07.072 = phi ptr [ %.sroa.07.1, %bb.s ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %.sroa.78.071 = phi ptr [ %.sroa.78.1, %bb.s ], [ %i.aa, %.lr.ph.preheader ] ; 2 uses
  %.sroa.99.070 = phi i16 [ %i.aj, %bb.s ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %.sroa.1111.069 = phi i64 [ %i.am, %bb.s ], [ %i.u, %.lr.ph.preheader ]
  %.not12.i.i = icmp eq i16 %.sroa.99.070, 0
  br i1 %.not12.i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %i.ab = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.sroa.78.071, %.lr.ph ] ; 2 uses
  %i.ac = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.sroa.07.072, %.lr.ph ]
  %.val10.i.i = load <16 x i8>, ptr %i.ab, align 16, !noalias !16507
  %i.ad = icmp sgt <16 x i8> %.val10.i.i, splat (i8 -1)
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -640 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.ad to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph
  %.sroa.78.1 = phi ptr [ %.sroa.78.071, %.lr.ph ], [ %i.af, %.lr.ph.i.i ]
  %.sroa.07.1 = phi ptr [ %.sroa.07.072, %.lr.ph ], [ %i.ae, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.99.070, %.lr.ph ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ag = add i16 %.lcssa.i.i, -1
  %i.ah = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = and i16 %i.ag, %.lcssa.i.i
  %i.ak = sub nsw i64 0, %i.ai
  %i.al = getelementptr inbounds [40 x i8], ptr %.sroa.07.1, i64 %i.ak ; 2 uses
  %i.am = add i64 %.sroa.1111.069, -1             ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !23, !noundef !23
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !23, !align !50, !noundef !23 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !52, !invariant.load !23
  %i.at = add nsw i64 %i.as, -1
  %i.au = and i64 %i.at, -16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !23, !nonnull !23
  invoke void %i.ay(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull %i.aw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.n unwind label %bb.i

._crit_edge:                                      ; preds = %bb.s, %bb.j
  store i64 -1, ptr %0, align 8
  br i1 %i.s, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.az = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ba = and i64 %i.az, 9223372036854775807
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !28

bb.l:                                             ; preds = %bb.k
  %i.bc = call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.bc, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.m monotonic, align 4
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %._crit_edge
  %i.bd = atomicrmw xchg ptr %i.d, i32 0 release, align 4
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils7testing22ProxyObjectStorePolicyEEB1C_.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils7testing22ProxyObjectStorePolicyEEB1C_.exit, !prof !26

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils7testing22ProxyObjectStorePolicyEEB1C_.exit.sink.split: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i13
  call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils7testing22ProxyObjectStorePolicyEEB1C_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils7testing22ProxyObjectStorePolicyEEB1C_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils7testing22ProxyObjectStorePolicyEEB1C_.exit.sink.split, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i13, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret void

bb.n:                                             ; preds = %.loopexit
  %i.bf = load i8, ptr %i.c, align 8, !range !102, !noundef !23
  %.not7 = icmp eq i8 %i.bf, -1
  br i1 %.not7, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !16508
  %i.bg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !16508 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.p, label %bb.t, !prof !39

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #68
          to label %.noexc.i unwind label %bb.q, !noalias !16509

.noexc.i:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #69
          to label %.body unwind label %bb.r, !noalias !16510

bb.r:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !16510
  unreachable

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bk = icmp eq i64 %i.am, 0
  br i1 %i.bk, label %._crit_edge, label %.lr.ph

bb.t:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -9223372036854775802, ptr %0, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1281, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %.sroa.557.0..sroa_idx, align 8
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bg, ptr %.sroa.658.0..sroa_idx, align 8
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @1258, ptr %.sroa.759.0..sroa_idx, align 8
  br i1 %i.s, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i13, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bm = and i64 %i.bl, 9223372036854775807
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i13, label %bb.v, !prof !28

bb.v:                                             ; preds = %bb.u
  %i.bo = call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.bo, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i13, label %bb.w

bb.w:                                             ; preds = %bb.v
  store atomic i8 1, ptr %i.m monotonic, align 4
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i13

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i13: ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.bp = atomicrmw xchg ptr %i.d, i32 0 release, align 4
  %i.bq = icmp eq i32 %i.bp, 2
  br i1 %i.bq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils7testing22ProxyObjectStorePolicyEEB1C_.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils7testing22ProxyObjectStorePolicyEEB1C_.exit, !prof !26

bb.x:                                             ; preds = %.body
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs3_NtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbfNtB5_4Sbbf10check_hash(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !23 ; 4 uses
  %i.d = icmp ult i64 %i.c, 288230376151711744
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.a, i64 %i.c) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 0
  %i.g = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.g, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ -1, %bb.b ], [ %i.f, %bb.a ]
  %i.h = lshr i64 %.sroa.0.0, 32                  ; 3 uses
  %i.i = icmp samesign ult i64 %i.h, %i.c
  br i1 %i.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !23, !noundef !23
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.h ; 8 uses
  %i.m = trunc i64 %1 to i32                      ; 8 uses
  %i.n = mul i32 %i.m, 1203114875
  %i.o = lshr i32 %i.n, 27
  %i.p = shl nuw i32 1, %i.o
  %i.q = mul i32 %i.m, -2010862245
  %i.r = lshr i32 %i.q, 27
  %i.s = shl nuw i32 1, %i.r
  %i.t = mul i32 %i.m, -1565054819
  %i.u = lshr i32 %i.t, 27
  %i.v = shl nuw i32 1, %i.u
  %i.w = mul i32 %i.m, 1884591559
  %i.x = lshr i32 %i.w, 27
  %i.y = shl nuw i32 1, %i.x
  %i.z = mul i32 %i.m, 770785867
  %i.aa = lshr i32 %i.z, 27
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = mul i32 %i.m, -1627633337
  %i.ad = lshr i32 %i.ac, 27
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = mul i32 %i.m, 1550580529
  %i.ag = lshr i32 %i.af, 27
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = load i32, ptr %i.l, align 4, !alias.scope !16513, !noundef !23
  %i.aj = and i32 %i.ai, %i.p
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = mul i32 %i.m, 1150766481
  %i.am = lshr i32 %i.al, 27
  %i.an = shl nuw i32 1, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !alias.scope !16513, !noundef !23
  %i.aq = and i32 %i.ap, %i.an
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !16513, !noundef !23
  %i.au = and i32 %i.at, %i.s
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !alias.scope !16513, !noundef !23
  %i.ay = and i32 %i.ax, %i.v
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !16513, !noundef !23
  %i.bc = and i32 %i.bb, %i.y
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !16513, !noundef !23
  %i.bg = and i32 %i.bf, %i.ab
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !16513, !noundef !23
  %i.bk = and i32 %i.bj, %i.ae
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !alias.scope !16513, !noundef !23
  %i.bo = and i32 %i.bn, %i.ah
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.l, label %_RNvMs0_NtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbfNtB5_5Block5check.exit

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  br label %_RNvMs0_NtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbfNtB5_5Block5check.exit

_RNvMs0_NtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbfNtB5_5Block5check.exit: ; preds = %bb.k, %bb.l
  %i.bq = phi i1 [ false, %bb.l ], [ true, %bb.k ]
  ret i1 %i.bq

bb.m:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @509) #68
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbfNtB5_4Sbbf11insert_hash(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !23 ; 4 uses
  %i.d = icmp ult i64 %i.c, 288230376151711744
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.a, i64 %i.c) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 0
  %i.g = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.g, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ -1, %bb.b ], [ %i.f, %bb.a ]
  %i.h = lshr i64 %.sroa.0.0, 32                  ; 3 uses
  %i.i = icmp samesign ult i64 %i.h, %i.c
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !23, !noundef !23
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.h ; 3 uses
  %i.m = trunc i64 %1 to i32                      ; 8 uses
  %i.n = mul i32 %i.m, 1203114875
  %i.o = lshr i32 %i.n, 27
  %i.p = shl nuw i32 1, %i.o
  %i.q = mul i32 %i.m, 1150766481
  %i.r = lshr i32 %i.q, 27
  %i.s = shl nuw i32 1, %i.r
  %i.t = mul i32 %i.m, -2010862245
  %i.u = lshr i32 %i.t, 27
  %i.v = shl nuw i32 1, %i.u
  %i.w = mul i32 %i.m, -1565054819
  %i.x = lshr i32 %i.w, 27
  %i.y = shl nuw i32 1, %i.x
  %i.z = load <4 x i32>, ptr %i.l, align 4, !alias.scope !16516
  %i.aa = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.s, i64 1
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.v, i64 2
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.y, i64 3
  %i.ae = or <4 x i32> %i.z, %i.ad
  store <4 x i32> %i.ae, ptr %i.l, align 4, !alias.scope !16516
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ag = mul i32 %i.m, 1884591559
  %i.ah = lshr i32 %i.ag, 27
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = mul i32 %i.m, 770785867
  %i.ak = lshr i32 %i.aj, 27
  %i.al = shl nuw i32 1, %i.ak
  %i.am = mul i32 %i.m, -1627633337
  %i.an = lshr i32 %i.am, 27
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = mul i32 %i.m, 1550580529
  %i.aq = lshr i32 %i.ap, 27
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = load <4 x i32>, ptr %i.af, align 4, !alias.scope !16516
  %i.at = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.au = insertelement <4 x i32> %i.at, i32 %i.al, i64 1
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ao, i64 2
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.ar, i64 3
  %i.ax = or <4 x i32> %i.as, %i.aw
  store <4 x i32> %i.ax, ptr %i.af, align 4, !alias.scope !16516
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @510) #68
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbfNtB5_4Sbbf12with_ndv_fpp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = fcmp oge double %2, 0.000000e+00
  %i.b = fcmp olt double %2, 1.000000e+00
  %spec.select.i = and i1 %i.a, %i.b
  br i1 %spec.select.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = uitofp i64 %1 to double                  ; 2 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %.split.us, label %.preheader.split

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %2, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %.split.us, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %.split.us ]
  store i64 %storemerge, ptr %0, align 8
  ret void

.split.us:                                        ; preds = %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbf26false_positive_probability.exit, %.preheader
  %.us-phi = phi i8 [ 1, %.preheader ], [ %.sroa.01.0., %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbf26false_positive_probability.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMs3_NtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbfNtB5_4Sbbf19with_log2_num_bytes(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i8 noundef %.us-phi)
  br label %bb.c

.preheader.split:                                 ; preds = %.preheader, %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbf26false_positive_probability.exit
  %.sroa.04.07 = phi i8 [ %..sroa.04.0, %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbf26false_positive_probability.exit ], [ 0, %.preheader ] ; 2 uses
  %.sroa.01.06 = phi i8 [ %.sroa.01.0., %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbf26false_positive_probability.exit ], [ 64, %.preheader ] ; 2 uses
  %i.g = add nuw i8 %.sroa.04.07, %.sroa.01.06
  %i.h = lshr i8 %i.g, 1                          ; 3 uses
  %i.i = and i8 %i.h, 63
  %i.j = zext nneg i8 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = uitofp i64 %i.k to double
  %i.m = fmul nnan double %i.l, 8.000000e+00      ; 2 uses
  %i.n = fdiv double %i.c, %i.m
  %i.o = fcmp ogt double %i.n, 2.000000e+00
  br i1 %i.o, label %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbf26false_positive_probability.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.split
  %i.p = fdiv double %i.m, %i.c
  %i.q = fdiv double 2.560000e+02, %i.p           ; 2 uses
  %i.r = tail call double @llvm.log.f64(double %i.q)
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.s = tail call nsz double @llvm.minimumnum.f64(double %i.ag, double 1.000000e+00)
  br label %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbf26false_positive_probability.exit

bb.f:                                             ; preds = %bb.f, %bb.d
  %.sroa.01.012.i = phi double [ 0.000000e+00, %bb.d ], [ %i.ag, %bb.f ]
  %.sroa.04.011.i = phi i32 [ 750, %bb.d ], [ %i.t, %bb.f ] ; 3 uses
  %i.t = add nsw i32 %.sroa.04.011.i, -1          ; 3 uses
  %i.u = uitofp nneg i32 %i.t to double
  %i.v = fmul double %i.r, %i.u
  %i.w = fsub double %i.v, %i.q
  %i.x = uitofp nneg i32 %.sroa.04.011.i to double
  %i.y = tail call noundef double @_RNvNtNtCs1riiPXg9F01_4libm4math6lgamma6lgamma(double noundef %i.x)
  %i.z = fsub double %i.w, %i.y
  %i.aa = tail call double @llvm.powi.f64.i32(double 9.687500e-01, i32 %i.t)
  %i.ab = fsub nnan double 1.000000e+00, %i.aa
  %i.ac = tail call double @llvm.log.f64(double %i.ab)
  %i.ad = fmul double %i.ac, 8.000000e+00
  %i.ae = fadd double %i.ad, %i.z
  %i.af = tail call double @llvm.exp.f64(double %i.ae)
  %i.ag = fadd double %.sroa.01.012.i, %i.af      ; 2 uses
  %i.ah = icmp samesign ugt i32 %.sroa.04.011.i, 1
  br i1 %i.ah, label %bb.f, label %bb.e

_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbf26false_positive_probability.exit: ; preds = %.preheader.split, %bb.e
  %.sroa.0.0.i = phi double [ %i.s, %bb.e ], [ 1.000000e+00, %.preheader.split ]
  %i.ai = fcmp ugt double %.sroa.0.0.i, %2        ; 2 uses
  %.sroa.01.0. = select i1 %i.ai, i8 %.sroa.01.06, i8 %i.h ; 3 uses
  %..sroa.04.0 = select i1 %i.ai, i8 %i.h, i8 %.sroa.04.07 ; 2 uses
  %i.aj = add nuw i8 %..sroa.04.0, 1
  %i.ak = icmp ugt i8 %.sroa.01.0., %i.aj
  br i1 %i.ak, label %.preheader.split, label %.split.us
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbfNtB5_4Sbbf15might_intersect(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !23 ; 5 uses
  %i.f = icmp ult i64 %i.e, 288230376151711744
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !23 ; 3 uses
  %i.i = icmp ult i64 %i.h, 288230376151711744
  tail call void @llvm.assume(i1 %i.i)
  %.not = icmp eq i64 %i.e, %i.h
  br i1 %.not, label %.preheader, label %.split

.preheader:                                       ; preds = %bb.a
  %.not25 = icmp eq i64 %i.e, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !23
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !23
  br label %.split23

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.n, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @511, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

.loopexit:                                        ; preds = %bb.i
  %exitcond.not = icmp eq i64 %i.p, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.split23

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.b

.split23:                                         ; preds = %.lr.ph, %.loopexit
  %.sroa.012.024 = phi i64 [ 0, %.lr.ph ], [ %i.p, %.loopexit ] ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.012.024, 1        ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvXs0_NtCs63DIHKhvmTb_10lance_core5cacheNtB5_10LanceCacheNtNtB7_8deepsize10DeepSizeOf21deep_size_of_children:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.u:                                             ; preds = %bb.m
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2k_3AnyNtNtB4_6marker4SyncNtB3t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEEB47_.exit: ; preds = %bb.o, %bb.l, %bb.m
  %.pn = phi { ptr, i32 } [ %i.az, %bb.o ], [ %i.ar, %bb.m ], [ %i.ar, %bb.l ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !23, !align !50, !noundef !23
  %i.e = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @58, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs63DIHKhvmTb_10lance_core5utils4aimdNtB5_14AimdControllerNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @737, i64 noundef 14)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @739, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @738)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = call noundef double @_RNvMs1_NtNtCs63DIHKhvmTb_10lance_core5utils4aimdNtB5_14AimdController12current_rate(ptr noundef nonnull align 8 %0)
  store double %i.e, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @741, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @740)
  %i.g = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs63DIHKhvmTb_10lance_core5utils7backoffNtB5_11SlotBackoffNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22680
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !alias.scope !22681, !noalias !22680
  %i.d = load atomic ptr, ptr @_RNvNtNtCsitxk4pdPh9M_9getrandom8backends27linux_android_with_fallback12GETRANDOM_FN acquire, align 8, !noalias !22682 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull ptr @_RNvNtNtCsitxk4pdPh9M_9getrandom8backends27linux_android_with_fallback4init(), !noalias !22682
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = icmp eq ptr %.sroa.02.0.i.i.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.g, label %_RNvCsitxk4pdPh9M_9getrandom4fill.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.c, %bb.g
  %.sroa.0.030.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i, %bb.g ], [ %i.a, %bb.c ] ; 3 uses
  %.sroa.6.029.i.i.i.i.i = phi i64 [ %.sroa.6.1.i.i.i.i.i, %bb.g ], [ 32, %bb.c ] ; 4 uses
  %i.h = call noundef i64 %.sroa.02.0.i.i.i.i(ptr noundef nonnull %.sroa.0.030.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.029.i.i.i.i.i, i32 noundef 0) #65, !noalias !22683, !inline_history !22679 ; 5 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i.i
  %i.j = icmp eq i64 %i.h, -1
  br i1 %i.j, label %bb.f, label %.loopexit.i

bb.e:                                             ; preds = %.preheader.i.i.i.i
  %i.k = icmp ult i64 %.sroa.6.029.i.i.i.i.i, %i.h
  br i1 %i.k, label %.loopexit.i, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.l = call noundef i32 @_RNvNtNtNtCsitxk4pdPh9M_9getrandom8backends8use_file9util_libc13last_os_error(), !noalias !22683 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.l, -4
  br i1 %.not.i.i.i.i.i, label %bb.g, label %.loopexit.i, !prof !22684

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.6.1.i.i.i.i.i = phi i64 [ %i.n, %bb.h ], [ %.sroa.6.029.i.i.i.i.i, %bb.f ] ; 2 uses
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.o, %bb.h ], [ %.sroa.0.030.i.i.i.i.i, %bb.f ]
  %i.m = icmp eq i64 %.sroa.6.1.i.i.i.i.i, 0
  br i1 %i.m, label %_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCs63DIHKhvmTb_10lance_core.exit, label %.preheader.i.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.n = sub nuw nsw i64 %.sroa.6.029.i.i.i.i.i, %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i.i, i64 %i.h
  br label %bb.g

_RNvCsitxk4pdPh9M_9getrandom4fill.exit.i.i:       ; preds = %bb.c
  %i.p = call noundef i32 @_RNvNtNtCsitxk4pdPh9M_9getrandom8backends27linux_android_with_fallback17use_file_fallback(ptr noalias noundef nonnull %i.a, i64 noundef 32), !noalias !22680 ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCs63DIHKhvmTb_10lance_core.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.f, %bb.e, %bb.d, %_RNvCsitxk4pdPh9M_9getrandom4fill.exit.i.i
  %.sroa.4.0.ph.i = phi i32 [ %i.p, %_RNvCsitxk4pdPh9M_9getrandom4fill.exit.i.i ], [ 65538, %bb.e ], [ 65538, %bb.d ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22685
  store i32 %.sroa.4.0.ph.i, ptr %i.c, align 4, !noalias !22685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22685
  store ptr %i.c, ptr %i.b, align 8, !noalias !22685
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs0_NtCsitxk4pdPh9M_9getrandom5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !22685
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @1338, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1340) #68, !noalias !22685
  unreachable

_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.g, %_RNvCsitxk4pdPh9M_9getrandom4fill.exit.i.i
  %.sroa.08.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !22680 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.49.0.copyload.i.i = load i64, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !22680 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !22680 ; 2 uses
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.611.0.copyload.i.i = load i64, ptr %.sroa.611.0..sroa_idx.i.i, align 8, !noalias !22680 ; 2 uses
  %i.q = icmp eq i64 %.sroa.08.0.copyload.i.i, 0
  %i.r = icmp eq i64 %.sroa.49.0.copyload.i.i, 0
  %or.cond.i.i.i = select i1 %i.q, i1 %i.r, i1 false
  %i.s = icmp eq i64 %.sroa.510.0.copyload.i.i, 0
  %or.cond13.i.i.i = select i1 %or.cond.i.i.i, i1 %i.s, i1 false
  %i.t = icmp eq i64 %.sroa.611.0.copyload.i.i, 0
  %or.cond14.i.i.i = select i1 %or.cond13.i.i.i, i1 %i.t, i1 false ; 4 uses
  %..sroa.0.0.copyload2.i.i.i = select i1 %or.cond14.i.i.i, i64 -2152535657050944081, i64 %.sroa.08.0.copyload.i.i
  %..sroa.7.0.copyload4.i.i.i = select i1 %or.cond14.i.i.i, i64 7960286522194355700, i64 %.sroa.49.0.copyload.i.i
  %..sroa.8.0.copyload6.i.i.i = select i1 %or.cond14.i.i.i, i64 487617019471545679, i64 %.sroa.510.0.copyload.i.i
  %..sroa.9.0.copyload8.i.i.i = select i1 %or.cond14.i.i.i, i64 -537132696929009172, i64 %.sroa.611.0.copyload.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22680
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> <i32 2, i32 50, i32 2, i32 0>, ptr %i.u, align 8
  store i64 %..sroa.0.0.copyload2.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %..sroa.7.0.copyload4.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %..sroa.8.0.copyload6.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %..sroa.9.0.copyload8.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 9 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [192 x i8], align 8               ; 7 uses
  %.sroa.680 = alloca [56 x i8], align 8          ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [192 x i8], align 8               ; 7 uses
  %.sroa.651 = alloca [56 x i8], align 8          ; 6 uses
  %i.r = alloca [192 x i8], align 8               ; 7 uses
  %.sroa.642 = alloca [56 x i8], align 8          ; 6 uses
  %i.s = alloca [192 x i8], align 8               ; 7 uses
  %.sroa.635 = alloca [56 x i8], align 8          ; 6 uses
  %.sroa.7338 = alloca [31 x i8], align 1         ; 5 uses
  %.sroa.10 = alloca [24 x i8], align 8           ; 5 uses
  %.sroa.625 = alloca [31 x i8], align 1          ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 25 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call fastcc void @_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6removeeECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef align 8 dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @742, i64 noundef 14)
  %i.x = load i64, ptr %i.u, align 8, !range !25, !noundef !23 ; 7 uses
  %.not = icmp eq i64 %i.x, -1
  br i1 %.not, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit221, label %bb.c

bb.b:                                             ; preds = %.invoke650, %.invoke, %bb.bt, %bb.bs
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body331.thread

bb.c:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx335 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx335, align 8, !nonnull !23, !noundef !23 ; 8 uses
  %.sroa.11336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.11336.0.copyload = load i64, ptr %.sroa.11336.0..sroa_idx, align 8 ; 5 uses
  switch i64 %.sroa.11336.0.copyload, label %thread-pre-split.i [
    i64 0, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %.sroa.7.0.copyload, align 1, !alias.scope !22840, !noundef !23 ; 2 uses
  switch i8 %i.z, label %bb.e [
    i8 43, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread
    i8 45, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %.sroa.7.0.copyload, align 1, !alias.scope !22840
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.aa = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.z, %bb.d ]
  switch i8 %i.aa, label %bb.l [
    i8 43, label %bb.f
    i8 45, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 1
  %i.ac = add nsw i64 %.sroa.11336.0.copyload, -1
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 1 ; 2 uses
  %i.ae = add nsw i64 %.sroa.11336.0.copyload, -1 ; 3 uses
  %i.af = icmp samesign ult i64 %.sroa.11336.0.copyload, 9
  br i1 %i.af, label %.preheader118.i, label %.lr.ph.i

.preheader118.i:                                  ; preds = %bb.g
  %.not105139.i = icmp eq i64 %i.ae, 0
  br i1 %.not105139.i, label %.loopexit.i, label %.lr.ph143.i

.loopexit.i:                                      ; preds = %bb.j, %bb.k, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %.preheader.i, %.preheader118.i
  %.sroa.086.1.i = phi i32 [ %i.bf, %bb.k ], [ %i.dm, %bb.v ], [ %i.bs, %bb.o ], [ 0, %.preheader.i ], [ 0, %.preheader118.i ], [ %i.bv, %bb.p ], [ %i.cd, %bb.q ], [ %i.ck, %bb.r ], [ %i.cr, %bb.s ], [ %i.cy, %bb.t ], [ %i.df, %bb.u ], [ %i.at, %bb.j ]
  %i.ag = zext i32 %.sroa.086.1.i to i64
  %i.ah = shl nuw i64 %i.ag, 32
  br label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.j
  %.sroa.0.1138.i = phi ptr [ %i.ai, %bb.j ], [ %i.ad, %bb.g ] ; 3 uses
  %.sroa.26.1137.i = phi i64 [ %i.aj, %bb.j ], [ %i.ae, %bb.g ]
  %.sroa.086.0136.i = phi i32 [ %i.at, %bb.j ], [ 0, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i, i64 1
  %i.aj = add nsw i64 %.sroa.26.1137.i, -1        ; 2 uses
  %i.ak = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i, i32 10) ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 0
  %i.am = extractvalue { i32, i1 } %i.ak, 1
  br i1 %i.am, label %.loopexit114.sink.split.i, label %bb.h, !prof !26

bb.h:                                             ; preds = %.lr.ph.i
  %i.an = load i8, ptr %.sroa.0.1138.i, align 1, !alias.scope !22840, !noundef !23
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -48                  ; 2 uses
  %i.aq = icmp ult i32 %i.ap, 10
  br i1 %i.aq, label %bb.i, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ar = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.al, i32 %i.ap) ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.ar, 1
  br i1 %i.as, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread, label %bb.j, !prof !26

bb.j:                                             ; preds = %bb.i
  %i.at = extractvalue { i32, i1 } %i.ar, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.aj, 0
  br i1 %.not104.i, label %.loopexit.i, label %.lr.ph.i

.loopexit114.sink.split.i:                        ; preds = %.lr.ph.i, %.preheader115.i
  %.sroa.0.3147.lcssa.sink.i = phi ptr [ %.sroa.0.3147.i, %.preheader115.i ], [ %.sroa.0.1138.i, %.lr.ph.i ]
  %.sink190.i = phi i64 [ 513, %.preheader115.i ], [ 769, %.lr.ph.i ]
  %i.au = load i8, ptr %.sroa.0.3147.lcssa.sink.i, align 1, !alias.scope !22840, !noundef !23
  %i.av = add i8 %i.au, -48
  %i.aw = icmp ult i8 %i.av, 10
  %i.ax = select i1 %i.aw, i64 %.sink190.i, i64 257
  br label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit

.lr.ph143.i:                                      ; preds = %.preheader118.i, %bb.k
  %.sroa.0.2142.i = phi ptr [ %i.be, %bb.k ], [ %i.ad, %.preheader118.i ] ; 2 uses
  %.sroa.26.2141.i = phi i64 [ %i.bd, %bb.k ], [ %i.ae, %.preheader118.i ]
  %.sroa.086.2140.i = phi i32 [ %i.bf, %bb.k ], [ 0, %.preheader118.i ]
  %i.ay = load i8, ptr %.sroa.0.2142.i, align 1, !alias.scope !22840, !noundef !23
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -48                  ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 10
  br i1 %i.bb, label %bb.k, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.k:                                             ; preds = %.lr.ph143.i
  %i.bc = mul i32 %.sroa.086.2140.i, 10
  %i.bd = add nsw i64 %.sroa.26.2141.i, -1        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.2142.i, i64 1
  %i.bf = sub i32 %i.bc, %i.ba                    ; 2 uses
  %.not105.i = icmp eq i64 %i.bd, 0
  br i1 %.not105.i, label %.loopexit.i, label %.lr.ph143.i

bb.l:                                             ; preds = %bb.f, %bb.e
  %.sroa.26.0.i = phi i64 [ %i.ac, %bb.f ], [ %.sroa.11336.0.copyload, %bb.e ] ; 9 uses
  %.sroa.0.0.i = phi ptr [ %i.ab, %bb.f ], [ %.sroa.7.0.copyload, %bb.e ] ; 8 uses
  %i.bg = icmp samesign ult i64 %.sroa.26.0.i, 8
  br i1 %i.bg, label %.preheader.i, label %.preheader115.i

.preheader.i:                                     ; preds = %bb.l
  %.not107148.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not107148.i, label %.loopexit.i, label %.lr.ph152.i

.preheader115.i:                                  ; preds = %bb.l, %bb.o
  %.sroa.0.3147.i = phi ptr [ %i.bh, %bb.o ], [ %.sroa.0.0.i, %bb.l ] ; 3 uses
  %.sroa.26.3146.i = phi i64 [ %i.bi, %bb.o ], [ %.sroa.26.0.i, %bb.l ]
  %.sroa.086.3145.i = phi i32 [ %i.bs, %bb.o ], [ 0, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i, i64 1
  %i.bi = add nsw i64 %.sroa.26.3146.i, -1        ; 2 uses
  %i.bj = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i, i32 10) ; 2 uses
  %i.bk = extractvalue { i32, i1 } %i.bj, 0
  %i.bl = extractvalue { i32, i1 } %i.bj, 1
  br i1 %i.bl, label %.loopexit114.sink.split.i, label %bb.m, !prof !26

bb.m:                                             ; preds = %.preheader115.i
  %i.bm = load i8, ptr %.sroa.0.3147.i, align 1, !alias.scope !22840, !noundef !23
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, -48                  ; 2 uses
  %i.bp = icmp ult i32 %i.bo, 10
  br i1 %i.bp, label %bb.n, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bq = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bk, i32 %i.bo) ; 2 uses
  %i.br = extractvalue { i32, i1 } %i.bq, 1
  br i1 %i.br, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread, label %bb.o, !prof !26

bb.o:                                             ; preds = %bb.n
  %i.bs = extractvalue { i32, i1 } %i.bq, 0       ; 2 uses
  %.not106.i = icmp eq i64 %i.bi, 0
  br i1 %.not106.i, label %.loopexit.i, label %.preheader115.i

.lr.ph152.i:                                      ; preds = %.preheader.i
  %i.bt = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !22840, !noundef !23
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -48                  ; 3 uses
  %i.bw = icmp ult i32 %i.bv, 10
  br i1 %i.bw, label %bb.p, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.p:                                             ; preds = %.lr.ph152.i
  %.not107.i = icmp eq i64 %.sroa.26.0.i, 1
  br i1 %.not107.i, label %.loopexit.i, label %.lr.ph152.i.1

.lr.ph152.i.1:                                    ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !22840, !noundef !23
  %i.bz = zext i8 %i.by to i32
  %i.ca = add nsw i32 %i.bz, -48                  ; 2 uses
  %i.cb = icmp ult i32 %i.ca, 10
  br i1 %i.cb, label %bb.q, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.q:                                             ; preds = %.lr.ph152.i.1
  %i.cc = mul nuw nsw i32 %i.bv, 10
  %i.cd = add nuw nsw i32 %i.ca, %i.cc            ; 2 uses
  %.not107.i.1 = icmp eq i64 %.sroa.26.0.i, 2
  br i1 %.not107.i.1, label %.loopexit.i, label %.lr.ph152.i.2

.lr.ph152.i.2:                                    ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !22840, !noundef !23
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add nsw i32 %i.cg, -48                  ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 10
  br i1 %i.ci, label %bb.r, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.r:                                             ; preds = %.lr.ph152.i.2
  %i.cj = mul nuw nsw i32 %i.cd, 10
  %i.ck = add nuw nsw i32 %i.ch, %i.cj            ; 2 uses
  %.not107.i.2 = icmp eq i64 %.sroa.26.0.i, 3
  br i1 %.not107.i.2, label %.loopexit.i, label %.lr.ph152.i.3

.lr.ph152.i.3:                                    ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !22840, !noundef !23
  %i.cn = zext i8 %i.cm to i32
  %i.co = add nsw i32 %i.cn, -48                  ; 2 uses
  %i.cp = icmp ult i32 %i.co, 10
  br i1 %i.cp, label %bb.s, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.s:                                             ; preds = %.lr.ph152.i.3
  %i.cq = mul nuw nsw i32 %i.ck, 10
  %i.cr = add nuw nsw i32 %i.co, %i.cq            ; 2 uses
  %.not107.i.3 = icmp eq i64 %.sroa.26.0.i, 4
  br i1 %.not107.i.3, label %.loopexit.i, label %.lr.ph152.i.4

.lr.ph152.i.4:                                    ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !22840, !noundef !23
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nsw i32 %i.cu, -48                  ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 10
  br i1 %i.cw, label %bb.t, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.t:                                             ; preds = %.lr.ph152.i.4
  %i.cx = mul i32 %i.cr, 10
  %i.cy = add i32 %i.cv, %i.cx                    ; 2 uses
  %.not107.i.4 = icmp eq i64 %.sroa.26.0.i, 5
  br i1 %.not107.i.4, label %.loopexit.i, label %.lr.ph152.i.5

.lr.ph152.i.5:                                    ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !22840, !noundef !23
  %i.db = zext i8 %i.da to i32
  %i.dc = add nsw i32 %i.db, -48                  ; 2 uses
  %i.dd = icmp ult i32 %i.dc, 10
  br i1 %i.dd, label %bb.u, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.u:                                             ; preds = %.lr.ph152.i.5
  %i.de = mul i32 %i.cy, 10
  %i.df = add i32 %i.dc, %i.de                    ; 2 uses
  %.not107.i.5 = icmp eq i64 %.sroa.26.0.i, 6
  br i1 %.not107.i.5, label %.loopexit.i, label %.lr.ph152.i.6

.lr.ph152.i.6:                                    ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !22840, !noundef !23
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nsw i32 %i.di, -48                  ; 2 uses
  %i.dk = icmp ult i32 %i.dj, 10
  br i1 %i.dk, label %bb.v, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.v:                                             ; preds = %.lr.ph152.i.6
  %i.dl = mul i32 %i.df, 10
  %i.dm = add i32 %i.dj, %i.dl
  br label %.loopexit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit221: ; preds = %bb.ab, %bb.ac, %bb.a
  %.sroa.0.0 = phi i32 [ -1, %bb.a ], [ %.sroa.0.0.i218, %bb.ac ], [ %.sroa.0.0.i218, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 8, !range !85, !noundef !23 ; 2 uses
  switch i8 %i.do, label %bb.ad [
    i8 27, label %bb.ae
    i8 29, label %bb.af
    i8 30, label %bb.ag
    i8 32, label %bb.ah
    i8 39, label %bb.as
  ]

.body:                                            ; preds = %bb.ez, %bb.fa, %bb.x, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.du, %bb.x ], [ %i.xu, %bb.ez ], [ %i.du, %bb.y ], [ %i.xu, %bb.fa ] ; 2 uses
  %i.dp = icmp eq i64 %i.x, 0
  br i1 %i.dp, label %.body331.thread, label %bb.w

bb.w:                                             ; preds = %.body
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22841
  br label %.body331.thread

_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit: ; preds = %.loopexit.i, %.loopexit114.sink.split.i
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.ax, %.loopexit114.sink.split.i ], [ %i.ah, %.loopexit.i ] ; 3 uses
  %i.dq = trunc i64 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.dq, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread, label %bb.ab

_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread: ; preds = %bb.i, %bb.h, %.lr.ph143.i, %bb.m, %bb.n, %.lr.ph152.i, %.lr.ph152.i.1, %.lr.ph152.i.2, %.lr.ph152.i.3, %.lr.ph152.i.4, %.lr.ph152.i.5, %.lr.ph152.i.6, %bb.c, %bb.d, %bb.d, %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit
  %.sroa.12.0.insert.insert.i417 = phi i64 [ %.sroa.12.0.insert.insert.i, %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit ], [ 1, %bb.c ], [ 257, %.lr.ph143.i ], [ 257, %.lr.ph152.i ], [ 257, %bb.d ], [ 257, %bb.d ], [ 257, %bb.m ], [ 257, %.lr.ph152.i.6 ], [ 257, %.lr.ph152.i.5 ], [ 257, %.lr.ph152.i.4 ], [ 257, %.lr.ph152.i.3 ], [ 257, %.lr.ph152.i.2 ], [ 257, %.lr.ph152.i.1 ], [ 513, %bb.n ], [ 257, %bb.h ], [ 769, %bb.i ]
  %.sroa.4188.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i417, 8
  %.sroa.4188.0.extract.trunc = trunc i64 %.sroa.4188.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 %.sroa.4188.0.extract.trunc, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22842
  store i64 0, ptr %i.g, align 8, !noalias !22842
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !22842
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !22842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22842
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1610612768, ptr %i.dr, align 8, !noalias !22842
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !22842
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !22842
  store ptr %i.g, ptr %i.f, align 8, !noalias !22842
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @9, ptr %i.ds, align 8, !noalias !22842
  %i.dt = invoke noundef zeroext i1 @_RNvXs4_NtNtCscI6d9CVNmLh_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.x, !noalias !22843

bb.x:                                             ; preds = %bb.aa, %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22844)
  %.val.i.i = load i64, ptr %i.g, align 8, !alias.scope !22844, !noalias !22842 ; 2 uses
  %i.dv = icmp eq i64 %.val.i.i, 0
  br i1 %i.dv, label %.body, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val1.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !22844, !noalias !22842, !nonnull !23, !noundef !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22845
  br label %.body

bb.z:                                             ; preds = %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread
  br i1 %i.dt, label %bb.aa, label %bb.ex, !prof !26

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1050, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @367, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1052) #68
          to label %.noexc.i unwind label %bb.x, !noalias !22843

.noexc.i:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit
  %.sroa.6190.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i, 32
  %.sroa.6190.0.extract.trunc = trunc nuw i64 %.sroa.6190.0.extract.shift to i32
  %.sroa.0.0.i218 = tail call noundef i32 @llvm.smax.i32(i32 %.sroa.6190.0.extract.trunc, i32 -1) ; 2 uses
  %i.dw = icmp eq i64 %i.x, 0
  br i1 %i.dw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit221, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22846
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit221

bb.ad:                                            ; preds = %bb.af, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit221
  store i64 0, ptr %i.t, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.dy, align 8
  br label %bb.aw

bb.ae:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit221
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65
  %i.dz = tail call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #65 ; 7 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %.invoke, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !39

bb.af:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit221
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ef = load i8, ptr %i.ee, align 8, !range !85, !noundef !23
  %i.eg = icmp eq i8 %i.ef, 32
  br i1 %i.eg, label %bb.bc, label %bb.ad

bb.ag:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit221
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65
  %i.eh = tail call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #65 ; 7 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %.invoke, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit223, !prof !39

bb.ah:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit221
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.625)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7338)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !23, !noundef !23
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.em = load i64, ptr %i.el, align 8, !noundef !23
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22847
  store i8 -1, ptr %i.e, align 8, !noalias !22847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22848
  store ptr %i.en, ptr %i.b, align 8, !alias.scope !22849, !noalias !22850
  %.sroa.4411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.eo, ptr %.sroa.4411.0..sroa_idx, align 8, !alias.scope !22849, !noalias !22850
  %.sroa.5412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.5412.0..sroa_idx, align 8, !alias.scope !22849, !noalias !22850
  invoke fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtB2_12SpecFromIterBU_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB2d_3map3MapINtNtNtB2h_5slice4iter4IterINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvXs0_BW_BU_INtNtB2h_7convert7TryFromRB41_E8try_froms_0EINtNtB2h_6result6ResultNtB52_10InfallibleNtNtB10_5error5ErrorEEE9from_iterB10_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ai unwind label %.body331, !inline_history !22708

.body331:                                         ; preds = %bb.ah
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load i8, ptr %i.e, align 8, !range !102, !noalias !22847, !noundef !23
  %.not469 = icmp eq i8 %i.eq, -1
  br i1 %.not469, label %.body331.thread, label %bb.ar

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22848
  %i.er = load i8, ptr %i.e, align 8, !range !102, !noalias !22847, !noundef !23 ; 2 uses
  %.not.not.i = icmp eq i8 %i.er, -1
  br i1 %.not.not.i, label %.thread, label %bb.aj

.thread:                                          ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22847
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7338)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625)
  br label %bb.aw

bb.aj:                                            ; preds = %bb.ai
  %.sroa.4414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7338, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4414.0..sroa_idx, i64 31, i1 false)
  %.sroa.5415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5415.0..sroa_idx, i64 24, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !23, !noundef !23 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !23 ; 4 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i329, label %.lr.ph

bb.ak:                                            ; preds = %.lr.ph
  %i.ex = icmp eq i64 %i.ez, %i.ev
  br i1 %i.ex, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i329, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aj, %bb.ak
  %.sroa.0.0.i.i324695 = phi i64 [ %i.ez, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [192 x i8], ptr %i.et, i64 %.sroa.0.0.i.i324695
  %i.ez = add i64 %.sroa.0.0.i.i324695, 1         ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEBH_(ptr noalias noundef align 8 dereferenceable(192) %i.ey)
          to label %bb.ak unwind label %bb.am, !noalias !22851, !inline_history !22711

bb.al:                                            ; preds = %.lr.ph697
  %i.fa = add i64 %.sroa.0.1.i.i325696, 1         ; 2 uses
  %i.fb = icmp eq i64 %i.fa, %i.ev
  br i1 %i.fb, label %.body.i326, label %.lr.ph697

bb.am:                                            ; preds = %.lr.ph
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = icmp eq i64 %i.ez, %i.ev
  br i1 %i.fd, label %.body.i326, label %.lr.ph697

.lr.ph697:                                        ; preds = %bb.am, %bb.al
  %.sroa.0.1.i.i325696 = phi i64 [ %i.fa, %bb.al ], [ %i.ez, %bb.am ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [192 x i8], ptr %i.et, i64 %.sroa.0.1.i.i325696
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEBH_(ptr noalias noundef align 8 dereferenceable(192) %i.fe) #69
          to label %bb.al unwind label %bb.an, !noalias !22851, !inline_history !22711

bb.an:                                            ; preds = %.lr.ph697
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !22851, !inline_history !22711
  unreachable

.body.i326:                                       ; preds = %bb.al, %bb.am
  %.val2.i327 = load i64, ptr %i.d, align 8, !range !38, !noundef !23 ; 2 uses
  %i.fg = icmp eq i64 %.val2.i327, 0
  br i1 %i.fg, label %.body331.thread, label %bb.ao

bb.ao:                                            ; preds = %.body.i326
  %i.fh = mul nuw i64 %.val2.i327, 192
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !22851, !inline_history !22712
  br label %.body331.thread

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i329: ; preds = %bb.ak, %bb.aj
  %.val.i330 = load i64, ptr %i.d, align 8, !range !38, !noundef !23 ; 2 uses
  %i.fi = icmp eq i64 %.val.i330, 0
  br i1 %i.fi, label %bb.bl, label %bb.ap

bb.ap:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i329
  %i.fj = mul nuw i64 %.val.i330, 192
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.fj, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !22851, !inline_history !22712
  br label %bb.bl

bb.aq:                                            ; preds = %bb.ar
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !22847, !inline_history !22713
  unreachable

end_hunk_2
begin_hunk_3_@_RNvXs4_NtCs63DIHKhvmTb_10lance_core9datatypesNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtB5_11LogicalTypeE8try_from:bb.a
bb.cp:                                            ; preds = %bb.co
  %.sroa.4499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.5500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.5503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5503.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5500.0..sroa_idx, i64 24, i1 false)
  %.sroa.4502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4502.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4499.0..sroa_idx, i64 31, i1 false)
  store i8 %i.sf, ptr %0, align 8
  br i1 %i.sa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit783, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sd, i64 noundef %i.rz, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !24438
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit783

bb.cr:                                            ; preds = %bb.co
  %i.sg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.sg, i64 24, i1 false)
  br i1 %i.sa, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sd, i64 noundef %i.rz, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !24439
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cu
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %.thread964

bb.cu:                                            ; preds = %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload947, i64 32
  %i.sj = load ptr, ptr %i.si, align 8, !nonnull !23, !noundef !23
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload947, i64 40
  %i.sl = load i64, ptr %i.sk, align 8, !noundef !23
  invoke void @_RNvXs2_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalTypeINtNtCscI6d9CVNmLh_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.sj, i64 noundef %i.sl)
          to label %bb.cv unwind label %bb.ct

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvXs4_NtCs63DIHKhvmTb_10lance_core9datatypesNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtB5_11LogicalTypeE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %bb.cy unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.sm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24440)
  call void @llvm.experimental.noalias.scope.decl(metadata !24441)
  %.val.i.i787 = load i64, ptr %i.ag, align 8, !alias.scope !24442 ; 2 uses
  %i.sn = icmp eq i64 %.val.i.i787, 0
  br i1 %i.sn, label %.thread964, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.so = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val1.i.i788 = load ptr, ptr %i.so, align 8, !alias.scope !24442, !nonnull !23, !noundef !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i788, i64 noundef %.val.i.i787, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !24442
  br label %.thread964

bb.cy:                                            ; preds = %bb.cv
  %i.sp = load i8, ptr %i.i, align 8, !range !102, !noundef !23 ; 2 uses
  %.not732 = icmp eq i8 %i.sp, -1
  br i1 %.not732, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %.sroa.4508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.5509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.5512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5509.0..sroa_idx, i64 24, i1 false)
  %.sroa.4511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4511.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4508.0..sroa_idx, i64 31, i1 false)
  store i8 %i.sp, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !24443)
  call void @llvm.experimental.noalias.scope.decl(metadata !24444)
  %.val.i.i790 = load i64, ptr %i.ag, align 8, !alias.scope !24445 ; 2 uses
  %i.sq = icmp eq i64 %.val.i.i790, 0
  br i1 %i.sq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit792, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val1.i.i791 = load ptr, ptr %i.sr, align 8, !alias.scope !24445, !nonnull !23, !noundef !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i791, i64 noundef %.val.i.i790, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !24445
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit792

bb.db:                                            ; preds = %bb.cy
  %i.ss = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24446)
  call void @llvm.experimental.noalias.scope.decl(metadata !24447)
  %.val.i.i793 = load i64, ptr %i.ag, align 8, !alias.scope !24448 ; 2 uses
  %i.st = icmp eq i64 %.val.i.i793, 0
  br i1 %i.st, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit795, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.su = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val1.i.i794 = load ptr, ptr %i.su, align 8, !alias.scope !24448, !nonnull !23, !noundef !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i794, i64 noundef %.val.i.i793, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !24448
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit795

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit795: ; preds = %bb.dc, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ss, i64 24, i1 false)
  %i.sv = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24)
          to label %bb.df unwind label %bb.dd, !noalias !24449 ; 3 uses

bb.dd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit795
  %i.sw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae) #69
          to label %.thread964 unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.df:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sv, ptr noundef nonnull align 8 dereferenceable(24) %i.ss, i64 24, i1 false)
  store ptr %i.sv, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.sy = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24)
          to label %bb.di unwind label %bb.dg, !noalias !24450 ; 2 uses

bb.dg:                                            ; preds = %bb.df
  %i.sz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad) #69
          to label %.body751 unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ta = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

.body751:                                         ; preds = %bb.dg
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit unwind label %bb.dj

bb.di:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sy, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 34, ptr %i.tb, align 8
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.sv, ptr %.sroa.4264.0..sroa_idx, align 8
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.sy, ptr %.sroa.5265.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit849

bb.dj:                                            ; preds = %.thread993, %.thread964, %.body751
  %i.tc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit792: ; preds = %bb.da, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.ai)
          to label %bb.dk unwind label %bb.at

bb.dk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit783, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit852

.thread964:                                       ; preds = %bb.dd, %bb.cx, %bb.cw, %bb.ct
  %.pn734971 = phi { ptr, i32 } [ %i.sm, %bb.cx ], [ %i.sh, %bb.ct ], [ %i.sm, %bb.cw ], [ %i.sw, %bb.dd ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit unwind label %bb.dj

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit783: ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.dk

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit780: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5240.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  store i8 15, ptr %0, align 8
  %.sroa.4239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @960, ptr %.sroa.4239.0..sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit849

bb.dl:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.ay, ptr %i.al, align 8
  %.sroa.4462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeNtB6_7Display3fmtBA_, ptr %.sroa.4462.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noundef nonnull @948, ptr noundef nonnull %i.al)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit797 unwind label %bb.at

bb.dm:                                            ; preds = %bb.ay
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload947, i64 16
  %i.te = load ptr, ptr %i.td, align 8, !nonnull !23, !noundef !23 ; 5 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload947, i64 24
  %i.tg = load i64, ptr %i.tf, align 8, !noundef !23 ; 5 uses
  switch i64 %i.tg, label %thread-pre-split.i [
    i64 0, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread
    i64 1, label %bb.dn
  ]

bb.dn:                                            ; preds = %bb.dm
  %i.th = load i8, ptr %i.te, align 1, !alias.scope !24451, !noundef !23 ; 2 uses
  switch i8 %i.th, label %bb.do [
    i8 43, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread
    i8 45, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.dm
  %.pr.i = load i8, ptr %i.te, align 1, !alias.scope !24451
  br label %bb.do

bb.do:                                            ; preds = %thread-pre-split.i, %bb.dn
  %i.ti = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.th, %bb.dn ]
  switch i8 %i.ti, label %bb.dv [
    i8 43, label %bb.dp
    i8 45, label %bb.dq
  ]

bb.dp:                                            ; preds = %bb.do
  %i.tj = getelementptr inbounds nuw i8, ptr %i.te, i64 1
  %i.tk = add nsw i64 %i.tg, -1
  br label %bb.dv

bb.dq:                                            ; preds = %bb.do
  %i.tl = getelementptr inbounds nuw i8, ptr %i.te, i64 1 ; 2 uses
  %i.tm = add nsw i64 %i.tg, -1                   ; 3 uses
  %i.tn = icmp samesign ult i64 %i.tg, 9
  br i1 %i.tn, label %.preheader118.i, label %.lr.ph.i

.preheader118.i:                                  ; preds = %bb.dq
  %.not105139.i = icmp eq i64 %i.tm, 0
  br i1 %.not105139.i, label %.loopexit.i, label %.lr.ph143.i

.loopexit.i:                                      ; preds = %bb.dt, %bb.du, %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec, %bb.ed, %bb.ee, %bb.ef, %.preheader.i, %.preheader118.i
  %.sroa.086.1.i = phi i32 [ %i.un, %bb.du ], [ %i.wu, %bb.ef ], [ %i.va, %bb.dy ], [ 0, %.preheader.i ], [ 0, %.preheader118.i ], [ %i.vd, %bb.dz ], [ %i.vl, %bb.ea ], [ %i.vs, %bb.eb ], [ %i.vz, %bb.ec ], [ %i.wg, %bb.ed ], [ %i.wn, %bb.ee ], [ %i.ub, %bb.dt ]
  %i.to = zext i32 %.sroa.086.1.i to i64
  %i.tp = shl nuw i64 %i.to, 32
  br label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit

.lr.ph.i:                                         ; preds = %bb.dq, %bb.dt
  %.sroa.0.1138.i = phi ptr [ %i.tq, %bb.dt ], [ %i.tl, %bb.dq ] ; 3 uses
  %.sroa.26.1137.i = phi i64 [ %i.tr, %bb.dt ], [ %i.tm, %bb.dq ]
  %.sroa.086.0136.i = phi i32 [ %i.ub, %bb.dt ], [ 0, %bb.dq ]
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i, i64 1
  %i.tr = add nsw i64 %.sroa.26.1137.i, -1        ; 2 uses
  %i.ts = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i, i32 10) ; 2 uses
  %i.tt = extractvalue { i32, i1 } %i.ts, 0
  %i.tu = extractvalue { i32, i1 } %i.ts, 1
  br i1 %i.tu, label %.loopexit114.sink.split.i, label %bb.dr, !prof !26

bb.dr:                                            ; preds = %.lr.ph.i
  %i.tv = load i8, ptr %.sroa.0.1138.i, align 1, !alias.scope !24451, !noundef !23
  %i.tw = zext i8 %i.tv to i32
  %i.tx = add nsw i32 %i.tw, -48                  ; 2 uses
  %i.ty = icmp ult i32 %i.tx, 10
  br i1 %i.ty, label %bb.ds, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.ds:                                            ; preds = %bb.dr
  %i.tz = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.tt, i32 %i.tx) ; 2 uses
  %i.ua = extractvalue { i32, i1 } %i.tz, 1
  br i1 %i.ua, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread, label %bb.dt, !prof !26

bb.dt:                                            ; preds = %bb.ds
  %i.ub = extractvalue { i32, i1 } %i.tz, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.tr, 0
  br i1 %.not104.i, label %.loopexit.i, label %.lr.ph.i

.loopexit114.sink.split.i:                        ; preds = %.lr.ph.i, %.preheader115.i
  %.sroa.0.3147.lcssa.sink.i = phi ptr [ %.sroa.0.3147.i, %.preheader115.i ], [ %.sroa.0.1138.i, %.lr.ph.i ]
  %.sink190.i = phi i64 [ 513, %.preheader115.i ], [ 769, %.lr.ph.i ]
  %i.uc = load i8, ptr %.sroa.0.3147.lcssa.sink.i, align 1, !alias.scope !24451, !noundef !23
  %i.ud = add i8 %i.uc, -48
  %i.ue = icmp ult i8 %i.ud, 10
  %i.uf = select i1 %i.ue, i64 %.sink190.i, i64 257
  br label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit

.lr.ph143.i:                                      ; preds = %.preheader118.i, %bb.du
  %.sroa.0.2142.i = phi ptr [ %i.um, %bb.du ], [ %i.tl, %.preheader118.i ] ; 2 uses
  %.sroa.26.2141.i = phi i64 [ %i.ul, %bb.du ], [ %i.tm, %.preheader118.i ]
  %.sroa.086.2140.i = phi i32 [ %i.un, %bb.du ], [ 0, %.preheader118.i ]
  %i.ug = load i8, ptr %.sroa.0.2142.i, align 1, !alias.scope !24451, !noundef !23
  %i.uh = zext i8 %i.ug to i32
  %i.ui = add nsw i32 %i.uh, -48                  ; 2 uses
  %i.uj = icmp ult i32 %i.ui, 10
  br i1 %i.uj, label %bb.du, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.du:                                            ; preds = %.lr.ph143.i
  %i.uk = mul i32 %.sroa.086.2140.i, 10
  %i.ul = add nsw i64 %.sroa.26.2141.i, -1        ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.0.2142.i, i64 1
  %i.un = sub i32 %i.uk, %i.ui                    ; 2 uses
  %.not105.i = icmp eq i64 %i.ul, 0
  br i1 %.not105.i, label %.loopexit.i, label %.lr.ph143.i

bb.dv:                                            ; preds = %bb.dp, %bb.do
  %.sroa.26.0.i = phi i64 [ %i.tk, %bb.dp ], [ %i.tg, %bb.do ] ; 9 uses
  %.sroa.0.0.i = phi ptr [ %i.tj, %bb.dp ], [ %i.te, %bb.do ] ; 8 uses
  %i.uo = icmp samesign ult i64 %.sroa.26.0.i, 8
  br i1 %i.uo, label %.preheader.i, label %.preheader115.i

.preheader.i:                                     ; preds = %bb.dv
  %.not107148.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not107148.i, label %.loopexit.i, label %.lr.ph152.i

.preheader115.i:                                  ; preds = %bb.dv, %bb.dy
  %.sroa.0.3147.i = phi ptr [ %i.up, %bb.dy ], [ %.sroa.0.0.i, %bb.dv ] ; 3 uses
  %.sroa.26.3146.i = phi i64 [ %i.uq, %bb.dy ], [ %.sroa.26.0.i, %bb.dv ]
  %.sroa.086.3145.i = phi i32 [ %i.va, %bb.dy ], [ 0, %bb.dv ]
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i, i64 1
  %i.uq = add nsw i64 %.sroa.26.3146.i, -1        ; 2 uses
  %i.ur = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i, i32 10) ; 2 uses
  %i.us = extractvalue { i32, i1 } %i.ur, 0
  %i.ut = extractvalue { i32, i1 } %i.ur, 1
  br i1 %i.ut, label %.loopexit114.sink.split.i, label %bb.dw, !prof !26

bb.dw:                                            ; preds = %.preheader115.i
  %i.uu = load i8, ptr %.sroa.0.3147.i, align 1, !alias.scope !24451, !noundef !23
  %i.uv = zext i8 %i.uu to i32
  %i.uw = add nsw i32 %i.uv, -48                  ; 2 uses
  %i.ux = icmp ult i32 %i.uw, 10
  br i1 %i.ux, label %bb.dx, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.dx:                                            ; preds = %bb.dw
  %i.uy = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.us, i32 %i.uw) ; 2 uses
  %i.uz = extractvalue { i32, i1 } %i.uy, 1
  br i1 %i.uz, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread, label %bb.dy, !prof !26

bb.dy:                                            ; preds = %bb.dx
  %i.va = extractvalue { i32, i1 } %i.uy, 0       ; 2 uses
  %.not106.i = icmp eq i64 %i.uq, 0
  br i1 %.not106.i, label %.loopexit.i, label %.preheader115.i

.lr.ph152.i:                                      ; preds = %.preheader.i
  %i.vb = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !24451, !noundef !23
  %i.vc = zext i8 %i.vb to i32
  %i.vd = add nsw i32 %i.vc, -48                  ; 3 uses
  %i.ve = icmp ult i32 %i.vd, 10
  br i1 %i.ve, label %bb.dz, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.dz:                                            ; preds = %.lr.ph152.i
  %.not107.i = icmp eq i64 %.sroa.26.0.i, 1
  br i1 %.not107.i, label %.loopexit.i, label %.lr.ph152.i.1

.lr.ph152.i.1:                                    ; preds = %bb.dz
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.vg = load i8, ptr %i.vf, align 1, !alias.scope !24451, !noundef !23
  %i.vh = zext i8 %i.vg to i32
  %i.vi = add nsw i32 %i.vh, -48                  ; 2 uses
  %i.vj = icmp ult i32 %i.vi, 10
  br i1 %i.vj, label %bb.ea, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.ea:                                            ; preds = %.lr.ph152.i.1
  %i.vk = mul nuw nsw i32 %i.vd, 10
  %i.vl = add nuw nsw i32 %i.vi, %i.vk            ; 2 uses
  %.not107.i.1 = icmp eq i64 %.sroa.26.0.i, 2
  br i1 %.not107.i.1, label %.loopexit.i, label %.lr.ph152.i.2

.lr.ph152.i.2:                                    ; preds = %bb.ea
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.vn = load i8, ptr %i.vm, align 1, !alias.scope !24451, !noundef !23
  %i.vo = zext i8 %i.vn to i32
  %i.vp = add nsw i32 %i.vo, -48                  ; 2 uses
  %i.vq = icmp ult i32 %i.vp, 10
  br i1 %i.vq, label %bb.eb, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.eb:                                            ; preds = %.lr.ph152.i.2
  %i.vr = mul nuw nsw i32 %i.vl, 10
  %i.vs = add nuw nsw i32 %i.vp, %i.vr            ; 2 uses
  %.not107.i.2 = icmp eq i64 %.sroa.26.0.i, 3
  br i1 %.not107.i.2, label %.loopexit.i, label %.lr.ph152.i.3

.lr.ph152.i.3:                                    ; preds = %bb.eb
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.vu = load i8, ptr %i.vt, align 1, !alias.scope !24451, !noundef !23
  %i.vv = zext i8 %i.vu to i32
  %i.vw = add nsw i32 %i.vv, -48                  ; 2 uses
  %i.vx = icmp ult i32 %i.vw, 10
  br i1 %i.vx, label %bb.ec, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.ec:                                            ; preds = %.lr.ph152.i.3
  %i.vy = mul nuw nsw i32 %i.vs, 10
  %i.vz = add nuw nsw i32 %i.vw, %i.vy            ; 2 uses
  %.not107.i.3 = icmp eq i64 %.sroa.26.0.i, 4
  br i1 %.not107.i.3, label %.loopexit.i, label %.lr.ph152.i.4

.lr.ph152.i.4:                                    ; preds = %bb.ec
  %i.wa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.wb = load i8, ptr %i.wa, align 1, !alias.scope !24451, !noundef !23
  %i.wc = zext i8 %i.wb to i32
  %i.wd = add nsw i32 %i.wc, -48                  ; 2 uses
  %i.we = icmp ult i32 %i.wd, 10
  br i1 %i.we, label %bb.ed, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.ed:                                            ; preds = %.lr.ph152.i.4
  %i.wf = mul i32 %i.vz, 10
  %i.wg = add i32 %i.wd, %i.wf                    ; 2 uses
  %.not107.i.4 = icmp eq i64 %.sroa.26.0.i, 5
  br i1 %.not107.i.4, label %.loopexit.i, label %.lr.ph152.i.5

.lr.ph152.i.5:                                    ; preds = %bb.ed
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.wi = load i8, ptr %i.wh, align 1, !alias.scope !24451, !noundef !23
  %i.wj = zext i8 %i.wi to i32
  %i.wk = add nsw i32 %i.wj, -48                  ; 2 uses
  %i.wl = icmp ult i32 %i.wk, 10
  br i1 %i.wl, label %bb.ee, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.ee:                                            ; preds = %.lr.ph152.i.5
  %i.wm = mul i32 %i.wg, 10
  %i.wn = add i32 %i.wk, %i.wm                    ; 2 uses
  %.not107.i.5 = icmp eq i64 %.sroa.26.0.i, 6
  br i1 %.not107.i.5, label %.loopexit.i, label %.lr.ph152.i.6

.lr.ph152.i.6:                                    ; preds = %bb.ee
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.wp = load i8, ptr %i.wo, align 1, !alias.scope !24451, !noundef !23
  %i.wq = zext i8 %i.wp to i32
  %i.wr = add nsw i32 %i.wq, -48                  ; 2 uses
  %i.ws = icmp ult i32 %i.wr, 10
  br i1 %i.ws, label %bb.ef, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread

bb.ef:                                            ; preds = %.lr.ph152.i.6
  %i.wt = mul i32 %i.wn, 10
  %i.wu = add i32 %i.wr, %i.wt
  br label %.loopexit.i

_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit: ; preds = %.loopexit.i, %.loopexit114.sink.split.i
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.uf, %.loopexit114.sink.split.i ], [ %i.tp, %.loopexit.i ] ; 3 uses
  %i.wv = trunc i64 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.wv, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread, label %bb.eg

_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread: ; preds = %bb.ds, %bb.dr, %.lr.ph143.i, %bb.dw, %bb.dx, %.lr.ph152.i, %.lr.ph152.i.1, %.lr.ph152.i.2, %.lr.ph152.i.3, %.lr.ph152.i.4, %.lr.ph152.i.5, %.lr.ph152.i.6, %bb.dm, %bb.dn, %bb.dn, %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit
  %.sroa.12.0.insert.insert.i987 = phi i64 [ %.sroa.12.0.insert.insert.i, %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit ], [ 1, %bb.dm ], [ 257, %.lr.ph143.i ], [ 257, %.lr.ph152.i ], [ 257, %bb.dn ], [ 257, %bb.dn ], [ 257, %bb.dw ], [ 257, %.lr.ph152.i.6 ], [ 257, %.lr.ph152.i.5 ], [ 257, %.lr.ph152.i.4 ], [ 257, %.lr.ph152.i.3 ], [ 257, %.lr.ph152.i.2 ], [ 257, %.lr.ph152.i.1 ], [ 513, %bb.dx ], [ 257, %bb.dr ], [ 769, %bb.ds ]
  %.sroa.4665.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i987, 8
  %.sroa.4665.0.extract.trunc = trunc i64 %.sroa.4665.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %.sroa.4665.0.extract.trunc, ptr %i.l, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtNtNtCscI6d9CVNmLh_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %i.l)
          to label %bb.eh unwind label %bb.at

bb.eg:                                            ; preds = %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit
  %.sroa.6667.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i, 32
  %.sroa.6667.0.extract.trunc = trunc nuw i64 %.sroa.6667.0.extract.shift to i32
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 21, ptr %i.ww, align 8
  %.sroa.4235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.6667.0.extract.trunc, ptr %.sroa.4235.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit849

bb.eh:                                            ; preds = %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit.thread
  %.sroa.7487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7487.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i8 15, ptr %0, align 8
  %.sroa.6486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @961, ptr %.sroa.6486.0..sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit852

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit797: ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5205.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  store i8 15, ptr %0, align 8
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @962, ptr %.sroa.4204.0..sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit849

bb.ei:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr %i.ay, ptr %i.aw, align 8
  %.sroa.4395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeNtB6_7Display3fmtBA_, ptr %.sroa.4395.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noundef nonnull @948, ptr noundef nonnull %i.aw)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit799 unwind label %bb.at

bb.ej:                                            ; preds = %bb.aw
  %i.wx = getelementptr [16 x i8], ptr %.sroa.8.0.copyload947, i64 %.sroa.24.0.copyload935 ; 2 uses
  %i.wy = getelementptr i8, ptr %i.wx, i64 -16
  %i.wz = load ptr, ptr %i.wy, align 8, !nonnull !23, !noundef !23 ; 5 uses
  %i.xa = getelementptr i8, ptr %i.wx, i64 -8
  %i.xb = load i64, ptr %i.xa, align 8, !noundef !23 ; 5 uses
  switch i64 %i.xb, label %thread-pre-split.i834 [
    i64 0, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread
    i64 1, label %bb.ek
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.xc = load i8, ptr %i.wz, align 1, !alias.scope !24452, !noundef !23 ; 2 uses
  switch i8 %i.xc, label %bb.el [
    i8 43, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread
    i8 45, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread
  ]

thread-pre-split.i834:                            ; preds = %bb.ej
  %.pr.i835 = load i8, ptr %i.wz, align 1, !alias.scope !24452
  br label %bb.el

bb.el:                                            ; preds = %thread-pre-split.i834, %bb.ek
  %i.xd = phi i8 [ %.pr.i835, %thread-pre-split.i834 ], [ %i.xc, %bb.ek ]
  switch i8 %i.xd, label %bb.es [
    i8 43, label %bb.em
    i8 45, label %bb.en
  ]

bb.em:                                            ; preds = %bb.el
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wz, i64 1
  %i.xf = add nsw i64 %i.xb, -1
  br label %bb.es

bb.en:                                            ; preds = %bb.el
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wz, i64 1 ; 2 uses
  %i.xh = add nsw i64 %i.xb, -1                   ; 3 uses
  %i.xi = icmp samesign ult i64 %i.xb, 9
  br i1 %i.xi, label %.preheader118.i813, label %.lr.ph.i801

.preheader118.i813:                               ; preds = %bb.en
  %.not105139.i814 = icmp eq i64 %i.xh, 0
  br i1 %.not105139.i814, label %.loopexit.i808, label %.lr.ph143.i815

.loopexit.i808:                                   ; preds = %bb.eq, %bb.er, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.fb, %bb.fc, %.preheader.i827, %.preheader118.i813
  %.sroa.086.1.i809 = phi i32 [ %i.yi, %bb.er ], [ %i.aap, %bb.fc ], [ %i.yv, %bb.ev ], [ 0, %.preheader.i827 ], [ 0, %.preheader118.i813 ], [ %i.yy, %bb.ew ], [ %i.zg, %bb.ex ], [ %i.zn, %bb.ey ], [ %i.zu, %bb.ez ], [ %i.aab, %bb.fa ], [ %i.aai, %bb.fb ], [ %i.xw, %bb.eq ]
  %i.xj = zext i32 %.sroa.086.1.i809 to i64
  %i.xk = shl nuw i64 %i.xj, 32
  br label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836

.lr.ph.i801:                                      ; preds = %bb.en, %bb.eq
  %.sroa.0.1138.i802 = phi ptr [ %i.xl, %bb.eq ], [ %i.xg, %bb.en ] ; 3 uses
  %.sroa.26.1137.i803 = phi i64 [ %i.xm, %bb.eq ], [ %i.xh, %bb.en ]
  %.sroa.086.0136.i804 = phi i32 [ %i.xw, %bb.eq ], [ 0, %bb.en ]
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i802, i64 1
  %i.xm = add nsw i64 %.sroa.26.1137.i803, -1     ; 2 uses
  %i.xn = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i804, i32 10) ; 2 uses
  %i.xo = extractvalue { i32, i1 } %i.xn, 0
  %i.xp = extractvalue { i32, i1 } %i.xn, 1
  br i1 %i.xp, label %.loopexit114.sink.split.i810, label %bb.eo, !prof !26

bb.eo:                                            ; preds = %.lr.ph.i801
  %i.xq = load i8, ptr %.sroa.0.1138.i802, align 1, !alias.scope !24452, !noundef !23
  %i.xr = zext i8 %i.xq to i32
  %i.xs = add nsw i32 %i.xr, -48                  ; 2 uses
  %i.xt = icmp ult i32 %i.xs, 10
  br i1 %i.xt, label %bb.ep, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread

bb.ep:                                            ; preds = %bb.eo
  %i.xu = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.xo, i32 %i.xs) ; 2 uses
  %i.xv = extractvalue { i32, i1 } %i.xu, 1
  br i1 %i.xv, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread, label %bb.eq, !prof !26

bb.eq:                                            ; preds = %bb.ep
  %i.xw = extractvalue { i32, i1 } %i.xu, 0       ; 2 uses
  %.not104.i807 = icmp eq i64 %i.xm, 0
  br i1 %.not104.i807, label %.loopexit.i808, label %.lr.ph.i801

.loopexit114.sink.split.i810:                     ; preds = %.lr.ph.i801, %.preheader115.i822
  %.sroa.0.3147.lcssa.sink.i811 = phi ptr [ %.sroa.0.3147.i823, %.preheader115.i822 ], [ %.sroa.0.1138.i802, %.lr.ph.i801 ]
  %.sink190.i812 = phi i64 [ 513, %.preheader115.i822 ], [ 769, %.lr.ph.i801 ]
  %i.xx = load i8, ptr %.sroa.0.3147.lcssa.sink.i811, align 1, !alias.scope !24452, !noundef !23
  %i.xy = add i8 %i.xx, -48
  %i.xz = icmp ult i8 %i.xy, 10
  %i.ya = select i1 %i.xz, i64 %.sink190.i812, i64 257
  br label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836

.lr.ph143.i815:                                   ; preds = %.preheader118.i813, %bb.er
  %.sroa.0.2142.i816 = phi ptr [ %i.yh, %bb.er ], [ %i.xg, %.preheader118.i813 ] ; 2 uses
  %.sroa.26.2141.i817 = phi i64 [ %i.yg, %bb.er ], [ %i.xh, %.preheader118.i813 ]
  %.sroa.086.2140.i818 = phi i32 [ %i.yi, %bb.er ], [ 0, %.preheader118.i813 ]
  %i.yb = load i8, ptr %.sroa.0.2142.i816, align 1, !alias.scope !24452, !noundef !23
  %i.yc = zext i8 %i.yb to i32
  %i.yd = add nsw i32 %i.yc, -48                  ; 2 uses
  %i.ye = icmp ult i32 %i.yd, 10
  br i1 %i.ye, label %bb.er, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread

bb.er:                                            ; preds = %.lr.ph143.i815
  %i.yf = mul i32 %.sroa.086.2140.i818, 10
  %i.yg = add nsw i64 %.sroa.26.2141.i817, -1     ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.0.2142.i816, i64 1
  %i.yi = sub i32 %i.yf, %i.yd                    ; 2 uses
  %.not105.i819 = icmp eq i64 %i.yg, 0
  br i1 %.not105.i819, label %.loopexit.i808, label %.lr.ph143.i815

bb.es:                                            ; preds = %bb.em, %bb.el
  %.sroa.26.0.i820 = phi i64 [ %i.xf, %bb.em ], [ %i.xb, %bb.el ] ; 9 uses
  %.sroa.0.0.i821 = phi ptr [ %i.xe, %bb.em ], [ %i.wz, %bb.el ] ; 8 uses
  %i.yj = icmp samesign ult i64 %.sroa.26.0.i820, 8
  br i1 %i.yj, label %.preheader.i827, label %.preheader115.i822

.preheader.i827:                                  ; preds = %bb.es
  %.not107148.i828 = icmp eq i64 %.sroa.26.0.i820, 0
  br i1 %.not107148.i828, label %.loopexit.i808, label %.lr.ph152.i829

.preheader115.i822:                               ; preds = %bb.es, %bb.ev
  %.sroa.0.3147.i823 = phi ptr [ %i.yk, %bb.ev ], [ %.sroa.0.0.i821, %bb.es ] ; 3 uses
  %.sroa.26.3146.i824 = phi i64 [ %i.yl, %bb.ev ], [ %.sroa.26.0.i820, %bb.es ]
  %.sroa.086.3145.i825 = phi i32 [ %i.yv, %bb.ev ], [ 0, %bb.es ]
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i823, i64 1
  %i.yl = add nsw i64 %.sroa.26.3146.i824, -1     ; 2 uses
  %i.ym = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i825, i32 10) ; 2 uses
  %i.yn = extractvalue { i32, i1 } %i.ym, 0
  %i.yo = extractvalue { i32, i1 } %i.ym, 1
  br i1 %i.yo, label %.loopexit114.sink.split.i810, label %bb.et, !prof !26

bb.et:                                            ; preds = %.preheader115.i822
  %i.yp = load i8, ptr %.sroa.0.3147.i823, align 1, !alias.scope !24452, !noundef !23
  %i.yq = zext i8 %i.yp to i32
  %i.yr = add nsw i32 %i.yq, -48                  ; 2 uses
  %i.ys = icmp ult i32 %i.yr, 10
  br i1 %i.ys, label %bb.eu, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread

bb.eu:                                            ; preds = %bb.et
  %i.yt = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.yn, i32 %i.yr) ; 2 uses
  %i.yu = extractvalue { i32, i1 } %i.yt, 1
  br i1 %i.yu, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread, label %bb.ev, !prof !26

bb.ev:                                            ; preds = %bb.eu
  %i.yv = extractvalue { i32, i1 } %i.yt, 0       ; 2 uses
  %.not106.i826 = icmp eq i64 %i.yl, 0
  br i1 %.not106.i826, label %.loopexit.i808, label %.preheader115.i822

.lr.ph152.i829:                                   ; preds = %.preheader.i827
  %i.yw = load i8, ptr %.sroa.0.0.i821, align 1, !alias.scope !24452, !noundef !23
  %i.yx = zext i8 %i.yw to i32
  %i.yy = add nsw i32 %i.yx, -48                  ; 3 uses
  %i.yz = icmp ult i32 %i.yy, 10
  br i1 %i.yz, label %bb.ew, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread

bb.ew:                                            ; preds = %.lr.ph152.i829
  %.not107.i833 = icmp eq i64 %.sroa.26.0.i820, 1
  br i1 %.not107.i833, label %.loopexit.i808, label %.lr.ph152.i829.1

.lr.ph152.i829.1:                                 ; preds = %bb.ew
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i821, i64 1
  %i.zb = load i8, ptr %i.za, align 1, !alias.scope !24452, !noundef !23
  %i.zc = zext i8 %i.zb to i32
  %i.zd = add nsw i32 %i.zc, -48                  ; 2 uses
  %i.ze = icmp ult i32 %i.zd, 10
  br i1 %i.ze, label %bb.ex, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread

bb.ex:                                            ; preds = %.lr.ph152.i829.1
  %i.zf = mul nuw nsw i32 %i.yy, 10
  %i.zg = add nuw nsw i32 %i.zd, %i.zf            ; 2 uses
  %.not107.i833.1 = icmp eq i64 %.sroa.26.0.i820, 2
  br i1 %.not107.i833.1, label %.loopexit.i808, label %.lr.ph152.i829.2

.lr.ph152.i829.2:                                 ; preds = %bb.ex
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i821, i64 2
  %i.zi = load i8, ptr %i.zh, align 1, !alias.scope !24452, !noundef !23
  %i.zj = zext i8 %i.zi to i32
  %i.zk = add nsw i32 %i.zj, -48                  ; 2 uses
  %i.zl = icmp ult i32 %i.zk, 10
  br i1 %i.zl, label %bb.ey, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread

bb.ey:                                            ; preds = %.lr.ph152.i829.2
  %i.zm = mul nuw nsw i32 %i.zg, 10
  %i.zn = add nuw nsw i32 %i.zk, %i.zm            ; 2 uses
  %.not107.i833.2 = icmp eq i64 %.sroa.26.0.i820, 3
  br i1 %.not107.i833.2, label %.loopexit.i808, label %.lr.ph152.i829.3

.lr.ph152.i829.3:                                 ; preds = %bb.ey
  %i.zo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i821, i64 3
  %i.zp = load i8, ptr %i.zo, align 1, !alias.scope !24452, !noundef !23
  %i.zq = zext i8 %i.zp to i32
  %i.zr = add nsw i32 %i.zq, -48                  ; 2 uses
  %i.zs = icmp ult i32 %i.zr, 10
  br i1 %i.zs, label %bb.ez, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread

bb.ez:                                            ; preds = %.lr.ph152.i829.3
  %i.zt = mul nuw nsw i32 %i.zn, 10
  %i.zu = add nuw nsw i32 %i.zr, %i.zt            ; 2 uses
  %.not107.i833.3 = icmp eq i64 %.sroa.26.0.i820, 4
  br i1 %.not107.i833.3, label %.loopexit.i808, label %.lr.ph152.i829.4

.lr.ph152.i829.4:                                 ; preds = %bb.ez
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i821, i64 4
  %i.zw = load i8, ptr %i.zv, align 1, !alias.scope !24452, !noundef !23
  %i.zx = zext i8 %i.zw to i32
  %i.zy = add nsw i32 %i.zx, -48                  ; 2 uses
  %i.zz = icmp ult i32 %i.zy, 10
  br i1 %i.zz, label %bb.fa, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread

bb.fa:                                            ; preds = %.lr.ph152.i829.4
  %i.aaa = mul i32 %i.zu, 10
  %i.aab = add i32 %i.zy, %i.aaa                  ; 2 uses
  %.not107.i833.4 = icmp eq i64 %.sroa.26.0.i820, 5
  br i1 %.not107.i833.4, label %.loopexit.i808, label %.lr.ph152.i829.5

.lr.ph152.i829.5:                                 ; preds = %bb.fa
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i821, i64 5
  %i.aad = load i8, ptr %i.aac, align 1, !alias.scope !24452, !noundef !23
  %i.aae = zext i8 %i.aad to i32
  %i.aaf = add nsw i32 %i.aae, -48                ; 2 uses
  %i.aag = icmp ult i32 %i.aaf, 10
  br i1 %i.aag, label %bb.fb, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread

bb.fb:                                            ; preds = %.lr.ph152.i829.5
  %i.aah = mul i32 %i.aab, 10
  %i.aai = add i32 %i.aaf, %i.aah                 ; 2 uses
  %.not107.i833.5 = icmp eq i64 %.sroa.26.0.i820, 6
  br i1 %.not107.i833.5, label %.loopexit.i808, label %.lr.ph152.i829.6

.lr.ph152.i829.6:                                 ; preds = %bb.fb
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i821, i64 6
  %i.aak = load i8, ptr %i.aaj, align 1, !alias.scope !24452, !noundef !23
  %i.aal = zext i8 %i.aak to i32
  %i.aam = add nsw i32 %i.aal, -48                ; 2 uses
  %i.aan = icmp ult i32 %i.aam, 10
  br i1 %i.aan, label %bb.fc, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread

bb.fc:                                            ; preds = %.lr.ph152.i829.6
  %i.aao = mul i32 %i.aai, 10
  %i.aap = add i32 %i.aam, %i.aao
  br label %.loopexit.i808

_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836: ; preds = %.loopexit.i808, %.loopexit114.sink.split.i810
  %.sroa.12.0.insert.insert.i800 = phi i64 [ %i.ya, %.loopexit114.sink.split.i810 ], [ %i.xk, %.loopexit.i808 ] ; 3 uses
  %.sroa.6673.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i800, 32
  %.sroa.6673.0.extract.trunc = trunc nuw i64 %.sroa.6673.0.extract.shift to i32 ; 2 uses
  %i.aaq = trunc i64 %.sroa.12.0.insert.insert.i800 to i1
  br i1 %i.aaq, label %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread, label %bb.fd

_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836.thread: ; preds = %bb.ep, %bb.eo, %.lr.ph143.i815, %bb.et, %bb.eu, %.lr.ph152.i829, %.lr.ph152.i829.1, %.lr.ph152.i829.2, %.lr.ph152.i829.3, %.lr.ph152.i829.4, %.lr.ph152.i829.5, %.lr.ph152.i829.6, %bb.ej, %bb.ek, %bb.ek, %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836
  %.sroa.12.0.insert.insert.i800991 = phi i64 [ %.sroa.12.0.insert.insert.i800, %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836 ], [ 1, %bb.ej ], [ 257, %.lr.ph143.i815 ], [ 257, %.lr.ph152.i829 ], [ 257, %bb.ek ], [ 257, %bb.ek ], [ 257, %bb.et ], [ 257, %.lr.ph152.i829.6 ], [ 257, %.lr.ph152.i829.5 ], [ 257, %.lr.ph152.i829.4 ], [ 257, %.lr.ph152.i829.3 ], [ 257, %.lr.ph152.i829.2 ], [ 257, %.lr.ph152.i829.1 ], [ 513, %bb.eu ], [ 257, %bb.eo ], [ 769, %bb.ep ]
  %.sroa.4671.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i800991, 8
  %.sroa.4671.0.extract.trunc = trunc i64 %.sroa.4671.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %.sroa.4671.0.extract.trunc, ptr %i.s, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke fastcc void @_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtNtNtCscI6d9CVNmLh_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %i.s)
          to label %bb.gp unwind label %bb.at

bb.fd:                                            ; preds = %_RNvMsp_NtCscI6d9CVNmLh_4core3numl16from_ascii_radix.exit836
  %i.aar = add nsw i64 %.sroa.24.0.copyload935, -2
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload947, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCs40k4W9msRzi_5alloc3str17join_generic_copyehReECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aas, i64 noundef %i.aar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @963, i64 noundef 1)
          to label %bb.fe unwind label %bb.at

bb.fe:                                            ; preds = %bb.fd
  %.sroa.0891.0.copyload = load i64, ptr %i.q, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx892 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx892, align 8, !nonnull !23, !noundef !23 ; 6 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.aat = icmp eq i64 %.sroa.11.0.copyload, 14
  br i1 %i.aat, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aau = load i64, ptr %.sroa.7.0.copyload, align 1
  %i.aav = xor i64 %i.aau, 7377510152581046636
  %i.aaw = getelementptr i8, ptr %.sroa.7.0.copyload, i64 6
  %i.aax = load i64, ptr %i.aaw, align 1
  %i.aay = xor i64 %i.aax, 3905030313736955490
  %i.aaz = or i64 %i.aav, %i.aay
  %i.aba = icmp ne i64 %i.aaz, 0
  %i.abb = zext i1 %i.aba to i32
  %i.abc = icmp eq i32 %i.abb, 0
  br i1 %i.abc, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.fe, %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.p, i64 noundef %.sroa.11.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.abd = load i64, ptr %i.p, align 8, !range !31, !noundef !23
  %i.abe = trunc nuw i64 %i.abd to i1
  %i.abf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.abg = load i64, ptr %i.abf, align 8, !range !68, !noundef !23 ; 9 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.abe, label %bb.fj, label %bb.fk, !prof !26

bb.fh:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.abi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 2, ptr %i.abi, align 4
  store i8 21, ptr %i.at, align 8
  invoke fastcc void @_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5Field3newReECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.au, ptr noalias noundef nonnull readonly captures(address, read_provenance) @965, i64 noundef 4, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.at, i1 noundef zeroext true)
          to label %bb.gb unwind label %bb.gc

.body:                                            ; preds = %bb.fv, %bb.gm, %bb.gc, %bb.fo, %bb.fn, %.thread993
  %.pn743.pn = phi { ptr, i32 } [ %.pn7431000, %.thread993 ], [ %lpad.thr_comm.split-lp, %bb.gc ], [ %i.abn, %bb.fn ], [ %i.abn, %bb.fo ], [ %i.aco, %bb.gm ], [ %i.abw, %bb.fv ] ; 2 uses
  %i.abj = icmp eq i64 %.sroa.0891.0.copyload, 0
  br i1 %i.abj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit, label %bb.fi

bb.fi:                                            ; preds = %.body
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.0891.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !24453
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit

bb.fj:                                            ; preds = %bb.fg
  %i.abk = load i64, ptr %i.abh, align 8
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.abg, i64 %i.abk) #68
          to label %bb.au unwind label %bb.gc

bb.fk:                                            ; preds = %bb.fg
  %i.abl = load ptr, ptr %i.abh, align 8, !nonnull !23, !noundef !23 ; 5 uses
  %i.abm = icmp ule i64 %.sroa.11.0.copyload, %i.abg
  tail call void @llvm.assume(i1 %i.abm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.not739 = icmp eq i64 %.sroa.11.0.copyload, 0
  br i1 %.not739, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fm, %bb.fk
  store i64 %i.abg, ptr %i.ap, align 8
  %.sroa.4422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.abl, ptr %.sroa.4422.0..sroa_idx, align 8
  %.sroa.5423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.sroa.11.0.copyload, ptr %.sroa.5423.0..sroa_idx, align 8
  invoke void @_RNvXs4_NtCs63DIHKhvmTb_10lance_core9datatypesNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtB5_11LogicalTypeE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %bb.fp unwind label %bb.fn

bb.fm:                                            ; preds = %bb.fk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abl, ptr nonnull align 1 %.sroa.7.0.copyload, i64 %.sroa.11.0.copyload, i1 false)
  br label %bb.fl

bb.fn:                                            ; preds = %bb.fl
  %i.abn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abo = icmp eq i64 %i.abg, 0
  br i1 %i.abo, label %.body, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abl, i64 noundef %i.abg, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !24454
  br label %.body

bb.fp:                                            ; preds = %bb.fl
  %i.abp = load i8, ptr %i.n, align 8, !range !102, !noundef !23 ; 2 uses
  %.not740 = icmp eq i8 %i.abp, -1
  br i1 %.not740, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %.sroa.4452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.5453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.5456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5456.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5453.0..sroa_idx, i64 24, i1 false)
  %.sroa.4455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4455.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4452.0..sroa_idx, i64 31, i1 false)
  store i8 %i.abp, ptr %0, align 8
  %i.abq = icmp eq i64 %i.abg, 0
  br i1 %i.abq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit843, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abl, i64 noundef %i.abg, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !24455
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit843

bb.fs:                                            ; preds = %bb.fp
  %i.abr = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.abr, i64 24, i1 false)
  %i.abs = icmp eq i64 %i.abg, 0
  br i1 %i.abs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit846, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abl, i64 noundef %i.abg, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !24456
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit846

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit846: ; preds = %bb.ft, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke fastcc void @_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5Field3newReECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.ao, ptr noalias noundef nonnull readonly captures(address, read_provenance) @965, i64 noundef 4, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.an, i1 noundef zeroext true)
          to label %bb.fu unwind label %bb.gc

bb.fu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 1, ptr %i.m, align 8
  %i.abt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.abt, align 8
  %i.abu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.abu, ptr noundef nonnull align 8 dereferenceable(112) %i.ao, i64 112, i1 false)
  %i.abv = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 128)
          to label %bb.fx unwind label %bb.fv, !noalias !24457 ; 2 uses

bb.fv:                                            ; preds = %bb.fu
  %i.abw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m) #69
          to label %.body unwind label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.abx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.fx:                                            ; preds = %bb.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.abv, ptr noundef nonnull align 8 dereferenceable(128) %i.m, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 29, ptr %i.aby, align 8
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.6673.0.extract.trunc, ptr %.sroa.4199.0..sroa_idx, align 4
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.abv, ptr %.sroa.5200.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.fy

bb.fy:                                            ; preds = %bb.go, %bb.fx
  %i.abz = icmp eq i64 %.sroa.0891.0.copyload, 0
  br i1 %i.abz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit849, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.0891.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !24458
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit849

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit843: ; preds = %bb.fr, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.aca = icmp eq i64 %.sroa.0891.0.copyload, 0
  br i1 %i.aca, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit852, label %bb.ga

bb.ga:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeEBF_.exit843
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.0891.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !24459
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit852

bb.gb:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !24460
  %i.acb = call noundef dereferenceable_or_null(20) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !24460 ; 4 uses
  %i.acc = icmp eq ptr %i.acb, null
  br i1 %i.acc, label %bb.gd, label %bb.ge
end_hunk_3
