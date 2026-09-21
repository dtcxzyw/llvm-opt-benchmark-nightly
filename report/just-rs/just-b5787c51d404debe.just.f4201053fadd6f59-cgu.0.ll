Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionhEECskXtk6F4WjxZ_4just:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i8, ptr %i.g, align 8, !range !40, !noundef !28
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.k = load i8, ptr %i.j, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = insertvalue { i1, i8 } poison, i1 %i.i, 0
  %i.m = insertvalue { i1, i8 } %i.l, i8 %i.k, 1
  ret { i1, i8 } %i.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder3argNtB3_3Arg3addNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(640) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !719
  store i64 1, ptr %i.a, align 8, !noalias !719
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.d, align 8, !noalias !719
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %2, ptr %i.e, align 8, !noalias !719
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %i.f, align 8, !noalias !719
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !720
  %i.g = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !720 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterEE3newCskXtk6F4WjxZ_4just.exit.i, !prof !26

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #71
          to label %.noexc.i unwind label %bb.c, !noalias !721

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !722
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom14ValueCompleterEL_E9drop_slowCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.e) #74
          to label %.body unwind label %bb.e, !noalias !721

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !721
  unreachable

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterEE3newCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !719
  store ptr %i.g, ptr %i.c, align 8, !noalias !719
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @32, ptr %i.n, align 8, !noalias !719
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) @31, i64 16, i1 false), !noalias !719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !719
  invoke fastcc void @_RNvMNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(16) @31, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterEE3newCskXtk6F4WjxZ_4just.exit.i
  %i.p = load ptr, ptr %i.b, align 8, !noalias !719, !noundef !28 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.r = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !723
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #74
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterEE3newCskXtk6F4WjxZ_4just.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.i, %bb.d ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(640) %1) #72
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.f, %.noexc, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(640) %1, i64 640, i1 false)
  ret void

bb.j:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE8write_toNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [4 x i8], align 4                 ; 6 uses
  %i.j = alloca [12 x i8], align 8                ; 8 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [4 x i8], align 1                 ; 8 uses
  %i.n = alloca [4 x i8], align 1                 ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [4 x i8], align 4                 ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [4 x i8], align 4                 ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [4 x i8], align 4                 ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [4 x i8], align 4                 ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [4 x i8], align 4                ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [4 x i8], align 4                ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [4 x i8], align 4                ; 4 uses
  %i.ah = alloca [4 x i8], align 4                ; 7 uses
  %i.ai = alloca [96 x i8], align 8               ; 14 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [8 x i8], align 8                ; 8 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 8 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.av, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6 = load ptr, ptr %i.aw, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %.not = icmp eq ptr %.val, %.val6
  br i1 %.not, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4            ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.018.0.copyload.i = load i32, ptr %i.az, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.21.0.copyload.i = load i32, ptr %.sroa.21.0..sroa_idx.i, align 8 ; 7 uses
  %i.ba = load i64, ptr %0, align 8, !range !37
  %.not.i10 = icmp eq i64 %i.ba, -1               ; 3 uses
  %i.bb = trunc i32 %.sroa.018.0.copyload.i to i1 ; 8 uses
  %i.bc = urem i32 %.sroa.21.0.copyload.i, 1000000000 ; 8 uses
  %.sroa.4118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bd = udiv i32 %.sroa.21.0.copyload.i, 1000
  %i.be = urem i32 %i.bd, 1000000                 ; 2 uses
  %.sroa.4114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bf = udiv i32 %.sroa.21.0.copyload.i, 1000000
  %.sroa.4110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 89 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 56 uses
  %.sroa.4106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.4102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bi = icmp eq i32 %i.bc, 0
  %i.bj = urem i32 %i.bc, 1000000
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = urem i32 %i.bc, 1000
  %i.bm = icmp eq i32 %i.bl, 0
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bn = udiv i32 %i.bc, 1000
  %.sroa.490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bo = udiv i32 %i.bc, 1000000
  %.sroa.486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bp = icmp ugt i32 %.sroa.10.0.copyload.i, 43199 ; 3 uses
  %.146.i = select i1 %i.bp, ptr @81, ptr @80
  %i.bq = select i1 %i.bp, ptr getelementptr inbounds nuw (i8, ptr @81, i64 2), ptr getelementptr inbounds nuw (i8, ptr @80, i64 2)
  %.sroa.078.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 80 ; 11 uses
  %.sroa.379.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 88 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %.not140.i = icmp eq i32 %i.ay, 0               ; 4 uses
  %i.bv = lshr i32 %i.ay, 4
  %i.bw = and i32 %i.bv, 511
  %i.bx = and i32 %i.ay, 7
  %i.by = add nuw nsw i32 %i.bw, %i.bx
  %i.bz = lshr i32 %i.ay, 3                       ; 3 uses
  %i.ca = and i32 %i.bz, 1023                     ; 6 uses
  %i.cb = zext nneg i32 %i.ca to i64              ; 5 uses
  %i.cc = icmp samesign ult i32 %i.ca, 733        ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr @46, i64 %i.cb ; 4 uses
  %i.ce = icmp ne i32 %i.ay, 0
  %or.cond5.i = select i1 %i.ce, i1 %i.bb, i1 false ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load i32, ptr %i.cf, align 8            ; 7 uses
  %i.ch = ashr i32 %i.ay, 13                      ; 4 uses
  %or.cond.i26 = icmp ult i32 %i.ch, 10000        ; 2 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ci = trunc i32 %i.bz to i8
  %i.cj = urem i32 %.sroa.10.0.copyload.i, 60     ; 2 uses
  %i.ck = udiv i32 %.sroa.10.0.copyload.i, 60
  %i.cl = urem i32 %i.ck, 60
  %i.cm = udiv i32 %.sroa.10.0.copyload.i, 3600
  %i.cn = icmp ugt i32 %.sroa.21.0.copyload.i, 999999999 ; 2 uses
  %i.co = add i32 %.sroa.21.0.copyload.i, -1000000000
  %storemerge.i = select i1 %i.cn, i32 %i.co, i32 %.sroa.21.0.copyload.i ; 6 uses
  %i.cp = zext i1 %i.cn to i32
  %.sroa.04.0.i = add nuw nsw i32 %i.cj, %i.cp
  %i.cq = trunc i32 %i.cm to i8                   ; 3 uses
  %i.cr = icmp ugt i8 %i.cq, 99                   ; 2 uses
  %i.cs = udiv i8 %i.cq, 10
  %i.ct = or disjoint i8 %i.cs, 48                ; 2 uses
  %i.cu = urem i8 %i.cq, 10
  %i.cv = or disjoint i8 %i.cu, 48                ; 2 uses
  %i.cw = trunc nuw nsw i32 %i.cl to i8           ; 2 uses
  %i.cx = udiv i8 %i.cw, 10
  %i.cy = or disjoint i8 %i.cx, 48                ; 2 uses
  %i.cz = urem i8 %i.cw, 10
  %i.da = or disjoint i8 %i.cz, 48                ; 2 uses
  %i.db = trunc nuw nsw i32 %.sroa.04.0.i to i8   ; 2 uses
  %i.dc = udiv i8 %i.db, 10
  %i.dd = or disjoint i8 %i.dc, 48
  %i.de = urem i8 %i.db, 10
  %i.df = or disjoint i8 %i.de, 48
  %i.dg = icmp eq i32 %storemerge.i, 0
  %i.dh = urem i32 %storemerge.i, 1000000
  %i.di = icmp eq i32 %i.dh, 0
  %i.dj = urem i32 %storemerge.i, 1000
  %i.dk = icmp eq i32 %i.dj, 0
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dl = udiv i32 %storemerge.i, 1000
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dm = udiv i32 %storemerge.i, 1000000
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dn = udiv i32 %.sroa.21.0.copyload.i, 1000000000
  %i.do = add nuw nsw i32 %i.dn, %i.cj
  %i.dp = trunc nuw nsw i32 %i.do to i8           ; 2 uses
  %i.dq = udiv i8 %i.dp, 10
  %i.dr = or disjoint i8 %i.dq, 48
  %i.ds = urem i8 %i.dp, 10
  %i.dt = or disjoint i8 %i.ds, 48
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ea = load i32, ptr %i.ax, align 4            ; 7 uses
  %.sroa.035.0.copyload.i = load i32, ptr %i.az, align 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.21.0..sroa_idx.i, align 8 ; 2 uses
  %i.eb = icmp ne i32 %i.ea, 0
  %i.ec = trunc i32 %.sroa.035.0.copyload.i to i1 ; 6 uses
  %or.cond.i = select i1 %i.eb, i1 %i.ec, i1 false
  %i.ed = load i64, ptr %0, align 8, !range !37
  %.not.i = icmp eq i64 %i.ed, -1
  %i.ee = sext i32 %i.cg to i64
  %.sroa.057.0.i = select i1 %.not.i, i64 0, i64 %i.ee
  %i.ef = ashr i32 %i.ea, 13                      ; 10 uses
  %i.eg = add nsw i32 %i.ef, -1
  %i.eh = icmp slt i32 %i.ef, 1                   ; 2 uses
  %i.ei = sub nsw i32 1, %i.ef
  %i.ej = udiv i32 %i.ei, 400
  %i.ek = add nuw nsw i32 %i.ej, 1                ; 2 uses
  %i.el = mul nuw nsw i32 %i.ek, 400
  %.neg.i = mul nsw i32 %i.ek, -146097
  %i.em = lshr i32 %i.ea, 4
  %i.en = and i32 %i.em, 511                      ; 9 uses
  %i.eo = zext i32 %.sroa.7.0.copyload.i to i64
  %i.ep = add nuw nsw i32 %i.en, -719163
  %i.eq = sub nsw i64 %i.eo, %.sroa.057.0.i
  %.sroa.426.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.445.0..sroa_idx.i127.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.430.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.439.0..sroa_idx.i131.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.434.0..sroa_idx.i133.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.et = urem i32 %.sroa.13.0.copyload.i, 1000000000
  %i.eu = zext nneg i32 %i.et to i64
  %.sroa.426.0..sroa_idx.i115.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.445.0..sroa_idx.i116.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.430.0..sroa_idx.i119.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.439.0..sroa_idx.i120.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.434.0..sroa_idx.i122.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ex = urem i32 %.sroa.7.0.copyload.i, 60
  %i.ey = udiv i32 %.sroa.13.0.copyload.i, 1000000000
  %i.ez = add nuw nsw i32 %i.ey, %i.ex
  %i.fa = trunc nuw nsw i32 %i.ez to i8
  %i.fb = udiv i32 %.sroa.7.0.copyload.i, 60
  %i.fc = urem i32 %i.fb, 60
  %i.fd = trunc nuw nsw i32 %i.fc to i8
  %i.fe = udiv i32 %.sroa.7.0.copyload.i, 3600    ; 2 uses
  %i.ff = urem i32 %i.fe, 12                      ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 0
  %i.fh = trunc nuw nsw i32 %i.ff to i8
  %i.fi = select i1 %i.fg, i8 12, i8 %i.fh
  %i.fj = trunc i32 %i.fe to i8
  %.not80.i = icmp eq i32 %i.ea, 0                ; 15 uses
  %i.fk = zext nneg i32 %i.en to i64
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.fn = and i32 %i.ea, 7
  %i.fo = add nuw nsw i32 %i.en, %i.fn
  %2 = trunc nuw nsw i32 %i.bf to i16
  %3 = insertelement <4 x i16> poison, i16 %2, i64 0
  %4 = trunc nuw nsw i32 %i.by to i16
  %5 = insertelement <4 x i16> %3, i16 %4, i64 1
  %6 = trunc i32 %i.ch to i16
  %7 = insertelement <4 x i16> %5, i16 %6, i64 2
  %8 = trunc nuw nsw i32 %i.fo to i16
  %9 = insertelement <4 x i16> %7, i16 %8, i64 3
  %.lhs.trunc6.i = trunc nuw nsw i32 %i.ch to i16
  %10 = urem <4 x i16> %9, <i16 1000, i16 7, i16 100, i16 7> ; 4 uses
  %11 = extractelement <4 x i16> %10, i64 0
  %.zext14.i = zext nneg i16 %11 to i32           ; 2 uses
  %12 = extractelement <4 x i16> %10, i64 1       ; 2 uses
  %13 = icmp samesign ult i16 %12, 6
  %narrow58.i = add nuw nsw i16 %12, 1
  %narrow59.i = select i1 %13, i16 %narrow58.i, i16 0
  %14 = zext nneg i16 %narrow59.i to i64          ; 2 uses
  %15 = getelementptr inbounds nuw [16 x i8], ptr @79, i64 %14 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = getelementptr inbounds nuw [16 x i8], ptr @71, i64 %14 ; 2 uses
  %18 = udiv i16 %.lhs.trunc6.i, 100
  %19 = trunc nuw nsw i16 %18 to i8               ; 2 uses
  %20 = udiv i8 %19, 10
  %21 = or disjoint i8 %20, 48                    ; 2 uses
  %22 = urem i8 %19, 10
  %23 = or disjoint i8 %22, 48                    ; 2 uses
  %24 = bitcast <4 x i16> %10 to <8 x i8>
  %25 = extractelement <8 x i8> %24, i64 4        ; 2 uses
  %26 = udiv i8 %25, 10
  %27 = or disjoint i8 %26, 48
  %28 = urem i8 %25, 10
  %29 = or disjoint i8 %28, 48
  %30 = extractelement <4 x i16> %10, i64 3       ; 5 uses
  %switch.idx.cast.i = trunc nuw nsw i16 %30 to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 49
  %i.fp = trunc i32 %i.ea to i8
  %i.fq = and i8 %i.fp, 15                        ; 4 uses
  %i.fr = trunc nuw nsw i32 %i.en to i16
  %i.fs = add nuw nsw i16 %i.fr, 6
  %.lhs.trunc1.i106.i = sub nuw nsw i16 %i.fs, %30
  %i.ft = udiv i16 %.lhs.trunc1.i106.i, 7
  %i.fu = trunc nuw nsw i16 %i.ft to i8
  %spec.select.i101.i = zext nneg i16 %30 to i32  ; 2 uses
  %i.fv = icmp samesign ult i16 %30, 6
  %i.fw = add nuw nsw i32 %spec.select.i101.i, 7
  %.pn.i.i = select i1 %i.fv, i32 %i.fw, i32 %spec.select.i101.i
  %.sroa.0.0.neg.i.i = add nuw nsw i32 %i.en, 6
  %i.fx = sub nsw i32 %.sroa.0.0.neg.i.i, %.pn.i.i
  %i.fy = trunc nsw i32 %i.fx to i16
  %.lhs.trunc1.i.i = add nsw i16 %i.fy, 6
  %i.fz = sdiv i16 %.lhs.trunc1.i.i, 7
  %i.ga = trunc nuw nsw i16 %i.fz to i8
  %i.gb = lshr i32 %i.ea, 3                       ; 2 uses
  %i.gc = and i32 %i.gb, 1023                     ; 4 uses
  %i.gd = zext nneg i32 %i.gc to i64              ; 4 uses
  %i.ge = icmp samesign ult i32 %i.gc, 733        ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr @46, i64 %i.gd ; 3 uses
  %i.gg = trunc i32 %i.gb to i8
  %i.gh = srem i32 %i.ef, 100                     ; 4 uses
  %i.gi = icmp slt i32 %i.gh, 0
  %i.gj = add nsw i32 %i.gh, 100
  %spec.select.i.i = select i1 %i.gi, i32 %i.gj, i32 %i.gh
  %i.gk = trunc nuw nsw i32 %spec.select.i.i to i8
  %i.gl = sdiv i32 %i.ef, 100
  %.lobit.i.i = ashr i32 %i.gh, 31
  %.sroa.0.0.i.i = add nsw i32 %.lobit.i.i, %i.gl
  %i.gm = trunc i32 %.sroa.0.0.i.i to i8
  %spec.select = select i1 %i.eh, i32 %.neg.i, i32 0
  %i.gn = select i1 %i.eh, i32 %i.el, i32 0
  %spec.select199 = add nsw i32 %i.eg, %i.gn      ; 2 uses
  %i.go = sdiv i32 %spec.select199, 100           ; 2 uses
  %i.gp = mul nsw i32 %spec.select199, 1461
  %i.gq = ashr i32 %i.gp, 2
  %i.gr = ashr i32 %i.go, 2
  %i.gs = add i32 %i.ep, %spec.select
  %i.gt = sub i32 %i.gs, %i.go
  %i.gu = add i32 %i.gt, %i.gq
  %narrow.i = add i32 %i.gu, %i.gr
  %i.gv = sext i32 %narrow.i to i64
  %i.gw = mul nsw i64 %i.gv, 86400
  %i.gx = add nsw i64 %i.eq, %i.gw
  %i.gy = insertelement <2 x ptr> poison, ptr %.146.i, i64 0
  %i.gz = insertelement <2 x ptr> %i.gy, ptr %i.bq, i64 1
  %i.ha = shl nuw nsw i16 %30, 3
  %switch.shiftamt = zext nneg i16 %i.ha to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0.0110 = phi ptr [ %.val, %.lr.ph ], [ %i.hb, %.critedge ] ; 9 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 24 ; 2 uses
  %i.hc = load i8, ptr %.sroa.0.0110, align 8, !range !50, !noundef !28
  switch i8 %i.hc, label %default.unreachable292 [
    i8 0, label %bb.fz
    i8 1, label %bb.gb
    i8 2, label %bb.fz
    i8 3, label %bb.gb
    i8 4, label %bb.c
    i8 5, label %bb.ay
    i8 6, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread
  ]

