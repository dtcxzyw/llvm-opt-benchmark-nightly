Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionhEECskXtk6F4WjxZ_4just:bb.a
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
  %2 = select i1 %i.bp, ptr getelementptr inbounds nuw (i8, ptr @81, i64 2), ptr getelementptr inbounds nuw (i8, ptr @80, i64 2)
  %.sroa.078.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 80 ; 11 uses
  %.sroa.379.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %.not140.i = icmp ne i32 %i.ay, 0               ; 5 uses
  %i.bu = lshr i32 %i.ay, 4
  %i.bv = and i32 %i.bu, 511
  %i.bw = and i32 %i.ay, 7
  %i.bx = add nuw nsw i32 %i.bv, %i.bw
  %i.by = lshr i32 %i.ay, 3                       ; 3 uses
  %i.bz = and i32 %i.by, 1023                     ; 6 uses
  %i.ca = zext nneg i32 %i.bz to i64              ; 5 uses
  %i.cb = icmp samesign ult i32 %i.bz, 733        ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr @46, i64 %i.ca ; 4 uses
  %or.cond5.i = select i1 %.not140.i, i1 %i.bb, i1 false ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = load i32, ptr %i.cd, align 8            ; 7 uses
  %i.cf = ashr i32 %i.ay, 13                      ; 4 uses
  %or.cond.i26 = icmp ult i32 %i.cf, 10000        ; 2 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cg = trunc i32 %i.by to i8
  %i.ch = urem i32 %.sroa.10.0.copyload.i, 60     ; 2 uses
  %i.ci = udiv i32 %.sroa.10.0.copyload.i, 60
  %i.cj = urem i32 %i.ci, 60
  %i.ck = udiv i32 %.sroa.10.0.copyload.i, 3600
  %i.cl = icmp ugt i32 %.sroa.21.0.copyload.i, 999999999 ; 2 uses
  %i.cm = add i32 %.sroa.21.0.copyload.i, -1000000000
  %storemerge.i = select i1 %i.cl, i32 %i.cm, i32 %.sroa.21.0.copyload.i ; 6 uses
  %i.cn = zext i1 %i.cl to i32
  %.sroa.04.0.i = add nuw nsw i32 %i.ch, %i.cn
  %i.co = trunc i32 %i.ck to i8                   ; 3 uses
  %i.cp = icmp ugt i8 %i.co, 99                   ; 2 uses
  %i.cq = udiv i8 %i.co, 10
  %i.cr = or disjoint i8 %i.cq, 48                ; 2 uses
  %i.cs = urem i8 %i.co, 10
  %i.ct = or disjoint i8 %i.cs, 48                ; 2 uses
  %i.cu = trunc nuw nsw i32 %i.cj to i8           ; 2 uses
  %i.cv = udiv i8 %i.cu, 10
  %i.cw = or disjoint i8 %i.cv, 48                ; 2 uses
  %i.cx = urem i8 %i.cu, 10
  %i.cy = or disjoint i8 %i.cx, 48                ; 2 uses
  %i.cz = trunc nuw nsw i32 %.sroa.04.0.i to i8   ; 2 uses
  %i.da = udiv i8 %i.cz, 10
  %i.db = or disjoint i8 %i.da, 48
  %i.dc = urem i8 %i.cz, 10
  %i.dd = or disjoint i8 %i.dc, 48
  %i.de = icmp eq i32 %storemerge.i, 0
  %i.df = urem i32 %storemerge.i, 1000000
  %i.dg = icmp eq i32 %i.df, 0
  %i.dh = urem i32 %storemerge.i, 1000
  %i.di = icmp eq i32 %i.dh, 0
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dj = udiv i32 %storemerge.i, 1000
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dk = udiv i32 %storemerge.i, 1000000
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dl = udiv i32 %.sroa.21.0.copyload.i, 1000000000
  %i.dm = add nuw nsw i32 %i.dl, %i.ch
  %i.dn = trunc nuw nsw i32 %i.dm to i8           ; 2 uses
  %i.do = udiv i8 %i.dn, 10
  %i.dp = or disjoint i8 %i.do, 48
  %i.dq = urem i8 %i.dn, 10
  %i.dr = or disjoint i8 %i.dq, 48
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.dy = load i32, ptr %i.ax, align 4            ; 6 uses
  %.sroa.035.0.copyload.i = load i32, ptr %i.az, align 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.21.0..sroa_idx.i, align 8 ; 2 uses
  %i.dz = icmp ne i32 %i.dy, 0                    ; 16 uses
  %i.ea = trunc i32 %.sroa.035.0.copyload.i to i1 ; 6 uses
  %or.cond.i = select i1 %i.dz, i1 %i.ea, i1 false
  %i.eb = load i64, ptr %0, align 8, !range !37
  %.not.i = icmp eq i64 %i.eb, -1
  %i.ec = sext i32 %i.ce to i64
  %.sroa.057.0.i = select i1 %.not.i, i64 0, i64 %i.ec
  %i.ed = ashr i32 %i.dy, 13                      ; 10 uses
  %i.ee = add nsw i32 %i.ed, -1
  %i.ef = icmp slt i32 %i.ed, 1                   ; 2 uses
  %i.eg = sub nsw i32 1, %i.ed
  %i.eh = udiv i32 %i.eg, 400
  %i.ei = add nuw nsw i32 %i.eh, 1                ; 2 uses
  %i.ej = mul nuw nsw i32 %i.ei, 400
  %.neg.i = mul nsw i32 %i.ei, -146097
  %i.ek = lshr i32 %i.dy, 4
  %i.el = and i32 %i.ek, 511                      ; 9 uses
  %i.em = zext i32 %.sroa.7.0.copyload.i to i64
  %i.en = add nuw nsw i32 %i.el, -719163
  %i.eo = sub nsw i64 %i.em, %.sroa.057.0.i
  %.sroa.426.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.445.0..sroa_idx.i127.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.430.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.439.0..sroa_idx.i131.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.434.0..sroa_idx.i133.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.er = urem i32 %.sroa.13.0.copyload.i, 1000000000
  %i.es = zext nneg i32 %i.er to i64
  %.sroa.426.0..sroa_idx.i115.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.445.0..sroa_idx.i116.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.430.0..sroa_idx.i119.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.439.0..sroa_idx.i120.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.434.0..sroa_idx.i122.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ev = urem i32 %.sroa.7.0.copyload.i, 60
  %i.ew = udiv i32 %.sroa.13.0.copyload.i, 1000000000
  %i.ex = add nuw nsw i32 %i.ew, %i.ev
  %i.ey = trunc nuw nsw i32 %i.ex to i8
  %i.ez = udiv i32 %.sroa.7.0.copyload.i, 60
  %i.fa = urem i32 %i.ez, 60
  %i.fb = trunc nuw nsw i32 %i.fa to i8
  %i.fc = udiv i32 %.sroa.7.0.copyload.i, 3600    ; 2 uses
  %i.fd = urem i32 %i.fc, 12                      ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 0
  %i.ff = trunc nuw nsw i32 %i.fd to i8
  %i.fg = select i1 %i.fe, i8 12, i8 %i.ff
  %i.fh = trunc i32 %i.fc to i8
  %i.fi = zext nneg i32 %i.el to i64
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.fl = and i32 %i.dy, 7
  %i.fm = add nuw nsw i32 %i.el, %i.fl
  %i.fn = trunc nuw nsw i32 %i.bf to i16
  %i.fo = insertelement <4 x i16> poison, i16 %i.fn, i64 0
  %i.fp = trunc nuw nsw i32 %i.bx to i16
  %i.fq = insertelement <4 x i16> %i.fo, i16 %i.fp, i64 1
  %i.fr = trunc i32 %i.cf to i16
  %i.fs = insertelement <4 x i16> %i.fq, i16 %i.fr, i64 2
  %i.ft = trunc nuw nsw i32 %i.fm to i16
  %i.fu = insertelement <4 x i16> %i.fs, i16 %i.ft, i64 3
  %.lhs.trunc.i29 = trunc nuw nsw i32 %i.cf to i16
  %i.fv = urem <4 x i16> %i.fu, <i16 1000, i16 7, i16 100, i16 7> ; 4 uses
  %i.fw = extractelement <4 x i16> %i.fv, i64 0
  %.zext14.i = zext nneg i16 %i.fw to i32         ; 2 uses
  %i.fx = extractelement <4 x i16> %i.fv, i64 1   ; 2 uses
  %i.fy = icmp samesign ult i16 %i.fx, 6
  %narrow58.i = add nuw nsw i16 %i.fx, 1
  %narrow59.i = select i1 %i.fy, i16 %narrow58.i, i16 0
  %i.fz = zext nneg i16 %narrow59.i to i64        ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr @79, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr @71, i64 %i.fz ; 2 uses
  %i.gd = udiv i16 %.lhs.trunc.i29, 100
  %i.ge = trunc nuw nsw i16 %i.gd to i8           ; 2 uses
  %i.gf = udiv i8 %i.ge, 10
  %i.gg = or disjoint i8 %i.gf, 48                ; 2 uses
  %i.gh = urem i8 %i.ge, 10
  %i.gi = or disjoint i8 %i.gh, 48                ; 2 uses
  %i.gj = bitcast <4 x i16> %i.fv to <8 x i8>
  %i.gk = extractelement <8 x i8> %i.gj, i64 4    ; 2 uses
  %i.gl = udiv i8 %i.gk, 10
  %i.gm = or disjoint i8 %i.gl, 48
  %i.gn = urem i8 %i.gk, 10
  %i.go = or disjoint i8 %i.gn, 48
  %i.gp = extractelement <4 x i16> %i.fv, i64 3   ; 5 uses
  %switch.idx.cast.i = trunc nuw nsw i16 %i.gp to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 49
  %i.gq = trunc i32 %i.dy to i8
  %i.gr = and i8 %i.gq, 15                        ; 4 uses
  %i.gs = trunc nuw nsw i32 %i.el to i16
  %i.gt = add nuw nsw i16 %i.gs, 6
  %.lhs.trunc1.i106.i = sub nuw nsw i16 %i.gt, %i.gp
  %i.gu = udiv i16 %.lhs.trunc1.i106.i, 7
  %i.gv = trunc nuw nsw i16 %i.gu to i8
  %spec.select.i101.i = zext nneg i16 %i.gp to i32 ; 2 uses
  %i.gw = icmp samesign ult i16 %i.gp, 6
  %i.gx = add nuw nsw i32 %spec.select.i101.i, 7
  %.pn.i.i = select i1 %i.gw, i32 %i.gx, i32 %spec.select.i101.i
  %.sroa.0.0.neg.i.i = add nuw nsw i32 %i.el, 6
  %i.gy = sub nsw i32 %.sroa.0.0.neg.i.i, %.pn.i.i
  %i.gz = trunc nsw i32 %i.gy to i16
  %.lhs.trunc1.i.i = add nsw i16 %i.gz, 6
  %i.ha = sdiv i16 %.lhs.trunc1.i.i, 7
  %i.hb = trunc nuw nsw i16 %i.ha to i8
  %i.hc = lshr i32 %i.dy, 3                       ; 2 uses
  %i.hd = and i32 %i.hc, 1023                     ; 4 uses
  %i.he = zext nneg i32 %i.hd to i64              ; 4 uses
  %i.hf = icmp samesign ult i32 %i.hd, 733        ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr @46, i64 %i.he ; 3 uses
  %i.hh = trunc i32 %i.hc to i8
  %i.hi = srem i32 %i.ed, 100                     ; 4 uses
  %i.hj = icmp slt i32 %i.hi, 0
  %i.hk = add nsw i32 %i.hi, 100
  %spec.select.i.i = select i1 %i.hj, i32 %i.hk, i32 %i.hi
  %i.hl = trunc nuw nsw i32 %spec.select.i.i to i8
  %i.hm = sdiv i32 %i.ed, 100
  %.lobit.i.i = ashr i32 %i.hi, 31
  %.sroa.0.0.i.i = add nsw i32 %.lobit.i.i, %i.hm
  %i.hn = trunc i32 %.sroa.0.0.i.i to i8
  %spec.select = select i1 %i.ef, i32 %.neg.i, i32 0
  %i.ho = select i1 %i.ef, i32 %i.ej, i32 0
  %spec.select199 = add nsw i32 %i.ee, %i.ho      ; 2 uses
  %i.hp = sdiv i32 %spec.select199, 100           ; 2 uses
  %i.hq = mul nsw i32 %spec.select199, 1461
  %i.hr = ashr i32 %i.hq, 2
  %i.hs = ashr i32 %i.hp, 2
  %i.ht = add i32 %i.en, %spec.select
  %i.hu = sub i32 %i.ht, %i.hp
  %i.hv = add i32 %i.hu, %i.hr
  %narrow.i = add i32 %i.hv, %i.hs
  %i.hw = sext i32 %narrow.i to i64
  %i.hx = mul nsw i64 %i.hw, 86400
  %i.hy = add nsw i64 %i.eo, %i.hx
  %3 = insertelement <2 x ptr> poison, ptr %.146.i, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %2, i64 1
  %i.hz = shl nuw nsw i16 %i.gp, 3
  %switch.shiftamt = zext nneg i16 %i.hz to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0.0110 = phi ptr [ %.val, %.lr.ph ], [ %i.ia, %.critedge ] ; 9 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 24 ; 2 uses
  %i.ib = load i8, ptr %.sroa.0.0110, align 8, !range !50, !noundef !28
  switch i8 %i.ib, label %default.unreachable308 [
    i8 0, label %bb.fz
    i8 1, label %bb.gb
    i8 2, label %bb.fz
    i8 3, label %bb.gb
    i8 4, label %bb.c
    i8 5, label %bb.ay
    i8 6, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread
  ]

