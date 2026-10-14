Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
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
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #74
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !718
  store i64 1, ptr %i.a, align 8, !noalias !718
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.d, align 8, !noalias !718
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %2, ptr %i.e, align 8, !noalias !718
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %i.f, align 8, !noalias !718
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !719
  %i.g = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !719 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterEE3newCskXtk6F4WjxZ_4just.exit.i, !prof !26

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #70
          to label %.noexc.i unwind label %bb.c, !noalias !720

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !721
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom14ValueCompleterEL_E9drop_slowCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.e) #73
          to label %.body unwind label %bb.e, !noalias !720

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !720
  unreachable

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterEE3newCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !718
  store ptr %i.g, ptr %i.c, align 8, !noalias !718
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @32, ptr %i.n, align 8, !noalias !718
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) @31, i64 16, i1 false), !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !718
  invoke fastcc void @_RNvMNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(16) @31, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterEE3newCskXtk6F4WjxZ_4just.exit.i
  %i.p = load ptr, ptr %i.b, align 8, !noalias !718, !noundef !28 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !722
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #73
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterEE3newCskXtk6F4WjxZ_4just.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.i, %bb.d ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(640) %1) #71
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.f, %.noexc, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(640) %1, i64 640, i1 false)
  ret void

bb.j:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72
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
  %i.ay = load i32, ptr %i.ax, align 4            ; 5 uses
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
  %.lhs.trunc13.i = trunc nuw nsw i32 %i.bf to i16
  %2 = urem i16 %.lhs.trunc13.i, 1000
  %.zext14.i = zext nneg i16 %2 to i32            ; 2 uses
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
  %.not140.i = icmp ne i32 %i.ay, 0               ; 5 uses
  %i.bv = lshr i32 %i.ay, 4
  %i.bw = and i32 %i.bv, 511
  %i.bx = and i32 %i.ay, 7
  %i.by = add nuw nsw i32 %i.bw, %i.bx
  %.lhs.trunc9.i = trunc nuw nsw i32 %i.by to i16
  %3 = urem i16 %.lhs.trunc9.i, 7                 ; 2 uses
  %4 = icmp samesign ult i16 %3, 6
  %narrow58.i = add nuw nsw i16 %3, 1
  %narrow59.i = select i1 %4, i16 %narrow58.i, i16 0
  %5 = zext nneg i16 %narrow59.i to i64           ; 2 uses
  %6 = getelementptr inbounds nuw [16 x i8], ptr @79, i64 %5 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = getelementptr inbounds nuw [16 x i8], ptr @71, i64 %5 ; 2 uses
  %i.bz = lshr i32 %i.ay, 3                       ; 3 uses
  %i.ca = and i32 %i.bz, 1023                     ; 6 uses
  %i.cb = zext nneg i32 %i.ca to i64              ; 5 uses
  %i.cc = icmp samesign ult i32 %i.ca, 733        ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr @46, i64 %i.cb ; 4 uses
  %or.cond5.i = select i1 %.not140.i, i1 %i.bb, i1 false ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load i32, ptr %i.ce, align 8            ; 7 uses
  %i.cg = ashr i32 %i.ay, 13                      ; 3 uses
  %or.cond.i26 = icmp ult i32 %i.cg, 10000        ; 2 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.lhs.trunc.i29 = trunc nuw nsw i32 %i.cg to i16 ; 2 uses
  %9 = udiv i16 %.lhs.trunc.i29, 100
  %10 = trunc nuw nsw i16 %9 to i8                ; 2 uses
  %11 = udiv i8 %10, 10
  %12 = or disjoint i8 %11, 48                    ; 2 uses
  %13 = urem i8 %10, 10
  %14 = or disjoint i8 %13, 48                    ; 2 uses
  %i.ch = trunc i32 %i.bz to i8
  %i.ci = urem i32 %.sroa.10.0.copyload.i, 60     ; 2 uses
  %i.cj = udiv i32 %.sroa.10.0.copyload.i, 60
  %i.ck = urem i32 %i.cj, 60
  %i.cl = udiv i32 %.sroa.10.0.copyload.i, 3600
  %i.cm = icmp ugt i32 %.sroa.21.0.copyload.i, 999999999 ; 2 uses
  %i.cn = add i32 %.sroa.21.0.copyload.i, -1000000000
  %storemerge.i = select i1 %i.cm, i32 %i.cn, i32 %.sroa.21.0.copyload.i ; 6 uses
  %i.co = zext i1 %i.cm to i32
  %.sroa.04.0.i = add nuw nsw i32 %i.ci, %i.co
  %i.cp = trunc i32 %i.cl to i8                   ; 3 uses
  %i.cq = icmp ugt i8 %i.cp, 99                   ; 2 uses
  %i.cr = udiv i8 %i.cp, 10
  %i.cs = or disjoint i8 %i.cr, 48                ; 2 uses
  %i.ct = urem i8 %i.cp, 10
  %i.cu = or disjoint i8 %i.ct, 48                ; 2 uses
  %i.cv = trunc nuw nsw i32 %i.ck to i8           ; 2 uses
  %i.cw = udiv i8 %i.cv, 10
  %i.cx = or disjoint i8 %i.cw, 48                ; 2 uses
  %i.cy = urem i8 %i.cv, 10
  %i.cz = or disjoint i8 %i.cy, 48                ; 2 uses
  %i.da = trunc nuw nsw i32 %.sroa.04.0.i to i8   ; 2 uses
  %i.db = udiv i8 %i.da, 10
  %i.dc = or disjoint i8 %i.db, 48
  %i.dd = urem i8 %i.da, 10
  %i.de = or disjoint i8 %i.dd, 48
  %i.df = icmp eq i32 %storemerge.i, 0
  %i.dg = urem i32 %storemerge.i, 1000000
  %i.dh = icmp eq i32 %i.dg, 0
  %i.di = urem i32 %storemerge.i, 1000
  %i.dj = icmp eq i32 %i.di, 0
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dk = udiv i32 %storemerge.i, 1000
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dl = udiv i32 %storemerge.i, 1000000
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %15 = urem i16 %.lhs.trunc.i29, 100
  %16 = trunc nuw nsw i16 %15 to i8               ; 2 uses
  %17 = udiv i8 %16, 10
  %18 = or disjoint i8 %17, 48
  %19 = urem i8 %16, 10
  %20 = or disjoint i8 %19, 48
  %i.dm = udiv i32 %.sroa.21.0.copyload.i, 1000000000
  %i.dn = add nuw nsw i32 %i.dm, %i.ci
  %i.do = trunc nuw nsw i32 %i.dn to i8           ; 2 uses
  %i.dp = udiv i8 %i.do, 10
  %i.dq = or disjoint i8 %i.dp, 48
  %i.dr = urem i8 %i.do, 10
  %i.ds = or disjoint i8 %i.dr, 48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.dz = load i32, ptr %i.ax, align 4            ; 6 uses
  %.sroa.035.0.copyload.i = load i32, ptr %i.az, align 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.21.0..sroa_idx.i, align 8 ; 2 uses
  %i.ea = icmp ne i32 %i.dz, 0                    ; 16 uses
  %i.eb = trunc i32 %.sroa.035.0.copyload.i to i1 ; 6 uses
  %or.cond.i = select i1 %i.ea, i1 %i.eb, i1 false
  %i.ec = load i64, ptr %0, align 8, !range !37
  %.not.i = icmp eq i64 %i.ec, -1
  %i.ed = sext i32 %i.cf to i64
  %.sroa.057.0.i = select i1 %.not.i, i64 0, i64 %i.ed
  %i.ee = ashr i32 %i.dz, 13                      ; 10 uses
  %i.ef = add nsw i32 %i.ee, -1
  %i.eg = icmp slt i32 %i.ee, 1                   ; 2 uses
  %i.eh = sub nsw i32 1, %i.ee
  %i.ei = udiv i32 %i.eh, 400
  %i.ej = add nuw nsw i32 %i.ei, 1                ; 2 uses
  %i.ek = mul nuw nsw i32 %i.ej, 400
  %.neg.i = mul nsw i32 %i.ej, -146097
  %i.el = lshr i32 %i.dz, 4
  %i.em = and i32 %i.el, 511                      ; 9 uses
  %i.en = zext i32 %.sroa.7.0.copyload.i to i64
  %i.eo = add nuw nsw i32 %i.em, -719163
  %i.ep = sub nsw i64 %i.en, %.sroa.057.0.i
  %.sroa.426.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.445.0..sroa_idx.i127.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.430.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.439.0..sroa_idx.i131.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.434.0..sroa_idx.i133.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.es = urem i32 %.sroa.13.0.copyload.i, 1000000000
  %i.et = zext nneg i32 %i.es to i64
  %.sroa.426.0..sroa_idx.i115.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.445.0..sroa_idx.i116.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.430.0..sroa_idx.i119.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.439.0..sroa_idx.i120.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.434.0..sroa_idx.i122.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ew = urem i32 %.sroa.7.0.copyload.i, 60
  %i.ex = udiv i32 %.sroa.13.0.copyload.i, 1000000000
  %i.ey = add nuw nsw i32 %i.ex, %i.ew
  %i.ez = trunc nuw nsw i32 %i.ey to i8
  %i.fa = udiv i32 %.sroa.7.0.copyload.i, 60
  %i.fb = urem i32 %i.fa, 60
  %i.fc = trunc nuw nsw i32 %i.fb to i8
  %i.fd = udiv i32 %.sroa.7.0.copyload.i, 3600    ; 2 uses
  %i.fe = urem i32 %i.fd, 12                      ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 0
  %i.fg = trunc nuw nsw i32 %i.fe to i8
  %i.fh = select i1 %i.ff, i8 12, i8 %i.fg
  %i.fi = trunc i32 %i.fd to i8
  %i.fj = zext nneg i32 %i.em to i64
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.fm = and i32 %i.dz, 7
  %i.fn = add nuw nsw i32 %i.em, %i.fm
  %.lhs.trunc.i29.a = trunc nuw nsw i32 %i.fn to i16
  %21 = urem i16 %.lhs.trunc.i29.a, 7             ; 5 uses
  %switch.idx.cast.i = trunc nuw nsw i16 %21 to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 49
  %i.fo = trunc i32 %i.dz to i8
  %i.fp = and i8 %i.fo, 15                        ; 4 uses
  %i.fq = trunc nuw nsw i32 %i.em to i16
  %i.fr = add nuw nsw i16 %i.fq, 6
  %.lhs.trunc1.i106.i = sub nuw nsw i16 %i.fr, %21
  %i.fs = udiv i16 %.lhs.trunc1.i106.i, 7
  %i.ft = trunc nuw nsw i16 %i.fs to i8
  %spec.select.i101.i = zext nneg i16 %21 to i32  ; 2 uses
  %i.fu = icmp samesign ult i16 %21, 6
  %i.fv = add nuw nsw i32 %spec.select.i101.i, 7
  %.pn.i.i = select i1 %i.fu, i32 %i.fv, i32 %spec.select.i101.i
  %.sroa.0.0.neg.i.i = add nuw nsw i32 %i.em, 6
  %i.fw = sub nsw i32 %.sroa.0.0.neg.i.i, %.pn.i.i
  %i.fx = trunc nsw i32 %i.fw to i16
  %.lhs.trunc1.i.i = add nsw i16 %i.fx, 6
  %i.fy = sdiv i16 %.lhs.trunc1.i.i, 7
  %i.fz = trunc nuw nsw i16 %i.fy to i8
  %i.ga = lshr i32 %i.dz, 3                       ; 2 uses
  %i.gb = and i32 %i.ga, 1023                     ; 4 uses
  %i.gc = zext nneg i32 %i.gb to i64              ; 4 uses
  %i.gd = icmp samesign ult i32 %i.gb, 733        ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr @46, i64 %i.gc ; 3 uses
  %i.gf = trunc i32 %i.ga to i8
  %i.gg = srem i32 %i.ee, 100                     ; 4 uses
  %i.gh = icmp slt i32 %i.gg, 0
  %i.gi = add nsw i32 %i.gg, 100
  %spec.select.i.i = select i1 %i.gh, i32 %i.gi, i32 %i.gg
  %i.gj = trunc nuw nsw i32 %spec.select.i.i to i8
  %i.gk = sdiv i32 %i.ee, 100
  %.lobit.i.i = ashr i32 %i.gg, 31
  %.sroa.0.0.i.i = add nsw i32 %.lobit.i.i, %i.gk
  %i.gl = trunc i32 %.sroa.0.0.i.i to i8
  %spec.select = select i1 %i.eg, i32 %.neg.i, i32 0
  %i.gm = select i1 %i.eg, i32 %i.ek, i32 0
  %spec.select199 = add nsw i32 %i.ef, %i.gm      ; 2 uses
  %i.gn = sdiv i32 %spec.select199, 100           ; 2 uses
  %i.go = mul nsw i32 %spec.select199, 1461
  %i.gp = ashr i32 %i.go, 2
  %i.gq = ashr i32 %i.gn, 2
  %i.gr = add i32 %i.eo, %spec.select
  %i.gs = sub i32 %i.gr, %i.gn
  %i.gt = add i32 %i.gs, %i.gp
  %narrow.i = add i32 %i.gt, %i.gq
  %i.gu = sext i32 %narrow.i to i64
  %i.gv = mul nsw i64 %i.gu, 86400
  %i.gw = add nsw i64 %i.ep, %i.gv
  %i.gx = insertelement <2 x ptr> poison, ptr %.146.i, i64 0
  %i.gy = insertelement <2 x ptr> %i.gx, ptr %i.bq, i64 1
  %i.gz = shl nuw nsw i16 %21, 3
  %switch.shiftamt = zext nneg i16 %i.gz to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0.0110 = phi ptr [ %.val, %.lr.ph ], [ %i.ha, %.critedge ] ; 9 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 24 ; 2 uses
  %i.hb = load i8, ptr %.sroa.0.0110, align 8, !range !50, !noundef !28
  switch i8 %i.hb, label %default.unreachable308 [
    i8 0, label %bb.fz
    i8 1, label %bb.gb
    i8 2, label %bb.fz
    i8 3, label %bb.gb
    i8 4, label %bb.c
    i8 5, label %bb.ay
    i8 6, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread
  ]