_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread: ; preds = %.critedge, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i, %.split74, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit124.i, %.split73, %.split72, %.split71, %.split70, %.split69, %.split68, %.split, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit219.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit214.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit183.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit209.i, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit224.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i, %bb.b, %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i121.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i114.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit180.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit175.i, %bb.d, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.az, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i, %bb.bk, %bb.dh, %bb.dg, %bb.df, %bb.dc, %bb.bn, %bb.dk, %bb.a, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i
  %i.hd = phi i1 [ true, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i ], [ false, %bb.a ], [ false, %.critedge ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i ], [ true, %.split74 ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit124.i ], [ true, %.split73 ], [ true, %.split72 ], [ true, %.split71 ], [ true, %.split70 ], [ true, %.split69 ], [ true, %.split68 ], [ true, %.split ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit219.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit214.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit183.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit209.i ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit224.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i ], [ true, %bb.b ], [ true, %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i121.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i114.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit180.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit175.i ], [ true, %bb.d ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.az ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i ], [ true, %bb.bk ], [ true, %bb.dh ], [ true, %bb.dg ], [ true, %bb.df ], [ true, %bb.dc ], [ true, %bb.bn ], [ true, %bb.dk ]
  ret i1 %i.hd

default.unreachable292:                           ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit, %bb.ax, %bb.as, %bb.c, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 2
  %i.hg = load i8, ptr %i.hf, align 2, !range !38, !noundef !28 ; 18 uses
  %.val8 = load i8, ptr %i.he, align 1, !range !1193, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  switch i8 %.val8, label %default.unreachable292 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 9, label %bb.m
    i8 10, label %bb.n
    i8 11, label %bb.o
    i8 12, label %bb.p
    i8 13, label %bb.q
    i8 14, label %bb.r
    i8 15, label %bb.s
    i8 16, label %bb.t
    i8 17, label %bb.u
    i8 18, label %bb.v
    i8 19, label %bb.w
    i8 20, label %bb.x
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.y

bb.f:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.z

bb.g:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.split73

bb.h:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.aa

bb.i:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.ab

bb.j:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.ac

bb.k:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.ah

bb.l:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.ak

bb.m:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.an

bb.n:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.ao

bb.o:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.ap

bb.p:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %switch.lookup

bb.q:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %switch.lookup.i

bb.r:                                             ; preds = %bb.c
  br i1 %.not80.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.as

bb.s:                                             ; preds = %bb.c
  br i1 %i.ec, label %bb.at, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.t:                                             ; preds = %bb.c
  br i1 %i.ec, label %bb.au, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.u:                                             ; preds = %bb.c
  br i1 %i.ec, label %bb.av, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.v:                                             ; preds = %bb.c
  br i1 %i.ec, label %bb.aw, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.w:                                             ; preds = %bb.c
  br i1 %i.ec, label %bb.ax, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.x:                                             ; preds = %bb.c
  br i1 %or.cond.i, label %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.y:                                             ; preds = %bb.e
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.gm, i8 noundef range(i8 0, 3) %i.hg)
  br label %.critedge

bb.z:                                             ; preds = %bb.f
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.gk, i8 noundef range(i8 0, 3) %i.hg)
  br label %.critedge

.split73:                                         ; preds = %bb.g
  %i.hh = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ef, i32 noundef %i.en, i8 noundef %i.fq), !noalias !1195
  %i.hi = ashr i32 %i.hh, 10
  %i.hj = call fastcc noundef zeroext i1 @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric10write_yearNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.hi, i8 noundef range(i8 0, 3) %i.hg) #76, !noalias !1196
  br i1 %i.hj, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.aa:                                            ; preds = %bb.h
  %i.hk = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ef, i32 noundef %i.en, i8 noundef %i.fq), !noalias !1195
  %i.hl = ashr i32 %i.hk, 10                      ; 2 uses
  %i.hm = sdiv i32 %i.hl, 100
  %i.hn = srem i32 %i.hl, 100
  %.lobit.i98.i = ashr i32 %i.hn, 31
  %.sroa.0.0.i99.i = add nsw i32 %.lobit.i98.i, %i.hm
  %i.ho = trunc i32 %.sroa.0.0.i99.i to i8
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.ho, i8 noundef range(i8 0, 3) %i.hg)
  br label %.critedge

bb.ab:                                            ; preds = %bb.i
  %i.hp = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ef, i32 noundef %i.en, i8 noundef %i.fq), !noalias !1195
  %i.hq = ashr i32 %i.hp, 10
  %i.hr = srem i32 %i.hq, 100                     ; 3 uses
  %i.hs = icmp slt i32 %i.hr, 0
  %i.ht = add nsw i32 %i.hr, 100
  %spec.select.i100.i = select i1 %i.hs, i32 %i.ht, i32 %i.hr
  %i.hu = trunc nuw nsw i32 %spec.select.i100.i to i8
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.hu, i8 noundef range(i8 0, 3) %i.hg)
  br label %.critedge

