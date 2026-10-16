Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionhEECskXtk6F4WjxZ_4just:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !707
  store i64 1, ptr %i.a, align 8, !noalias !707
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.d, align 8, !noalias !707
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %2, ptr %i.e, align 8, !noalias !707
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %i.f, align 8, !noalias !707
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !708
  %i.g = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !708 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterEE3newCskXtk6F4WjxZ_4just.exit.i, !prof !26

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #70
          to label %.noexc.i unwind label %bb.c, !noalias !709

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !710
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom14ValueCompleterEL_E9drop_slowCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.e) #73
          to label %.body unwind label %bb.e, !noalias !709

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !709
  unreachable

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterEE3newCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !707
  store ptr %i.g, ptr %i.c, align 8, !noalias !707
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @32, ptr %i.n, align 8, !noalias !707
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) @31, i64 16, i1 false), !noalias !707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !707
  invoke fastcc void @_RNvMNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(16) @31, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterEE3newCskXtk6F4WjxZ_4just.exit.i
  %i.p = load ptr, ptr %i.b, align 8, !noalias !707, !noundef !28 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !711
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !707
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
  %i.bg = urem i16 %.lhs.trunc13.i, 1000
  %.zext14.i = zext nneg i16 %i.bg to i32         ; 2 uses
  %.sroa.4110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 89 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 56 uses
  %.sroa.4106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.4102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bj = icmp eq i32 %i.bc, 0
  %i.bk = urem i32 %i.bc, 1000000
  %i.bl = icmp eq i32 %i.bk, 0
  %i.bm = urem i32 %i.bc, 1000
  %i.bn = icmp eq i32 %i.bm, 0
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bo = udiv i32 %i.bc, 1000
  %.sroa.490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bp = udiv i32 %i.bc, 1000000
  %.sroa.486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bq = icmp ugt i32 %.sroa.10.0.copyload.i, 43199 ; 3 uses
  %.146.i = select i1 %i.bq, ptr @81, ptr @80
  %2 = select i1 %i.bq, ptr getelementptr inbounds nuw (i8, ptr @81, i64 2), ptr getelementptr inbounds nuw (i8, ptr @80, i64 2)
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
  %i.bz = urem i16 %.lhs.trunc9.i, 7              ; 2 uses
  %i.ca = icmp samesign ult i16 %i.bz, 6
  %narrow58.i = add nuw nsw i16 %i.bz, 1
  %narrow59.i = select i1 %i.ca, i16 %narrow58.i, i16 0
  %i.cb = zext nneg i16 %narrow59.i to i64        ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr @79, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr @71, i64 %i.cb ; 2 uses
  %i.cf = lshr i32 %i.ay, 3                       ; 3 uses
  %i.cg = and i32 %i.cf, 1023                     ; 6 uses
  %i.ch = zext nneg i32 %i.cg to i64              ; 5 uses
  %i.ci = icmp samesign ult i32 %i.cg, 733        ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr @46, i64 %i.ch ; 4 uses
  %or.cond5.i = select i1 %.not140.i, i1 %i.bb, i1 false ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = load i32, ptr %i.ck, align 8            ; 7 uses
  %i.cm = ashr i32 %i.ay, 13                      ; 3 uses
  %or.cond.i26 = icmp ult i32 %i.cm, 10000        ; 2 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.lhs.trunc.i29 = trunc nuw nsw i32 %i.cm to i16 ; 2 uses
  %i.cn = udiv i16 %.lhs.trunc.i29, 100
  %i.co = trunc nuw nsw i16 %i.cn to i8           ; 2 uses
  %i.cp = udiv i8 %i.co, 10
  %i.cq = or disjoint i8 %i.cp, 48                ; 2 uses
  %i.cr = urem i8 %i.co, 10
  %i.cs = or disjoint i8 %i.cr, 48                ; 2 uses
  %i.ct = trunc i32 %i.cf to i8
  %i.cu = urem i32 %.sroa.10.0.copyload.i, 60     ; 2 uses
  %i.cv = udiv i32 %.sroa.10.0.copyload.i, 60
  %i.cw = urem i32 %i.cv, 60
  %i.cx = udiv i32 %.sroa.10.0.copyload.i, 3600
  %i.cy = icmp ugt i32 %.sroa.21.0.copyload.i, 999999999 ; 2 uses
  %i.cz = add i32 %.sroa.21.0.copyload.i, -1000000000
  %storemerge.i = select i1 %i.cy, i32 %i.cz, i32 %.sroa.21.0.copyload.i ; 6 uses
  %i.da = zext i1 %i.cy to i32
  %.sroa.04.0.i = add nuw nsw i32 %i.cu, %i.da
  %i.db = trunc i32 %i.cx to i8                   ; 3 uses
  %i.dc = icmp ugt i8 %i.db, 99                   ; 2 uses
  %i.dd = udiv i8 %i.db, 10
  %i.de = or disjoint i8 %i.dd, 48                ; 2 uses
  %i.df = urem i8 %i.db, 10
  %i.dg = or disjoint i8 %i.df, 48                ; 2 uses
  %i.dh = trunc nuw nsw i32 %i.cw to i8           ; 2 uses
  %i.di = udiv i8 %i.dh, 10
  %i.dj = or disjoint i8 %i.di, 48                ; 2 uses
  %i.dk = urem i8 %i.dh, 10
  %i.dl = or disjoint i8 %i.dk, 48                ; 2 uses
  %i.dm = trunc nuw nsw i32 %.sroa.04.0.i to i8   ; 2 uses
  %i.dn = udiv i8 %i.dm, 10
  %i.do = or disjoint i8 %i.dn, 48
  %i.dp = urem i8 %i.dm, 10
  %i.dq = or disjoint i8 %i.dp, 48
  %i.dr = icmp eq i32 %storemerge.i, 0
  %i.ds = urem i32 %storemerge.i, 1000000
  %i.dt = icmp eq i32 %i.ds, 0
  %i.du = urem i32 %storemerge.i, 1000
  %i.dv = icmp eq i32 %i.du, 0
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dw = udiv i32 %storemerge.i, 1000
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dx = udiv i32 %storemerge.i, 1000000
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dy = urem i16 %.lhs.trunc.i29, 100
  %i.dz = trunc nuw nsw i16 %i.dy to i8           ; 2 uses
  %i.ea = udiv i8 %i.dz, 10
  %i.eb = or disjoint i8 %i.ea, 48
  %i.ec = urem i8 %i.dz, 10
  %i.ed = or disjoint i8 %i.ec, 48
  %i.ee = udiv i32 %.sroa.21.0.copyload.i, 1000000000
  %i.ef = add nuw nsw i32 %i.ee, %i.cu
  %i.eg = trunc nuw nsw i32 %i.ef to i8           ; 2 uses
  %i.eh = udiv i8 %i.eg, 10
  %i.ei = or disjoint i8 %i.eh, 48
  %i.ej = urem i8 %i.eg, 10
  %i.ek = or disjoint i8 %i.ej, 48
  %i.el = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.er = load i32, ptr %i.ax, align 4            ; 6 uses
  %.sroa.035.0.copyload.i = load i32, ptr %i.az, align 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.21.0..sroa_idx.i, align 8 ; 2 uses
  %i.es = icmp ne i32 %i.er, 0                    ; 16 uses
  %i.et = trunc i32 %.sroa.035.0.copyload.i to i1 ; 6 uses
  %or.cond.i = select i1 %i.es, i1 %i.et, i1 false
  %i.eu = load i64, ptr %0, align 8, !range !37
  %.not.i = icmp eq i64 %i.eu, -1
  %i.ev = sext i32 %i.cl to i64
  %.sroa.057.0.i = select i1 %.not.i, i64 0, i64 %i.ev
  %i.ew = ashr i32 %i.er, 13                      ; 10 uses
  %i.ex = add nsw i32 %i.ew, -1
  %i.ey = icmp slt i32 %i.ew, 1                   ; 2 uses
  %i.ez = sub nsw i32 1, %i.ew
  %i.fa = udiv i32 %i.ez, 400
  %i.fb = add nuw nsw i32 %i.fa, 1                ; 2 uses
  %i.fc = mul nuw nsw i32 %i.fb, 400
  %.neg.i = mul nsw i32 %i.fb, -146097
  %i.fd = lshr i32 %i.er, 4
  %i.fe = and i32 %i.fd, 511                      ; 9 uses
  %i.ff = zext i32 %.sroa.7.0.copyload.i to i64
  %i.fg = add nuw nsw i32 %i.fe, -719163
  %i.fh = sub nsw i64 %i.ff, %.sroa.057.0.i
  %.sroa.426.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.445.0..sroa_idx.i127.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.430.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.439.0..sroa_idx.i131.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.434.0..sroa_idx.i133.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.fk = urem i32 %.sroa.13.0.copyload.i, 1000000000
  %i.fl = zext nneg i32 %i.fk to i64
  %.sroa.426.0..sroa_idx.i115.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.445.0..sroa_idx.i116.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.430.0..sroa_idx.i119.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.439.0..sroa_idx.i120.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.434.0..sroa_idx.i122.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.fo = urem i32 %.sroa.7.0.copyload.i, 60
  %i.fp = udiv i32 %.sroa.13.0.copyload.i, 1000000000
  %i.fq = add nuw nsw i32 %i.fp, %i.fo
  %i.fr = trunc nuw nsw i32 %i.fq to i8
  %i.fs = udiv i32 %.sroa.7.0.copyload.i, 60
  %i.ft = urem i32 %i.fs, 60
  %i.fu = trunc nuw nsw i32 %i.ft to i8
  %i.fv = udiv i32 %.sroa.7.0.copyload.i, 3600    ; 2 uses
  %i.fw = urem i32 %i.fv, 12                      ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 0
  %i.fy = trunc nuw nsw i32 %i.fw to i8
  %i.fz = select i1 %i.fx, i8 12, i8 %i.fy
  %i.ga = trunc i32 %i.fv to i8
  %i.gb = zext nneg i32 %i.fe to i64
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ge = and i32 %i.er, 7
  %i.gf = add nuw nsw i32 %i.fe, %i.ge
  %.lhs.trunc6.i = trunc nuw nsw i32 %i.gf to i16
  %i.gg = urem i16 %.lhs.trunc6.i, 7              ; 5 uses
  %switch.idx.cast.i = trunc nuw nsw i16 %i.gg to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 49
  %i.gh = trunc i32 %i.er to i8
  %i.gi = and i8 %i.gh, 15                        ; 4 uses
  %i.gj = trunc nuw nsw i32 %i.fe to i16
  %i.gk = add nuw nsw i16 %i.gj, 6
  %.lhs.trunc1.i106.i = sub nuw nsw i16 %i.gk, %i.gg
  %i.gl = udiv i16 %.lhs.trunc1.i106.i, 7
  %i.gm = trunc nuw nsw i16 %i.gl to i8
  %spec.select.i101.i = zext nneg i16 %i.gg to i32 ; 2 uses
  %i.gn = icmp samesign ult i16 %i.gg, 6
  %i.go = add nuw nsw i32 %spec.select.i101.i, 7
  %.pn.i.i = select i1 %i.gn, i32 %i.go, i32 %spec.select.i101.i
  %.sroa.0.0.neg.i.i = add nuw nsw i32 %i.fe, 6
  %i.gp = sub nsw i32 %.sroa.0.0.neg.i.i, %.pn.i.i
  %i.gq = trunc nsw i32 %i.gp to i16
  %.lhs.trunc1.i.i = add nsw i16 %i.gq, 6
  %i.gr = sdiv i16 %.lhs.trunc1.i.i, 7
  %i.gs = trunc nuw nsw i16 %i.gr to i8
  %i.gt = lshr i32 %i.er, 3                       ; 2 uses
  %i.gu = and i32 %i.gt, 1023                     ; 4 uses
  %i.gv = zext nneg i32 %i.gu to i64              ; 4 uses
  %i.gw = icmp samesign ult i32 %i.gu, 733        ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr @46, i64 %i.gv ; 3 uses
  %i.gy = trunc i32 %i.gt to i8
  %i.gz = srem i32 %i.ew, 100                     ; 4 uses
  %i.ha = icmp slt i32 %i.gz, 0
  %i.hb = add nsw i32 %i.gz, 100
  %spec.select.i.i = select i1 %i.ha, i32 %i.hb, i32 %i.gz
  %i.hc = trunc nuw nsw i32 %spec.select.i.i to i8
  %i.hd = sdiv i32 %i.ew, 100
  %.lobit.i.i = ashr i32 %i.gz, 31
  %.sroa.0.0.i.i = add nsw i32 %.lobit.i.i, %i.hd
  %i.he = trunc i32 %.sroa.0.0.i.i to i8
  %spec.select = select i1 %i.ey, i32 %.neg.i, i32 0
  %i.hf = select i1 %i.ey, i32 %i.fc, i32 0
  %spec.select199 = add nsw i32 %i.ex, %i.hf      ; 2 uses
  %i.hg = sdiv i32 %spec.select199, 100           ; 2 uses
  %i.hh = mul nsw i32 %spec.select199, 1461
  %i.hi = ashr i32 %i.hh, 2
  %i.hj = ashr i32 %i.hg, 2
  %i.hk = add i32 %i.fg, %spec.select
  %i.hl = sub i32 %i.hk, %i.hg
  %i.hm = add i32 %i.hl, %i.hi
  %narrow.i = add i32 %i.hm, %i.hj
  %i.hn = sext i32 %narrow.i to i64
  %i.ho = mul nsw i64 %i.hn, 86400
  %i.hp = add nsw i64 %i.fh, %i.ho
  %3 = insertelement <2 x ptr> poison, ptr %.146.i, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %2, i64 1
  %i.hq = shl nuw nsw i16 %i.gg, 3
  %switch.shiftamt = zext nneg i16 %i.hq to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0.0110 = phi ptr [ %.val, %.lr.ph ], [ %i.hr, %.critedge ] ; 9 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 24 ; 2 uses
  %i.hs = load i8, ptr %.sroa.0.0110, align 8, !range !50, !noundef !28
  switch i8 %i.hs, label %default.unreachable308 [
    i8 0, label %bb.fz
    i8 1, label %bb.gb
    i8 2, label %bb.fz
    i8 3, label %bb.gb
    i8 4, label %bb.c
    i8 5, label %bb.ay
    i8 6, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread
  ]