_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread: ; preds = %.critedge, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i, %.split74, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit124.i, %.split73, %.split72, %.split71, %.split70, %.split69, %.split68, %.split, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit219.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit214.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit183.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit209.i, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit224.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i, %bb.b, %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i121.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i114.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit180.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit175.i, %bb.d, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.az, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i, %bb.bk, %bb.dh, %bb.dg, %bb.df, %bb.dc, %bb.bn, %bb.dk, %bb.a, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i
  %i.hc = phi i1 [ true, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i ], [ false, %bb.a ], [ false, %.critedge ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i ], [ true, %.split74 ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit124.i ], [ true, %.split73 ], [ true, %.split72 ], [ true, %.split71 ], [ true, %.split70 ], [ true, %.split69 ], [ true, %.split68 ], [ true, %.split ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit219.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit214.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit183.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit209.i ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit224.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i ], [ true, %bb.b ], [ true, %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i121.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i114.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit180.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit175.i ], [ true, %bb.d ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.az ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i ], [ true, %bb.bk ], [ true, %bb.dh ], [ true, %bb.dg ], [ true, %bb.df ], [ true, %bb.dc ], [ true, %bb.bn ], [ true, %bb.dk ]
  ret i1 %i.hc

default.unreachable308:                           ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit, %bb.ax, %bb.as, %bb.c, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 1
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 2
  %i.hf = load i8, ptr %i.he, align 2, !range !38, !noundef !28 ; 18 uses
  %.val8 = load i8, ptr %i.hd, align 1, !range !1192, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  switch i8 %.val8, label %default.unreachable308 [
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
  br i1 %i.ea, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.e:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.y, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.f:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.z, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.g:                                             ; preds = %bb.c
  br i1 %i.ea, label %.split73, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.h:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.aa, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.i:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.ab, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.j:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.ac, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.k:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.ah, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.l:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.ak, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.m:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.an, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.n:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.ao, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.o:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.ap, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.p:                                             ; preds = %bb.c
  br i1 %i.ea, label %switch.lookup, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.q:                                             ; preds = %bb.c
  br i1 %i.ea, label %switch.lookup.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.r:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.as, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.s:                                             ; preds = %bb.c
  br i1 %i.eb, label %bb.at, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.t:                                             ; preds = %bb.c
  br i1 %i.eb, label %bb.au, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.u:                                             ; preds = %bb.c
  br i1 %i.eb, label %bb.av, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.v:                                             ; preds = %bb.c
  br i1 %i.eb, label %bb.aw, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.w:                                             ; preds = %bb.c
  br i1 %i.eb, label %bb.ax, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.x:                                             ; preds = %bb.c
  br i1 %or.cond.i, label %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.y:                                             ; preds = %bb.e
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.gl, i8 noundef range(i8 0, 3) %i.hf)
  br label %.critedge

bb.z:                                             ; preds = %bb.f
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.gj, i8 noundef range(i8 0, 3) %i.hf)
  br label %.critedge

.split73:                                         ; preds = %bb.g
  %i.hg = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ee, i32 noundef %i.em, i8 noundef %i.fp), !noalias !1194
  %i.hh = ashr i32 %i.hg, 10
  %i.hi = call fastcc noundef zeroext i1 @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric10write_yearNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.hh, i8 noundef range(i8 0, 3) %i.hf) #75, !noalias !1195
  br i1 %i.hi, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.aa:                                            ; preds = %bb.h
  %i.hj = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ee, i32 noundef %i.em, i8 noundef %i.fp), !noalias !1194
  %i.hk = ashr i32 %i.hj, 10                      ; 2 uses
  %i.hl = sdiv i32 %i.hk, 100
  %i.hm = srem i32 %i.hk, 100
  %.lobit.i98.i = ashr i32 %i.hm, 31
  %.sroa.0.0.i99.i = add nsw i32 %.lobit.i98.i, %i.hl
  %i.hn = trunc i32 %.sroa.0.0.i99.i to i8
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.hn, i8 noundef range(i8 0, 3) %i.hf)
  br label %.critedge

bb.ab:                                            ; preds = %bb.i
  %i.ho = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ee, i32 noundef %i.em, i8 noundef %i.fp), !noalias !1194
  %i.hp = ashr i32 %i.ho, 10
  %i.hq = srem i32 %i.hp, 100                     ; 3 uses
  %i.hr = icmp slt i32 %i.hq, 0
  %i.hs = add nsw i32 %i.hq, 100
  %spec.select.i100.i = select i1 %i.hr, i32 %i.hs, i32 %i.hq
  %i.ht = trunc nuw nsw i32 %spec.select.i100.i to i8
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.ht, i8 noundef range(i8 0, 3) %i.hf)
  br label %.critedge

bb.ac:                                            ; preds = %bb.j
  br i1 %i.gd, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.hu = load i8, ptr %i.ge, align 1, !noalias !1194, !noundef !28
  %i.hv = zext i8 %i.hu to i32
  %i.hw = add nuw nsw i32 %i.gb, %i.hv
  %i.hx = lshr i32 %i.hw, 6
  %i.hy = add nsw i32 %i.hx, -1
  %i.hz = udiv i32 %i.hy, 3
  %i.ia = add nuw nsw i32 %i.hz, 49               ; 2 uses
  %i.ib = and i32 %i.ia, 255                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.ic = load i64, ptr %i.bg, align 8, !alias.scope !1198, !noalias !1195, !noundef !28 ; 5 uses
  %i.id = icmp sgt i64 %i.ic, -1
  call void @llvm.assume(i1 %i.id)
  %i.ie = icmp samesign ult i32 %i.ib, 128        ; 2 uses
  %spec.select.i = select i1 %i.ie, i64 1, i64 2  ; 3 uses
  %i.if = load i64, ptr %1, align 8, !range !43, !alias.scope !1199, !noalias !1195, !noundef !28
  %i.ig = sub nsw i64 %i.if, %i.ic
  %i.ih = icmp ugt i64 %spec.select.i, %i.ig
  br i1 %i.ih, label %bb.ae, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i, !prof !44

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ic, i64 noundef %spec.select.i, i64 noundef 1, i64 noundef 1), !noalias !1195
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.ii = load ptr, ptr %i.bh, align 8, !alias.scope !1198, !noalias !1195, !nonnull !28, !noundef !28
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ic ; 2 uses
  %i.ik = trunc i32 %i.ia to i8                   ; 2 uses
  br i1 %i.ie, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i, label %bb.af