bb.ac:                                            ; preds = %bb.j
  br i1 %i.ge, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.hv = load i8, ptr %i.gf, align 1, !noalias !1195, !noundef !28
  %i.hw = zext i8 %i.hv to i32
  %i.hx = add nuw nsw i32 %i.gc, %i.hw
  %i.hy = lshr i32 %i.hx, 6
  %i.hz = add nsw i32 %i.hy, -1
  %i.ia = udiv i32 %i.hz, 3
  %i.ib = add nuw nsw i32 %i.ia, 49               ; 2 uses
  %i.ic = and i32 %i.ib, 255                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.id = load i64, ptr %i.bg, align 8, !alias.scope !1199, !noalias !1196, !noundef !28 ; 5 uses
  %i.ie = icmp sgt i64 %i.id, -1
  call void @llvm.assume(i1 %i.ie)
  %i.if = icmp samesign ult i32 %i.ic, 128        ; 2 uses
  %spec.select.i = select i1 %i.if, i64 1, i64 2  ; 3 uses
  %i.ig = load i64, ptr %1, align 8, !range !43, !alias.scope !1200, !noalias !1196, !noundef !28
  %i.ih = sub nsw i64 %i.ig, %i.id
  %i.ii = icmp ugt i64 %spec.select.i, %i.ih
  br i1 %i.ii, label %bb.ae, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i, !prof !44

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.id, i64 noundef %spec.select.i, i64 noundef 1, i64 noundef 1), !noalias !1196
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.ij = load ptr, ptr %i.bh, align 8, !alias.scope !1199, !noalias !1196, !nonnull !28, !noundef !28
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.id ; 2 uses
  %i.il = trunc i32 %i.ib to i8                   ; 2 uses
  br i1 %i.if, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i, label %bb.af

bb.af:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.im = and i8 %i.il, 63
  %i.in = or disjoint i8 %i.im, -128
  %i.io = lshr i32 %i.ic, 6
  %i.ip = trunc nuw nsw i32 %i.io to i8
  %i.iq = or disjoint i8 %i.ip, -64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  store i8 %i.in, ptr %i.ir, align 1, !noalias !1201
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i: ; preds = %bb.af, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
end_hunk_0
begin_hunk_1_@_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE8write_toNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just:bb.a
    i8 1, label %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i
    i8 2, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i
  ]

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i: ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1214
  store ptr %i.am, ptr %i.al, align 8, !noalias !1214
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i133.i, align 8, !noalias !1214
  %i.ka = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @85, ptr noundef nonnull %i.al), !noalias !1196, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1195
  br i1 %i.ka, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i: ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1214
  store ptr %i.am, ptr %i.aj, align 8, !noalias !1214
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i126.i, align 8, !noalias !1214
  store ptr null, ptr %i.er, align 8, !noalias !1214
  store i16 9, ptr %.sroa.445.0..sroa_idx.i127.i, align 8, !noalias !1214
  %i.kb = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @394, ptr noundef nonnull %i.aj), !noalias !1196, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1195
  br i1 %i.kb, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i: ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1214
  store ptr %i.am, ptr %i.ak, align 8, !noalias !1214
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i130.i, align 8, !noalias !1214
  store ptr null, ptr %i.es, align 8, !noalias !1214
  store i16 9, ptr %.sroa.439.0..sroa_idx.i131.i, align 8, !noalias !1214
  %i.kc = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @392, ptr noundef nonnull %i.ak), !noalias !1196, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1195
  br i1 %i.kc, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.ay:                                            ; preds = %bb.b
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 1
  %.val9 = load i8, ptr %i.kd, align 1, !range !51, !noundef !28 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  %i.ke = add nsw i8 %.val9, -4
  %i.kf = icmp samesign ugt i8 %.val9, 3
  %narrow.i11 = select i1 %i.kf, i8 %i.ke, i8 19  ; 5 uses
  switch i8 %narrow.i11, label %bb.az [
    i8 0, label %bb.ba
    i8 1, label %bb.bb
    i8 2, label %bb.bc
    i8 3, label %bb.bd
    i8 4, label %bb.be
    i8 5, label %bb.bf
    i8 6, label %bb.bg
    i8 7, label %bb.bh
    i8 8, label %bb.bi
    i8 9, label %bb.bj
    i8 10, label %bb.bk
    i8 19, label %bb.bl
  ]

bb.az:                                            ; preds = %bb.ay
  br i1 %.not.i10, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.dh

bb.ba:                                            ; preds = %bb.ay
  br i1 %.not140.i, label %bb.bn, label %bb.bm

bb.bb:                                            ; preds = %bb.ay
  br i1 %.not140.i, label %bb.bn, label %bb.bs

bb.bc:                                            ; preds = %bb.ay
  br i1 %.not140.i, label %bb.bn, label %bb.bx

bb.bd:                                            ; preds = %bb.ay
  br i1 %.not140.i, label %bb.bn, label %bb.by

bb.be:                                            ; preds = %bb.ay
  br i1 %i.bb, label %bb.bz, label %bb.bn

bb.bf:                                            ; preds = %bb.ay
  br i1 %i.bb, label %bb.ct, label %bb.bn

bb.bg:                                            ; preds = %bb.ay
  br i1 %i.bb, label %bb.cu, label %bb.bn

bb.bh:                                            ; preds = %bb.ay
  br i1 %i.bb, label %bb.cx, label %bb.bn

bb.bi:                                            ; preds = %bb.ay
  br i1 %i.bb, label %bb.cy, label %bb.bn

bb.bj:                                            ; preds = %bb.ay
  br i1 %i.bb, label %bb.cz, label %bb.bn

bb.bk:                                            ; preds = %bb.ay
  br i1 %.not.i10, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit209.i

bb.bl:                                            ; preds = %bb.ay
  br i1 %i.bb, label %bb.da, label %bb.bn

bb.bm:                                            ; preds = %bb.ba
  br i1 %i.cc, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.da, %bb.bl, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  br i1 %.not.i10, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.dc

bb.bo:                                            ; preds = %bb.bm
  %i.kg = load i8, ptr %i.cd, align 1, !noalias !1216, !noundef !28
  %i.kh = zext i8 %i.kg to i32
  %i.ki = add nuw nsw i32 %i.ca, %i.kh
  %i.kj = lshr i32 %i.ki, 6
  %i.kk = add nsw i32 %i.kj, -1                   ; 2 uses
  %i.kl = zext i32 %i.kk to i64                   ; 2 uses
  %i.km = icmp ult i32 %i.kk, 12
  br i1 %i.km, label %bb.bq, label %bb.br

bb.bp:                                            ; preds = %bb.bm
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #75, !noalias !1216
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr @45, i64 %i.kl
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !1216, !nonnull !28, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.kp = load i64, ptr %i.bg, align 8, !alias.scope !1220, !noalias !1221, !noundef !28 ; 3 uses
  %i.kq = load i64, ptr %1, align 8, !range !43, !alias.scope !1220, !noalias !1221, !noundef !28
  %i.kr = sub i64 %i.kq, %i.kp
  %i.ks = icmp ult i64 %i.kr, 3
  br i1 %i.ks, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i: ; preds = %bb.bq
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.kp, i64 noundef 3, i64 noundef 1, i64 noundef 1), !noalias !1221
  %i.kt = load i64, ptr %i.bg, align 8, !alias.scope !1222, !noalias !1221, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i, %bb.bq
  %.sink44.i = phi i64 [ %i.kt, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i ], [ %i.kp, %bb.bq ] ; 3 uses
  %i.ku = icmp sgt i64 %.sink44.i, -1
  call void @llvm.assume(i1 %i.ku)
  %i.kv = load ptr, ptr %i.bh, align 8, !alias.scope !1222, !noalias !1221, !nonnull !28, !noundef !28
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %.sink44.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kw, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ko, i64 3, i1 false), !noalias !1223
  %i.kx = add nuw i64 %.sink44.i, 3
  store i64 %i.kx, ptr %i.bg, align 8, !alias.scope !1222, !noalias !1221
  br label %.critedge

bb.br:                                            ; preds = %bb.bo
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.kl, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #75, !noalias !1216
  unreachable

bb.bs:                                            ; preds = %bb.bb
  br i1 %i.cc, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ky = load i8, ptr %i.cd, align 1, !noalias !1216, !noundef !28
  %i.kz = zext i8 %i.ky to i32
  %i.la = add nuw nsw i32 %i.ca, %i.kz
  %i.lb = lshr i32 %i.la, 6
  %i.lc = add nsw i32 %i.lb, -1                   ; 2 uses
  %i.ld = zext i32 %i.lc to i64                   ; 2 uses
  %i.le = icmp ult i32 %i.lc, 12
  br i1 %i.le, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #75, !noalias !1216
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr @62, i64 %i.ld ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !1216, !nonnull !28, !noundef !28
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !noalias !1216, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %i.lj = load i64, ptr %i.bg, align 8, !alias.scope !1227, !noalias !1228, !noundef !28 ; 3 uses
  %i.lk = load i64, ptr %1, align 8, !range !43, !alias.scope !1227, !noalias !1228, !noundef !28
  %i.ll = sub i64 %i.lk, %i.lj
  %i.lm = icmp ugt i64 %i.li, %i.ll
  br i1 %i.lm, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit154.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i: ; preds = %bb.bv
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.lj, i64 noundef %i.li, i64 noundef 1, i64 noundef 1), !noalias !1228
  %i.ln = load i64, ptr %i.bg, align 8, !alias.scope !1229, !noalias !1228, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit154.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit154.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i, %bb.bv
  %.sink45.i = phi i64 [ %i.ln, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i ], [ %i.lj, %bb.bv ] ; 3 uses
  %i.lo = icmp sgt i64 %.sink45.i, -1
  call void @llvm.assume(i1 %i.lo)
  %i.lp = load ptr, ptr %i.bh, align 8, !alias.scope !1229, !noalias !1228, !nonnull !28, !noundef !28
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.sink45.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lq, ptr nonnull readonly align 1 %i.lg, i64 %i.li, i1 false), !noalias !1230
  %i.lr = add i64 %.sink45.i, %i.li
  store i64 %i.lr, ptr %i.bg, align 8, !alias.scope !1229, !noalias !1228
  br label %.critedge

bb.bw:                                            ; preds = %bb.bt
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ld, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #75, !noalias !1216
  unreachable

bb.bx:                                            ; preds = %bb.bc
  %i.ls = load ptr, ptr %17, align 8, !noalias !1216, !nonnull !28, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %i.lt = load i64, ptr %i.bg, align 8, !alias.scope !1234, !noalias !1235, !noundef !28 ; 3 uses
  %i.lu = load i64, ptr %1, align 8, !range !43, !alias.scope !1234, !noalias !1235, !noundef !28
  %i.lv = sub i64 %i.lu, %i.lt
  %i.lw = icmp ult i64 %i.lv, 3
  br i1 %i.lw, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit158.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i: ; preds = %bb.bx
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.lt, i64 noundef 3, i64 noundef 1, i64 noundef 1), !noalias !1235
  %i.lx = load i64, ptr %i.bg, align 8, !alias.scope !1236, !noalias !1235, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit158.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit158.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i, %bb.bx
  %.sink46.i = phi i64 [ %i.lx, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i ], [ %i.lt, %bb.bx ] ; 3 uses
  %i.ly = icmp sgt i64 %.sink46.i, -1
  call void @llvm.assume(i1 %i.ly)
  %i.lz = load ptr, ptr %i.bh, align 8, !alias.scope !1236, !noalias !1235, !nonnull !28, !noundef !28
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %.sink46.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ma, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ls, i64 3, i1 false), !noalias !1237
  %i.mb = add nuw i64 %.sink46.i, 3
  store i64 %i.mb, ptr %i.bg, align 8, !alias.scope !1236, !noalias !1235
  br label %.critedge