_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread: ; preds = %.critedge, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i, %.split74, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit124.i, %.split73, %.split72, %.split71, %.split70, %.split69, %.split68, %.split, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit219.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit214.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit183.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit209.i, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit224.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i, %bb.b, %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i121.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i114.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit180.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit175.i, %bb.d, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.az, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i, %bb.bk, %bb.dh, %bb.dg, %bb.df, %bb.dc, %bb.bn, %bb.dk, %bb.a, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i
  %i.ht = phi i1 [ true, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i ], [ false, %bb.a ], [ false, %.critedge ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i ], [ true, %.split74 ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit124.i ], [ true, %.split73 ], [ true, %.split72 ], [ true, %.split71 ], [ true, %.split70 ], [ true, %.split69 ], [ true, %.split68 ], [ true, %.split ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit219.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit214.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit183.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit209.i ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit224.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i ], [ true, %bb.b ], [ true, %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i121.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i114.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit180.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit175.i ], [ true, %bb.d ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.az ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i ], [ true, %bb.bk ], [ true, %bb.dh ], [ true, %bb.dg ], [ true, %bb.df ], [ true, %bb.dc ], [ true, %bb.bn ], [ true, %bb.dk ]
  ret i1 %i.ht

default.unreachable308:                           ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit, %bb.ax, %bb.as, %bb.c, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 2
  %i.hw = load i8, ptr %i.hv, align 2, !range !38, !noundef !28 ; 18 uses
  %.val8 = load i8, ptr %i.hu, align 1, !range !1185, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
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
  br i1 %i.es, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.e:                                             ; preds = %bb.c
  br i1 %i.es, label %bb.y, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.f:                                             ; preds = %bb.c
  br i1 %i.es, label %bb.z, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.g:                                             ; preds = %bb.c
  br i1 %i.es, label %.split73, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.h:                                             ; preds = %bb.c
  br i1 %i.es, label %bb.aa, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.i:                                             ; preds = %bb.c
  br i1 %i.es, label %bb.ab, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.j:                                             ; preds = %bb.c
  br i1 %i.es, label %bb.ac, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.k:                                             ; preds = %bb.c
  br i1 %i.es, label %bb.ah, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.l:                                             ; preds = %bb.c
  br i1 %i.es, label %bb.ak, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.m:                                             ; preds = %bb.c
  br i1 %i.es, label %bb.an, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.n:                                             ; preds = %bb.c
  br i1 %i.es, label %bb.ao, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.o:                                             ; preds = %bb.c
  br i1 %i.es, label %bb.ap, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.p:                                             ; preds = %bb.c
  br i1 %i.es, label %switch.lookup, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.q:                                             ; preds = %bb.c
  br i1 %i.es, label %switch.lookup.i, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.r:                                             ; preds = %bb.c
  br i1 %i.es, label %bb.as, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.s:                                             ; preds = %bb.c
  br i1 %i.et, label %bb.at, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.t:                                             ; preds = %bb.c
  br i1 %i.et, label %bb.au, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.u:                                             ; preds = %bb.c
  br i1 %i.et, label %bb.av, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.v:                                             ; preds = %bb.c
  br i1 %i.et, label %bb.aw, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.w:                                             ; preds = %bb.c
  br i1 %i.et, label %bb.ax, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.x:                                             ; preds = %bb.c
  br i1 %or.cond.i, label %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.y:                                             ; preds = %bb.e
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.he, i8 noundef range(i8 0, 3) %i.hw)
  br label %.critedge