bb.af:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.il = and i8 %i.ik, 63
  %i.im = or disjoint i8 %i.il, -128
  %i.in = lshr i32 %i.ib, 6
  %i.io = trunc nuw nsw i32 %i.in to i8
  %i.ip = or disjoint i8 %i.io, -64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  store i8 %i.im, ptr %i.iq, align 1, !noalias !1200
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i: ; preds = %bb.af, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
end_hunk_0
begin_hunk_1_@_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE8write_toNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just:bb.a
    i8 1, label %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i
    i8 2, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i
  ]

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i: ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1213
  store ptr %i.am, ptr %i.al, align 8, !noalias !1213
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i133.i, align 8, !noalias !1213
  %i.jz = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @85, ptr noundef nonnull %i.al), !noalias !1195, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1194
  br i1 %i.jz, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i: ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1213
  store ptr %i.am, ptr %i.aj, align 8, !noalias !1213
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i126.i, align 8, !noalias !1213
  store ptr null, ptr %i.eq, align 8, !noalias !1213
  store i16 9, ptr %.sroa.445.0..sroa_idx.i127.i, align 8, !noalias !1213
  %i.ka = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @394, ptr noundef nonnull %i.aj), !noalias !1195, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1194
  br i1 %i.ka, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i: ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1213
  store ptr %i.am, ptr %i.ak, align 8, !noalias !1213
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i130.i, align 8, !noalias !1213
  store ptr null, ptr %i.er, align 8, !noalias !1213
  store i16 9, ptr %.sroa.439.0..sroa_idx.i131.i, align 8, !noalias !1213
  %i.kb = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @392, ptr noundef nonnull %i.ak), !noalias !1195, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1194
  br i1 %i.kb, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.ay:                                            ; preds = %bb.b
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 1
  %.val9 = load i8, ptr %i.kc, align 1, !range !51, !noundef !28 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.kd = add nsw i8 %.val9, -4
  %i.ke = icmp samesign ugt i8 %.val9, 3
  %narrow.i11 = select i1 %i.ke, i8 %i.kd, i8 19  ; 5 uses
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
  br i1 %.not140.i, label %bb.bm, label %bb.bn

bb.bb:                                            ; preds = %bb.ay
  br i1 %.not140.i, label %bb.bs, label %bb.bn

bb.bc:                                            ; preds = %bb.ay
  br i1 %.not140.i, label %bb.bx, label %bb.bn

bb.bd:                                            ; preds = %bb.ay
  br i1 %.not140.i, label %bb.by, label %bb.bn

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
  %i.kf = load i8, ptr %i.cd, align 1, !noalias !1215, !noundef !28
  %i.kg = zext i8 %i.kf to i32
  %i.kh = add nuw nsw i32 %i.ca, %i.kg
  %i.ki = lshr i32 %i.kh, 6
  %i.kj = add nsw i32 %i.ki, -1                   ; 2 uses
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  %i.kl = icmp ult i32 %i.kj, 12
  br i1 %i.kl, label %bb.bq, label %bb.br

bb.bp:                                            ; preds = %bb.bm
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #74, !noalias !1215
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.km = getelementptr inbounds nuw [16 x i8], ptr @45, i64 %i.kk
  %i.kn = load ptr, ptr %i.km, align 8, !noalias !1215, !nonnull !28, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.ko = load i64, ptr %i.bg, align 8, !alias.scope !1219, !noalias !1220, !noundef !28 ; 3 uses
  %i.kp = load i64, ptr %1, align 8, !range !43, !alias.scope !1219, !noalias !1220, !noundef !28
  %i.kq = sub i64 %i.kp, %i.ko
  %i.kr = icmp ult i64 %i.kq, 3
  br i1 %i.kr, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i: ; preds = %bb.bq
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ko, i64 noundef 3, i64 noundef 1, i64 noundef 1), !noalias !1220
  %i.ks = load i64, ptr %i.bg, align 8, !alias.scope !1221, !noalias !1220, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i, %bb.bq
  %.sink44.i = phi i64 [ %i.ks, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i ], [ %i.ko, %bb.bq ] ; 3 uses
  %i.kt = icmp sgt i64 %.sink44.i, -1
  call void @llvm.assume(i1 %i.kt)
  %i.ku = load ptr, ptr %i.bh, align 8, !alias.scope !1221, !noalias !1220, !nonnull !28, !noundef !28
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sink44.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kv, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.kn, i64 3, i1 false), !noalias !1222
  %i.kw = add nuw i64 %.sink44.i, 3
  store i64 %i.kw, ptr %i.bg, align 8, !alias.scope !1221, !noalias !1220
  br label %.critedge

bb.br:                                            ; preds = %bb.bo
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.kk, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #74, !noalias !1215
  unreachable

bb.bs:                                            ; preds = %bb.bb
  br i1 %i.cc, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.kx = load i8, ptr %i.cd, align 1, !noalias !1215, !noundef !28
  %i.ky = zext i8 %i.kx to i32
  %i.kz = add nuw nsw i32 %i.ca, %i.ky
  %i.la = lshr i32 %i.kz, 6
  %i.lb = add nsw i32 %i.la, -1                   ; 2 uses
  %i.lc = zext i32 %i.lb to i64                   ; 2 uses
  %i.ld = icmp ult i32 %i.lb, 12
  br i1 %i.ld, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #74, !noalias !1215
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.le = getelementptr inbounds nuw [16 x i8], ptr @62, i64 %i.lc ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !1215, !nonnull !28, !noundef !28
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !noalias !1215, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.li = load i64, ptr %i.bg, align 8, !alias.scope !1226, !noalias !1227, !noundef !28 ; 3 uses
  %i.lj = load i64, ptr %1, align 8, !range !43, !alias.scope !1226, !noalias !1227, !noundef !28
  %i.lk = sub i64 %i.lj, %i.li
  %i.ll = icmp ugt i64 %i.lh, %i.lk
  br i1 %i.ll, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit154.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i: ; preds = %bb.bv
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.li, i64 noundef %i.lh, i64 noundef 1, i64 noundef 1), !noalias !1227
  %i.lm = load i64, ptr %i.bg, align 8, !alias.scope !1228, !noalias !1227, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit154.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit154.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i, %bb.bv
  %.sink45.i = phi i64 [ %i.lm, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i ], [ %i.li, %bb.bv ] ; 3 uses
  %i.ln = icmp sgt i64 %.sink45.i, -1
  call void @llvm.assume(i1 %i.ln)
  %i.lo = load ptr, ptr %i.bh, align 8, !alias.scope !1228, !noalias !1227, !nonnull !28, !noundef !28
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %.sink45.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lp, ptr nonnull readonly align 1 %i.lf, i64 %i.lh, i1 false), !noalias !1229
  %i.lq = add i64 %.sink45.i, %i.lh
  store i64 %i.lq, ptr %i.bg, align 8, !alias.scope !1228, !noalias !1227
  br label %.critedge

bb.bw:                                            ; preds = %bb.bt
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.lc, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #74, !noalias !1215
  unreachable

bb.bx:                                            ; preds = %bb.bc
  %i.lr = load ptr, ptr %8, align 8, !noalias !1215, !nonnull !28, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.ls = load i64, ptr %i.bg, align 8, !alias.scope !1233, !noalias !1234, !noundef !28 ; 3 uses
  %i.lt = load i64, ptr %1, align 8, !range !43, !alias.scope !1233, !noalias !1234, !noundef !28
  %i.lu = sub i64 %i.lt, %i.ls
  %i.lv = icmp ult i64 %i.lu, 3
  br i1 %i.lv, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit158.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i: ; preds = %bb.bx
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ls, i64 noundef 3, i64 noundef 1, i64 noundef 1), !noalias !1234
  %i.lw = load i64, ptr %i.bg, align 8, !alias.scope !1235, !noalias !1234, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit158.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit158.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i, %bb.bx
  %.sink46.i = phi i64 [ %i.lw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i ], [ %i.ls, %bb.bx ] ; 3 uses
  %i.lx = icmp sgt i64 %.sink46.i, -1
  call void @llvm.assume(i1 %i.lx)
  %i.ly = load ptr, ptr %i.bh, align 8, !alias.scope !1235, !noalias !1234, !nonnull !28, !noundef !28
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %.sink46.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lz, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.lr, i64 3, i1 false), !noalias !1236
  %i.ma = add nuw i64 %.sink46.i, 3
  store i64 %i.ma, ptr %i.bg, align 8, !alias.scope !1235, !noalias !1234
  br label %.critedge

bb.by:                                            ; preds = %bb.bd
  %i.mb = load ptr, ptr %6, align 8, !noalias !1215, !nonnull !28, !noundef !28
  %i.mc = load i64, ptr %7, align 8, !noalias !1215, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.md = load i64, ptr %i.bg, align 8, !alias.scope !1240, !noalias !1241, !noundef !28 ; 3 uses
  %i.me = load i64, ptr %1, align 8, !range !43, !alias.scope !1240, !noalias !1241, !noundef !28
  %i.mf = sub i64 %i.me, %i.md
  %i.mg = icmp ugt i64 %i.mc, %i.mf
  br i1 %i.mg, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit162.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i: ; preds = %bb.by
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.md, i64 noundef %i.mc, i64 noundef 1, i64 noundef 1), !noalias !1241
  %i.mh = load i64, ptr %i.bg, align 8, !alias.scope !1242, !noalias !1241, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit162.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit162.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i, %bb.by
  %.sink50.i = phi i64 [ %i.mh, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i ], [ %i.md, %bb.by ] ; 3 uses
  %i.mi = icmp sgt i64 %.sink50.i, -1
  call void @llvm.assume(i1 %i.mi)
  %i.mj = load ptr, ptr %i.bh, align 8, !alias.scope !1242, !noalias !1241, !nonnull !28, !noundef !28
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %.sink50.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mk, ptr nonnull readonly align 1 %i.mb, i64 %i.mc, i1 false), !noalias !1243
  %i.ml = add i64 %.sink50.i, %i.mc
  store i64 %i.ml, ptr %i.bg, align 8, !alias.scope !1242, !noalias !1241
  br label %.critedge

bb.bz:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1215
  store i64 0, ptr %i.ai, align 8, !noalias !1215
  store i64 0, ptr %.sroa.078.sroa.3.0..sroa_idx.i, align 8, !noalias !1215
  store <2 x ptr> %i.gy, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1215
  br label %.peel.begin.i

.peel.begin.i:                                    ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i16, %bb.bz
  %.pre.i.i = phi i64 [ %.pre.i.pre.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i16 ], [ 0, %bb.bz ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.mm = trunc nuw i64 %.pre.i.i to i1
  br i1 %i.mm, label %.noexc.peel.i, label %bb.cb

.noexc.peel.i:                                    ; preds = %.peel.begin.i
  %i.mn = call noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCsj6eKBz9Db1c_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.br), !noalias !1215 ; 2 uses
  %.not.i.i.peel.i = icmp eq i32 %i.mn, -1
  br i1 %.not.i.i.peel.i, label %bb.ca, label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1V_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1X_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ENtNtBb_4char11ToLowercaseENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i