bb.by:                                            ; preds = %bb.bd
  %i.mc = load ptr, ptr %15, align 8, !noalias !1216, !nonnull !28, !noundef !28
  %i.md = load i64, ptr %16, align 8, !noalias !1216, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %i.me = load i64, ptr %i.bg, align 8, !alias.scope !1241, !noalias !1242, !noundef !28 ; 3 uses
  %i.mf = load i64, ptr %1, align 8, !range !43, !alias.scope !1241, !noalias !1242, !noundef !28
  %i.mg = sub i64 %i.mf, %i.me
  %i.mh = icmp ugt i64 %i.md, %i.mg
  br i1 %i.mh, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit162.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i: ; preds = %bb.by
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.me, i64 noundef %i.md, i64 noundef 1, i64 noundef 1), !noalias !1242
  %i.mi = load i64, ptr %i.bg, align 8, !alias.scope !1243, !noalias !1242, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit162.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit162.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i, %bb.by
  %.sink50.i = phi i64 [ %i.mi, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i ], [ %i.me, %bb.by ] ; 3 uses
  %i.mj = icmp sgt i64 %.sink50.i, -1
  call void @llvm.assume(i1 %i.mj)
  %i.mk = load ptr, ptr %i.bh, align 8, !alias.scope !1243, !noalias !1242, !nonnull !28, !noundef !28
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.sink50.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ml, ptr nonnull readonly align 1 %i.mc, i64 %i.md, i1 false), !noalias !1244
  %i.mm = add i64 %.sink50.i, %i.md
  store i64 %i.mm, ptr %i.bg, align 8, !alias.scope !1243, !noalias !1242
  br label %.critedge

bb.bz:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1216
  store i64 0, ptr %i.ai, align 8, !noalias !1216
  store i64 0, ptr %.sroa.078.sroa.3.0..sroa_idx.i, align 8, !noalias !1216
  store <2 x ptr> %i.gz, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1216
  br label %.peel.begin.i

.peel.begin.i:                                    ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i16, %bb.bz
  %.pre.i.i = phi i64 [ %.pre.i.pre.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i16 ], [ 0, %bb.bz ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %i.mn = trunc nuw i64 %.pre.i.i to i1
  br i1 %i.mn, label %.noexc.peel.i, label %bb.cb

.noexc.peel.i:                                    ; preds = %.peel.begin.i
  %i.mo = call noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCsj6eKBz9Db1c_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.br), !noalias !1216 ; 2 uses
  %.not.i.i.peel.i = icmp eq i32 %i.mo, -1
  br i1 %.not.i.i.peel.i, label %bb.ca, label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1V_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1X_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ENtNtBb_4char11ToLowercaseENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i

bb.ca:                                            ; preds = %.noexc.peel.i
  store i64 0, ptr %i.ai, align 8, !alias.scope !1246, !noalias !1216
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.peel.begin.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  %i.mp = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1248, !noalias !1249, !noundef !28 ; 7 uses
  %.not.i5.i.peel.i = icmp eq ptr %i.mp, null
  br i1 %.not.i5.i.peel.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1251
  call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %i.mq = load ptr, ptr %.sroa.379.0..sroa_idx.i, align 8, !alias.scope !1254, !noalias !1255, !nonnull !28, !noundef !28 ; 4 uses
  %.not.i.i.i.i.peel.i = icmp eq ptr %i.mp, %i.mq
  br i1 %.not.i.i.i.i.peel.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 1 ; 3 uses
  store ptr %i.mr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1254, !noalias !1255
  %i.ms = load i8, ptr %i.mp, align 1, !noalias !1256, !noundef !28 ; 5 uses
  %i.mt = icmp sgt i8 %i.ms, -1
  br i1 %i.mt, label %bb.ce, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i: ; preds = %bb.cd
  %i.mu = and i8 %i.ms, 31
  %i.mv = zext nneg i8 %i.mu to i32               ; 3 uses
  %i.mw = icmp ne ptr %i.mr, %i.mq
  call void @llvm.assume(i1 %i.mw)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mp, i64 2 ; 3 uses
  store ptr %i.mx, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1257, !noalias !1255
  %i.my = load i8, ptr %i.mr, align 1, !noalias !1256, !noundef !28
  %i.mz = shl nuw nsw i32 %i.mv, 6
  %i.na = and i8 %i.my, 63
  %i.nb = zext nneg i8 %i.na to i32               ; 2 uses
  %i.nc = or disjoint i32 %i.mz, %i.nb
  %i.nd = icmp samesign ugt i8 %i.ms, -33
  br i1 %i.nd, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i, label %.noexc.i.preheader

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i
  %i.ne = icmp ne ptr %i.mx, %i.mq
  call void @llvm.assume(i1 %i.ne)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mp, i64 3 ; 3 uses
  store ptr %i.nf, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1258, !noalias !1255
  %i.ng = load i8, ptr %i.mx, align 1, !noalias !1256, !noundef !28
  %i.nh = shl nuw nsw i32 %i.nb, 6
  %i.ni = and i8 %i.ng, 63
  %i.nj = zext nneg i8 %i.ni to i32
  %i.nk = or disjoint i32 %i.nh, %i.nj            ; 2 uses
  %i.nl = shl nuw nsw i32 %i.mv, 12
  %i.nm = or disjoint i32 %i.nk, %i.nl
  %i.nn = icmp samesign ugt i8 %i.ms, -17
  br i1 %i.nn, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i, label %.noexc.i.preheader

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i
  %i.no = icmp ne ptr %i.nf, %i.mq
  call void @llvm.assume(i1 %i.no)
  %i.np = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store ptr %i.np, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1259, !noalias !1255
  %i.nq = load i8, ptr %i.nf, align 1, !noalias !1256, !noundef !28
  %i.nr = shl nuw nsw i32 %i.mv, 18
  %i.ns = and i32 %i.nr, 1835008
  %i.nt = shl nuw nsw i32 %i.nk, 6
  %i.nu = and i8 %i.nq, 63
  %i.nv = zext nneg i8 %i.nu to i32
  %i.nw = or disjoint i32 %i.nt, %i.nv
  %i.nx = or disjoint i32 %i.nw, %i.ns
  br label %.noexc.i.preheader

bb.ce:                                            ; preds = %bb.cd
  %i.ny = zext nneg i8 %i.ms to i32
  br label %.noexc.i.preheader

.noexc.i.preheader:                               ; preds = %bb.ce, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i
  %spec.select.i.ph.i.i.i.peel.sink.i.ph = phi i32 [ %i.nc, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i ], [ %i.nx, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i ], [ %i.nm, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i ], [ %i.ny, %bb.ce ]
  br label %.noexc.i

.noexc.i:                                         ; preds = %.noexc.i.backedge, %.noexc.i.preheader
  %spec.select.i.ph.i.i.i.peel.sink.i = phi i32 [ %spec.select.i.ph.i.i.i.peel.sink.i.ph, %.noexc.i.preheader ], [ %spec.select.i.ph.i.i.i.peel.sink.i.be, %.noexc.i.backedge ]
  call void @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11conversions8to_lower(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.j, i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i.i.i.peel.sink.i), !noalias !1216
  %i.nz = load i32, ptr %i.bs, align 8, !range !52, !noalias !1260, !noundef !28
  %i.oa = icmp eq i32 %i.nz, 0
  %i.ob = load i32, ptr %i.bt, align 4, !range !52, !noalias !1260
  %i.oc = icmp eq i32 %i.ob, 0
  %spec.select.i.i.i.i.i.peel.i = select i1 %i.oc, i64 1, i64 2
  %.sroa.4.0.i.i.i.i.i.peel.i = select i1 %i.oa, i64 %spec.select.i.i.i.i.i.peel.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1261
  store i64 1, ptr %i.ai, align 8, !alias.scope !1245, !noalias !1216
  store i64 0, ptr %i.br, align 8, !alias.scope !1245, !noalias !1216
  store i64 %.sroa.4.0.i.i.i.i.i.peel.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i, align 8, !alias.scope !1245, !noalias !1216
  %i.od = call noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCsj6eKBz9Db1c_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.br), !noalias !1216 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.od, -1
  br i1 %.not.i.i.i, label %bb.cf, label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1V_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1X_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ENtNtBb_4char11ToLowercaseENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i

bb.cf:                                            ; preds = %.noexc.i
  store i64 0, ptr %i.ai, align 8, !alias.scope !1246, !noalias !1216
  call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %i.oe = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1263, !noalias !1249, !noundef !28 ; 7 uses
  %.not.i5.i.i = icmp eq ptr %i.oe, null
  br i1 %.not.i5.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1265
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.of = load ptr, ptr %.sroa.379.0..sroa_idx.i, align 8, !alias.scope !1268, !noalias !1255, !nonnull !28, !noundef !28 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.oe, %i.of
  br i1 %.not.i.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 1 ; 3 uses
  store ptr %i.og, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1268, !noalias !1255
  %i.oh = load i8, ptr %i.oe, align 1, !noalias !1269, !noundef !28 ; 5 uses
  %i.oi = icmp sgt i8 %i.oh, -1
  br i1 %i.oi, label %bb.ci, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i: ; preds = %bb.ch
  %i.oj = and i8 %i.oh, 31
  %i.ok = zext nneg i8 %i.oj to i32               ; 3 uses
  %i.ol = icmp ne ptr %i.og, %i.of
  call void @llvm.assume(i1 %i.ol)
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 2 ; 3 uses
  store ptr %i.om, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1270, !noalias !1255
  %i.on = load i8, ptr %i.og, align 1, !noalias !1269, !noundef !28
  %i.oo = shl nuw nsw i32 %i.ok, 6
  %i.op = and i8 %i.on, 63
  %i.oq = zext nneg i8 %i.op to i32               ; 2 uses
  %i.or = or disjoint i32 %i.oo, %i.oq
  %i.os = icmp samesign ugt i8 %i.oh, -33
  br i1 %i.os, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i, label %.noexc.i.backedge

bb.ci:                                            ; preds = %bb.ch
  %i.ot = zext nneg i8 %i.oh to i32
  br label %.noexc.i.backedge

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i
  %i.ou = icmp ne ptr %i.om, %i.of
  call void @llvm.assume(i1 %i.ou)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oe, i64 3 ; 3 uses
  store ptr %i.ov, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1271, !noalias !1255
  %i.ow = load i8, ptr %i.om, align 1, !noalias !1269, !noundef !28
  %i.ox = shl nuw nsw i32 %i.oq, 6
  %i.oy = and i8 %i.ow, 63
  %i.oz = zext nneg i8 %i.oy to i32
  %i.pa = or disjoint i32 %i.ox, %i.oz            ; 2 uses
  %i.pb = shl nuw nsw i32 %i.ok, 12
  %i.pc = or disjoint i32 %i.pa, %i.pb
  %i.pd = icmp samesign ugt i8 %i.oh, -17
  br i1 %i.pd, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i, label %.noexc.i.backedge

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i
  %i.pe = icmp ne ptr %i.ov, %i.of
  call void @llvm.assume(i1 %i.pe)