bb.z:                                             ; preds = %bb.f
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.hc, i8 noundef range(i8 0, 3) %i.hw)
  br label %.critedge

.split73:                                         ; preds = %bb.g
  %i.hx = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ew, i32 noundef %i.fe, i8 noundef %i.gi), !noalias !1187
  %i.hy = ashr i32 %i.hx, 10
  %i.hz = call fastcc noundef zeroext i1 @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric10write_yearNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.hy, i8 noundef range(i8 0, 3) %i.hw) #75, !noalias !1188
  br i1 %i.hz, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.aa:                                            ; preds = %bb.h
  %i.ia = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ew, i32 noundef %i.fe, i8 noundef %i.gi), !noalias !1187
  %i.ib = ashr i32 %i.ia, 10                      ; 2 uses
  %i.ic = sdiv i32 %i.ib, 100
  %i.id = srem i32 %i.ib, 100
  %.lobit.i98.i = ashr i32 %i.id, 31
  %.sroa.0.0.i99.i = add nsw i32 %.lobit.i98.i, %i.ic
  %i.ie = trunc i32 %.sroa.0.0.i99.i to i8
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.ie, i8 noundef range(i8 0, 3) %i.hw)
  br label %.critedge

bb.ab:                                            ; preds = %bb.i
  %i.if = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ew, i32 noundef %i.fe, i8 noundef %i.gi), !noalias !1187
  %i.ig = ashr i32 %i.if, 10
  %i.ih = srem i32 %i.ig, 100                     ; 3 uses
  %i.ii = icmp slt i32 %i.ih, 0
  %i.ij = add nsw i32 %i.ih, 100
  %spec.select.i100.i = select i1 %i.ii, i32 %i.ij, i32 %i.ih
  %i.ik = trunc nuw nsw i32 %spec.select.i100.i to i8
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.ik, i8 noundef range(i8 0, 3) %i.hw)
  br label %.critedge