bb.ca:                                            ; preds = %.noexc.peel.i
  store i64 0, ptr %i.ai, align 8, !alias.scope !1245, !noalias !1215
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.peel.begin.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %i.mo = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1247, !noalias !1248, !noundef !28 ; 7 uses
  %.not.i5.i.peel.i = icmp eq ptr %i.mo, null
  br i1 %.not.i5.i.peel.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1250
  call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  %i.mp = load ptr, ptr %.sroa.379.0..sroa_idx.i, align 8, !alias.scope !1253, !noalias !1254, !nonnull !28, !noundef !28 ; 4 uses
  %.not.i.i.i.i.peel.i = icmp eq ptr %i.mo, %i.mp
  br i1 %.not.i.i.i.i.peel.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 1 ; 3 uses
  store ptr %i.mq, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1253, !noalias !1254
  %i.mr = load i8, ptr %i.mo, align 1, !noalias !1255, !noundef !28 ; 5 uses
  %i.ms = icmp sgt i8 %i.mr, -1
  br i1 %i.ms, label %bb.ce, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i: ; preds = %bb.cd
  %i.mt = and i8 %i.mr, 31
  %i.mu = zext nneg i8 %i.mt to i32               ; 3 uses
  %i.mv = icmp ne ptr %i.mq, %i.mp
  call void @llvm.assume(i1 %i.mv)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 2 ; 3 uses
  store ptr %i.mw, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1256, !noalias !1254
  %i.mx = load i8, ptr %i.mq, align 1, !noalias !1255, !noundef !28
  %i.my = shl nuw nsw i32 %i.mu, 6
  %i.mz = and i8 %i.mx, 63
  %i.na = zext nneg i8 %i.mz to i32               ; 2 uses
  %i.nb = or disjoint i32 %i.my, %i.na
  %i.nc = icmp samesign ugt i8 %i.mr, -33
  br i1 %i.nc, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i, label %.noexc.i.preheader

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i
  %i.nd = icmp ne ptr %i.mw, %i.mp
  call void @llvm.assume(i1 %i.nd)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mo, i64 3 ; 3 uses
  store ptr %i.ne, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1257, !noalias !1254
  %i.nf = load i8, ptr %i.mw, align 1, !noalias !1255, !noundef !28
  %i.ng = shl nuw nsw i32 %i.na, 6
  %i.nh = and i8 %i.nf, 63
  %i.ni = zext nneg i8 %i.nh to i32
  %i.nj = or disjoint i32 %i.ng, %i.ni            ; 2 uses
  %i.nk = shl nuw nsw i32 %i.mu, 12
  %i.nl = or disjoint i32 %i.nj, %i.nk
  %i.nm = icmp samesign ugt i8 %i.mr, -17
  br i1 %i.nm, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i, label %.noexc.i.preheader

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i
  %i.nn = icmp ne ptr %i.ne, %i.mp
  call void @llvm.assume(i1 %i.nn)
  %i.no = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  store ptr %i.no, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1258, !noalias !1254
  %i.np = load i8, ptr %i.ne, align 1, !noalias !1255, !noundef !28
  %i.nq = shl nuw nsw i32 %i.mu, 18
  %i.nr = and i32 %i.nq, 1835008
  %i.ns = shl nuw nsw i32 %i.nj, 6
  %i.nt = and i8 %i.np, 63
  %i.nu = zext nneg i8 %i.nt to i32
  %i.nv = or disjoint i32 %i.ns, %i.nu
  %i.nw = or disjoint i32 %i.nv, %i.nr
  br label %.noexc.i.preheader

bb.ce:                                            ; preds = %bb.cd
  %i.nx = zext nneg i8 %i.mr to i32
  br label %.noexc.i.preheader

.noexc.i.preheader:                               ; preds = %bb.ce, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i
  %spec.select.i.ph.i.i.i.peel.sink.i.ph = phi i32 [ %i.nb, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i ], [ %i.nw, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i ], [ %i.nl, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i ], [ %i.nx, %bb.ce ]
  br label %.noexc.i

.noexc.i:                                         ; preds = %.noexc.i.backedge, %.noexc.i.preheader
  %spec.select.i.ph.i.i.i.peel.sink.i = phi i32 [ %spec.select.i.ph.i.i.i.peel.sink.i.ph, %.noexc.i.preheader ], [ %spec.select.i.ph.i.i.i.peel.sink.i.be, %.noexc.i.backedge ]
  call void @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11conversions8to_lower(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.j, i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i.i.i.peel.sink.i), !noalias !1215
  %i.ny = load i32, ptr %i.bs, align 8, !range !52, !noalias !1259, !noundef !28
  %i.nz = icmp eq i32 %i.ny, 0
  %i.oa = load i32, ptr %i.bt, align 4, !range !52, !noalias !1259
  %i.ob = icmp eq i32 %i.oa, 0
  %spec.select.i.i.i.i.i.peel.i = select i1 %i.ob, i64 1, i64 2
  %.sroa.4.0.i.i.i.i.i.peel.i = select i1 %i.nz, i64 %spec.select.i.i.i.i.i.peel.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1260
  store i64 1, ptr %i.ai, align 8, !alias.scope !1244, !noalias !1215
  store i64 0, ptr %i.br, align 8, !alias.scope !1244, !noalias !1215
  store i64 %.sroa.4.0.i.i.i.i.i.peel.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i, align 8, !alias.scope !1244, !noalias !1215
  %i.oc = call noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCsj6eKBz9Db1c_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.br), !noalias !1215 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.oc, -1
  br i1 %.not.i.i.i, label %bb.cf, label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1V_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1X_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ENtNtBb_4char11ToLowercaseENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i

bb.cf:                                            ; preds = %.noexc.i
  store i64 0, ptr %i.ai, align 8, !alias.scope !1245, !noalias !1215
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %i.od = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1262, !noalias !1248, !noundef !28 ; 7 uses
  %.not.i5.i.i = icmp eq ptr %i.od, null
  br i1 %.not.i5.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1264
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %i.oe = load ptr, ptr %.sroa.379.0..sroa_idx.i, align 8, !alias.scope !1267, !noalias !1254, !nonnull !28, !noundef !28 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.od, %i.oe
  br i1 %.not.i.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 1 ; 3 uses
  store ptr %i.of, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1267, !noalias !1254
  %i.og = load i8, ptr %i.od, align 1, !noalias !1268, !noundef !28 ; 5 uses
  %i.oh = icmp sgt i8 %i.og, -1
  br i1 %i.oh, label %bb.ci, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i: ; preds = %bb.ch
  %i.oi = and i8 %i.og, 31
  %i.oj = zext nneg i8 %i.oi to i32               ; 3 uses
  %i.ok = icmp ne ptr %i.of, %i.oe
  call void @llvm.assume(i1 %i.ok)
  %i.ol = getelementptr inbounds nuw i8, ptr %i.od, i64 2 ; 3 uses
  store ptr %i.ol, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1269, !noalias !1254
  %i.om = load i8, ptr %i.of, align 1, !noalias !1268, !noundef !28
  %i.on = shl nuw nsw i32 %i.oj, 6
  %i.oo = and i8 %i.om, 63
  %i.op = zext nneg i8 %i.oo to i32               ; 2 uses
  %i.oq = or disjoint i32 %i.on, %i.op
  %i.or = icmp samesign ugt i8 %i.og, -33
  br i1 %i.or, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i, label %.noexc.i.backedge

bb.ci:                                            ; preds = %bb.ch
  %i.os = zext nneg i8 %i.og to i32
  br label %.noexc.i.backedge

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i
  %i.ot = icmp ne ptr %i.ol, %i.oe
  call void @llvm.assume(i1 %i.ot)
  %i.ou = getelementptr inbounds nuw i8, ptr %i.od, i64 3 ; 3 uses
  store ptr %i.ou, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1270, !noalias !1254
  %i.ov = load i8, ptr %i.ol, align 1, !noalias !1268, !noundef !28
  %i.ow = shl nuw nsw i32 %i.op, 6
  %i.ox = and i8 %i.ov, 63
  %i.oy = zext nneg i8 %i.ox to i32
  %i.oz = or disjoint i32 %i.ow, %i.oy            ; 2 uses
  %i.pa = shl nuw nsw i32 %i.oj, 12
  %i.pb = or disjoint i32 %i.oz, %i.pa
  %i.pc = icmp samesign ugt i8 %i.og, -17
  br i1 %i.pc, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i, label %.noexc.i.backedge

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i
  %i.pd = icmp ne ptr %i.ou, %i.oe
  call void @llvm.assume(i1 %i.pd)
end_hunk_1
begin_hunk_2_@_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE8write_toNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just:bb.a
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.sm, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1311
  %i.sp = load i64, ptr %i.bg, align 8, !alias.scope !1312, !noalias !1311, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i190.i, %bb.cy
  %.sink56.i = phi i64 [ %i.sp, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i190.i ], [ %i.sm, %bb.cy ] ; 3 uses
  %i.sq = icmp sgt i64 %.sink56.i, -1
  call void @llvm.assume(i1 %i.sq)
  %i.sr = load ptr, ptr %i.bh, align 8, !alias.scope !1312, !noalias !1311, !nonnull !28, !noundef !28
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 %.sink56.i
  store i8 46, ptr %i.ss, align 1, !noalias !1313
  %i.st = add nuw i64 %.sink56.i, 1
  store i64 %i.st, ptr %i.bg, align 8, !alias.scope !1312, !noalias !1311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1215
  store i32 %i.be, ptr %i.z, align 4, !noalias !1215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1215
  store ptr %i.z, ptr %i.y, align 8, !noalias !1215
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4102.0..sroa_idx.i, align 8, !noalias !1215
  %i.su = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @83, ptr noundef nonnull %i.y), !noalias !1276, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1215
  br i1 %i.su, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.cz:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  %i.sv = load i64, ptr %i.bg, align 8, !alias.scope !1317, !noalias !1318, !noundef !28 ; 3 uses
  %i.sw = load i64, ptr %1, align 8, !range !43, !alias.scope !1317, !noalias !1318, !noundef !28
  %i.sx = icmp eq i64 %i.sw, %i.sv
  br i1 %i.sx, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i198.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i198.i: ; preds = %bb.cz
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.sv, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1318
  %i.sy = load i64, ptr %i.bg, align 8, !alias.scope !1319, !noalias !1318, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i198.i, %bb.cz
  %.sink57.i = phi i64 [ %i.sy, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i198.i ], [ %i.sv, %bb.cz ] ; 3 uses
  %i.sz = icmp sgt i64 %.sink57.i, -1
  call void @llvm.assume(i1 %i.sz)
  %i.ta = load ptr, ptr %i.bh, align 8, !alias.scope !1319, !noalias !1318, !nonnull !28, !noundef !28
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 %.sink57.i
  store i8 46, ptr %i.tb, align 1, !noalias !1320
  %i.tc = add nuw i64 %.sink57.i, 1
  store i64 %i.tc, ptr %i.bg, align 8, !alias.scope !1319, !noalias !1318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1215
  store i32 %i.bc, ptr %i.x, align 4, !noalias !1215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1215
  store ptr %i.x, ptr %i.w, align 8, !noalias !1215
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4106.0..sroa_idx.i, align 8, !noalias !1215
  %i.td = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @84, ptr noundef nonnull %i.w), !noalias !1276, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1215
  br i1 %i.td, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit209.i: ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1215
  store ptr %0, ptr %i.p, align 8, !noalias !1215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1215
  store ptr %i.p, ptr %i.o, align 8, !noalias !1215
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.476.0..sroa_idx.i, align 8, !noalias !1215
  %i.te = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @85, ptr noundef nonnull %i.o), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1215
  br i1 %i.te, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1215
  store i32 %.zext14.i, ptr %i.v, align 4, !noalias !1215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1215
  store ptr %i.v, ptr %i.u, align 8, !noalias !1215
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4110.0..sroa_idx.i, align 8, !noalias !1215
  %i.tf = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @82, ptr noundef nonnull %i.u), !noalias !1276, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1215
  br i1 %i.tf, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit219.i: ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1215
  store i32 %i.be, ptr %i.t, align 4, !noalias !1215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1215
  store ptr %i.t, ptr %i.s, align 8, !noalias !1215
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4114.0..sroa_idx.i, align 8, !noalias !1215
  %i.tg = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @83, ptr noundef nonnull %i.s), !noalias !1276, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1215
  br i1 %i.tg, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit224.i: ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1215
  store i32 %i.bc, ptr %i.r, align 4, !noalias !1215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1215
  store ptr %i.r, ptr %i.q, align 8, !noalias !1215
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4118.0..sroa_idx.i, align 8, !noalias !1215
  %i.th = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @84, ptr noundef nonnull %i.q), !noalias !1276, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1215
  br i1 %i.th, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1215
  br label %.split70