end_hunk_1
begin_hunk_2_@_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE8write_toNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just:bb.a
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.sn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1312
  %i.sq = load i64, ptr %i.bg, align 8, !alias.scope !1313, !noalias !1312, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i190.i, %bb.cy
  %.sink56.i = phi i64 [ %i.sq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i190.i ], [ %i.sn, %bb.cy ] ; 3 uses
  %i.sr = icmp sgt i64 %.sink56.i, -1
  call void @llvm.assume(i1 %i.sr)
  %i.ss = load ptr, ptr %i.bh, align 8, !alias.scope !1313, !noalias !1312, !nonnull !28, !noundef !28
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 %.sink56.i
  store i8 46, ptr %i.st, align 1, !noalias !1314
  %i.su = add nuw i64 %.sink56.i, 1
  store i64 %i.su, ptr %i.bg, align 8, !alias.scope !1313, !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1216
  store i32 %i.be, ptr %i.z, align 4, !noalias !1216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1216
  store ptr %i.z, ptr %i.y, align 8, !noalias !1216
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4102.0..sroa_idx.i, align 8, !noalias !1216
  %i.sv = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @83, ptr noundef nonnull %i.y), !noalias !1277, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1216
  br i1 %i.sv, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.cz:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.sw = load i64, ptr %i.bg, align 8, !alias.scope !1318, !noalias !1319, !noundef !28 ; 3 uses
  %i.sx = load i64, ptr %1, align 8, !range !43, !alias.scope !1318, !noalias !1319, !noundef !28
  %i.sy = icmp eq i64 %i.sx, %i.sw
  br i1 %i.sy, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i198.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i198.i: ; preds = %bb.cz
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.sw, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1319
  %i.sz = load i64, ptr %i.bg, align 8, !alias.scope !1320, !noalias !1319, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i198.i, %bb.cz
  %.sink57.i = phi i64 [ %i.sz, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i198.i ], [ %i.sw, %bb.cz ] ; 3 uses
  %i.ta = icmp sgt i64 %.sink57.i, -1
  call void @llvm.assume(i1 %i.ta)
  %i.tb = load ptr, ptr %i.bh, align 8, !alias.scope !1320, !noalias !1319, !nonnull !28, !noundef !28
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 %.sink57.i
  store i8 46, ptr %i.tc, align 1, !noalias !1321
  %i.td = add nuw i64 %.sink57.i, 1
  store i64 %i.td, ptr %i.bg, align 8, !alias.scope !1320, !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1216
  store i32 %i.bc, ptr %i.x, align 4, !noalias !1216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1216
  store ptr %i.x, ptr %i.w, align 8, !noalias !1216
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4106.0..sroa_idx.i, align 8, !noalias !1216
  %i.te = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @84, ptr noundef nonnull %i.w), !noalias !1277, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1216
  br i1 %i.te, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit209.i: ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1216
  store ptr %0, ptr %i.p, align 8, !noalias !1216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1216
  store ptr %i.p, ptr %i.o, align 8, !noalias !1216
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.476.0..sroa_idx.i, align 8, !noalias !1216
  %i.tf = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @85, ptr noundef nonnull %i.o), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1216
  br i1 %i.tf, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.da:                                            ; preds = %bb.bl
  switch i8 %.val9, label %bb.db [
    i8 1, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit214.i
    i8 2, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit219.i
    i8 3, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit224.i
    i8 0, label %bb.bn
  ]

bb.db:                                            ; preds = %bb.da
  unreachable

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit214.i: ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1216
  store i32 %.zext14.i, ptr %i.v, align 4, !noalias !1216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1216
  store ptr %i.v, ptr %i.u, align 8, !noalias !1216
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4110.0..sroa_idx.i, align 8, !noalias !1216
  %i.tg = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @82, ptr noundef nonnull %i.u), !noalias !1277, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1216
  br i1 %i.tg, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit219.i: ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1216
  store i32 %i.be, ptr %i.t, align 4, !noalias !1216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1216
  store ptr %i.t, ptr %i.s, align 8, !noalias !1216
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4114.0..sroa_idx.i, align 8, !noalias !1216
  %i.th = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @83, ptr noundef nonnull %i.s), !noalias !1277, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1216
  br i1 %i.th, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit224.i: ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1216
  store i32 %i.bc, ptr %i.r, align 4, !noalias !1216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1216
  store ptr %i.r, ptr %i.q, align 8, !noalias !1216
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4118.0..sroa_idx.i, align 8, !noalias !1216
  %i.ti = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @84, ptr noundef nonnull %i.q), !noalias !1277, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1216
  br i1 %i.ti, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.dc:                                            ; preds = %bb.bn
  switch i8 %narrow.i11, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread [
    i8 11, label %bb.dd
    i8 12, label %.split72
    i8 13, label %.split71
    i8 14, label %bb.dd
    i8 15, label %bb.de
    i8 16, label %bb.de
    i8 17, label %bb.df
    i8 18, label %bb.dg
  ]

bb.dd:                                            ; preds = %bb.dc, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1216
  br label %.split70

.split72:                                         ; preds = %bb.dh, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1216
  store i32 33620224, ptr %i.l, align 4, !noalias !1216
  %i.tj = call fastcc noundef zeroext i1 @_RINvMs0_NtNtCs2uF6e5yHHeh_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cg), !noalias !1277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1216
  br i1 %i.tj, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

.split71:                                         ; preds = %bb.dh, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1216
  store i32 65536, ptr %i.k, align 4, !noalias !1216
  %i.tk = call fastcc noundef zeroext i1 @_RINvMs0_NtNtCs2uF6e5yHHeh_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cg), !noalias !1277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1216
  br i1 %i.tk, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.de:                                            ; preds = %bb.dc, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1216
  br label %.split69

bb.df:                                            ; preds = %bb.dh, %bb.dc
  br i1 %or.cond5.i, label %bb.dk, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.dg:                                            ; preds = %bb.dh, %bb.dc
  br i1 %or.cond5.i, label %bb.eq, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.dh:                                            ; preds = %bb.az
  switch i8 %narrow.i11, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread [
    i8 11, label %bb.di
    i8 12, label %.split72
    i8 13, label %.split71
    i8 14, label %bb.di
    i8 15, label %bb.dj
    i8 16, label %bb.dj
    i8 17, label %bb.df
    i8 18, label %bb.dg
  ]

bb.di:                                            ; preds = %bb.dh, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1216
  %i.tl = icmp eq i8 %narrow.i11, 14
  %spec.select.i18 = zext i1 %i.tl to i8
  br label %.split70

bb.dj:                                            ; preds = %bb.dh, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1216
  %i.tm = icmp eq i8 %narrow.i11, 16
  %spec.select147.i = zext i1 %i.tm to i8
  br label %.split69

.split70:                                         ; preds = %bb.di, %bb.dd
  %.sroa.071.0.i = phi i8 [ 0, %bb.dd ], [ %spec.select.i18, %bb.di ]
  store i8 1, ptr %i.dx, align 1, !noalias !1216
  store i8 1, ptr %i.dy, align 1, !noalias !1216
  store i8 %.sroa.071.0.i, ptr %i.m, align 1, !noalias !1216
  store i8 1, ptr %i.dz, align 1, !noalias !1216
  %i.tn = call fastcc noundef zeroext i1 @_RINvMs0_NtNtCs2uF6e5yHHeh_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cg), !noalias !1277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1216
  br i1 %i.tn, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

.split69:                                         ; preds = %bb.dj, %bb.de
  %.sroa.070.0.i = phi i8 [ 0, %bb.de ], [ %spec.select147.i, %bb.dj ]
  store i8 1, ptr %i.du, align 1, !noalias !1216
  store i8 2, ptr %i.dv, align 1, !noalias !1216
  store i8 %.sroa.070.0.i, ptr %i.n, align 1, !noalias !1216
  store i8 1, ptr %i.dw, align 1, !noalias !1216
  %i.to = call fastcc noundef zeroext i1 @_RINvMs0_NtNtCs2uF6e5yHHeh_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cg), !noalias !1277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1216
  br i1 %i.to, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.dk:                                            ; preds = %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  br i1 %or.cond.i26, label %bb.dl, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.dl:                                            ; preds = %bb.dk
  %i.tp = load ptr, ptr %17, align 8, !noalias !1323, !nonnull !28, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1324), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1325), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1326), !noalias !1277
  %i.tq = load i64, ptr %i.bg, align 8, !alias.scope !1327, !noalias !1328, !noundef !28 ; 4 uses
  %i.tr = load i64, ptr %1, align 8, !range !43, !alias.scope !1327, !noalias !1328, !noundef !28 ; 2 uses
  %i.ts = sub i64 %i.tr, %i.tq
  %i.tt = icmp ult i64 %i.ts, 3
  br i1 %i.tt, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i45, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i45: ; preds = %bb.dl
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.tq, i64 noundef 3, i64 noundef 1, i64 noundef 1), !noalias !1328
  %i.tu = load i64, ptr %i.bg, align 8, !alias.scope !1329, !noalias !1328, !noundef !28 ; 2 uses
  %i.tv = icmp sgt i64 %i.tu, -1
  call void @llvm.assume(i1 %i.tv), !noalias !1277
  %.pre.i46 = load i64, ptr %1, align 8, !range !43, !alias.scope !1330, !noalias !1331
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i35

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %bb.dl
  %i.tw = icmp sgt i64 %i.tq, -1
  call void @llvm.assume(i1 %i.tw), !noalias !1277
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i35

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i35: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i45
  %i.tx = phi i64 [ %.pre.i46, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i45 ], [ %i.tr, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ]
  %i.ty = phi i64 [ %i.tu, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i45 ], [ %i.tq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ] ; 2 uses
  %i.tz = load ptr, ptr %i.bh, align 8, !alias.scope !1329, !noalias !1328, !nonnull !28, !noundef !28 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.ty
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ua, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.tp, i64 3, i1 false), !noalias !1332
  %i.ub = add nuw i64 %i.ty, 3                    ; 5 uses
  store i64 %i.ub, ptr %i.bg, align 8, !alias.scope !1329, !noalias !1328
  call void @llvm.experimental.noalias.scope.decl(metadata !1333), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1334), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1335), !noalias !1277
  %i.uc = sub i64 %i.tx, %i.ub
  %i.ud = icmp ult i64 %i.uc, 2
  br i1 %i.ud, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i12.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i11.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i12.i: ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i35
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ub, i64 noundef 2, i64 noundef 1, i64 noundef 1), !noalias !1331
  %i.ue = load i64, ptr %i.bg, align 8, !alias.scope !1336, !noalias !1331, !noundef !28 ; 2 uses
  %i.uf = icmp sgt i64 %i.ue, -1
  call void @llvm.assume(i1 %i.uf), !noalias !1277
  %.pre64.i = load ptr, ptr %i.bh, align 8, !alias.scope !1336, !noalias !1331
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit13.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i11.i: ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i35
  %i.ug = icmp sgt i64 %i.ub, -1
  call void @llvm.assume(i1 %i.ug), !noalias !1277
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit13.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit13.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i11.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i12.i
  %i.uh = phi ptr [ %.pre64.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i12.i ], [ %i.tz, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i11.i ] ; 3 uses
  %i.ui = phi i64 [ %i.ue, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i12.i ], [ %i.ub, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i11.i ] ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.ui
  store i16 8236, ptr %i.uj, align 1, !noalias !1337
  %i.uk = add nuw i64 %i.ui, 2                    ; 9 uses
  store i64 %i.uk, ptr %i.bg, align 8, !alias.scope !1336, !noalias !1331
  br i1 %i.cc, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit13.i
  %i.ul = load i8, ptr %i.cd, align 1, !noalias !1323, !noundef !28
  %i.um = zext i8 %i.ul to i32                    ; 2 uses
  %i.un = add nuw nsw i32 %i.bz, %i.um
  %i.uo = lshr i32 %i.un, 1
  %i.up = and i32 %i.uo, 31                       ; 3 uses
  %i.uq = icmp samesign ult i32 %i.up, 10
  br i1 %i.uq, label %bb.dr, label %bb.do