_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread: ; preds = %.critedge, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i, %.split74, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit124.i, %.split73, %.split72, %.split71, %.split70, %.split69, %.split68, %.split, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit219.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit214.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit183.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit209.i, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit224.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i, %bb.b, %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i121.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i114.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit180.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit175.i, %bb.d, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.az, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i, %bb.bk, %bb.dh, %bb.dg, %bb.df, %bb.dc, %bb.bn, %bb.dk, %bb.a, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i
  %i.ic = phi i1 [ true, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i ], [ false, %bb.a ], [ false, %.critedge ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i ], [ true, %.split74 ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit124.i ], [ true, %.split73 ], [ true, %.split72 ], [ true, %.split71 ], [ true, %.split70 ], [ true, %.split69 ], [ true, %.split68 ], [ true, %.split ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit219.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit214.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit183.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit209.i ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit224.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i ], [ true, %bb.b ], [ true, %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i121.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i114.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit180.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit175.i ], [ true, %bb.d ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.az ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i ], [ true, %bb.bk ], [ true, %bb.dh ], [ true, %bb.dg ], [ true, %bb.df ], [ true, %bb.dc ], [ true, %bb.bn ], [ true, %bb.dk ]
  ret i1 %i.ic

default.unreachable308:                           ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit, %bb.ax, %bb.as, %bb.c, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 2
  %i.if = load i8, ptr %i.ie, align 2, !range !38, !noundef !28 ; 18 uses
  %.val8 = load i8, ptr %i.id, align 1, !range !1192, !noundef !28
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
  br i1 %i.dz, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.e:                                             ; preds = %bb.c
  br i1 %i.dz, label %bb.y, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.f:                                             ; preds = %bb.c
  br i1 %i.dz, label %bb.z, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.g:                                             ; preds = %bb.c
  br i1 %i.dz, label %.split73, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.h:                                             ; preds = %bb.c
  br i1 %i.dz, label %bb.aa, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.i:                                             ; preds = %bb.c
  br i1 %i.dz, label %bb.ab, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.j:                                             ; preds = %bb.c
  br i1 %i.dz, label %bb.ac, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.k:                                             ; preds = %bb.c
  br i1 %i.dz, label %bb.ah, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.l:                                             ; preds = %bb.c
  br i1 %i.dz, label %bb.ak, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.m:                                             ; preds = %bb.c
  br i1 %i.dz, label %bb.an, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.n:                                             ; preds = %bb.c
  br i1 %i.dz, label %bb.ao, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.o:                                             ; preds = %bb.c
  br i1 %i.dz, label %bb.ap, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.p:                                             ; preds = %bb.c
  br i1 %i.dz, label %switch.lookup, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.q:                                             ; preds = %bb.c
  br i1 %i.dz, label %switch.lookup.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.r:                                             ; preds = %bb.c
  br i1 %i.dz, label %bb.as, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.s:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.at, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.t:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.au, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.u:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.av, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.v:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.aw, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.w:                                             ; preds = %bb.c
  br i1 %i.ea, label %bb.ax, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.x:                                             ; preds = %bb.c
  br i1 %or.cond.i, label %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.y:                                             ; preds = %bb.e
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.hn, i8 noundef range(i8 0, 3) %i.if)
  br label %.critedge