.split72:                                         ; preds = %bb.dh, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1215
  store i32 33620224, ptr %i.l, align 4, !noalias !1215
  %i.ti = call fastcc noundef zeroext i1 @_RINvMs0_NtNtCs2uF6e5yHHeh_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cf), !noalias !1276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1215
  br i1 %i.ti, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

.split71:                                         ; preds = %bb.dh, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1215
  store i32 65536, ptr %i.k, align 4, !noalias !1215
  %i.tj = call fastcc noundef zeroext i1 @_RINvMs0_NtNtCs2uF6e5yHHeh_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cf), !noalias !1276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1215
  br i1 %i.tj, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.de:                                            ; preds = %bb.dc, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1215
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1215
  %i.tk = icmp eq i8 %narrow.i11, 14
  %spec.select.i18 = zext i1 %i.tk to i8
  br label %.split70

bb.dj:                                            ; preds = %bb.dh, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1215
  %i.tl = icmp eq i8 %narrow.i11, 16
  %spec.select147.i = zext i1 %i.tl to i8
  br label %.split69

.split70:                                         ; preds = %bb.di, %bb.dd
  %.sroa.071.0.i = phi i8 [ 0, %bb.dd ], [ %spec.select.i18, %bb.di ]
  store i8 1, ptr %i.dw, align 1, !noalias !1215
  store i8 1, ptr %i.dx, align 1, !noalias !1215
  store i8 %.sroa.071.0.i, ptr %i.m, align 1, !noalias !1215
  store i8 1, ptr %i.dy, align 1, !noalias !1215
  %i.tm = call fastcc noundef zeroext i1 @_RINvMs0_NtNtCs2uF6e5yHHeh_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cf), !noalias !1276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1215
  br i1 %i.tm, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

.split69:                                         ; preds = %bb.dj, %bb.de
  %.sroa.070.0.i = phi i8 [ 0, %bb.de ], [ %spec.select147.i, %bb.dj ]
  store i8 1, ptr %i.dt, align 1, !noalias !1215
  store i8 2, ptr %i.du, align 1, !noalias !1215
  store i8 %.sroa.070.0.i, ptr %i.n, align 1, !noalias !1215
  store i8 1, ptr %i.dv, align 1, !noalias !1215
  %i.tn = call fastcc noundef zeroext i1 @_RINvMs0_NtNtCs2uF6e5yHHeh_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cf), !noalias !1276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1215
  br i1 %i.tn, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.dk:                                            ; preds = %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  br i1 %or.cond.i26, label %bb.dl, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.dl:                                            ; preds = %bb.dk
  %i.to = load ptr, ptr %8, align 8, !noalias !1322, !nonnull !28, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1323), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1324), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1325), !noalias !1276
  %i.tp = load i64, ptr %i.bg, align 8, !alias.scope !1326, !noalias !1327, !noundef !28 ; 4 uses
  %i.tq = load i64, ptr %1, align 8, !range !43, !alias.scope !1326, !noalias !1327, !noundef !28 ; 2 uses
  %i.tr = sub i64 %i.tq, %i.tp
  %i.ts = icmp ult i64 %i.tr, 3
  br i1 %i.ts, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i45, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i45: ; preds = %bb.dl
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.tp, i64 noundef 3, i64 noundef 1, i64 noundef 1), !noalias !1327
  %i.tt = load i64, ptr %i.bg, align 8, !alias.scope !1328, !noalias !1327, !noundef !28 ; 2 uses
  %i.tu = icmp sgt i64 %i.tt, -1
  call void @llvm.assume(i1 %i.tu), !noalias !1276
  %.pre.i46 = load i64, ptr %1, align 8, !range !43, !alias.scope !1329, !noalias !1330
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i35

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %bb.dl
  %i.tv = icmp sgt i64 %i.tp, -1
  call void @llvm.assume(i1 %i.tv), !noalias !1276
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i35

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i35: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i45
  %i.tw = phi i64 [ %.pre.i46, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i45 ], [ %i.tq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ]
  %i.tx = phi i64 [ %i.tt, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i45 ], [ %i.tp, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ] ; 2 uses
  %i.ty = load ptr, ptr %i.bh, align 8, !alias.scope !1328, !noalias !1327, !nonnull !28, !noundef !28 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.tx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tz, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.to, i64 3, i1 false), !noalias !1331
  %i.ua = add nuw i64 %i.tx, 3                    ; 5 uses
  store i64 %i.ua, ptr %i.bg, align 8, !alias.scope !1328, !noalias !1327
  call void @llvm.experimental.noalias.scope.decl(metadata !1332), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1333), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1334), !noalias !1276
  %i.ub = sub i64 %i.tw, %i.ua
  %i.uc = icmp ult i64 %i.ub, 2
  br i1 %i.uc, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i12.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i11.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i12.i: ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i35
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ua, i64 noundef 2, i64 noundef 1, i64 noundef 1), !noalias !1330
  %i.ud = load i64, ptr %i.bg, align 8, !alias.scope !1335, !noalias !1330, !noundef !28 ; 2 uses
  %i.ue = icmp sgt i64 %i.ud, -1
  call void @llvm.assume(i1 %i.ue), !noalias !1276
  %.pre64.i = load ptr, ptr %i.bh, align 8, !alias.scope !1335, !noalias !1330
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit13.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i11.i: ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i35
  %i.uf = icmp sgt i64 %i.ua, -1
  call void @llvm.assume(i1 %i.uf), !noalias !1276
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit13.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit13.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i11.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i12.i
  %i.ug = phi ptr [ %.pre64.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i12.i ], [ %i.ty, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i11.i ] ; 3 uses
  %i.uh = phi i64 [ %i.ud, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i12.i ], [ %i.ua, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i11.i ] ; 4 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.uh
  store i16 8236, ptr %i.ui, align 1, !noalias !1336
  %i.uj = add nuw i64 %i.uh, 2                    ; 9 uses
  store i64 %i.uj, ptr %i.bg, align 8, !alias.scope !1335, !noalias !1330
  br i1 %i.cc, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit13.i
  %i.uk = load i8, ptr %i.cd, align 1, !noalias !1322, !noundef !28
  %i.ul = zext i8 %i.uk to i32                    ; 2 uses
  %i.um = add nuw nsw i32 %i.bz, %i.ul
  %i.un = lshr i32 %i.um, 1
  %i.uo = and i32 %i.un, 31                       ; 3 uses
  %i.up = icmp samesign ult i32 %i.uo, 10
  br i1 %i.up, label %bb.dr, label %bb.do

bb.dn:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit13.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #74, !noalias !1322
  unreachable

bb.do:                                            ; preds = %bb.dm
  %i.uq = trunc nuw nsw i32 %i.uo to i8           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1337), !noalias !1276
  %i.ur = udiv i8 %i.uq, 10
  %i.us = urem i8 %i.uq, 10
  %i.ut = or disjoint i8 %i.ur, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1338), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1339), !noalias !1276
  %i.uu = icmp sgt i64 %i.uj, -1
  call void @llvm.assume(i1 %i.uu), !noalias !1276
  %i.uv = load i64, ptr %1, align 8, !range !43, !alias.scope !1340, !noalias !1341, !noundef !28 ; 2 uses
  %i.uw = icmp eq i64 %i.uv, %i.uj
  br i1 %i.uw, label %bb.dp, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i36, !prof !44

bb.dp:                                            ; preds = %bb.do
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.uj, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre.i.i43 = load i64, ptr %1, align 8, !range !43, !alias.scope !1342, !noalias !1341
  %.pre65.i = load ptr, ptr %i.bh, align 8, !alias.scope !1343, !noalias !1341
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i36

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i36: ; preds = %bb.dp, %bb.do
  %i.ux = phi ptr [ %.pre65.i, %bb.dp ], [ %i.ug, %bb.do ] ; 2 uses
  %i.uy = phi i64 [ %.pre.i.i43, %bb.dp ], [ %i.uv, %bb.do ] ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uj
  store i8 %i.ut, ptr %i.uz, align 1, !noalias !1344
  %i.va = add nuw i64 %i.uh, 3                    ; 3 uses
  store i64 %i.va, ptr %i.bg, align 8, !alias.scope !1343, !noalias !1341
  %i.vb = or disjoint i8 %i.us, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1345), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1346), !noalias !1276
  %i.vc = icmp eq i64 %i.uy, %i.va
  br i1 %i.vc, label %bb.dq, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i, !prof !44

bb.dq:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i36
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.uy, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre4.i.i42 = load ptr, ptr %i.bh, align 8, !alias.scope !1347, !noalias !1341
  br label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i

_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.dq, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i36
  %i.vd = phi ptr [ %.pre4.i.i42, %bb.dq ], [ %i.ux, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i36 ]
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.va
  store i8 %i.vb, ptr %i.ve, align 1, !noalias !1348
  br label %bb.dt