bb.dn:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit13.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #75, !noalias !1323
  unreachable

bb.do:                                            ; preds = %bb.dm
  %i.ur = trunc nuw nsw i32 %i.up to i8           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1338), !noalias !1277
  %i.us = udiv i8 %i.ur, 10
  %i.ut = urem i8 %i.ur, 10
  %i.uu = or disjoint i8 %i.us, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1339), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1340), !noalias !1277
  %i.uv = icmp sgt i64 %i.uk, -1
  call void @llvm.assume(i1 %i.uv), !noalias !1277
  %i.uw = load i64, ptr %1, align 8, !range !43, !alias.scope !1341, !noalias !1342, !noundef !28 ; 2 uses
  %i.ux = icmp eq i64 %i.uw, %i.uk
  br i1 %i.ux, label %bb.dp, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i36, !prof !44

bb.dp:                                            ; preds = %bb.do
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.uk, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre.i.i43 = load i64, ptr %1, align 8, !range !43, !alias.scope !1343, !noalias !1342
  %.pre65.i = load ptr, ptr %i.bh, align 8, !alias.scope !1344, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i36

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i36: ; preds = %bb.dp, %bb.do
  %i.uy = phi ptr [ %.pre65.i, %bb.dp ], [ %i.uh, %bb.do ] ; 2 uses
  %i.uz = phi i64 [ %.pre.i.i43, %bb.dp ], [ %i.uw, %bb.do ] ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.uk
  store i8 %i.uu, ptr %i.va, align 1, !noalias !1345
  %i.vb = add nuw i64 %i.ui, 3                    ; 3 uses
  store i64 %i.vb, ptr %i.bg, align 8, !alias.scope !1344, !noalias !1342
  %i.vc = or disjoint i8 %i.ut, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1346), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1347), !noalias !1277
  %i.vd = icmp eq i64 %i.uz, %i.vb
  br i1 %i.vd, label %bb.dq, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i, !prof !44

bb.dq:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i36
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.uz, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre4.i.i42 = load ptr, ptr %i.bh, align 8, !alias.scope !1348, !noalias !1342
  br label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i

_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.dq, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i36
  %i.ve = phi ptr [ %.pre4.i.i42, %bb.dq ], [ %i.uy, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i36 ]
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.vb
  store i8 %i.vc, ptr %i.vf, align 1, !noalias !1349
  br label %bb.dt

bb.dr:                                            ; preds = %bb.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !1350), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1351), !noalias !1277
  %i.vg = icmp sgt i64 %i.uk, -1
  call void @llvm.assume(i1 %i.vg), !noalias !1277
  %i.vh = load i64, ptr %1, align 8, !range !43, !alias.scope !1352, !noalias !1342, !noundef !28
  %i.vi = icmp eq i64 %i.vh, %i.uk
  br i1 %i.vi, label %bb.ds, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44, !prof !44

bb.ds:                                            ; preds = %bb.dr
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.uk, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre66.i = load ptr, ptr %i.bh, align 8, !alias.scope !1353, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44: ; preds = %bb.ds, %bb.dr
  %i.vj = phi ptr [ %.pre66.i, %bb.ds ], [ %i.uh, %bb.dr ]
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.uk
  %i.vl = trunc nuw nsw i32 %i.up to i8
  %i.vm = or disjoint i8 %i.vl, 48
  store i8 %i.vm, ptr %i.vk, align 1, !noalias !1354
  br label %bb.dt

bb.dt:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i
  %.sink.i37 = phi i64 [ 4, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i ], [ 3, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44 ]
  %i.vn = add nuw i64 %.sink.i37, %i.ui           ; 6 uses
  store i64 %i.vn, ptr %i.bg, align 8, !alias.scope !1322, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1355), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1356), !noalias !1277
  %i.vo = icmp sgt i64 %i.vn, -1
  call void @llvm.assume(i1 %i.vo), !noalias !1277
  %i.vp = load i64, ptr %1, align 8, !range !43, !alias.scope !1357, !noalias !1342, !noundef !28
  %i.vq = icmp eq i64 %i.vp, %i.vn
  br i1 %i.vq, label %bb.du, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit16.i, !prof !44

bb.du:                                            ; preds = %bb.dt
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.vn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit16.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit16.i: ; preds = %bb.du, %bb.dt
  %i.vr = load ptr, ptr %i.bh, align 8, !alias.scope !1358, !noalias !1342, !nonnull !28, !noundef !28 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vn
  store i8 32, ptr %i.vs, align 1, !noalias !1359
  %i.vt = add nuw i64 %i.vn, 1                    ; 5 uses
  store i64 %i.vt, ptr %i.bg, align 8, !alias.scope !1358, !noalias !1342
  %i.vu = add nuw nsw i32 %i.ca, %i.um
  %i.vv = lshr i32 %i.vu, 6
  %i.vw = add nsw i32 %i.vv, -1                   ; 2 uses
  %i.vx = zext i32 %i.vw to i64                   ; 2 uses
  %i.vy = icmp ult i32 %i.vw, 12
  br i1 %i.vy, label %bb.dv, label %bb.dz

bb.dv:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit16.i
  %i.vz = getelementptr inbounds nuw [16 x i8], ptr @45, i64 %i.vx
  %i.wa = load ptr, ptr %i.vz, align 8, !noalias !1323, !nonnull !28, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1360), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1361), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1362), !noalias !1277
  %i.wb = load i64, ptr %1, align 8, !range !43, !alias.scope !1363, !noalias !1364, !noundef !28 ; 2 uses
  %i.wc = sub i64 %i.wb, %i.vt
  %i.wd = icmp ult i64 %i.wc, 3
  br i1 %i.wd, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i19.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i17.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i19.i: ; preds = %bb.dv
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.vt, i64 noundef 3, i64 noundef 1, i64 noundef 1), !noalias !1364
  %i.we = load i64, ptr %i.bg, align 8, !alias.scope !1365, !noalias !1364, !noundef !28 ; 2 uses
  %i.wf = icmp sgt i64 %i.we, -1
  call void @llvm.assume(i1 %i.wf), !noalias !1277
  %.pre67.i = load ptr, ptr %i.bh, align 8, !alias.scope !1365, !noalias !1364
  %.pre68.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1366, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit20.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i17.i: ; preds = %bb.dv
  %i.wg = icmp sgt i64 %i.vt, -1
  call void @llvm.assume(i1 %i.wg), !noalias !1277
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit20.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit20.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i17.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i19.i
  %i.wh = phi i64 [ %.pre68.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i19.i ], [ %i.wb, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i17.i ] ; 2 uses
  %i.wi = phi ptr [ %.pre67.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i19.i ], [ %i.vr, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i17.i ] ; 2 uses
  %i.wj = phi i64 [ %i.we, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i19.i ], [ %i.vt, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i17.i ] ; 16 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.wj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wk, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.wa, i64 3, i1 false), !noalias !1367
  %i.wl = add nuw nsw i64 %i.wj, 3                ; 3 uses
  store i64 %i.wl, ptr %i.bg, align 8, !alias.scope !1365, !noalias !1364
  call void @llvm.experimental.noalias.scope.decl(metadata !1368), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1369), !noalias !1277
  %i.wm = icmp eq i64 %i.wh, %i.wl
  br i1 %i.wm, label %bb.dw, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit23.i, !prof !44

bb.dw:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit20.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.wh, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre69.i = load ptr, ptr %i.bh, align 8, !alias.scope !1370, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit23.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit23.i: ; preds = %bb.dw, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit20.i
  %i.wn = phi ptr [ %i.wi, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit20.i ], [ %.pre69.i, %bb.dw ]
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.wl
  store i8 32, ptr %i.wo, align 1, !noalias !1371
  %i.wp = add nuw nsw i64 %i.wj, 4                ; 4 uses
  store i64 %i.wp, ptr %i.bg, align 8, !alias.scope !1370, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1372), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1373), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1374), !noalias !1277
  %i.wq = load i64, ptr %1, align 8, !range !43, !alias.scope !1375, !noalias !1342, !noundef !28 ; 2 uses
  %i.wr = icmp eq i64 %i.wq, %i.wp
  br i1 %i.wr, label %bb.dx, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i, !prof !44

bb.dx:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit23.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.wp, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre.i26.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1376, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i: ; preds = %bb.dx, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit23.i
  %i.ws = phi i64 [ %.pre.i26.i, %bb.dx ], [ %i.wq, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit23.i ] ; 3 uses
  %i.wt = load ptr, ptr %i.bh, align 8, !alias.scope !1377, !noalias !1342, !nonnull !28, !noundef !28 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wp
  store i8 %21, ptr %i.wu, align 1, !noalias !1378
  %i.wv = add nuw i64 %i.wj, 5                    ; 3 uses
  store i64 %i.wv, ptr %i.bg, align 8, !alias.scope !1377, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1379), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1380), !noalias !1277
  %i.ww = icmp eq i64 %i.ws, %i.wv
  br i1 %i.ww, label %bb.dy, label %bb.ea, !prof !44

bb.dy:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ws, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre4.i25.i = load ptr, ptr %i.bh, align 8, !alias.scope !1381, !noalias !1342
  %.pre70.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1382, !noalias !1342
  br label %bb.ea

bb.dz:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit16.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.vx, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #75, !noalias !1323
  unreachable

bb.ea:                                            ; preds = %bb.dy, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i
  %i.wx = phi i64 [ %.pre70.i, %bb.dy ], [ %i.ws, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i ] ; 3 uses
  %i.wy = phi ptr [ %.pre4.i25.i, %bb.dy ], [ %i.wt, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i ] ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.wv
  store i8 %23, ptr %i.wz, align 1, !noalias !1383
  %i.xa = add nuw nsw i64 %i.wj, 6                ; 3 uses
  store i64 %i.xa, ptr %i.bg, align 8, !alias.scope !1381, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1384), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1385), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1386), !noalias !1277
  %i.xb = icmp eq i64 %i.wx, %i.xa
  br i1 %i.xb, label %bb.eb, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i28.i, !prof !44

bb.eb:                                            ; preds = %bb.ea
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.wx, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre.i31.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1387, !noalias !1342
  %.pre71.i = load ptr, ptr %i.bh, align 8, !alias.scope !1388, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i28.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i28.i: ; preds = %bb.eb, %bb.ea
  %i.xc = phi ptr [ %.pre71.i, %bb.eb ], [ %i.wy, %bb.ea ] ; 2 uses
  %i.xd = phi i64 [ %.pre.i31.i, %bb.eb ], [ %i.wx, %bb.ea ] ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xa
  store i8 %27, ptr %i.xe, align 1, !noalias !1389
  %i.xf = add nuw i64 %i.wj, 7                    ; 3 uses
  store i64 %i.xf, ptr %i.bg, align 8, !alias.scope !1388, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1390), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1391), !noalias !1277
  %i.xg = icmp eq i64 %i.xd, %i.xf
  br i1 %i.xg, label %bb.ec, label %bb.ed, !prof !44