bb.z:                                             ; preds = %bb.f
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.hl, i8 noundef range(i8 0, 3) %i.if)
  br label %.critedge

.split73:                                         ; preds = %bb.g
  %i.ig = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ed, i32 noundef %i.el, i8 noundef %i.gr), !noalias !1194
  %i.ih = ashr i32 %i.ig, 10
  %i.ii = call fastcc noundef zeroext i1 @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric10write_yearNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.ih, i8 noundef range(i8 0, 3) %i.if) #75, !noalias !1195
  br i1 %i.ii, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.aa:                                            ; preds = %bb.h
  %i.ij = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ed, i32 noundef %i.el, i8 noundef %i.gr), !noalias !1194
  %i.ik = ashr i32 %i.ij, 10                      ; 2 uses
  %i.il = sdiv i32 %i.ik, 100
  %i.im = srem i32 %i.ik, 100
  %.lobit.i98.i = ashr i32 %i.im, 31
  %.sroa.0.0.i99.i = add nsw i32 %.lobit.i98.i, %i.il
  %i.in = trunc i32 %.sroa.0.0.i99.i to i8
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.in, i8 noundef range(i8 0, 3) %i.if)
  br label %.critedge

bb.ab:                                            ; preds = %bb.i
  %i.io = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ed, i32 noundef %i.el, i8 noundef %i.gr), !noalias !1194
  %i.ip = ashr i32 %i.io, 10
  %i.iq = srem i32 %i.ip, 100                     ; 3 uses
  %i.ir = icmp slt i32 %i.iq, 0
  %i.is = add nsw i32 %i.iq, 100
  %spec.select.i100.i = select i1 %i.ir, i32 %i.is, i32 %i.iq
  %i.it = trunc nuw nsw i32 %spec.select.i100.i to i8
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.it, i8 noundef range(i8 0, 3) %i.if)
  br label %.critedge