bb.ac:                                            ; preds = %bb.j
  br i1 %i.gw, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.il = load i8, ptr %i.gx, align 1, !noalias !1187, !noundef !28
  %i.im = zext i8 %i.il to i32
  %i.in = add nuw nsw i32 %i.gu, %i.im
  %i.io = lshr i32 %i.in, 6
  %i.ip = add nsw i32 %i.io, -1
  %i.iq = udiv i32 %i.ip, 3
  %i.ir = add nuw nsw i32 %i.iq, 49               ; 2 uses
  %i.is = and i32 %i.ir, 255                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  %i.it = load i64, ptr %i.bh, align 8, !alias.scope !1191, !noundef !28 ; 5 uses
  %i.iu = icmp sgt i64 %i.it, -1
  call void @llvm.assume(i1 %i.iu)
  %i.iv = icmp samesign ult i32 %i.is, 128        ; 2 uses
  %spec.select.i = select i1 %i.iv, i64 1, i64 2  ; 3 uses
  %i.iw = load i64, ptr %1, align 8, !range !43, !alias.scope !1192, !noundef !28
  %i.ix = sub nsw i64 %i.iw, %i.it
  %i.iy = icmp ugt i64 %spec.select.i, %i.ix
  br i1 %i.iy, label %bb.ae, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i, !prof !44

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.it, i64 noundef %spec.select.i, i64 noundef 1, i64 noundef 1), !noalias !1188
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.iz = load ptr, ptr %i.bi, align 8, !alias.scope !1191, !nonnull !28, !noundef !28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.it ; 2 uses
  %i.jb = trunc i32 %i.ir to i8                   ; 2 uses
  br i1 %i.iv, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i, label %bb.af