bb.ec:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i28.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.xd, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre4.i30.i = load ptr, ptr %i.bh, align 8, !alias.scope !1392, !noalias !1342
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i28.i
  %i.xh = phi ptr [ %.pre4.i30.i, %bb.ec ], [ %i.xc, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i28.i ]
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xf
  store i8 %29, ptr %i.xi, align 1, !noalias !1393
  %i.xj = add nuw nsw i64 %i.wj, 8                ; 4 uses
  store i64 %i.xj, ptr %i.bg, align 8, !alias.scope !1392, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1394), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1395), !noalias !1277
  %i.xk = load i64, ptr %1, align 8, !range !43, !alias.scope !1396, !noalias !1342, !noundef !28
  %i.xl = icmp eq i64 %i.xk, %i.xj
  br i1 %i.xl, label %bb.ee, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i, !prof !44

bb.ee:                                            ; preds = %bb.ed
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.xj, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i: ; preds = %bb.ee, %bb.ed
  %i.xm = load ptr, ptr %i.bh, align 8, !alias.scope !1397, !noalias !1342, !nonnull !28, !noundef !28 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.xj
  store i8 32, ptr %i.xn, align 1, !noalias !1398
  %i.xo = add nuw i64 %i.wj, 9                    ; 5 uses
  store i64 %i.xo, ptr %i.bg, align 8, !alias.scope !1397, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1399), !noalias !1277
  br i1 %i.cr, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.ef

bb.ef:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1400), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1401), !noalias !1277
  %i.xp = icmp sgt i64 %i.xo, -1
  call void @llvm.assume(i1 %i.xp), !noalias !1277
  %i.xq = load i64, ptr %1, align 8, !range !43, !alias.scope !1402, !noalias !1342, !noundef !28 ; 2 uses
  %i.xr = icmp eq i64 %i.xq, %i.xo
  br i1 %i.xr, label %bb.eg, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i, !prof !44

bb.eg:                                            ; preds = %bb.ef
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.xo, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre.i39.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1403, !noalias !1342
  %.pre72.i = load ptr, ptr %i.bh, align 8, !alias.scope !1404, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i: ; preds = %bb.eg, %bb.ef
  %i.xs = phi ptr [ %.pre72.i, %bb.eg ], [ %i.xm, %bb.ef ] ; 2 uses
  %i.xt = phi i64 [ %.pre.i39.i, %bb.eg ], [ %i.xq, %bb.ef ] ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xs, i64 %i.xo
  store i8 %i.ct, ptr %i.xu, align 1, !noalias !1405
  %i.xv = add nuw i64 %i.wj, 10                   ; 3 uses
  store i64 %i.xv, ptr %i.bg, align 8, !alias.scope !1404, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1406), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1407), !noalias !1277
  %i.xw = icmp eq i64 %i.xt, %i.xv
  br i1 %i.xw, label %bb.eh, label %bb.ei, !prof !44

bb.eh:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.xt, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre4.i38.i = load ptr, ptr %i.bh, align 8, !alias.scope !1408, !noalias !1342
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i
  %i.xx = phi ptr [ %.pre4.i38.i, %bb.eh ], [ %i.xs, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i ]
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.xv
  store i8 %i.cv, ptr %i.xy, align 1, !noalias !1409
  %i.xz = add nuw nsw i64 %i.wj, 11               ; 4 uses
  store i64 %i.xz, ptr %i.bg, align 8, !alias.scope !1408, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1410), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1411), !noalias !1277
  %i.ya = load i64, ptr %1, align 8, !range !43, !alias.scope !1412, !noalias !1342, !noundef !28 ; 2 uses
  %i.yb = icmp eq i64 %i.ya, %i.xz
  br i1 %i.yb, label %bb.ej, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i, !prof !44

bb.ej:                                            ; preds = %bb.ei
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.xz, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre73.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1413, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i: ; preds = %bb.ej, %bb.ei
  %i.yc = phi i64 [ %i.ya, %bb.ei ], [ %.pre73.i, %bb.ej ] ; 3 uses
  %i.yd = load ptr, ptr %i.bh, align 8, !alias.scope !1414, !noalias !1342, !nonnull !28, !noundef !28 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 %i.xz
  store i8 58, ptr %i.ye, align 1, !noalias !1415
  %i.yf = add nuw nsw i64 %i.wj, 12               ; 3 uses
  store i64 %i.yf, ptr %i.bg, align 8, !alias.scope !1414, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1416), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1417), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1418), !noalias !1277
  %i.yg = icmp eq i64 %i.yc, %i.yf
  br i1 %i.yg, label %bb.ek, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i, !prof !44

bb.ek:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.yc, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre.i47.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1419, !noalias !1342
  %.pre74.i = load ptr, ptr %i.bh, align 8, !alias.scope !1420, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i: ; preds = %bb.ek, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i
  %i.yh = phi ptr [ %.pre74.i, %bb.ek ], [ %i.yd, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i ] ; 2 uses
  %i.yi = phi i64 [ %.pre.i47.i, %bb.ek ], [ %i.yc, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i ] ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 %i.yf
  store i8 %i.cy, ptr %i.yj, align 1, !noalias !1421
  %i.yk = add nuw i64 %i.wj, 13                   ; 3 uses
  store i64 %i.yk, ptr %i.bg, align 8, !alias.scope !1420, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1422), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1423), !noalias !1277
  %i.yl = icmp eq i64 %i.yi, %i.yk
  br i1 %i.yl, label %bb.el, label %bb.em, !prof !44

bb.el:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.yi, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre4.i46.i = load ptr, ptr %i.bh, align 8, !alias.scope !1424, !noalias !1342
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i
  %i.ym = phi ptr [ %.pre4.i46.i, %bb.el ], [ %i.yh, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i ]
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.yk
  store i8 %i.da, ptr %i.yn, align 1, !noalias !1425
  %i.yo = add nuw nsw i64 %i.wj, 14               ; 4 uses
  store i64 %i.yo, ptr %i.bg, align 8, !alias.scope !1424, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1426), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1427), !noalias !1277
  %i.yp = load i64, ptr %1, align 8, !range !43, !alias.scope !1428, !noalias !1342, !noundef !28 ; 2 uses
  %i.yq = icmp eq i64 %i.yp, %i.yo
  br i1 %i.yq, label %bb.en, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38, !prof !44

bb.en:                                            ; preds = %bb.em
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.yo, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre75.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1429, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38: ; preds = %bb.en, %bb.em
  %i.yr = phi i64 [ %i.yp, %bb.em ], [ %.pre75.i, %bb.en ] ; 3 uses
  %i.ys = load ptr, ptr %i.bh, align 8, !alias.scope !1430, !noalias !1342, !nonnull !28, !noundef !28 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yo
  store i8 58, ptr %i.yt, align 1, !noalias !1431
  %i.yu = add nuw nsw i64 %i.wj, 15               ; 3 uses
  store i64 %i.yu, ptr %i.bg, align 8, !alias.scope !1430, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1432), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1433), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1434), !noalias !1277
  %i.yv = icmp eq i64 %i.yr, %i.yu
  br i1 %i.yv, label %bb.eo, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39, !prof !44

bb.eo:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.yr, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre.i55.i41 = load i64, ptr %1, align 8, !range !43, !alias.scope !1435, !noalias !1342
  %.pre76.i = load ptr, ptr %i.bh, align 8, !alias.scope !1436, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39: ; preds = %bb.eo, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38
  %i.yw = phi ptr [ %.pre76.i, %bb.eo ], [ %i.ys, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38 ] ; 2 uses
  %i.yx = phi i64 [ %.pre.i55.i41, %bb.eo ], [ %i.yr, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38 ] ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.yu
  store i8 %i.dr, ptr %i.yy, align 1, !noalias !1437
  %i.yz = add nuw i64 %i.wj, 16                   ; 3 uses
  store i64 %i.yz, ptr %i.bg, align 8, !alias.scope !1436, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1438), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1439), !noalias !1277
  %i.za = icmp eq i64 %i.yx, %i.yz
  br i1 %i.za, label %bb.ep, label %.split68, !prof !44

bb.ep:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.yx, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre4.i54.i40 = load ptr, ptr %i.bh, align 8, !alias.scope !1440, !noalias !1342
  br label %.split68

.split68:                                         ; preds = %bb.ep, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39
  %i.zb = phi ptr [ %.pre4.i54.i40, %bb.ep ], [ %i.yw, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39 ]
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.yz
  store i8 %i.dt, ptr %i.zc, align 1, !noalias !1441
  %i.zd = add nuw i64 %i.wj, 17
  store i64 %i.zd, ptr %i.bg, align 8, !alias.scope !1440, !noalias !1342
  %i.ze = call noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32) #76, !noalias !1342 ; 0 uses
  %i.zf = call fastcc noundef zeroext i1 @_RINvMs0_NtNtCs2uF6e5yHHeh_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) @188, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cg), !noalias !1342
  br i1 %i.zf, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.eq:                                            ; preds = %bb.dg
  call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1443
  store i32 %i.ch, ptr %i.i, align 4, !noalias !1443
  br i1 %or.cond.i26, label %bb.er, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread.i: ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1443
  store ptr %i.i, ptr %i.h, align 8, !noalias !1443
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1443
  %i.zg = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @189, ptr noundef nonnull %i.h), !noalias !1444, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1443
  br i1 %i.zg, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !1445), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1446), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1447), !noalias !1277
  %i.zh = load i64, ptr %i.bg, align 8, !alias.scope !1448, !noalias !1444, !noundef !28 ; 8 uses
  %i.zi = icmp sgt i64 %i.zh, -1
  call void @llvm.assume(i1 %i.zi), !noalias !1277
  %i.zj = load i64, ptr %1, align 8, !range !43, !alias.scope !1449, !noalias !1444, !noundef !28 ; 2 uses
  %i.zk = icmp eq i64 %i.zj, %i.zh
  br i1 %i.zk, label %bb.es, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i, !prof !44

bb.es:                                            ; preds = %bb.er
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zh, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i.i30 = load i64, ptr %1, align 8, !range !43, !alias.scope !1450, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i: ; preds = %bb.es, %bb.er
  %i.zl = phi i64 [ %.pre.i.i30, %bb.es ], [ %i.zj, %bb.er ] ; 2 uses
  %i.zm = load ptr, ptr %i.bh, align 8, !alias.scope !1448, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.zh
  store i8 %21, ptr %i.zn, align 1, !noalias !1451
  %i.zo = add nuw nsw i64 %i.zh, 1                ; 3 uses
  store i64 %i.zo, ptr %i.bg, align 8, !alias.scope !1448, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1452), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1453), !noalias !1277
  %i.zp = icmp eq i64 %i.zl, %i.zo
  br i1 %i.zp, label %bb.et, label %bb.ex, !prof !44

bb.et:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zl, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !1454, !noalias !1444
  br label %bb.ex

bb.eu:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread.i
  %.pre.i = load i64, ptr %i.bg, align 8, !alias.scope !1455, !noalias !1444
  br label %bb.ev