bb.ac:                                            ; preds = %bb.j
  br i1 %i.hf, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.iu = load i8, ptr %i.hg, align 1, !noalias !1194, !noundef !28
  %i.iv = zext i8 %i.iu to i32
  %i.iw = add nuw nsw i32 %i.hd, %i.iv
  %i.ix = lshr i32 %i.iw, 6
  %i.iy = add nsw i32 %i.ix, -1
  %i.iz = udiv i32 %i.iy, 3
  %i.ja = add nuw nsw i32 %i.iz, 49               ; 2 uses
  %i.jb = and i32 %i.ja, 255                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.jc = load i64, ptr %i.bg, align 8, !alias.scope !1198, !noalias !1195, !noundef !28 ; 5 uses
  %i.jd = icmp sgt i64 %i.jc, -1
  call void @llvm.assume(i1 %i.jd)
  %i.je = icmp samesign ult i32 %i.jb, 128        ; 2 uses
  %spec.select.i = select i1 %i.je, i64 1, i64 2  ; 3 uses
  %i.jf = load i64, ptr %1, align 8, !range !43, !alias.scope !1199, !noalias !1195, !noundef !28
  %i.jg = sub nsw i64 %i.jf, %i.jc
  %i.jh = icmp ugt i64 %spec.select.i, %i.jg
  br i1 %i.jh, label %bb.ae, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i, !prof !44

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jc, i64 noundef %spec.select.i, i64 noundef 1, i64 noundef 1), !noalias !1195
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.ji = load ptr, ptr %i.bh, align 8, !alias.scope !1198, !noalias !1195, !nonnull !28, !noundef !28
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jc ; 2 uses
  %i.jk = trunc i32 %i.ja to i8                   ; 2 uses
  br i1 %i.je, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i, label %bb.af