bb.af:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.jc = and i8 %i.jb, 63
  %i.jd = or disjoint i8 %i.jc, -128
  %i.je = lshr i32 %i.is, 6
  %i.jf = trunc nuw nsw i32 %i.je to i8
  %i.jg = or disjoint i8 %i.jf, -64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  store i8 %i.jd, ptr %i.jh, align 1, !noalias !1193
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
  br i1 %i.ci, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.da, %bb.bl, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  br i1 %.not.i10, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %bb.dc

bb.bo:                                            ; preds = %bb.bm
  %i.kw = load i8, ptr %i.cj, align 1, !noalias !1208, !noundef !28
  %i.kx = zext i8 %i.kw to i32
  %i.ky = add nuw nsw i32 %i.cg, %i.kx
  %i.kz = lshr i32 %i.ky, 6
  %i.la = add nsw i32 %i.kz, -1                   ; 2 uses
  %i.lb = zext i32 %i.la to i64                   ; 2 uses
  %i.lc = icmp ult i32 %i.la, 12
  br i1 %i.lc, label %bb.bq, label %bb.br

bb.bp:                                            ; preds = %bb.bm
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #74, !noalias !1208
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr @45, i64 %i.lb
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !1208, !nonnull !28, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.lf = load i64, ptr %i.bh, align 8, !alias.scope !1212, !noundef !28 ; 3 uses
  %i.lg = load i64, ptr %1, align 8, !range !43, !alias.scope !1212, !noundef !28
  %i.lh = sub i64 %i.lg, %i.lf
  %i.li = icmp ult i64 %i.lh, 3
  br i1 %i.li, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i: ; preds = %bb.bq
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.lf, i64 noundef 3, i64 noundef 1, i64 noundef 1), !noalias !1213
  %i.lj = load i64, ptr %i.bh, align 8, !alias.scope !1214, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i, %bb.bq
  %.sink44.i = phi i64 [ %i.lj, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i ], [ %i.lf, %bb.bq ] ; 3 uses
  %i.lk = icmp sgt i64 %.sink44.i, -1
  call void @llvm.assume(i1 %i.lk)
  %i.ll = load ptr, ptr %i.bi, align 8, !alias.scope !1214, !nonnull !28, !noundef !28
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.sink44.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lm, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.le, i64 3, i1 false), !noalias !1215
  %i.ln = add nuw i64 %.sink44.i, 3
  store i64 %i.ln, ptr %i.bh, align 8, !alias.scope !1214
  br label %.critedge

bb.br:                                            ; preds = %bb.bo
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.lb, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #74, !noalias !1208
  unreachable

bb.bs:                                            ; preds = %bb.bb
  br i1 %i.ci, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.lo = load i8, ptr %i.cj, align 1, !noalias !1208, !noundef !28
  %i.lp = zext i8 %i.lo to i32
  %i.lq = add nuw nsw i32 %i.cg, %i.lp
  %i.lr = lshr i32 %i.lq, 6
  %i.ls = add nsw i32 %i.lr, -1                   ; 2 uses
  %i.lt = zext i32 %i.ls to i64                   ; 2 uses
  %i.lu = icmp ult i32 %i.ls, 12
  br i1 %i.lu, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #74, !noalias !1208
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr @62, i64 %i.lt ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !1208, !nonnull !28, !noundef !28
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !noalias !1208, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.lz = load i64, ptr %i.bh, align 8, !alias.scope !1219, !noundef !28 ; 3 uses
  %i.ma = load i64, ptr %1, align 8, !range !43, !alias.scope !1219, !noundef !28
  %i.mb = sub i64 %i.ma, %i.lz
  %i.mc = icmp ugt i64 %i.ly, %i.mb
  br i1 %i.mc, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit154.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i: ; preds = %bb.bv
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.lz, i64 noundef %i.ly, i64 noundef 1, i64 noundef 1), !noalias !1220
  %i.md = load i64, ptr %i.bh, align 8, !alias.scope !1221, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit154.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit154.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i, %bb.bv
  %.sink45.i = phi i64 [ %i.md, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i153.i ], [ %i.lz, %bb.bv ] ; 3 uses
  %i.me = icmp sgt i64 %.sink45.i, -1
  call void @llvm.assume(i1 %i.me)
  %i.mf = load ptr, ptr %i.bi, align 8, !alias.scope !1221, !nonnull !28, !noundef !28
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.sink45.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mg, ptr nonnull readonly align 1 %i.lw, i64 %i.ly, i1 false), !noalias !1222
  %i.mh = add i64 %.sink45.i, %i.ly
  store i64 %i.mh, ptr %i.bh, align 8, !alias.scope !1221
  br label %.critedge