bb.dr:                                            ; preds = %bb.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !1349), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1350), !noalias !1276
  %i.vf = icmp sgt i64 %i.uj, -1
  call void @llvm.assume(i1 %i.vf), !noalias !1276
  %i.vg = load i64, ptr %1, align 8, !range !43, !alias.scope !1351, !noalias !1341, !noundef !28
  %i.vh = icmp eq i64 %i.vg, %i.uj
  br i1 %i.vh, label %bb.ds, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44, !prof !44

bb.ds:                                            ; preds = %bb.dr
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.uj, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre66.i = load ptr, ptr %i.bh, align 8, !alias.scope !1352, !noalias !1341
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44: ; preds = %bb.ds, %bb.dr
  %i.vi = phi ptr [ %.pre66.i, %bb.ds ], [ %i.ug, %bb.dr ]
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 %i.uj
  %i.vk = trunc nuw nsw i32 %i.uo to i8
  %i.vl = or disjoint i8 %i.vk, 48
  store i8 %i.vl, ptr %i.vj, align 1, !noalias !1353
  br label %bb.dt

bb.dt:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i
  %.sink.i37 = phi i64 [ 4, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i ], [ 3, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44 ]
  %i.vm = add nuw i64 %.sink.i37, %i.uh           ; 6 uses
  store i64 %i.vm, ptr %i.bg, align 8, !alias.scope !1321, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1354), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1355), !noalias !1276
  %i.vn = icmp sgt i64 %i.vm, -1
  call void @llvm.assume(i1 %i.vn), !noalias !1276
  %i.vo = load i64, ptr %1, align 8, !range !43, !alias.scope !1356, !noalias !1341, !noundef !28
  %i.vp = icmp eq i64 %i.vo, %i.vm
  br i1 %i.vp, label %bb.du, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit16.i, !prof !44

bb.du:                                            ; preds = %bb.dt
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.vm, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit16.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit16.i: ; preds = %bb.du, %bb.dt
  %i.vq = load ptr, ptr %i.bh, align 8, !alias.scope !1357, !noalias !1341, !nonnull !28, !noundef !28 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.vm
  store i8 32, ptr %i.vr, align 1, !noalias !1358
  %i.vs = add nuw i64 %i.vm, 1                    ; 5 uses
  store i64 %i.vs, ptr %i.bg, align 8, !alias.scope !1357, !noalias !1341
  %i.vt = add nuw nsw i32 %i.ca, %i.ul
  %i.vu = lshr i32 %i.vt, 6
  %i.vv = add nsw i32 %i.vu, -1                   ; 2 uses
  %i.vw = zext i32 %i.vv to i64                   ; 2 uses
  %i.vx = icmp ult i32 %i.vv, 12
  br i1 %i.vx, label %bb.dv, label %bb.dz

bb.dv:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit16.i
  %i.vy = getelementptr inbounds nuw [16 x i8], ptr @45, i64 %i.vw
  %i.vz = load ptr, ptr %i.vy, align 8, !noalias !1322, !nonnull !28, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1359), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1360), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1361), !noalias !1276
  %i.wa = load i64, ptr %1, align 8, !range !43, !alias.scope !1362, !noalias !1363, !noundef !28 ; 2 uses
  %i.wb = sub i64 %i.wa, %i.vs
  %i.wc = icmp ult i64 %i.wb, 3
  br i1 %i.wc, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i19.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i17.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i19.i: ; preds = %bb.dv
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.vs, i64 noundef 3, i64 noundef 1, i64 noundef 1), !noalias !1363
  %i.wd = load i64, ptr %i.bg, align 8, !alias.scope !1364, !noalias !1363, !noundef !28 ; 2 uses
  %i.we = icmp sgt i64 %i.wd, -1
  call void @llvm.assume(i1 %i.we), !noalias !1276
  %.pre67.i = load ptr, ptr %i.bh, align 8, !alias.scope !1364, !noalias !1363
  %.pre68.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1365, !noalias !1341
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit20.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i17.i: ; preds = %bb.dv
  %i.wf = icmp sgt i64 %i.vs, -1
  call void @llvm.assume(i1 %i.wf), !noalias !1276
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit20.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit20.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i17.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i19.i
  %i.wg = phi i64 [ %.pre68.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i19.i ], [ %i.wa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i17.i ] ; 2 uses
  %i.wh = phi ptr [ %.pre67.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i19.i ], [ %i.vq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i17.i ] ; 2 uses
  %i.wi = phi i64 [ %i.wd, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i19.i ], [ %i.vs, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i17.i ] ; 16 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.wi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wj, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.vz, i64 3, i1 false), !noalias !1366
  %i.wk = add nuw nsw i64 %i.wi, 3                ; 3 uses
  store i64 %i.wk, ptr %i.bg, align 8, !alias.scope !1364, !noalias !1363
  call void @llvm.experimental.noalias.scope.decl(metadata !1367), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1368), !noalias !1276
  %i.wl = icmp eq i64 %i.wg, %i.wk
  br i1 %i.wl, label %bb.dw, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit23.i, !prof !44

bb.dw:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit20.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.wg, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre69.i = load ptr, ptr %i.bh, align 8, !alias.scope !1369, !noalias !1341
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit23.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit23.i: ; preds = %bb.dw, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit20.i
  %i.wm = phi ptr [ %i.wh, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit20.i ], [ %.pre69.i, %bb.dw ]
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 %i.wk
  store i8 32, ptr %i.wn, align 1, !noalias !1370
  %i.wo = add nuw nsw i64 %i.wi, 4                ; 4 uses
  store i64 %i.wo, ptr %i.bg, align 8, !alias.scope !1369, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1371), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1372), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1373), !noalias !1276
  %i.wp = load i64, ptr %1, align 8, !range !43, !alias.scope !1374, !noalias !1341, !noundef !28 ; 2 uses
  %i.wq = icmp eq i64 %i.wp, %i.wo
  br i1 %i.wq, label %bb.dx, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i, !prof !44

bb.dx:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit23.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.wo, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre.i26.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1375, !noalias !1341
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i: ; preds = %bb.dx, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit23.i
  %i.wr = phi i64 [ %.pre.i26.i, %bb.dx ], [ %i.wp, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit23.i ] ; 3 uses
  %i.ws = load ptr, ptr %i.bh, align 8, !alias.scope !1376, !noalias !1341, !nonnull !28, !noundef !28 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 %i.wo
  store i8 %12, ptr %i.wt, align 1, !noalias !1377
  %i.wu = add nuw i64 %i.wi, 5                    ; 3 uses
  store i64 %i.wu, ptr %i.bg, align 8, !alias.scope !1376, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1378), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1379), !noalias !1276
  %i.wv = icmp eq i64 %i.wr, %i.wu
  br i1 %i.wv, label %bb.dy, label %bb.ea, !prof !44

bb.dy:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.wr, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre4.i25.i = load ptr, ptr %i.bh, align 8, !alias.scope !1380, !noalias !1341
  %.pre70.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1381, !noalias !1341
  br label %bb.ea

bb.dz:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit16.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.vw, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #74, !noalias !1322
  unreachable

bb.ea:                                            ; preds = %bb.dy, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i
  %i.ww = phi i64 [ %.pre70.i, %bb.dy ], [ %i.wr, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i ] ; 3 uses
  %i.wx = phi ptr [ %.pre4.i25.i, %bb.dy ], [ %i.ws, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i24.i ] ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 %i.wu
  store i8 %14, ptr %i.wy, align 1, !noalias !1382
  %i.wz = add nuw nsw i64 %i.wi, 6                ; 3 uses
  store i64 %i.wz, ptr %i.bg, align 8, !alias.scope !1380, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1383), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1384), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1385), !noalias !1276
  %i.xa = icmp eq i64 %i.ww, %i.wz
  br i1 %i.xa, label %bb.eb, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i28.i, !prof !44

bb.eb:                                            ; preds = %bb.ea
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ww, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre.i31.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1386, !noalias !1341
  %.pre71.i = load ptr, ptr %i.bh, align 8, !alias.scope !1387, !noalias !1341
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i28.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i28.i: ; preds = %bb.eb, %bb.ea
  %i.xb = phi ptr [ %.pre71.i, %bb.eb ], [ %i.wx, %bb.ea ] ; 2 uses
  %i.xc = phi i64 [ %.pre.i31.i, %bb.eb ], [ %i.ww, %bb.ea ] ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.wz
  store i8 %18, ptr %i.xd, align 1, !noalias !1388
  %i.xe = add nuw i64 %i.wi, 7                    ; 3 uses
  store i64 %i.xe, ptr %i.bg, align 8, !alias.scope !1387, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1389), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1390), !noalias !1276
  %i.xf = icmp eq i64 %i.xc, %i.xe
  br i1 %i.xf, label %bb.ec, label %bb.ed, !prof !44

bb.ec:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i28.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.xc, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre4.i30.i = load ptr, ptr %i.bh, align 8, !alias.scope !1391, !noalias !1341
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i28.i
  %i.xg = phi ptr [ %.pre4.i30.i, %bb.ec ], [ %i.xb, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i28.i ]
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xe
  store i8 %20, ptr %i.xh, align 1, !noalias !1392
  %i.xi = add nuw nsw i64 %i.wi, 8                ; 4 uses
  store i64 %i.xi, ptr %i.bg, align 8, !alias.scope !1391, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1393), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1394), !noalias !1276
  %i.xj = load i64, ptr %1, align 8, !range !43, !alias.scope !1395, !noalias !1341, !noundef !28
  %i.xk = icmp eq i64 %i.xj, %i.xi
  br i1 %i.xk, label %bb.ee, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i, !prof !44

bb.ee:                                            ; preds = %bb.ed
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.xi, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i: ; preds = %bb.ee, %bb.ed
  %i.xl = load ptr, ptr %i.bh, align 8, !alias.scope !1396, !noalias !1341, !nonnull !28, !noundef !28 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.xi
  store i8 32, ptr %i.xm, align 1, !noalias !1397
  %i.xn = add nuw i64 %i.wi, 9                    ; 5 uses
  store i64 %i.xn, ptr %i.bg, align 8, !alias.scope !1396, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1398), !noalias !1276
  br i1 %i.cq, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.ef

bb.ef:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1399), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1400), !noalias !1276
  %i.xo = icmp sgt i64 %i.xn, -1
  call void @llvm.assume(i1 %i.xo), !noalias !1276
  %i.xp = load i64, ptr %1, align 8, !range !43, !alias.scope !1401, !noalias !1341, !noundef !28 ; 2 uses
  %i.xq = icmp eq i64 %i.xp, %i.xn
  br i1 %i.xq, label %bb.eg, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i, !prof !44