bb.af:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.jl = and i8 %i.jk, 63
  %i.jm = or disjoint i8 %i.jl, -128
  %i.jn = lshr i32 %i.jb, 6
  %i.jo = trunc nuw nsw i32 %i.jn to i8
  %i.jp = or disjoint i8 %i.jo, -64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 1
  store i8 %i.jm, ptr %i.jq, align 1, !noalias !1200
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i

end_hunk_0
begin_hunk_1_@_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE8write_toNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just:bb.a
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
  br i1 %i.cb, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.da, %bb.bl, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  br i1 %.not.i10, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.dc

bb.bo:                                            ; preds = %bb.bm
  %i.lf = load i8, ptr %i.cc, align 1, !noalias !1215, !noundef !28
  %i.lg = zext i8 %i.lf to i32
  %i.lh = add nuw nsw i32 %i.bz, %i.lg
  %i.li = lshr i32 %i.lh, 6
  %i.lj = add nsw i32 %i.li, -1                   ; 2 uses
  %i.lk = zext i32 %i.lj to i64                   ; 2 uses
  %i.ll = icmp ult i32 %i.lj, 12
  br i1 %i.ll, label %bb.bq, label %bb.br

bb.bp:                                            ; preds = %bb.bm
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ca, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #74, !noalias !1215
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr @45, i64 %i.lk
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !1215, !nonnull !28, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.lo = load i64, ptr %i.bg, align 8, !alias.scope !1219, !noalias !1220, !noundef !28 ; 3 uses
  %i.lp = load i64, ptr %1, align 8, !range !43, !alias.scope !1219, !noalias !1220, !noundef !28
  %i.lq = sub i64 %i.lp, %i.lo
  %i.lr = icmp ult i64 %i.lq, 3
  br i1 %i.lr, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i: ; preds = %bb.bq
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.lo, i64 noundef 3, i64 noundef 1, i64 noundef 1), !noalias !1220
  %i.ls = load i64, ptr %i.bg, align 8, !alias.scope !1221, !noalias !1220, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i, %bb.bq
  %.sink44.i = phi i64 [ %i.ls, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i ], [ %i.lo, %bb.bq ] ; 3 uses
  %i.lt = icmp sgt i64 %.sink44.i, -1
  call void @llvm.assume(i1 %i.lt)
  %i.lu = load ptr, ptr %i.bh, align 8, !alias.scope !1221, !noalias !1220, !nonnull !28, !noundef !28
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %.sink44.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lv, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ln, i64 3, i1 false), !noalias !1222
  %i.lw = add nuw i64 %.sink44.i, 3
  store i64 %i.lw, ptr %i.bg, align 8, !alias.scope !1221, !noalias !1220
  br label %.critedge

bb.br:                                            ; preds = %bb.bo
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.lk, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #74, !noalias !1215
  unreachable

bb.bs:                                            ; preds = %bb.bb
  br i1 %i.cb, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.lx = load i8, ptr %i.cc, align 1, !noalias !1215, !noundef !28
  %i.ly = zext i8 %i.lx to i32
  %i.lz = add nuw nsw i32 %i.bz, %i.ly
  %i.ma = lshr i32 %i.lz, 6
  %i.mb = add nsw i32 %i.ma, -1                   ; 2 uses
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  %i.md = icmp ult i32 %i.mb, 12
  br i1 %i.md, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ca, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #74, !noalias !1215
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.me = getelementptr inbounds nuw [16 x i8], ptr @62, i64 %i.mc ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !noalias !1215, !nonnull !28, !noundef !28
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !noalias !1215, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.mi = load i64, ptr %i.bg, align 8, !alias.scope !1226, !noalias !1227, !noundef !28 ; 3 uses
  %i.mj = load i64, ptr %1, align 8, !range !43, !alias.scope !1226, !noalias !1227, !noundef !28
  %i.mk = sub i64 %i.mj, %i.mi
  %i.ml = icmp ugt i64 %i.mh, %i.mk
  br i1 %i.ml, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit154.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i: ; preds = %bb.bv
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.mi, i64 noundef %i.mh, i64 noundef 1, i64 noundef 1), !noalias !1227
  %i.mm = load i64, ptr %i.bg, align 8, !alias.scope !1228, !noalias !1227, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit154.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit154.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i, %bb.bv
  %.sink45.i = phi i64 [ %i.mm, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i ], [ %i.mi, %bb.bv ] ; 3 uses
  %i.mn = icmp sgt i64 %.sink45.i, -1
  call void @llvm.assume(i1 %i.mn)
  %i.mo = load ptr, ptr %i.bh, align 8, !alias.scope !1228, !noalias !1227, !nonnull !28, !noundef !28
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.sink45.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mp, ptr nonnull readonly align 1 %i.mf, i64 %i.mh, i1 false), !noalias !1229
  %i.mq = add i64 %.sink45.i, %i.mh
  store i64 %i.mq, ptr %i.bg, align 8, !alias.scope !1228, !noalias !1227
  br label %.critedge