bb.bw:                                            ; preds = %bb.bt
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.lt, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #74, !noalias !1208
  unreachable

bb.bx:                                            ; preds = %bb.bc
  %i.mi = load ptr, ptr %i.ce, align 8, !noalias !1208, !nonnull !28, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.mj = load i64, ptr %i.bh, align 8, !alias.scope !1226, !noundef !28 ; 3 uses
  %i.mk = load i64, ptr %1, align 8, !range !43, !alias.scope !1226, !noundef !28
  %i.ml = sub i64 %i.mk, %i.mj
  %i.mm = icmp ult i64 %i.ml, 3
  br i1 %i.mm, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit158.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i: ; preds = %bb.bx
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.mj, i64 noundef 3, i64 noundef 1, i64 noundef 1), !noalias !1227
  %i.mn = load i64, ptr %i.bh, align 8, !alias.scope !1228, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit158.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit158.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i, %bb.bx
  %.sink46.i = phi i64 [ %i.mn, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i157.i ], [ %i.mj, %bb.bx ] ; 3 uses
  %i.mo = icmp sgt i64 %.sink46.i, -1
  call void @llvm.assume(i1 %i.mo)
  %i.mp = load ptr, ptr %i.bi, align 8, !alias.scope !1228, !nonnull !28, !noundef !28
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 %.sink46.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.mq, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.mi, i64 3, i1 false), !noalias !1229
  %i.mr = add nuw i64 %.sink46.i, 3
  store i64 %i.mr, ptr %i.bh, align 8, !alias.scope !1228
  br label %.critedge

bb.by:                                            ; preds = %bb.bd
  %i.ms = load ptr, ptr %i.cc, align 8, !noalias !1208, !nonnull !28, !noundef !28
  %i.mt = load i64, ptr %i.cd, align 8, !noalias !1208, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.mu = load i64, ptr %i.bh, align 8, !alias.scope !1233, !noundef !28 ; 3 uses
  %i.mv = load i64, ptr %1, align 8, !range !43, !alias.scope !1233, !noundef !28
  %i.mw = sub i64 %i.mv, %i.mu
  %i.mx = icmp ugt i64 %i.mt, %i.mw
  br i1 %i.mx, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit162.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i: ; preds = %bb.by
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.mu, i64 noundef %i.mt, i64 noundef 1, i64 noundef 1), !noalias !1234
  %i.my = load i64, ptr %i.bh, align 8, !alias.scope !1235, !noundef !28
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit162.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit162.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i, %bb.by
  %.sink50.i = phi i64 [ %i.my, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i161.i ], [ %i.mu, %bb.by ] ; 3 uses
  %i.mz = icmp sgt i64 %.sink50.i, -1
  call void @llvm.assume(i1 %i.mz)
  %i.na = load ptr, ptr %i.bi, align 8, !alias.scope !1235, !nonnull !28, !noundef !28
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %.sink50.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nb, ptr nonnull readonly align 1 %i.ms, i64 %i.mt, i1 false), !noalias !1236
  %i.nc = add i64 %.sink50.i, %i.mt
  store i64 %i.nc, ptr %i.bh, align 8, !alias.scope !1235
  br label %.critedge

bb.bz:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1208
  store i64 0, ptr %i.ai, align 8, !noalias !1208
  store i64 0, ptr %.sroa.078.sroa.3.0..sroa_idx.i, align 8, !noalias !1208
  store <2 x ptr> %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1208
  br label %.peel.begin.i

.peel.begin.i:                                    ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i16, %bb.bz
  %.pre.i.i = phi i64 [ %.pre.i.pre.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i16 ], [ 0, %bb.bz ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %i.nd = trunc nuw i64 %.pre.i.i to i1
  br i1 %i.nd, label %.noexc.peel.i, label %bb.cb

.noexc.peel.i:                                    ; preds = %.peel.begin.i
  %i.ne = call noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCsj6eKBz9Db1c_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.br), !noalias !1208 ; 2 uses
  %.not.i.i.peel.i = icmp eq i32 %i.ne, -1
  br i1 %.not.i.i.peel.i, label %bb.ca, label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1V_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1X_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ENtNtBb_4char11ToLowercaseENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i