bb.eg:                                            ; preds = %bb.ef
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.xn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre.i39.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1402, !noalias !1341
  %.pre72.i = load ptr, ptr %i.bh, align 8, !alias.scope !1403, !noalias !1341
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i: ; preds = %bb.eg, %bb.ef
  %i.xr = phi ptr [ %.pre72.i, %bb.eg ], [ %i.xl, %bb.ef ] ; 2 uses
  %i.xs = phi i64 [ %.pre.i39.i, %bb.eg ], [ %i.xp, %bb.ef ] ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xn
  store i8 %i.cs, ptr %i.xt, align 1, !noalias !1404
  %i.xu = add nuw i64 %i.wi, 10                   ; 3 uses
  store i64 %i.xu, ptr %i.bg, align 8, !alias.scope !1403, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1405), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1406), !noalias !1276
  %i.xv = icmp eq i64 %i.xs, %i.xu
  br i1 %i.xv, label %bb.eh, label %bb.ei, !prof !44

bb.eh:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.xs, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre4.i38.i = load ptr, ptr %i.bh, align 8, !alias.scope !1407, !noalias !1341
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i
  %i.xw = phi ptr [ %.pre4.i38.i, %bb.eh ], [ %i.xr, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i ]
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.xu
  store i8 %i.cu, ptr %i.xx, align 1, !noalias !1408
  %i.xy = add nuw nsw i64 %i.wi, 11               ; 4 uses
  store i64 %i.xy, ptr %i.bg, align 8, !alias.scope !1407, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1409), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1410), !noalias !1276
  %i.xz = load i64, ptr %1, align 8, !range !43, !alias.scope !1411, !noalias !1341, !noundef !28 ; 2 uses
  %i.ya = icmp eq i64 %i.xz, %i.xy
  br i1 %i.ya, label %bb.ej, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i, !prof !44

bb.ej:                                            ; preds = %bb.ei
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.xy, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre73.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1412, !noalias !1341
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i: ; preds = %bb.ej, %bb.ei
  %i.yb = phi i64 [ %i.xz, %bb.ei ], [ %.pre73.i, %bb.ej ] ; 3 uses
  %i.yc = load ptr, ptr %i.bh, align 8, !alias.scope !1413, !noalias !1341, !nonnull !28, !noundef !28 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 %i.xy
  store i8 58, ptr %i.yd, align 1, !noalias !1414
  %i.ye = add nuw nsw i64 %i.wi, 12               ; 3 uses
  store i64 %i.ye, ptr %i.bg, align 8, !alias.scope !1413, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1415), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1416), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1417), !noalias !1276
  %i.yf = icmp eq i64 %i.yb, %i.ye
  br i1 %i.yf, label %bb.ek, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i, !prof !44

bb.ek:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.yb, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre.i47.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1418, !noalias !1341
  %.pre74.i = load ptr, ptr %i.bh, align 8, !alias.scope !1419, !noalias !1341
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i: ; preds = %bb.ek, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i
  %i.yg = phi ptr [ %.pre74.i, %bb.ek ], [ %i.yc, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i ] ; 2 uses
  %i.yh = phi i64 [ %.pre.i47.i, %bb.ek ], [ %i.yb, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i ] ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.ye
  store i8 %i.cx, ptr %i.yi, align 1, !noalias !1420
  %i.yj = add nuw i64 %i.wi, 13                   ; 3 uses
  store i64 %i.yj, ptr %i.bg, align 8, !alias.scope !1419, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1421), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1422), !noalias !1276
  %i.yk = icmp eq i64 %i.yh, %i.yj
  br i1 %i.yk, label %bb.el, label %bb.em, !prof !44

bb.el:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.yh, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre4.i46.i = load ptr, ptr %i.bh, align 8, !alias.scope !1423, !noalias !1341
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i
  %i.yl = phi ptr [ %.pre4.i46.i, %bb.el ], [ %i.yg, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i ]
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 %i.yj
  store i8 %i.cz, ptr %i.ym, align 1, !noalias !1424
  %i.yn = add nuw nsw i64 %i.wi, 14               ; 4 uses
  store i64 %i.yn, ptr %i.bg, align 8, !alias.scope !1423, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1425), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1426), !noalias !1276
  %i.yo = load i64, ptr %1, align 8, !range !43, !alias.scope !1427, !noalias !1341, !noundef !28 ; 2 uses
  %i.yp = icmp eq i64 %i.yo, %i.yn
  br i1 %i.yp, label %bb.en, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38, !prof !44

bb.en:                                            ; preds = %bb.em
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.yn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre75.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1428, !noalias !1341
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38: ; preds = %bb.en, %bb.em
  %i.yq = phi i64 [ %i.yo, %bb.em ], [ %.pre75.i, %bb.en ] ; 3 uses
  %i.yr = load ptr, ptr %i.bh, align 8, !alias.scope !1429, !noalias !1341, !nonnull !28, !noundef !28 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.yn
  store i8 58, ptr %i.ys, align 1, !noalias !1430
  %i.yt = add nuw nsw i64 %i.wi, 15               ; 3 uses
  store i64 %i.yt, ptr %i.bg, align 8, !alias.scope !1429, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1431), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1432), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1433), !noalias !1276
  %i.yu = icmp eq i64 %i.yq, %i.yt
  br i1 %i.yu, label %bb.eo, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39, !prof !44

bb.eo:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.yq, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre.i55.i41 = load i64, ptr %1, align 8, !range !43, !alias.scope !1434, !noalias !1341
  %.pre76.i = load ptr, ptr %i.bh, align 8, !alias.scope !1435, !noalias !1341
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39: ; preds = %bb.eo, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38
  %i.yv = phi ptr [ %.pre76.i, %bb.eo ], [ %i.yr, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38 ] ; 2 uses
  %i.yw = phi i64 [ %.pre.i55.i41, %bb.eo ], [ %i.yq, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38 ] ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.yt
  store i8 %i.dq, ptr %i.yx, align 1, !noalias !1436
  %i.yy = add nuw i64 %i.wi, 16                   ; 3 uses
  store i64 %i.yy, ptr %i.bg, align 8, !alias.scope !1435, !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1437), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1438), !noalias !1276
  %i.yz = icmp eq i64 %i.yw, %i.yy
  br i1 %i.yz, label %bb.ep, label %.split68, !prof !44

bb.ep:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.yw, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1341
  %.pre4.i54.i40 = load ptr, ptr %i.bh, align 8, !alias.scope !1439, !noalias !1341
  br label %.split68

.split68:                                         ; preds = %bb.ep, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39
  %i.za = phi ptr [ %.pre4.i54.i40, %bb.ep ], [ %i.yv, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39 ]
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.yy
  store i8 %i.ds, ptr %i.zb, align 1, !noalias !1440
  %i.zc = add nuw i64 %i.wi, 17
  store i64 %i.zc, ptr %i.bg, align 8, !alias.scope !1439, !noalias !1341
  %i.zd = call noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32) #75, !noalias !1341 ; 0 uses
  %i.ze = call fastcc noundef zeroext i1 @_RINvMs0_NtNtCs2uF6e5yHHeh_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) @188, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cf), !noalias !1341
  br i1 %i.ze, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.eq:                                            ; preds = %bb.dg
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1442
  store i32 %i.cg, ptr %i.i, align 4, !noalias !1442
  br i1 %or.cond.i26, label %bb.er, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread.i: ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1442
  store ptr %i.i, ptr %i.h, align 8, !noalias !1442
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1442
  %i.zf = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @189, ptr noundef nonnull %i.h), !noalias !1443, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1442
  br i1 %i.zf, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !1444), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1445), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1446), !noalias !1276
  %i.zg = load i64, ptr %i.bg, align 8, !alias.scope !1447, !noalias !1443, !noundef !28 ; 8 uses
  %i.zh = icmp sgt i64 %i.zg, -1
  call void @llvm.assume(i1 %i.zh), !noalias !1276
  %i.zi = load i64, ptr %1, align 8, !range !43, !alias.scope !1448, !noalias !1443, !noundef !28 ; 2 uses
  %i.zj = icmp eq i64 %i.zi, %i.zg
  br i1 %i.zj, label %bb.es, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i, !prof !44

bb.es:                                            ; preds = %bb.er
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zg, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1443
  %.pre.i.i30 = load i64, ptr %1, align 8, !range !43, !alias.scope !1449, !noalias !1443
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i: ; preds = %bb.es, %bb.er
  %i.zk = phi i64 [ %.pre.i.i30, %bb.es ], [ %i.zi, %bb.er ] ; 2 uses
  %i.zl = load ptr, ptr %i.bh, align 8, !alias.scope !1447, !noalias !1443, !nonnull !28, !noundef !28 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 %i.zg
  store i8 %12, ptr %i.zm, align 1, !noalias !1450
  %i.zn = add nuw nsw i64 %i.zg, 1                ; 3 uses
  store i64 %i.zn, ptr %i.bg, align 8, !alias.scope !1447, !noalias !1443
  call void @llvm.experimental.noalias.scope.decl(metadata !1451), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1452), !noalias !1276
  %i.zo = icmp eq i64 %i.zk, %i.zn
  br i1 %i.zo, label %bb.et, label %bb.ex, !prof !44

bb.et:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zk, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1443
  %.pre4.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !1453, !noalias !1443
  br label %bb.ex

bb.eu:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread.i
  %.pre.i = load i64, ptr %i.bg, align 8, !alias.scope !1454, !noalias !1443
  br label %bb.ev

bb.ev:                                            ; preds = %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i, %bb.eu
  %i.zp = phi i64 [ %i.aar, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i ], [ %.pre.i, %bb.eu ] ; 19 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1455), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1456), !noalias !1276
  %i.zq = icmp sgt i64 %i.zp, -1
  call void @llvm.assume(i1 %i.zq), !noalias !1276
  %i.zr = load i64, ptr %1, align 8, !range !43, !alias.scope !1457, !noalias !1443, !noundef !28
  %i.zs = icmp eq i64 %i.zr, %i.zp
  br i1 %i.zs, label %bb.ew, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27, !prof !44

bb.ew:                                            ; preds = %bb.ev
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zp, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1443
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27: ; preds = %bb.ew, %bb.ev
  %i.zt = load ptr, ptr %i.bh, align 8, !alias.scope !1454, !noalias !1443, !nonnull !28, !noundef !28
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zp
  store i8 45, ptr %i.zu, align 1, !noalias !1458
  %i.zv = add nuw i64 %i.zp, 1                    ; 5 uses
  store i64 %i.zv, ptr %i.bg, align 8, !alias.scope !1454, !noalias !1443
  br i1 %i.cc, label %bb.fb, label %bb.fe