bb.bw:                                            ; preds = %bb.bt
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.mc, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #74, !noalias !1215
  unreachable

bb.bx:                                            ; preds = %bb.bc
  %i.mr = load ptr, ptr %i.gc, align 8, !noalias !1215, !nonnull !28, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.ms = load i64, ptr %i.bg, align 8, !alias.scope !1233, !noalias !1234, !noundef !28 ; 3 uses
  %i.mt = load i64, ptr %1, align 8, !range !43, !alias.scope !1233, !noalias !1234, !noundef !28
  %i.mu = sub i64 %i.mt, %i.ms
  %i.mv = icmp ult i64 %i.mu, 3
  br i1 %i.mv, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit158.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i: ; preds = %bb.bx
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ms, i64 noundef 3, i64 noundef 1, i64 noundef 1), !noalias !1234
  %i.mw = load i64, ptr %i.bg, align 8, !alias.scope !1235, !noalias !1234, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit158.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit158.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i, %bb.bx
  %.sink46.i = phi i64 [ %i.mw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i ], [ %i.ms, %bb.bx ] ; 3 uses
  %i.mx = icmp sgt i64 %.sink46.i, -1
  call void @llvm.assume(i1 %i.mx)
  %i.my = load ptr, ptr %i.bh, align 8, !alias.scope !1235, !noalias !1234, !nonnull !28, !noundef !28
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 %.sink46.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.mz, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.mr, i64 3, i1 false), !noalias !1236
  %i.na = add nuw i64 %.sink46.i, 3
  store i64 %i.na, ptr %i.bg, align 8, !alias.scope !1235, !noalias !1234
  br label %.critedge

bb.by:                                            ; preds = %bb.bd
  %i.nb = load ptr, ptr %i.ga, align 8, !noalias !1215, !nonnull !28, !noundef !28
  %i.nc = load i64, ptr %i.gb, align 8, !noalias !1215, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.nd = load i64, ptr %i.bg, align 8, !alias.scope !1240, !noalias !1241, !noundef !28 ; 3 uses
  %i.ne = load i64, ptr %1, align 8, !range !43, !alias.scope !1240, !noalias !1241, !noundef !28
  %i.nf = sub i64 %i.ne, %i.nd
  %i.ng = icmp ugt i64 %i.nc, %i.nf
  br i1 %i.ng, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit162.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i: ; preds = %bb.by
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.nd, i64 noundef %i.nc, i64 noundef 1, i64 noundef 1), !noalias !1241
  %i.nh = load i64, ptr %i.bg, align 8, !alias.scope !1242, !noalias !1241, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit162.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit162.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i, %bb.by
  %.sink50.i = phi i64 [ %i.nh, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i ], [ %i.nd, %bb.by ] ; 3 uses
  %i.ni = icmp sgt i64 %.sink50.i, -1
  call void @llvm.assume(i1 %i.ni)
  %i.nj = load ptr, ptr %i.bh, align 8, !alias.scope !1242, !noalias !1241, !nonnull !28, !noundef !28
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 %.sink50.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nk, ptr nonnull readonly align 1 %i.nb, i64 %i.nc, i1 false), !noalias !1243
  %i.nl = add i64 %.sink50.i, %i.nc
  store i64 %i.nl, ptr %i.bg, align 8, !alias.scope !1242, !noalias !1241
  br label %.critedge

bb.bz:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1215
  store i64 0, ptr %i.ai, align 8, !noalias !1215
  store i64 0, ptr %.sroa.078.sroa.3.0..sroa_idx.i, align 8, !noalias !1215
  store <2 x ptr> %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1215
  br label %.peel.begin.i

.peel.begin.i:                                    ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i16, %bb.bz
  %.pre.i.i = phi i64 [ %.pre.i.pre.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i16 ], [ 0, %bb.bz ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.nm = trunc nuw i64 %.pre.i.i to i1
  br i1 %i.nm, label %.noexc.peel.i, label %bb.cb

.noexc.peel.i:                                    ; preds = %.peel.begin.i
  %i.nn = call noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCsj6eKBz9Db1c_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bq), !noalias !1215 ; 2 uses
  %.not.i.i.peel.i = icmp eq i32 %i.nn, -1
  br i1 %.not.i.i.peel.i, label %bb.ca, label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1V_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1X_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ENtNtBb_4char11ToLowercaseENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i