bb.ca:                                            ; preds = %.noexc.peel.i
  store i64 0, ptr %i.ai, align 8, !alias.scope !1238, !noalias !1208
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.peel.begin.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.nf = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1240, !noalias !1208, !noundef !28 ; 7 uses
  %.not.i5.i.peel.i = icmp eq ptr %i.nf, null
  br i1 %.not.i5.i.peel.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1242
  call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.ng = load ptr, ptr %.sroa.379.0..sroa_idx.i, align 8, !alias.scope !1245, !noalias !1208, !nonnull !28, !noundef !28 ; 4 uses
  %.not.i.i.i.i.peel.i = icmp eq ptr %i.nf, %i.ng
  br i1 %.not.i.i.i.i.peel.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 1 ; 3 uses
  store ptr %i.nh, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1245, !noalias !1208
  %i.ni = load i8, ptr %i.nf, align 1, !noalias !1246, !noundef !28 ; 5 uses
  %i.nj = icmp sgt i8 %i.ni, -1
  br i1 %i.nj, label %bb.ce, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i: ; preds = %bb.cd
  %i.nk = and i8 %i.ni, 31
  %i.nl = zext nneg i8 %i.nk to i32               ; 3 uses
  %i.nm = icmp ne ptr %i.nh, %i.ng
  call void @llvm.assume(i1 %i.nm)
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nf, i64 2 ; 3 uses
  store ptr %i.nn, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1247, !noalias !1208
  %i.no = load i8, ptr %i.nh, align 1, !noalias !1246, !noundef !28
  %i.np = shl nuw nsw i32 %i.nl, 6
  %i.nq = and i8 %i.no, 63
  %i.nr = zext nneg i8 %i.nq to i32               ; 2 uses
  %i.ns = or disjoint i32 %i.np, %i.nr
  %i.nt = icmp samesign ugt i8 %i.ni, -33
  br i1 %i.nt, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i, label %.noexc.i.preheader

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i
  %i.nu = icmp ne ptr %i.nn, %i.ng
  call void @llvm.assume(i1 %i.nu)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nf, i64 3 ; 3 uses
  store ptr %i.nv, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1248, !noalias !1208
  %i.nw = load i8, ptr %i.nn, align 1, !noalias !1246, !noundef !28
  %i.nx = shl nuw nsw i32 %i.nr, 6
  %i.ny = and i8 %i.nw, 63
  %i.nz = zext nneg i8 %i.ny to i32
  %i.oa = or disjoint i32 %i.nx, %i.nz            ; 2 uses
  %i.ob = shl nuw nsw i32 %i.nl, 12
  %i.oc = or disjoint i32 %i.oa, %i.ob
  %i.od = icmp samesign ugt i8 %i.ni, -17
  br i1 %i.od, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i, label %.noexc.i.preheader

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i
  %i.oe = icmp ne ptr %i.nv, %i.ng
  call void @llvm.assume(i1 %i.oe)
  %i.of = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store ptr %i.of, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1249, !noalias !1208
  %i.og = load i8, ptr %i.nv, align 1, !noalias !1246, !noundef !28
  %i.oh = shl nuw nsw i32 %i.nl, 18
  %i.oi = and i32 %i.oh, 1835008
  %i.oj = shl nuw nsw i32 %i.oa, 6
  %i.ok = and i8 %i.og, 63
  %i.ol = zext nneg i8 %i.ok to i32
  %i.om = or disjoint i32 %i.oj, %i.ol
  %i.on = or disjoint i32 %i.om, %i.oi
  br label %.noexc.i.preheader

bb.ce:                                            ; preds = %bb.cd
  %i.oo = zext nneg i8 %i.ni to i32
  br label %.noexc.i.preheader

.noexc.i.preheader:                               ; preds = %bb.ce, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i
  %spec.select.i.ph.i.i.i.peel.sink.i.ph = phi i32 [ %i.ns, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.peel.i ], [ %i.on, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.peel.i ], [ %i.oc, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.peel.i ], [ %i.oo, %bb.ce ]
  br label %.noexc.i

.noexc.i:                                         ; preds = %.noexc.i.backedge, %.noexc.i.preheader
  %spec.select.i.ph.i.i.i.peel.sink.i = phi i32 [ %spec.select.i.ph.i.i.i.peel.sink.i.ph, %.noexc.i.preheader ], [ %spec.select.i.ph.i.i.i.peel.sink.i.be, %.noexc.i.backedge ]
  call void @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11conversions8to_lower(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.j, i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i.i.i.peel.sink.i), !noalias !1208
  %i.op = load i32, ptr %i.bs, align 8, !range !52, !noalias !1250, !noundef !28
  %i.oq = icmp eq i32 %i.op, 0
  %i.or = load i32, ptr %i.bt, align 4, !range !52, !noalias !1250
  %i.os = icmp eq i32 %i.or, 0
  %spec.select.i.i.i.i.i.peel.i = select i1 %i.os, i64 1, i64 2
  %.sroa.4.0.i.i.i.i.i.peel.i = select i1 %i.oq, i64 %spec.select.i.i.i.i.i.peel.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false), !noalias !1208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1251
  store i64 1, ptr %i.ai, align 8, !alias.scope !1237, !noalias !1208
  store i64 0, ptr %i.br, align 8, !alias.scope !1237, !noalias !1208
  store i64 %.sroa.4.0.i.i.i.i.i.peel.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i, align 8, !alias.scope !1237, !noalias !1208
  %i.ot = call noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCsj6eKBz9Db1c_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.br), !noalias !1208 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ot, -1
  br i1 %.not.i.i.i, label %bb.cf, label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1V_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1X_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ENtNtBb_4char11ToLowercaseENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i