bb.ev:                                            ; preds = %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i, %bb.eu
  %i.zq = phi i64 [ %i.aas, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i ], [ %.pre.i, %bb.eu ] ; 19 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1456), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1457), !noalias !1277
  %i.zr = icmp sgt i64 %i.zq, -1
  call void @llvm.assume(i1 %i.zr), !noalias !1277
  %i.zs = load i64, ptr %1, align 8, !range !43, !alias.scope !1458, !noalias !1444, !noundef !28
  %i.zt = icmp eq i64 %i.zs, %i.zq
  br i1 %i.zt, label %bb.ew, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27, !prof !44

bb.ew:                                            ; preds = %bb.ev
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zq, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27: ; preds = %bb.ew, %bb.ev
  %i.zu = load ptr, ptr %i.bh, align 8, !alias.scope !1455, !noalias !1444, !nonnull !28, !noundef !28
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.zq
  store i8 45, ptr %i.zv, align 1, !noalias !1459
  %i.zw = add nuw i64 %i.zq, 1                    ; 5 uses
  store i64 %i.zw, ptr %i.bg, align 8, !alias.scope !1455, !noalias !1444
  br i1 %i.cc, label %bb.fb, label %bb.fe

bb.ex:                                            ; preds = %bb.et, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i
  %i.zx = phi ptr [ %.pre4.i.i, %bb.et ], [ %i.zm, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i ]
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.zo
  store i8 %23, ptr %i.zy, align 1, !noalias !1460
  %i.zz = add nuw i64 %i.zh, 2                    ; 5 uses
  store i64 %i.zz, ptr %i.bg, align 8, !alias.scope !1454, !noalias !1444
  %i.aaa = load i32, ptr %i.i, align 4, !noalias !1443, !noundef !28
  %i.aab = srem i32 %i.aaa, 100                   ; 2 uses
  %i.aac = trunc nuw nsw i32 %i.aab to i8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1461), !noalias !1277
  %i.aad = icmp slt i32 %i.aab, 0
  br i1 %i.aad, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aae = udiv i8 %i.aac, 10
  %i.aaf = urem i8 %i.aac, 10
  %i.aag = or disjoint i8 %i.aae, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1462), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1463), !noalias !1277
  %i.aah = icmp sgt i64 %i.zz, -1
  call void @llvm.assume(i1 %i.aah), !noalias !1277
  %i.aai = load i64, ptr %1, align 8, !range !43, !alias.scope !1464, !noalias !1444, !noundef !28 ; 2 uses
  %i.aaj = icmp eq i64 %i.aai, %i.zz
  br i1 %i.aaj, label %bb.ez, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i, !prof !44

bb.ez:                                            ; preds = %bb.ey
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zz, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i36.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1465, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i: ; preds = %bb.ez, %bb.ey
  %i.aak = phi i64 [ %.pre.i36.i, %bb.ez ], [ %i.aai, %bb.ey ] ; 2 uses
  %i.aal = load ptr, ptr %i.bh, align 8, !alias.scope !1466, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.zz
  store i8 %i.aag, ptr %i.aam, align 1, !noalias !1467
  %i.aan = add nuw i64 %i.zh, 3                   ; 3 uses
  store i64 %i.aan, ptr %i.bg, align 8, !alias.scope !1466, !noalias !1444
  %i.aao = or disjoint i8 %i.aaf, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1468), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1469), !noalias !1277
  %i.aap = icmp eq i64 %i.aak, %i.aan
  br i1 %i.aap, label %bb.fa, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i, !prof !44

bb.fa:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aak, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i35.i = load ptr, ptr %i.bh, align 8, !alias.scope !1470, !noalias !1444
  br label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i

_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i: ; preds = %bb.fa, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i
  %i.aaq = phi ptr [ %.pre4.i35.i, %bb.fa ], [ %i.aal, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i ]
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.aan
  store i8 %i.aao, ptr %i.aar, align 1, !noalias !1471
  %i.aas = add nuw i64 %i.zh, 4                   ; 2 uses
  store i64 %i.aas, ptr %i.bg, align 8, !alias.scope !1470, !noalias !1444
  br label %bb.ev

bb.fb:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27
  %i.aat = load i8, ptr %i.cd, align 1, !noalias !1443, !noundef !28 ; 2 uses
  %i.aau = zext i8 %i.aat to i32
  %i.aav = add nuw nsw i32 %i.ca, %i.aau          ; 3 uses
  %i.aaw = lshr i32 %i.aav, 6
  %i.aax = trunc nuw nsw i32 %i.aaw to i8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1472), !noalias !1277
  %.cmp.i = icmp samesign ugt i32 %i.aav, 639
  %i.aay = zext i1 %.cmp.i to i8
  %i.aaz = or disjoint i8 %i.aay, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1473), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1474), !noalias !1277
  %i.aba = icmp sgt i64 %i.zw, -1
  call void @llvm.assume(i1 %i.aba), !noalias !1277
  %i.abb = load i64, ptr %1, align 8, !range !43, !alias.scope !1475, !noalias !1444, !noundef !28 ; 2 uses
  %i.abc = icmp eq i64 %i.abb, %i.zw
  br i1 %i.abc, label %bb.fc, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i, !prof !44

bb.fc:                                            ; preds = %bb.fb
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zw, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i41.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1476, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i: ; preds = %bb.fc, %bb.fb
  %i.abd = phi i64 [ %.pre.i41.i, %bb.fc ], [ %i.abb, %bb.fb ] ; 2 uses
  %i.abe = load ptr, ptr %i.bh, align 8, !alias.scope !1477, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 %i.zw
  store i8 %i.aaz, ptr %i.abf, align 1, !noalias !1478
  %i.abg = add nuw i64 %i.zq, 2                   ; 3 uses
  store i64 %i.abg, ptr %i.bg, align 8, !alias.scope !1477, !noalias !1444
  %.urem.i = add nsw i8 %i.aax, -10
  %.cmp91.i = icmp samesign ult i32 %i.aav, 640
  %i.abh = select i1 %.cmp91.i, i8 %i.aax, i8 %.urem.i
  %i.abi = or disjoint i8 %i.abh, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1479), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1480), !noalias !1277
  %i.abj = icmp eq i64 %i.abd, %i.abg
  br i1 %i.abj, label %bb.fd, label %bb.ff, !prof !44

bb.fd:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.abd, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i40.i = load ptr, ptr %i.bh, align 8, !alias.scope !1481, !noalias !1444
  br label %bb.ff

bb.fe:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #75, !noalias !1444
  unreachable

bb.ff:                                            ; preds = %bb.fd, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i
  %i.abk = phi ptr [ %.pre4.i40.i, %bb.fd ], [ %i.abe, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i ]
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abg
  store i8 %i.abi, ptr %i.abl, align 1, !noalias !1482
  %i.abm = add nuw nsw i64 %i.zq, 3               ; 4 uses
  store i64 %i.abm, ptr %i.bg, align 8, !alias.scope !1481, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1483), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1484), !noalias !1277
  %i.abn = load i64, ptr %1, align 8, !range !43, !alias.scope !1485, !noalias !1444, !noundef !28
  %i.abo = icmp eq i64 %i.abn, %i.abm
  br i1 %i.abo, label %bb.fg, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i, !prof !44

bb.fg:                                            ; preds = %bb.ff
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.abm, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i: ; preds = %bb.fg, %bb.ff
  %i.abp = load ptr, ptr %i.bh, align 8, !alias.scope !1486, !noalias !1444, !nonnull !28, !noundef !28
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.abm
  store i8 45, ptr %i.abq, align 1, !noalias !1487
  %i.abr = add nuw nsw i64 %i.zq, 4               ; 4 uses
  store i64 %i.abr, ptr %i.bg, align 8, !alias.scope !1486, !noalias !1444
  %i.abs = add i8 %i.aat, %i.ci
  %i.abt = lshr i8 %i.abs, 1
  %i.abu = and i8 %i.abt, 31                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1488), !noalias !1277
  %i.abv = udiv i8 %i.abu, 10
  %i.abw = urem i8 %i.abu, 10
  %i.abx = or disjoint i8 %i.abv, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1489), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1490), !noalias !1277
  %i.aby = load i64, ptr %1, align 8, !range !43, !alias.scope !1491, !noalias !1444, !noundef !28 ; 2 uses
  %i.abz = icmp eq i64 %i.aby, %i.abr
  br i1 %i.abz, label %bb.fh, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i, !prof !44

bb.fh:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.abr, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i48.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1492, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i: ; preds = %bb.fh, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i
  %i.aca = phi i64 [ %.pre.i48.i, %bb.fh ], [ %i.aby, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i ] ; 2 uses
  %i.acb = load ptr, ptr %i.bh, align 8, !alias.scope !1493, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 %i.abr
  store i8 %i.abx, ptr %i.acc, align 1, !noalias !1494
  %i.acd = add nuw i64 %i.zq, 5                   ; 3 uses
  store i64 %i.acd, ptr %i.bg, align 8, !alias.scope !1493, !noalias !1444
  %i.ace = or disjoint i8 %i.abw, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1495), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1496), !noalias !1277
  %i.acf = icmp eq i64 %i.aca, %i.acd
  br i1 %i.acf, label %bb.fi, label %bb.fj, !prof !44

bb.fi:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aca, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i47.i = load ptr, ptr %i.bh, align 8, !alias.scope !1497, !noalias !1444
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i
  %i.acg = phi ptr [ %.pre4.i47.i, %bb.fi ], [ %i.acb, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i ]
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.acd
  store i8 %i.ace, ptr %i.ach, align 1, !noalias !1498
  %i.aci = add nuw nsw i64 %i.zq, 6               ; 4 uses
  store i64 %i.aci, ptr %i.bg, align 8, !alias.scope !1497, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1499), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1500), !noalias !1277
  %i.acj = load i64, ptr %1, align 8, !range !43, !alias.scope !1501, !noalias !1444, !noundef !28
  %i.ack = icmp eq i64 %i.acj, %i.aci
  br i1 %i.ack, label %bb.fk, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i, !prof !44

bb.fk:                                            ; preds = %bb.fj
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aci, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i: ; preds = %bb.fk, %bb.fj
  %i.acl = load ptr, ptr %i.bh, align 8, !alias.scope !1502, !noalias !1444, !nonnull !28, !noundef !28
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 %i.aci
  store i8 84, ptr %i.acm, align 1, !noalias !1503
  %i.acn = add nuw i64 %i.zq, 7                   ; 5 uses
  store i64 %i.acn, ptr %i.bg, align 8, !alias.scope !1502, !noalias !1444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1443
  store i32 %storemerge.i, ptr %i.g, align 4, !noalias !1443
  call void @llvm.experimental.noalias.scope.decl(metadata !1504), !noalias !1277
  br i1 %i.cr, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit56.thread.i, label %bb.fl

bb.fl:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1505), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1506), !noalias !1277
  %i.aco = icmp sgt i64 %i.acn, -1
  call void @llvm.assume(i1 %i.aco), !noalias !1277
  %i.acp = load i64, ptr %1, align 8, !range !43, !alias.scope !1507, !noalias !1444, !noundef !28 ; 2 uses
  %i.acq = icmp eq i64 %i.acp, %i.acn
  br i1 %i.acq, label %bb.fm, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i, !prof !44

bb.fm:                                            ; preds = %bb.fl
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.acn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i55.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1508, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i: ; preds = %bb.fm, %bb.fl
end_hunk_2