bb.ca:                                            ; preds = %.noexc.peel.i
  store i64 0, ptr %i.ai, align 8, !alias.scope !1245, !noalias !1215
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.peel.begin.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %i.no = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1247, !noalias !1248, !noundef !28 ; 7 uses
  %.not.i5.i.peel.i = icmp eq ptr %i.no, null
  br i1 %.not.i5.i.peel.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1250
  call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  %i.np = load ptr, ptr %.sroa.379.0..sroa_idx.i, align 8, !alias.scope !1253, !noalias !1254, !nonnull !28, !noundef !28 ; 4 uses
  %.not.i.i.i.i.peel.i = icmp eq ptr %i.no, %i.np
  br i1 %.not.i.i.i.i.peel.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 1 ; 3 uses
  store ptr %i.nq, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1253, !noalias !1254
  %i.nr = load i8, ptr %i.no, align 1, !noalias !1255, !noundef !28 ; 5 uses
  %i.ns = icmp sgt i8 %i.nr, -1
  br i1 %i.ns, label %bb.ce, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i: ; preds = %bb.cd
  %i.nt = and i8 %i.nr, 31
  %i.nu = zext nneg i8 %i.nt to i32               ; 3 uses
  %i.nv = icmp ne ptr %i.nq, %i.np
  call void @llvm.assume(i1 %i.nv)
  %i.nw = getelementptr inbounds nuw i8, ptr %i.no, i64 2 ; 3 uses
  store ptr %i.nw, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1256, !noalias !1254
  %i.nx = load i8, ptr %i.nq, align 1, !noalias !1255, !noundef !28
  %i.ny = shl nuw nsw i32 %i.nu, 6
  %i.nz = and i8 %i.nx, 63
  %i.oa = zext nneg i8 %i.nz to i32               ; 2 uses
  %i.ob = or disjoint i32 %i.ny, %i.oa
  %i.oc = icmp samesign ugt i8 %i.nr, -33
  br i1 %i.oc, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i, label %.noexc.i.preheader

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i
  %i.od = icmp ne ptr %i.nw, %i.np
  call void @llvm.assume(i1 %i.od)
  %i.oe = getelementptr inbounds nuw i8, ptr %i.no, i64 3 ; 3 uses
  store ptr %i.oe, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1257, !noalias !1254
  %i.of = load i8, ptr %i.nw, align 1, !noalias !1255, !noundef !28
  %i.og = shl nuw nsw i32 %i.oa, 6
  %i.oh = and i8 %i.of, 63
  %i.oi = zext nneg i8 %i.oh to i32
  %i.oj = or disjoint i32 %i.og, %i.oi            ; 2 uses
  %i.ok = shl nuw nsw i32 %i.nu, 12
  %i.ol = or disjoint i32 %i.oj, %i.ok
  %i.om = icmp samesign ugt i8 %i.nr, -17
  br i1 %i.om, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i, label %.noexc.i.preheader

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i
  %i.on = icmp ne ptr %i.oe, %i.np
  call void @llvm.assume(i1 %i.on)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  store ptr %i.oo, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1258, !noalias !1254
  %i.op = load i8, ptr %i.oe, align 1, !noalias !1255, !noundef !28
  %i.oq = shl nuw nsw i32 %i.nu, 18
  %i.or = and i32 %i.oq, 1835008
  %i.os = shl nuw nsw i32 %i.oj, 6
  %i.ot = and i8 %i.op, 63
  %i.ou = zext nneg i8 %i.ot to i32
  %i.ov = or disjoint i32 %i.os, %i.ou
  %i.ow = or disjoint i32 %i.ov, %i.or
  br label %.noexc.i.preheader

bb.ce:                                            ; preds = %bb.cd
  %i.ox = zext nneg i8 %i.nr to i32
  br label %.noexc.i.preheader

.noexc.i.preheader:                               ; preds = %bb.ce, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i
  %spec.select.i.ph.i.i.i.peel.sink.i.ph = phi i32 [ %i.ob, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i ], [ %i.ow, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i ], [ %i.ol, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i ], [ %i.ox, %bb.ce ]
  br label %.noexc.i

.noexc.i:                                         ; preds = %.noexc.i.backedge, %.noexc.i.preheader
  %spec.select.i.ph.i.i.i.peel.sink.i = phi i32 [ %spec.select.i.ph.i.i.i.peel.sink.i.ph, %.noexc.i.preheader ], [ %spec.select.i.ph.i.i.i.peel.sink.i.be, %.noexc.i.backedge ]
  call void @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11conversions8to_lower(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.j, i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i.i.i.peel.sink.i), !noalias !1215
  %i.oy = load i32, ptr %i.br, align 8, !range !52, !noalias !1259, !noundef !28
  %i.oz = icmp eq i32 %i.oy, 0
  %i.pa = load i32, ptr %i.bs, align 4, !range !52, !noalias !1259
  %i.pb = icmp eq i32 %i.pa, 0
  %spec.select.i.i.i.i.i.peel.i = select i1 %i.pb, i64 1, i64 2
  %.sroa.4.0.i.i.i.i.i.peel.i = select i1 %i.oz, i64 %spec.select.i.i.i.i.i.peel.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1260
  store i64 1, ptr %i.ai, align 8, !alias.scope !1244, !noalias !1215
  store i64 0, ptr %i.bq, align 8, !alias.scope !1244, !noalias !1215
  store i64 %.sroa.4.0.i.i.i.i.i.peel.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i, align 8, !alias.scope !1244, !noalias !1215
  %i.pc = call noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCsj6eKBz9Db1c_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bq), !noalias !1215 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.pc, -1
  br i1 %.not.i.i.i, label %bb.cf, label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1V_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1X_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ENtNtBb_4char11ToLowercaseENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i