bb.cf:                                            ; preds = %.noexc.i
  store i64 0, ptr %i.ai, align 8, !alias.scope !1238, !noalias !1208
  call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  %i.ou = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1253, !noalias !1208, !noundef !28 ; 7 uses
  %.not.i5.i.i = icmp eq ptr %i.ou, null
  br i1 %.not.i5.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1255
  call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.ov = load ptr, ptr %.sroa.379.0..sroa_idx.i, align 8, !alias.scope !1258, !noalias !1208, !nonnull !28, !noundef !28 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ou, %i.ov
  br i1 %.not.i.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 1 ; 3 uses
  store ptr %i.ow, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1258, !noalias !1208
  %i.ox = load i8, ptr %i.ou, align 1, !noalias !1259, !noundef !28 ; 5 uses
  %i.oy = icmp sgt i8 %i.ox, -1
  br i1 %i.oy, label %bb.ci, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i: ; preds = %bb.ch
  %i.oz = and i8 %i.ox, 31
  %i.pa = zext nneg i8 %i.oz to i32               ; 3 uses
  %i.pb = icmp ne ptr %i.ow, %i.ov
  call void @llvm.assume(i1 %i.pb)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ou, i64 2 ; 3 uses
  store ptr %i.pc, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1260, !noalias !1208
  %i.pd = load i8, ptr %i.ow, align 1, !noalias !1259, !noundef !28
  %i.pe = shl nuw nsw i32 %i.pa, 6
  %i.pf = and i8 %i.pd, 63
  %i.pg = zext nneg i8 %i.pf to i32               ; 2 uses
  %i.ph = or disjoint i32 %i.pe, %i.pg
  %i.pi = icmp samesign ugt i8 %i.ox, -33
  br i1 %i.pi, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i, label %.noexc.i.backedge

bb.ci:                                            ; preds = %bb.ch
  %i.pj = zext nneg i8 %i.ox to i32
  br label %.noexc.i.backedge

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i
  %i.pk = icmp ne ptr %i.pc, %i.ov
  call void @llvm.assume(i1 %i.pk)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ou, i64 3 ; 3 uses
  store ptr %i.pl, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1261, !noalias !1208
  %i.pm = load i8, ptr %i.pc, align 1, !noalias !1259, !noundef !28
  %i.pn = shl nuw nsw i32 %i.pg, 6
  %i.po = and i8 %i.pm, 63
  %i.pp = zext nneg i8 %i.po to i32
  %i.pq = or disjoint i32 %i.pn, %i.pp            ; 2 uses
  %i.pr = shl nuw nsw i32 %i.pa, 12
  %i.ps = or disjoint i32 %i.pq, %i.pr
  %i.pt = icmp samesign ugt i8 %i.ox, -17
  br i1 %i.pt, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i, label %.noexc.i.backedge

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i
  %i.pu = icmp ne ptr %i.pl, %i.ov
  call void @llvm.assume(i1 %i.pu)
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  store ptr %i.pv, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1262, !noalias !1208
  %i.pw = load i8, ptr %i.pl, align 1, !noalias !1259, !noundef !28
  %i.px = shl nuw nsw i32 %i.pa, 18
  %i.py = and i32 %i.px, 1835008
  %i.pz = shl nuw nsw i32 %i.pq, 6
  %i.qa = and i8 %i.pw, 63
  %i.qb = zext nneg i8 %i.qa to i32
  %i.qc = or disjoint i32 %i.pz, %i.qb
  %i.qd = or disjoint i32 %i.qc, %i.py
  br label %.noexc.i.backedge

.noexc.i.backedge:                                ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i, %bb.ci, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i
  %spec.select.i.ph.i.i.i.peel.sink.i.be = phi i32 [ %i.ps, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i ], [ %i.qd, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i ], [ %i.ph, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i ], [ %i.pj, %bb.ci ]
  br label %.noexc.i, !llvm.loop !812

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.cg, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1255
  br label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i: ; preds = %bb.cf, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.i.i, %bb.cb
  %i.qe = load i64, ptr %.sroa.078.sroa.3.0..sroa_idx.i, align 8, !range !41, !alias.scope !1263, !noalias !1208, !noundef !28
  %i.qf = trunc nuw i64 %i.qe to i1
  br i1 %i.qf, label %.noexc163.i, label %.loopexit.i

.noexc163.i:                                      ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1I_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1K_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0EEINtB5_8FuseImplBY_E4nextCskXtk6F4WjxZ_4just.exit.thread.i.i
  %i.qg = call noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCsj6eKBz9Db1c_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu), !noalias !1208 ; 2 uses
  %.not.i7.i.i = icmp eq i32 %i.qg, -1
  br i1 %.not.i7.i.i, label %.loopexit.i, label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB1V_13DelayedFormatINtNtNtBb_5slice4iter4IterNtB1X_4ItemEE12format_fixedNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ENtNtBb_4char11ToLowercaseENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i

end_hunk_1