bb.ex:                                            ; preds = %bb.et, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i
  %i.zw = phi ptr [ %.pre4.i.i, %bb.et ], [ %i.zl, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i ]
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.zn
  store i8 %14, ptr %i.zx, align 1, !noalias !1459
  %i.zy = add nuw i64 %i.zg, 2                    ; 5 uses
  store i64 %i.zy, ptr %i.bg, align 8, !alias.scope !1453, !noalias !1443
  %i.zz = load i32, ptr %i.i, align 4, !noalias !1442, !noundef !28
  %i.aaa = srem i32 %i.zz, 100                    ; 2 uses
  %i.aab = trunc nuw nsw i32 %i.aaa to i8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1460), !noalias !1276
  %i.aac = icmp slt i32 %i.aaa, 0
  br i1 %i.aac, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aad = udiv i8 %i.aab, 10
  %i.aae = urem i8 %i.aab, 10
  %i.aaf = or disjoint i8 %i.aad, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1461), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1462), !noalias !1276
  %i.aag = icmp sgt i64 %i.zy, -1
  call void @llvm.assume(i1 %i.aag), !noalias !1276
  %i.aah = load i64, ptr %1, align 8, !range !43, !alias.scope !1463, !noalias !1443, !noundef !28 ; 2 uses
  %i.aai = icmp eq i64 %i.aah, %i.zy
  br i1 %i.aai, label %bb.ez, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i, !prof !44

bb.ez:                                            ; preds = %bb.ey
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zy, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1443
  %.pre.i36.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1464, !noalias !1443
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i: ; preds = %bb.ez, %bb.ey
  %i.aaj = phi i64 [ %.pre.i36.i, %bb.ez ], [ %i.aah, %bb.ey ] ; 2 uses
  %i.aak = load ptr, ptr %i.bh, align 8, !alias.scope !1465, !noalias !1443, !nonnull !28, !noundef !28 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.zy
  store i8 %i.aaf, ptr %i.aal, align 1, !noalias !1466
  %i.aam = add nuw i64 %i.zg, 3                   ; 3 uses
  store i64 %i.aam, ptr %i.bg, align 8, !alias.scope !1465, !noalias !1443
  %i.aan = or disjoint i8 %i.aae, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1467), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1468), !noalias !1276
  %i.aao = icmp eq i64 %i.aaj, %i.aam
  br i1 %i.aao, label %bb.fa, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i, !prof !44

bb.fa:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aaj, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1443
  %.pre4.i35.i = load ptr, ptr %i.bh, align 8, !alias.scope !1469, !noalias !1443
  br label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i

_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i: ; preds = %bb.fa, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i
  %i.aap = phi ptr [ %.pre4.i35.i, %bb.fa ], [ %i.aak, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i ]
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aam
  store i8 %i.aan, ptr %i.aaq, align 1, !noalias !1470
  %i.aar = add nuw i64 %i.zg, 4                   ; 2 uses
  store i64 %i.aar, ptr %i.bg, align 8, !alias.scope !1469, !noalias !1443
  br label %bb.ev

bb.fb:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27
  %i.aas = load i8, ptr %i.cd, align 1, !noalias !1442, !noundef !28 ; 2 uses
  %i.aat = zext i8 %i.aas to i32
  %i.aau = add nuw nsw i32 %i.ca, %i.aat          ; 3 uses
  %i.aav = lshr i32 %i.aau, 6
  %i.aaw = trunc nuw nsw i32 %i.aav to i8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1471), !noalias !1276
  %.cmp.i = icmp samesign ugt i32 %i.aau, 639
  %i.aax = zext i1 %.cmp.i to i8
  %i.aay = or disjoint i8 %i.aax, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1472), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1473), !noalias !1276
  %i.aaz = icmp sgt i64 %i.zv, -1
  call void @llvm.assume(i1 %i.aaz), !noalias !1276
  %i.aba = load i64, ptr %1, align 8, !range !43, !alias.scope !1474, !noalias !1443, !noundef !28 ; 2 uses
  %i.abb = icmp eq i64 %i.aba, %i.zv
  br i1 %i.abb, label %bb.fc, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i, !prof !44

bb.fc:                                            ; preds = %bb.fb
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zv, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1443
  %.pre.i41.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1475, !noalias !1443
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i: ; preds = %bb.fc, %bb.fb
  %i.abc = phi i64 [ %.pre.i41.i, %bb.fc ], [ %i.aba, %bb.fb ] ; 2 uses
  %i.abd = load ptr, ptr %i.bh, align 8, !alias.scope !1476, !noalias !1443, !nonnull !28, !noundef !28 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.zv
  store i8 %i.aay, ptr %i.abe, align 1, !noalias !1477
  %i.abf = add nuw i64 %i.zp, 2                   ; 3 uses
  store i64 %i.abf, ptr %i.bg, align 8, !alias.scope !1476, !noalias !1443
  %.urem.i = add nsw i8 %i.aaw, -10
  %.cmp91.i = icmp samesign ult i32 %i.aau, 640
  %i.abg = select i1 %.cmp91.i, i8 %i.aaw, i8 %.urem.i
  %i.abh = or disjoint i8 %i.abg, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1478), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1479), !noalias !1276
  %i.abi = icmp eq i64 %i.abc, %i.abf
  br i1 %i.abi, label %bb.fd, label %bb.ff, !prof !44

bb.fd:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.abc, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1443
  %.pre4.i40.i = load ptr, ptr %i.bh, align 8, !alias.scope !1480, !noalias !1443
  br label %bb.ff

bb.fe:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #74, !noalias !1443
  unreachable

bb.ff:                                            ; preds = %bb.fd, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i
  %i.abj = phi ptr [ %.pre4.i40.i, %bb.fd ], [ %i.abd, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i ]
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.abf
  store i8 %i.abh, ptr %i.abk, align 1, !noalias !1481
  %i.abl = add nuw nsw i64 %i.zp, 3               ; 4 uses
  store i64 %i.abl, ptr %i.bg, align 8, !alias.scope !1480, !noalias !1443
  call void @llvm.experimental.noalias.scope.decl(metadata !1482), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1483), !noalias !1276
  %i.abm = load i64, ptr %1, align 8, !range !43, !alias.scope !1484, !noalias !1443, !noundef !28
  %i.abn = icmp eq i64 %i.abm, %i.abl
  br i1 %i.abn, label %bb.fg, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i, !prof !44

bb.fg:                                            ; preds = %bb.ff
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.abl, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1443
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i: ; preds = %bb.fg, %bb.ff
  %i.abo = load ptr, ptr %i.bh, align 8, !alias.scope !1485, !noalias !1443, !nonnull !28, !noundef !28
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 %i.abl
  store i8 45, ptr %i.abp, align 1, !noalias !1486
  %i.abq = add nuw nsw i64 %i.zp, 4               ; 4 uses
  store i64 %i.abq, ptr %i.bg, align 8, !alias.scope !1485, !noalias !1443
  %i.abr = add i8 %i.aas, %i.ch
  %i.abs = lshr i8 %i.abr, 1
  %i.abt = and i8 %i.abs, 31                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1487), !noalias !1276
  %i.abu = udiv i8 %i.abt, 10
  %i.abv = urem i8 %i.abt, 10
  %i.abw = or disjoint i8 %i.abu, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1488), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1489), !noalias !1276
  %i.abx = load i64, ptr %1, align 8, !range !43, !alias.scope !1490, !noalias !1443, !noundef !28 ; 2 uses
  %i.aby = icmp eq i64 %i.abx, %i.abq
  br i1 %i.aby, label %bb.fh, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i, !prof !44

bb.fh:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.abq, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1443
  %.pre.i48.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1491, !noalias !1443
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i: ; preds = %bb.fh, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i
  %i.abz = phi i64 [ %.pre.i48.i, %bb.fh ], [ %i.abx, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i ] ; 2 uses
  %i.aca = load ptr, ptr %i.bh, align 8, !alias.scope !1492, !noalias !1443, !nonnull !28, !noundef !28 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 %i.abq
  store i8 %i.abw, ptr %i.acb, align 1, !noalias !1493
  %i.acc = add nuw i64 %i.zp, 5                   ; 3 uses
  store i64 %i.acc, ptr %i.bg, align 8, !alias.scope !1492, !noalias !1443
  %i.acd = or disjoint i8 %i.abv, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1494), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1495), !noalias !1276
  %i.ace = icmp eq i64 %i.abz, %i.acc
  br i1 %i.ace, label %bb.fi, label %bb.fj, !prof !44

bb.fi:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.abz, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1443
  %.pre4.i47.i = load ptr, ptr %i.bh, align 8, !alias.scope !1496, !noalias !1443
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i
  %i.acf = phi ptr [ %.pre4.i47.i, %bb.fi ], [ %i.aca, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i ]
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.acc
  store i8 %i.acd, ptr %i.acg, align 1, !noalias !1497
  %i.ach = add nuw nsw i64 %i.zp, 6               ; 4 uses
  store i64 %i.ach, ptr %i.bg, align 8, !alias.scope !1496, !noalias !1443
  call void @llvm.experimental.noalias.scope.decl(metadata !1498), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1499), !noalias !1276
  %i.aci = load i64, ptr %1, align 8, !range !43, !alias.scope !1500, !noalias !1443, !noundef !28
  %i.acj = icmp eq i64 %i.aci, %i.ach
  br i1 %i.acj, label %bb.fk, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i, !prof !44

bb.fk:                                            ; preds = %bb.fj
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ach, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1443
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i: ; preds = %bb.fk, %bb.fj
  %i.ack = load ptr, ptr %i.bh, align 8, !alias.scope !1501, !noalias !1443, !nonnull !28, !noundef !28
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 %i.ach
  store i8 84, ptr %i.acl, align 1, !noalias !1502
  %i.acm = add nuw i64 %i.zp, 7                   ; 5 uses
  store i64 %i.acm, ptr %i.bg, align 8, !alias.scope !1501, !noalias !1443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1442
  store i32 %storemerge.i, ptr %i.g, align 4, !noalias !1442
  call void @llvm.experimental.noalias.scope.decl(metadata !1503), !noalias !1276
  br i1 %i.cq, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit56.thread.i, label %bb.fl

bb.fl:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1504), !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1505), !noalias !1276
  %i.acn = icmp sgt i64 %i.acm, -1
  call void @llvm.assume(i1 %i.acn), !noalias !1276
  %i.aco = load i64, ptr %1, align 8, !range !43, !alias.scope !1506, !noalias !1443, !noundef !28 ; 2 uses
  %i.acp = icmp eq i64 %i.aco, %i.acm
  br i1 %i.acp, label %bb.fm, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i, !prof !44

bb.fm:                                            ; preds = %bb.fl
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.acm, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1443
  %.pre.i55.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1507, !noalias !1443
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i: ; preds = %bb.fm, %bb.fl
end_hunk_2