bb.cf:                                            ; preds = %.noexc.i
  store i64 0, ptr %i.ai, align 8, !alias.scope !1245, !noalias !1215
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %i.pd = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1262, !noalias !1248, !noundef !28 ; 7 uses
  %.not.i5.i.i = icmp eq ptr %i.pd, null
  br i1 %.not.i5.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1264
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %i.pe = load ptr, ptr %.sroa.379.0..sroa_idx.i, align 8, !alias.scope !1267, !noalias !1254, !nonnull !28, !noundef !28 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.pd, %i.pe
  br i1 %.not.i.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 1 ; 3 uses
  store ptr %i.pf, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1267, !noalias !1254
  %i.pg = load i8, ptr %i.pd, align 1, !noalias !1268, !noundef !28 ; 5 uses
  %i.ph = icmp sgt i8 %i.pg, -1
  br i1 %i.ph, label %bb.ci, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i: ; preds = %bb.ch
  %i.pi = and i8 %i.pg, 31
  %i.pj = zext nneg i8 %i.pi to i32               ; 3 uses
  %i.pk = icmp ne ptr %i.pf, %i.pe
  call void @llvm.assume(i1 %i.pk)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pd, i64 2 ; 3 uses
  store ptr %i.pl, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1269, !noalias !1254
  %i.pm = load i8, ptr %i.pf, align 1, !noalias !1268, !noundef !28
  %i.pn = shl nuw nsw i32 %i.pj, 6
  %i.po = and i8 %i.pm, 63
  %i.pp = zext nneg i8 %i.po to i32               ; 2 uses
  %i.pq = or disjoint i32 %i.pn, %i.pp
  %i.pr = icmp samesign ugt i8 %i.pg, -33
  br i1 %i.pr, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i, label %.noexc.i.backedge

bb.ci:                                            ; preds = %bb.ch
  %i.ps = zext nneg i8 %i.pg to i32
  br label %.noexc.i.backedge

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i
  %i.pt = icmp ne ptr %i.pl, %i.pe
  call void @llvm.assume(i1 %i.pt)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pd, i64 3 ; 3 uses
  store ptr %i.pu, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1270, !noalias !1254
  %i.pv = load i8, ptr %i.pl, align 1, !noalias !1268, !noundef !28
  %i.pw = shl nuw nsw i32 %i.pp, 6
  %i.px = and i8 %i.pv, 63
  %i.py = zext nneg i8 %i.px to i32
  %i.pz = or disjoint i32 %i.pw, %i.py            ; 2 uses
  %i.qa = shl nuw nsw i32 %i.pj, 12
  %i.qb = or disjoint i32 %i.pz, %i.qa
  %i.qc = icmp samesign ugt i8 %i.pg, -17
  br i1 %i.qc, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i, label %.noexc.i.backedge

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i
  %i.qd = icmp ne ptr %i.pu, %i.pe
  call void @llvm.assume(i1 %i.qd)
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  store ptr %i.qe, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1271, !noalias !1254
  %i.qf = load i8, ptr %i.pu, align 1, !noalias !1268, !noundef !28
  %i.qg = shl nuw nsw i32 %i.pj, 18
  %i.qh = and i32 %i.qg, 1835008
  %i.qi = shl nuw nsw i32 %i.pz, 6
  %i.qj = and i8 %i.qf, 63
  %i.qk = zext nneg i8 %i.qj to i32
  %i.ql = or disjoint i32 %i.qi, %i.qk
  %i.qm = or disjoint i32 %i.ql, %i.qh
  br label %.noexc.i.backedge

.noexc.i.backedge:                                ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i, %bb.ci, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i
  %spec.select.i.ph.i.i.i.peel.sink.i.be = phi i32 [ %i.qb, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i ], [ %i.qm, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i ], [ %i.pq, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i ], [ %i.ps, %bb.ci ]
  br label %.noexc.i, !llvm.loop !819

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.cg, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1264
  br label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i: ; preds = %bb.cf, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.i.i, %bb.cb
  %i.qn = load i64, ptr %.sroa.078.sroa.3.0..sroa_idx.i, align 8, !range !41, !alias.scope !1272, !noalias !1215, !noundef !28
  %i.qo = trunc nuw i64 %i.qn to i1
  br i1 %i.qo, label %.noexc163.i, label %.loopexit.i

.noexc163.i:                                      ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i
  %i.qp = call noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCsj6eKBz9Db1c_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bt), !noalias !1215 ; 2 uses
  %.not.i7.i.i = icmp eq i32 %i.qp, -1
  br i1 %.not.i7.i.i, label %.loopexit.i, label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1V_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1X_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ENtNtBb_4char11ToLowercaseENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i

end_hunk_1
