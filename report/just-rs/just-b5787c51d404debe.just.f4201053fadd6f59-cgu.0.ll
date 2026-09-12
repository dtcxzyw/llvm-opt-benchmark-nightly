Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder3argNtB3_3Arg3addNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterECskXtk6F4WjxZ_4just:bb.a
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
  %i.br = select i1 %i.bq, ptr getelementptr inbounds nuw (i8, ptr @81, i64 2), ptr getelementptr inbounds nuw (i8, ptr @80, i64 2)
  %.sroa.078.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 80 ; 11 uses
  %.sroa.379.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 88 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %.not140.i = icmp eq i32 %i.ay, 0               ; 4 uses
  %i.bw = lshr i32 %i.ay, 4
  %i.bx = and i32 %i.bw, 511
  %i.by = and i32 %i.ay, 7
  %i.bz = add nuw nsw i32 %i.bx, %i.by
  %.lhs.trunc9.i = trunc nuw nsw i32 %i.bz to i16
  %i.ca = urem i16 %.lhs.trunc9.i, 7              ; 2 uses
  %i.cb = icmp samesign ult i16 %i.ca, 6
  %narrow58.i = add nuw nsw i16 %i.ca, 1
  %narrow59.i = select i1 %i.cb, i16 %narrow58.i, i16 0
  %i.cc = zext nneg i16 %narrow59.i to i64        ; 2 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr @79, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr @71, i64 %i.cc ; 2 uses
  %i.cg = lshr i32 %i.ay, 3                       ; 3 uses
  %i.ch = and i32 %i.cg, 1023                     ; 6 uses
  %i.ci = zext nneg i32 %i.ch to i64              ; 5 uses
  %i.cj = icmp samesign ult i32 %i.ch, 733        ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr @46, i64 %i.ci ; 4 uses
  %i.cl = icmp ne i32 %i.ay, 0
  %or.cond5.i = select i1 %i.cl, i1 %i.bb, i1 false ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load i32, ptr %i.cm, align 8            ; 7 uses
  %i.co = ashr i32 %i.ay, 13                      ; 3 uses
  %or.cond.i26 = icmp ult i32 %i.co, 10000        ; 2 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.lhs.trunc.i29 = trunc nuw nsw i32 %i.co to i16 ; 2 uses
  %i.cp = udiv i16 %.lhs.trunc.i29, 100
  %i.cq = trunc nuw nsw i16 %i.cp to i8           ; 2 uses
  %i.cr = udiv i8 %i.cq, 10
  %i.cs = or disjoint i8 %i.cr, 48                ; 2 uses
  %i.ct = urem i8 %i.cq, 10
  %i.cu = or disjoint i8 %i.ct, 48                ; 2 uses
  %i.cv = urem i32 %.sroa.10.0.copyload.i, 60     ; 2 uses
  %i.cw = udiv i32 %.sroa.10.0.copyload.i, 60
  %i.cx = urem i32 %i.cw, 60
  %i.cy = udiv i32 %.sroa.10.0.copyload.i, 3600
  %i.cz = icmp ugt i32 %.sroa.21.0.copyload.i, 999999999 ; 2 uses
  %i.da = add i32 %.sroa.21.0.copyload.i, -1000000000
  %storemerge.i = select i1 %i.cz, i32 %i.da, i32 %.sroa.21.0.copyload.i ; 6 uses
  %i.db = zext i1 %i.cz to i32
  %.sroa.04.0.i = add nuw nsw i32 %i.cv, %i.db
  %i.dc = trunc i32 %i.cy to i8                   ; 3 uses
  %i.dd = icmp ugt i8 %i.dc, 99                   ; 2 uses
  %i.de = udiv i8 %i.dc, 10
  %i.df = or disjoint i8 %i.de, 48                ; 2 uses
  %i.dg = urem i8 %i.dc, 10
  %i.dh = or disjoint i8 %i.dg, 48                ; 2 uses
  %i.di = trunc nuw nsw i32 %i.cx to i8           ; 2 uses
  %i.dj = udiv i8 %i.di, 10
  %i.dk = or disjoint i8 %i.dj, 48                ; 2 uses
  %i.dl = urem i8 %i.di, 10
  %i.dm = or disjoint i8 %i.dl, 48                ; 2 uses
  %i.dn = trunc nuw nsw i32 %.sroa.04.0.i to i8   ; 2 uses
  %i.do = udiv i8 %i.dn, 10
  %i.dp = or disjoint i8 %i.do, 48
  %i.dq = urem i8 %i.dn, 10
  %i.dr = or disjoint i8 %i.dq, 48
  %i.ds = icmp eq i32 %storemerge.i, 0
  %i.dt = urem i32 %storemerge.i, 1000000
  %i.du = icmp eq i32 %i.dt, 0
  %i.dv = urem i32 %storemerge.i, 1000
  %i.dw = icmp eq i32 %i.dv, 0
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dx = udiv i32 %storemerge.i, 1000
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dy = udiv i32 %storemerge.i, 1000000
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dz = urem i16 %.lhs.trunc.i29, 100
  %i.ea = trunc nuw nsw i16 %i.dz to i8           ; 2 uses
  %i.eb = udiv i8 %i.ea, 10
  %i.ec = or disjoint i8 %i.eb, 48
  %i.ed = urem i8 %i.ea, 10
  %i.ee = or disjoint i8 %i.ed, 48
  %i.ef = udiv i32 %.sroa.21.0.copyload.i, 1000000000
  %i.eg = add nuw nsw i32 %i.ef, %i.cv
  %i.eh = trunc nuw nsw i32 %i.eg to i8           ; 2 uses
  %i.ei = udiv i8 %i.eh, 10
  %i.ej = or disjoint i8 %i.ei, 48
  %i.ek = urem i8 %i.eh, 10
  %i.el = or disjoint i8 %i.ek, 48
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.en = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.es = load i32, ptr %i.ax, align 4            ; 7 uses
  %.sroa.035.0.copyload.i = load i32, ptr %i.az, align 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.21.0..sroa_idx.i, align 8 ; 2 uses
  %i.et = icmp ne i32 %i.es, 0
  %i.eu = trunc i32 %.sroa.035.0.copyload.i to i1 ; 6 uses
  %or.cond.i = select i1 %i.et, i1 %i.eu, i1 false
  %i.ev = load i64, ptr %0, align 8, !range !37
  %.not.i = icmp eq i64 %i.ev, -1
  %i.ew = sext i32 %i.cn to i64
  %.sroa.057.0.i = select i1 %.not.i, i64 0, i64 %i.ew
  %i.ex = ashr i32 %i.es, 13                      ; 10 uses
  %i.ey = add nsw i32 %i.ex, -1
  %i.ez = icmp slt i32 %i.ex, 1                   ; 2 uses
  %i.fa = sub nsw i32 1, %i.ex
  %i.fb = udiv i32 %i.fa, 400
  %i.fc = add nuw nsw i32 %i.fb, 1                ; 2 uses
  %i.fd = mul nuw nsw i32 %i.fc, 400
  %.neg.i = mul nsw i32 %i.fc, -146097
  %i.fe = lshr i32 %i.es, 4
  %i.ff = and i32 %i.fe, 511                      ; 9 uses
  %i.fg = zext i32 %.sroa.7.0.copyload.i to i64
  %i.fh = add nuw nsw i32 %i.ff, -719163
  %i.fi = sub nsw i64 %i.fg, %.sroa.057.0.i
  %.sroa.426.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.445.0..sroa_idx.i127.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.430.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.439.0..sroa_idx.i131.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.434.0..sroa_idx.i133.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.fl = urem i32 %.sroa.13.0.copyload.i, 1000000000
  %i.fm = zext nneg i32 %i.fl to i64
  %.sroa.426.0..sroa_idx.i115.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.445.0..sroa_idx.i116.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.430.0..sroa_idx.i119.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.439.0..sroa_idx.i120.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.434.0..sroa_idx.i122.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.fp = urem i32 %.sroa.7.0.copyload.i, 60
  %i.fq = udiv i32 %.sroa.13.0.copyload.i, 1000000000
  %i.fr = add nuw nsw i32 %i.fq, %i.fp
  %i.fs = trunc nuw nsw i32 %i.fr to i8
  %i.ft = udiv i32 %.sroa.7.0.copyload.i, 60
  %i.fu = urem i32 %i.ft, 60
  %i.fv = trunc nuw nsw i32 %i.fu to i8
  %i.fw = udiv i32 %.sroa.7.0.copyload.i, 3600    ; 2 uses
  %i.fx = urem i32 %i.fw, 12                      ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 0
  %i.fz = trunc nuw nsw i32 %i.fx to i8
  %i.ga = select i1 %i.fy, i8 12, i8 %i.fz
  %i.gb = trunc i32 %i.fw to i8
  %.not80.i = icmp eq i32 %i.es, 0                ; 15 uses
  %i.gc = zext nneg i32 %i.ff to i64
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.gf = and i32 %i.es, 7
  %i.gg = add nuw nsw i32 %i.ff, %i.gf
  %.lhs.trunc6.i = trunc nuw nsw i32 %i.gg to i16
  %i.gh = urem i16 %.lhs.trunc6.i, 7              ; 5 uses
  %switch.idx.cast.i = trunc nuw nsw i16 %i.gh to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 49
  %i.gi = trunc i32 %i.es to i8
  %i.gj = and i8 %i.gi, 15                        ; 4 uses
  %i.gk = trunc nuw nsw i32 %i.ff to i16
  %i.gl = add nuw nsw i16 %i.gk, 6
  %.lhs.trunc1.i106.i = sub nuw nsw i16 %i.gl, %i.gh
  %i.gm = udiv i16 %.lhs.trunc1.i106.i, 7
  %i.gn = trunc nuw nsw i16 %i.gm to i8
  %spec.select.i101.i = zext nneg i16 %i.gh to i32 ; 2 uses
  %i.go = icmp samesign ult i16 %i.gh, 6
  %i.gp = add nuw nsw i32 %spec.select.i101.i, 7
  %.pn.i.i = select i1 %i.go, i32 %i.gp, i32 %spec.select.i101.i
  %.sroa.0.0.neg.i.i = add nuw nsw i32 %i.ff, 6
  %i.gq = sub nsw i32 %.sroa.0.0.neg.i.i, %.pn.i.i
  %i.gr = trunc nsw i32 %i.gq to i16
  %.lhs.trunc1.i.i = add nsw i16 %i.gr, 6
  %i.gs = sdiv i16 %.lhs.trunc1.i.i, 7
  %i.gt = trunc nuw nsw i16 %i.gs to i8
  %i.gu = lshr i32 %i.es, 3                       ; 2 uses
  %i.gv = and i32 %i.gu, 1023                     ; 4 uses
  %i.gw = zext nneg i32 %i.gv to i64              ; 4 uses
  %i.gx = icmp samesign ult i32 %i.gv, 733        ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr @46, i64 %i.gw ; 3 uses
  %i.gz = srem i32 %i.ex, 100                     ; 4 uses
  %i.ha = icmp slt i32 %i.gz, 0
  %i.hb = add nsw i32 %i.gz, 100
  %spec.select.i.i = select i1 %i.ha, i32 %i.hb, i32 %i.gz
  %i.hc = trunc nuw nsw i32 %spec.select.i.i to i8
  %i.hd = sdiv i32 %i.ex, 100
  %.lobit.i.i = ashr i32 %i.gz, 31
  %.sroa.0.0.i.i = add nsw i32 %.lobit.i.i, %i.hd
  %i.he = trunc i32 %.sroa.0.0.i.i to i8
  %spec.select = select i1 %i.ez, i32 %.neg.i, i32 0
  %i.hf = select i1 %i.ez, i32 %i.fd, i32 0
  %spec.select199 = add nsw i32 %i.ey, %i.hf      ; 2 uses
  %i.hg = sdiv i32 %spec.select199, 100           ; 2 uses
  %i.hh = mul nsw i32 %spec.select199, 1461
  %i.hi = ashr i32 %i.hh, 2
  %i.hj = ashr i32 %i.hg, 2
  %i.hk = add i32 %i.fh, %spec.select
  %i.hl = sub i32 %i.hk, %i.hg
  %i.hm = add i32 %i.hl, %i.hi
  %narrow.i = add i32 %i.hm, %i.hj
  %i.hn = sext i32 %narrow.i to i64
  %i.ho = mul nsw i64 %i.hn, 86400
  %i.hp = add nsw i64 %i.fi, %i.ho
  %i.hq = insertelement <2 x ptr> poison, ptr %.146.i, i64 0
  %i.hr = insertelement <2 x ptr> %i.hq, ptr %i.br, i64 1
  %i.hs = shl nuw nsw i16 %i.gh, 3
  %switch.shiftamt = zext nneg i16 %i.hs to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0.0110 = phi ptr [ %.val, %.lr.ph ], [ %i.ht, %.critedge ] ; 9 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 24 ; 2 uses
  %i.hu = load i8, ptr %.sroa.0.0110, align 8, !range !50, !noundef !28
  switch i8 %i.hu, label %default.unreachable292 [
    i8 0, label %bb.fz
    i8 1, label %bb.gb
    i8 2, label %bb.fz
    i8 3, label %bb.gb
    i8 4, label %bb.c
    i8 5, label %bb.ay
    i8 6, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread
  ]

_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread: ; preds = %.critedge, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i, %.split74, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit124.i, %.split73, %.split72, %.split71, %.split70, %.split69, %.split68, %.split, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit219.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit214.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit183.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit209.i, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit224.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i, %bb.b, %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i121.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i114.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit180.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit175.i, %bb.d, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.az, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i, %bb.bk, %bb.dh, %bb.dg, %bb.df, %bb.dc, %bb.bn, %bb.dk, %bb.a, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i
  %i.hv = phi i1 [ true, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i ], [ false, %bb.a ], [ false, %.critedge ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i ], [ true, %.split74 ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit124.i ], [ true, %.split73 ], [ true, %.split72 ], [ true, %.split71 ], [ true, %.split70 ], [ true, %.split69 ], [ true, %.split68 ], [ true, %.split ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit219.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit214.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit183.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit209.i ], [ true, %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit224.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit191.i ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str.exit199.i ], [ true, %bb.b ], [ true, %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i121.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i114.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit180.i ], [ true, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit175.i ], [ true, %bb.d ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.az ], [ true, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit35.i ], [ true, %bb.bk ], [ true, %bb.dh ], [ true, %bb.dg ], [ true, %bb.df ], [ true, %bb.dc ], [ true, %bb.bn ], [ true, %bb.dk ]
  ret i1 %i.hv

default.unreachable292:                           ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit, %bb.ax, %bb.as, %bb.c, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 2
  %i.hy = load i8, ptr %i.hx, align 2, !range !38, !noundef !28 ; 18 uses
  %.val8 = load i8, ptr %i.hw, align 1, !range !1193, !noundef !28
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
  br i1 %i.eu, label %bb.at, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.t:                                             ; preds = %bb.c
  br i1 %i.eu, label %bb.au, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.u:                                             ; preds = %bb.c
  br i1 %i.eu, label %bb.av, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.v:                                             ; preds = %bb.c
  br i1 %i.eu, label %bb.aw, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.w:                                             ; preds = %bb.c
  br i1 %i.eu, label %bb.ax, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.x:                                             ; preds = %bb.c
  br i1 %or.cond.i, label %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread

bb.y:                                             ; preds = %bb.e
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.he, i8 noundef range(i8 0, 3) %i.hy)
  br label %.critedge

bb.z:                                             ; preds = %bb.f
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.hc, i8 noundef range(i8 0, 3) %i.hy)
  br label %.critedge

.split73:                                         ; preds = %bb.g
  %i.hz = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ex, i32 noundef %i.ff, i8 noundef %i.gj), !noalias !1195
  %i.ia = ashr i32 %i.hz, 10
  %i.ib = call fastcc noundef zeroext i1 @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric10write_yearNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.ia, i8 noundef range(i8 0, 3) %i.hy) #76, !noalias !1196
  br i1 %i.ib, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.aa:                                            ; preds = %bb.h
  %i.ic = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ex, i32 noundef %i.ff, i8 noundef %i.gj), !noalias !1195
  %i.id = ashr i32 %i.ic, 10                      ; 2 uses
  %i.ie = sdiv i32 %i.id, 100
  %i.if = srem i32 %i.id, 100
  %.lobit.i98.i = ashr i32 %i.if, 31
  %.sroa.0.0.i99.i = add nsw i32 %.lobit.i98.i, %i.ie
  %i.ig = trunc i32 %.sroa.0.0.i99.i to i8
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.ig, i8 noundef range(i8 0, 3) %i.hy)
  br label %.critedge

bb.ab:                                            ; preds = %bb.i
  %i.ih = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ex, i32 noundef %i.ff, i8 noundef %i.gj), !noalias !1195
  %i.ii = ashr i32 %i.ih, 10
  %i.ij = srem i32 %i.ii, 100                     ; 3 uses
  %i.ik = icmp slt i32 %i.ij, 0
  %i.il = add nsw i32 %i.ij, 100
  %spec.select.i100.i = select i1 %i.ik, i32 %i.il, i32 %i.ij
  %i.im = trunc nuw nsw i32 %spec.select.i100.i to i8
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.im, i8 noundef range(i8 0, 3) %i.hy)
  br label %.critedge

bb.ac:                                            ; preds = %bb.j
  br i1 %i.gx, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.in = load i8, ptr %i.gy, align 1, !noalias !1195, !noundef !28
  %i.io = zext i8 %i.in to i32
  %i.ip = add nuw nsw i32 %i.gv, %i.io
  %i.iq = lshr i32 %i.ip, 6
  %i.ir = add nsw i32 %i.iq, -1
  %i.is = udiv i32 %i.ir, 3
  %i.it = add nuw nsw i32 %i.is, 49               ; 2 uses
  %i.iu = and i32 %i.it, 255                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.iv = load i64, ptr %i.bh, align 8, !alias.scope !1199, !noalias !1196, !noundef !28 ; 5 uses
  %i.iw = icmp sgt i64 %i.iv, -1
  call void @llvm.assume(i1 %i.iw)
  %i.ix = icmp samesign ult i32 %i.iu, 128        ; 2 uses
  %spec.select.i = select i1 %i.ix, i64 1, i64 2  ; 3 uses
  %i.iy = load i64, ptr %1, align 8, !range !43, !alias.scope !1200, !noalias !1196, !noundef !28
  %i.iz = sub nsw i64 %i.iy, %i.iv
  %i.ja = icmp ugt i64 %spec.select.i, %i.iz
  br i1 %i.ja, label %bb.ae, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i, !prof !44

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.iv, i64 noundef %spec.select.i, i64 noundef 1, i64 noundef 1), !noalias !1196
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.jb = load ptr, ptr %i.bi, align 8, !alias.scope !1199, !noalias !1196, !nonnull !28, !noundef !28
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.iv ; 2 uses
  %i.jd = trunc i32 %i.it to i8                   ; 2 uses
  br i1 %i.ix, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i, label %bb.af

bb.af:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.je = and i8 %i.jd, 63
  %i.jf = or disjoint i8 %i.je, -128
  %i.jg = lshr i32 %i.iu, 6
  %i.jh = trunc nuw nsw i32 %i.jg to i8
  %i.ji = or disjoint i8 %i.jh, -64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  store i8 %i.jf, ptr %i.jj, align 1, !noalias !1201
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i: ; preds = %bb.af, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %.sink.i = phi i8 [ %i.ji, %bb.af ], [ %i.jd, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i ]
  store i8 %.sink.i, ptr %i.jc, align 1, !noalias !1201
  %i.jk = add nuw i64 %spec.select.i, %i.iv
  store i64 %i.jk, ptr %i.bh, align 8, !alias.scope !1199, !noalias !1196
  br label %.critedge

bb.ag:                                            ; preds = %bb.ac
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gw, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #75, !noalias !1195
  unreachable

bb.ah:                                            ; preds = %bb.k
  br i1 %i.gx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jl = load i8, ptr %i.gy, align 1, !noalias !1195, !noundef !28
  %i.jm = zext i8 %i.jl to i32
  %i.jn = add nuw nsw i32 %i.gv, %i.jm
  %i.jo = lshr i32 %i.jn, 6
  %i.jp = trunc nuw nsw i32 %i.jo to i8
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.jp, i8 noundef range(i8 0, 3) %i.hy)
  br label %.critedge

bb.aj:                                            ; preds = %bb.ah
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gw, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #75, !noalias !1195
  unreachable

bb.ak:                                            ; preds = %bb.l
  br i1 %i.gx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jq = load i8, ptr %i.gy, align 1, !noalias !1195, !noundef !28
  %2 = zext i8 %i.jq to i32
  %3 = add nuw nsw i32 %i.gu, %2
  %4 = lshr i32 %3, 1
  %5 = trunc i32 %4 to i8
  %i.jr = and i8 %5, 31
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.jr, i8 noundef range(i8 0, 3) %i.hy)
  br label %.critedge

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gw, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #75, !noalias !1195
  unreachable

bb.an:                                            ; preds = %bb.m
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.gt, i8 noundef range(i8 0, 3) %i.hy)
  br label %.critedge

bb.ao:                                            ; preds = %bb.n
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.gn, i8 noundef range(i8 0, 3) %i.hy)
  br label %.critedge

bb.ap:                                            ; preds = %bb.o
  %i.js = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ex, i32 noundef %i.ff, i8 noundef %i.gj), !noalias !1195
  %i.jt = lshr i32 %i.js, 4
  %i.ju = trunc i32 %i.jt to i8
  %i.jv = and i8 %i.ju, 63
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.jv, i8 noundef range(i8 0, 3) %i.hy)
  br label %.critedge

switch.lookup:                                    ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.jw = load i64, ptr %i.bh, align 8, !alias.scope !1204, !noalias !1196, !noundef !28 ; 5 uses
  %i.jx = icmp sgt i64 %i.jw, -1
  call void @llvm.assume(i1 %i.jx)
  %i.jy = load i64, ptr %1, align 8, !range !43, !alias.scope !1205, !noalias !1196, !noundef !28
  %i.jz = icmp eq i64 %i.jy, %i.jw
  br i1 %i.jz, label %bb.aq, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit110.i, !prof !44

bb.aq:                                            ; preds = %switch.lookup
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jw, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1196
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit110.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit110.i: ; preds = %bb.aq, %switch.lookup
  %i.ka = load ptr, ptr %i.bi, align 8, !alias.scope !1204, !noalias !1196, !nonnull !28, !noundef !28
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.jw
  store i8 %switch.masked, ptr %i.kb, align 1, !noalias !1206
  %i.kc = add nuw i64 %i.jw, 1
  store i64 %i.kc, ptr %i.bh, align 8, !alias.scope !1204, !noalias !1196
  br label %.critedge

switch.lookup.i:                                  ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.kd = load i64, ptr %i.bh, align 8, !alias.scope !1209, !noalias !1196, !noundef !28 ; 5 uses
  %i.ke = icmp sgt i64 %i.kd, -1
  call void @llvm.assume(i1 %i.ke)
  %i.kf = load i64, ptr %1, align 8, !range !43, !alias.scope !1210, !noalias !1196, !noundef !28
  %i.kg = icmp eq i64 %i.kf, %i.kd
  br i1 %i.kg, label %bb.ar, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit113.i, !prof !44

bb.ar:                                            ; preds = %switch.lookup.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.kd, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1196
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit113.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit113.i: ; preds = %bb.ar, %switch.lookup.i
  %i.kh = load ptr, ptr %i.bi, align 8, !alias.scope !1209, !noalias !1196, !nonnull !28, !noundef !28
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kd
  store i8 %switch.offset.i, ptr %i.ki, align 1, !noalias !1211
  %i.kj = add nuw i64 %i.kd, 1
  store i64 %i.kj, ptr %i.bh, align 8, !alias.scope !1209, !noalias !1196
  br label %.critedge

bb.as:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1195
  store i64 %i.gc, ptr %i.au, align 8, !noalias !1212
  switch i8 %i.hy, label %default.unreachable292 [
    i8 0, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i.i
    i8 1, label %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i
    i8 2, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i.i
  ]

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1212
  store ptr %i.au, ptr %i.at, align 8, !noalias !1212
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !1212
  %i.kk = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @85, ptr noundef nonnull %i.at), !noalias !1196, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1195
  br i1 %i.kk, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i.i: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1212
  store ptr %i.au, ptr %i.ar, align 8, !noalias !1212
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !1212
  store ptr null, ptr %i.gd, align 8, !noalias !1212
  store i16 3, ptr %.sroa.445.0..sroa_idx.i.i, align 8, !noalias !1212
  %i.kl = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @394, ptr noundef nonnull %i.ar), !noalias !1196, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1195
  br i1 %i.kl, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1212
  store ptr %i.au, ptr %i.as, align 8, !noalias !1212
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !1212
  store ptr null, ptr %i.ge, align 8, !noalias !1212
  store i16 3, ptr %.sroa.439.0..sroa_idx.i.i, align 8, !noalias !1212
  %i.km = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @392, ptr noundef nonnull %i.as), !noalias !1196, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1195
  br i1 %i.km, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.at:                                            ; preds = %bb.s
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.gb, i8 noundef range(i8 0, 3) %i.hy)
  br label %.critedge

bb.au:                                            ; preds = %bb.t
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.ga, i8 noundef range(i8 0, 3) %i.hy)
  br label %.critedge

bb.av:                                            ; preds = %bb.u
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.fv, i8 noundef range(i8 0, 3) %i.hy)
  br label %.critedge

bb.aw:                                            ; preds = %bb.v
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.fs, i8 noundef range(i8 0, 3) %i.hy)
  br label %.critedge

bb.ax:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1195
  store i64 %i.fm, ptr %i.aq, align 8, !noalias !1213
  switch i8 %i.hy, label %default.unreachable292 [
    i8 0, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i121.i
    i8 1, label %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit124.i
    i8 2, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i114.i
  ]

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i121.i: ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1213
  store ptr %i.aq, ptr %i.ap, align 8, !noalias !1213
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i122.i, align 8, !noalias !1213
  %i.kn = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @85, ptr noundef nonnull %i.ap), !noalias !1196, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1195
  br i1 %i.kn, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i114.i: ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1213
  store ptr %i.aq, ptr %i.an, align 8, !noalias !1213
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i115.i, align 8, !noalias !1213
  store ptr null, ptr %i.fn, align 8, !noalias !1213
  store i16 9, ptr %.sroa.445.0..sroa_idx.i116.i, align 8, !noalias !1213
  %i.ko = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @394, ptr noundef nonnull %i.an), !noalias !1196, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1195
  br i1 %i.ko, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit124.i: ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1213
  store ptr %i.aq, ptr %i.ao, align 8, !noalias !1213
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i119.i, align 8, !noalias !1213
  store ptr null, ptr %i.fo, align 8, !noalias !1213
  store i16 9, ptr %.sroa.439.0..sroa_idx.i120.i, align 8, !noalias !1213
  %i.kp = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @392, ptr noundef nonnull %i.ao), !noalias !1196, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1195
  br i1 %i.kp, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1195
  store i64 %i.hp, ptr %i.am, align 8, !noalias !1214
  switch i8 %i.hy, label %default.unreachable292 [
    i8 0, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i
    i8 1, label %_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i
    i8 2, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i
  ]

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit.i132.i: ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1214
  store ptr %i.am, ptr %i.al, align 8, !noalias !1214
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i133.i, align 8, !noalias !1214
  %i.kq = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @85, ptr noundef nonnull %i.al), !noalias !1196, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1195
  br i1 %i.kq, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit58.i125.i: ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1214
  store ptr %i.am, ptr %i.aj, align 8, !noalias !1214
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i126.i, align 8, !noalias !1214
  store ptr null, ptr %i.fj, align 8, !noalias !1214
  store i16 9, ptr %.sroa.445.0..sroa_idx.i127.i, align 8, !noalias !1214
  %i.kr = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @394, ptr noundef nonnull %i.aj), !noalias !1196, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1195
  br i1 %i.kr, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit135.i: ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1214
  store ptr %i.am, ptr %i.ak, align 8, !noalias !1214
  store ptr @_RNvXse_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i130.i, align 8, !noalias !1214
  store ptr null, ptr %i.fk, align 8, !noalias !1214
  store i16 9, ptr %.sroa.439.0..sroa_idx.i131.i, align 8, !noalias !1214
  %i.ks = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @392, ptr noundef nonnull %i.ak), !noalias !1196, !inline_history !0
end_hunk_0
begin_hunk_1_@_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE8write_toNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just:bb.a
  br i1 %i.zb, label %bb.el, label %bb.em, !prof !44

bb.el:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.yy, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre4.i46.i = load ptr, ptr %i.bi, align 8, !alias.scope !1424, !noalias !1342
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i
  %i.zc = phi ptr [ %.pre4.i46.i, %bb.el ], [ %i.yx, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i ]
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.za
  store i8 %i.dm, ptr %i.zd, align 1, !noalias !1425
  %i.ze = add nuw nsw i64 %i.wz, 14               ; 4 uses
  store i64 %i.ze, ptr %i.bh, align 8, !alias.scope !1424, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1426), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1427), !noalias !1277
  %i.zf = load i64, ptr %1, align 8, !range !43, !alias.scope !1428, !noalias !1342, !noundef !28 ; 2 uses
  %i.zg = icmp eq i64 %i.zf, %i.ze
  br i1 %i.zg, label %bb.en, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38, !prof !44

bb.en:                                            ; preds = %bb.em
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ze, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre75.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1429, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38: ; preds = %bb.en, %bb.em
  %i.zh = phi i64 [ %i.zf, %bb.em ], [ %.pre75.i, %bb.en ] ; 3 uses
  %i.zi = load ptr, ptr %i.bi, align 8, !alias.scope !1430, !noalias !1342, !nonnull !28, !noundef !28 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 %i.ze
  store i8 58, ptr %i.zj, align 1, !noalias !1431
  %i.zk = add nuw nsw i64 %i.wz, 15               ; 3 uses
  store i64 %i.zk, ptr %i.bh, align 8, !alias.scope !1430, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1432), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1433), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1434), !noalias !1277
  %i.zl = icmp eq i64 %i.zh, %i.zk
  br i1 %i.zl, label %bb.eo, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39, !prof !44

bb.eo:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zh, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre.i55.i41 = load i64, ptr %1, align 8, !range !43, !alias.scope !1435, !noalias !1342
  %.pre76.i = load ptr, ptr %i.bi, align 8, !alias.scope !1436, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39: ; preds = %bb.eo, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38
  %i.zm = phi ptr [ %.pre76.i, %bb.eo ], [ %i.zi, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38 ] ; 2 uses
  %i.zn = phi i64 [ %.pre.i55.i41, %bb.eo ], [ %i.zh, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38 ] ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.zk
  store i8 %i.ej, ptr %i.zo, align 1, !noalias !1437
  %i.zp = add nuw i64 %i.wz, 16                   ; 3 uses
  store i64 %i.zp, ptr %i.bh, align 8, !alias.scope !1436, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1438), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1439), !noalias !1277
  %i.zq = icmp eq i64 %i.zn, %i.zp
  br i1 %i.zq, label %bb.ep, label %.split68, !prof !44

bb.ep:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre4.i54.i40 = load ptr, ptr %i.bi, align 8, !alias.scope !1440, !noalias !1342
  br label %.split68

.split68:                                         ; preds = %bb.ep, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39
  %i.zr = phi ptr [ %.pre4.i54.i40, %bb.ep ], [ %i.zm, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39 ]
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zp
  store i8 %i.el, ptr %i.zs, align 1, !noalias !1441
  %i.zt = add nuw i64 %i.wz, 17
  store i64 %i.zt, ptr %i.bh, align 8, !alias.scope !1440, !noalias !1342
  %i.zu = call noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32) #76, !noalias !1342 ; 0 uses
  %i.zv = call fastcc noundef zeroext i1 @_RINvMs0_NtNtCs2uF6e5yHHeh_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) @188, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cn), !noalias !1342
  br i1 %i.zv, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.eq:                                            ; preds = %bb.dg
  call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1443
  store i32 %i.co, ptr %i.i, align 4, !noalias !1443
  br i1 %or.cond.i26, label %bb.er, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread.i: ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1443
  store ptr %i.i, ptr %i.h, align 8, !noalias !1443
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1443
  %i.zw = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @189, ptr noundef nonnull %i.h), !noalias !1444, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1443
  br i1 %i.zw, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !1445), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1446), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1447), !noalias !1277
  %i.zx = load i64, ptr %i.bh, align 8, !alias.scope !1448, !noalias !1444, !noundef !28 ; 8 uses
  %i.zy = icmp sgt i64 %i.zx, -1
  call void @llvm.assume(i1 %i.zy), !noalias !1277
  %i.zz = load i64, ptr %1, align 8, !range !43, !alias.scope !1449, !noalias !1444, !noundef !28 ; 2 uses
  %i.aaa = icmp eq i64 %i.zz, %i.zx
  br i1 %i.aaa, label %bb.es, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i, !prof !44

bb.es:                                            ; preds = %bb.er
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zx, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i.i30 = load i64, ptr %1, align 8, !range !43, !alias.scope !1450, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i: ; preds = %bb.es, %bb.er
  %i.aab = phi i64 [ %.pre.i.i30, %bb.es ], [ %i.zz, %bb.er ] ; 2 uses
  %i.aac = load ptr, ptr %i.bi, align 8, !alias.scope !1448, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 %i.zx
  store i8 %i.cs, ptr %i.aad, align 1, !noalias !1451
  %i.aae = add nuw nsw i64 %i.zx, 1               ; 3 uses
  store i64 %i.aae, ptr %i.bh, align 8, !alias.scope !1448, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1452), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1453), !noalias !1277
  %i.aaf = icmp eq i64 %i.aab, %i.aae
  br i1 %i.aaf, label %bb.et, label %bb.ex, !prof !44

bb.et:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aab, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !1454, !noalias !1444
  br label %bb.ex

bb.eu:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread.i
  %.pre.i = load i64, ptr %i.bh, align 8, !alias.scope !1455, !noalias !1444
  br label %bb.ev

bb.ev:                                            ; preds = %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i, %bb.eu
  %i.aag = phi i64 [ %i.abi, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i ], [ %.pre.i, %bb.eu ] ; 19 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1456), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1457), !noalias !1277
  %i.aah = icmp sgt i64 %i.aag, -1
  call void @llvm.assume(i1 %i.aah), !noalias !1277
  %i.aai = load i64, ptr %1, align 8, !range !43, !alias.scope !1458, !noalias !1444, !noundef !28
  %i.aaj = icmp eq i64 %i.aai, %i.aag
  br i1 %i.aaj, label %bb.ew, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27, !prof !44

bb.ew:                                            ; preds = %bb.ev
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aag, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27: ; preds = %bb.ew, %bb.ev
  %i.aak = load ptr, ptr %i.bi, align 8, !alias.scope !1455, !noalias !1444, !nonnull !28, !noundef !28
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.aag
  store i8 45, ptr %i.aal, align 1, !noalias !1459
  %i.aam = add nuw i64 %i.aag, 1                  ; 5 uses
  store i64 %i.aam, ptr %i.bh, align 8, !alias.scope !1455, !noalias !1444
  br i1 %i.cj, label %bb.fb, label %bb.fe

bb.ex:                                            ; preds = %bb.et, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i
  %i.aan = phi ptr [ %.pre4.i.i, %bb.et ], [ %i.aac, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i ]
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.aae
  store i8 %i.cu, ptr %i.aao, align 1, !noalias !1460
  %i.aap = add nuw i64 %i.zx, 2                   ; 5 uses
  store i64 %i.aap, ptr %i.bh, align 8, !alias.scope !1454, !noalias !1444
  %i.aaq = load i32, ptr %i.i, align 4, !noalias !1443, !noundef !28
  %i.aar = srem i32 %i.aaq, 100                   ; 2 uses
  %i.aas = trunc nsw i32 %i.aar to i8             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1461), !noalias !1277
  %i.aat = icmp slt i32 %i.aar, 0
  br i1 %i.aat, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aau = udiv i8 %i.aas, 10
  %i.aav = urem i8 %i.aas, 10
  %i.aaw = or disjoint i8 %i.aau, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1462), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1463), !noalias !1277
  %i.aax = icmp sgt i64 %i.aap, -1
  call void @llvm.assume(i1 %i.aax), !noalias !1277
  %i.aay = load i64, ptr %1, align 8, !range !43, !alias.scope !1464, !noalias !1444, !noundef !28 ; 2 uses
  %i.aaz = icmp eq i64 %i.aay, %i.aap
  br i1 %i.aaz, label %bb.ez, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i, !prof !44

bb.ez:                                            ; preds = %bb.ey
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aap, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i36.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1465, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i: ; preds = %bb.ez, %bb.ey
  %i.aba = phi i64 [ %.pre.i36.i, %bb.ez ], [ %i.aay, %bb.ey ] ; 2 uses
  %i.abb = load ptr, ptr %i.bi, align 8, !alias.scope !1466, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.aap
  store i8 %i.aaw, ptr %i.abc, align 1, !noalias !1467
  %i.abd = add nuw i64 %i.zx, 3                   ; 3 uses
  store i64 %i.abd, ptr %i.bh, align 8, !alias.scope !1466, !noalias !1444
  %i.abe = or disjoint i8 %i.aav, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1468), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1469), !noalias !1277
  %i.abf = icmp eq i64 %i.aba, %i.abd
  br i1 %i.abf, label %bb.fa, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i, !prof !44

bb.fa:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aba, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i35.i = load ptr, ptr %i.bi, align 8, !alias.scope !1470, !noalias !1444
  br label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i

_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i: ; preds = %bb.fa, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i
  %i.abg = phi ptr [ %.pre4.i35.i, %bb.fa ], [ %i.abb, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i ]
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 %i.abd
  store i8 %i.abe, ptr %i.abh, align 1, !noalias !1471
  %i.abi = add nuw i64 %i.zx, 4                   ; 2 uses
  store i64 %i.abi, ptr %i.bh, align 8, !alias.scope !1470, !noalias !1444
  br label %bb.ev

bb.fb:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27
  %i.abj = load i8, ptr %i.ck, align 1, !noalias !1443, !noundef !28
  %i.abk = zext i8 %i.abj to i32                  ; 2 uses
  %i.abl = add nuw nsw i32 %i.ch, %i.abk          ; 3 uses
  %i.abm = lshr i32 %i.abl, 6
  %i.abn = trunc nuw nsw i32 %i.abm to i8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1472), !noalias !1277
  %.cmp.i = icmp samesign ugt i32 %i.abl, 639
  %i.abo = zext i1 %.cmp.i to i8
  %i.abp = or disjoint i8 %i.abo, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1473), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1474), !noalias !1277
  %i.abq = icmp sgt i64 %i.aam, -1
  call void @llvm.assume(i1 %i.abq), !noalias !1277
  %i.abr = load i64, ptr %1, align 8, !range !43, !alias.scope !1475, !noalias !1444, !noundef !28 ; 2 uses
  %i.abs = icmp eq i64 %i.abr, %i.aam
  br i1 %i.abs, label %bb.fc, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i, !prof !44

bb.fc:                                            ; preds = %bb.fb
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aam, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i41.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1476, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i: ; preds = %bb.fc, %bb.fb
  %i.abt = phi i64 [ %.pre.i41.i, %bb.fc ], [ %i.abr, %bb.fb ] ; 2 uses
  %i.abu = load ptr, ptr %i.bi, align 8, !alias.scope !1477, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.aam
  store i8 %i.abp, ptr %i.abv, align 1, !noalias !1478
  %i.abw = add nuw i64 %i.aag, 2                  ; 3 uses
  store i64 %i.abw, ptr %i.bh, align 8, !alias.scope !1477, !noalias !1444
  %.urem.i = add nsw i8 %i.abn, -10
  %.cmp91.i = icmp samesign ult i32 %i.abl, 640
  %i.abx = select i1 %.cmp91.i, i8 %i.abn, i8 %.urem.i
  %i.aby = or disjoint i8 %i.abx, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1479), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1480), !noalias !1277
  %i.abz = icmp eq i64 %i.abt, %i.abw
  br i1 %i.abz, label %bb.fd, label %bb.ff, !prof !44

bb.fd:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.abt, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i40.i = load ptr, ptr %i.bi, align 8, !alias.scope !1481, !noalias !1444
  br label %bb.ff

bb.fe:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #75, !noalias !1444
  unreachable

bb.ff:                                            ; preds = %bb.fd, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i
  %i.aca = phi ptr [ %.pre4.i40.i, %bb.fd ], [ %i.abu, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i ]
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 %i.abw
  store i8 %i.aby, ptr %i.acb, align 1, !noalias !1482
  %i.acc = add nuw nsw i64 %i.aag, 3              ; 4 uses
  store i64 %i.acc, ptr %i.bh, align 8, !alias.scope !1481, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1483), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1484), !noalias !1277
  %i.acd = load i64, ptr %1, align 8, !range !43, !alias.scope !1485, !noalias !1444, !noundef !28
  %i.ace = icmp eq i64 %i.acd, %i.acc
  br i1 %i.ace, label %bb.fg, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i, !prof !44

bb.fg:                                            ; preds = %bb.ff
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.acc, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i: ; preds = %bb.fg, %bb.ff
  %i.acf = load ptr, ptr %i.bi, align 8, !alias.scope !1486, !noalias !1444, !nonnull !28, !noundef !28
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.acc
  store i8 45, ptr %i.acg, align 1, !noalias !1487
  %i.ach = add nuw nsw i64 %i.aag, 4              ; 4 uses
  store i64 %i.ach, ptr %i.bh, align 8, !alias.scope !1486, !noalias !1444
  %6 = add nuw nsw i32 %i.cg, %i.abk
  %7 = lshr i32 %6, 1
  %8 = trunc i32 %7 to i8
  %i.aci = and i8 %8, 31                          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1488), !noalias !1277
  %i.acj = udiv i8 %i.aci, 10
  %i.ack = urem i8 %i.aci, 10
  %i.acl = or disjoint i8 %i.acj, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1489), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1490), !noalias !1277
  %i.acm = load i64, ptr %1, align 8, !range !43, !alias.scope !1491, !noalias !1444, !noundef !28 ; 2 uses
  %i.acn = icmp eq i64 %i.acm, %i.ach
  br i1 %i.acn, label %bb.fh, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i, !prof !44

bb.fh:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ach, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i48.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1492, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i: ; preds = %bb.fh, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i
  %i.aco = phi i64 [ %.pre.i48.i, %bb.fh ], [ %i.acm, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i ] ; 2 uses
  %i.acp = load ptr, ptr %i.bi, align 8, !alias.scope !1493, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.ach
  store i8 %i.acl, ptr %i.acq, align 1, !noalias !1494
  %i.acr = add nuw i64 %i.aag, 5                  ; 3 uses
  store i64 %i.acr, ptr %i.bh, align 8, !alias.scope !1493, !noalias !1444
  %i.acs = or disjoint i8 %i.ack, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1495), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1496), !noalias !1277
  %i.act = icmp eq i64 %i.aco, %i.acr
  br i1 %i.act, label %bb.fi, label %bb.fj, !prof !44

bb.fi:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aco, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i47.i = load ptr, ptr %i.bi, align 8, !alias.scope !1497, !noalias !1444
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i
  %i.acu = phi ptr [ %.pre4.i47.i, %bb.fi ], [ %i.acp, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i ]
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 %i.acr
  store i8 %i.acs, ptr %i.acv, align 1, !noalias !1498
  %i.acw = add nuw nsw i64 %i.aag, 6              ; 4 uses
  store i64 %i.acw, ptr %i.bh, align 8, !alias.scope !1497, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1499), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1500), !noalias !1277
  %i.acx = load i64, ptr %1, align 8, !range !43, !alias.scope !1501, !noalias !1444, !noundef !28
  %i.acy = icmp eq i64 %i.acx, %i.acw
  br i1 %i.acy, label %bb.fk, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i, !prof !44

bb.fk:                                            ; preds = %bb.fj
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.acw, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i: ; preds = %bb.fk, %bb.fj
  %i.acz = load ptr, ptr %i.bi, align 8, !alias.scope !1502, !noalias !1444, !nonnull !28, !noundef !28
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.acw
  store i8 84, ptr %i.ada, align 1, !noalias !1503
  %i.adb = add nuw i64 %i.aag, 7                  ; 5 uses
  store i64 %i.adb, ptr %i.bh, align 8, !alias.scope !1502, !noalias !1444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1443
  store i32 %storemerge.i, ptr %i.g, align 4, !noalias !1443
  call void @llvm.experimental.noalias.scope.decl(metadata !1504), !noalias !1277
  br i1 %i.dd, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit56.thread.i, label %bb.fl

bb.fl:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1505), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1506), !noalias !1277
  %i.adc = icmp sgt i64 %i.adb, -1
  call void @llvm.assume(i1 %i.adc), !noalias !1277
  %i.add = load i64, ptr %1, align 8, !range !43, !alias.scope !1507, !noalias !1444, !noundef !28 ; 2 uses
  %i.ade = icmp eq i64 %i.add, %i.adb
  br i1 %i.ade, label %bb.fm, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i, !prof !44

bb.fm:                                            ; preds = %bb.fl
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.adb, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i55.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1508, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i: ; preds = %bb.fm, %bb.fl
  %i.adf = phi i64 [ %.pre.i55.i, %bb.fm ], [ %i.add, %bb.fl ] ; 2 uses
  %i.adg = load ptr, ptr %i.bi, align 8, !alias.scope !1509, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 %i.adb
  store i8 %i.df, ptr %i.adh, align 1, !noalias !1510
  %i.adi = add nuw i64 %i.aag, 8                  ; 3 uses
  store i64 %i.adi, ptr %i.bh, align 8, !alias.scope !1509, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1511), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1512), !noalias !1277
  %i.adj = icmp eq i64 %i.adf, %i.adi
  br i1 %i.adj, label %bb.fn, label %bb.fo, !prof !44

bb.fn:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.adf, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i54.i = load ptr, ptr %i.bi, align 8, !alias.scope !1513, !noalias !1444
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i
  %i.adk = phi ptr [ %.pre4.i54.i, %bb.fn ], [ %i.adg, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i ]
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.adi
  store i8 %i.dh, ptr %i.adl, align 1, !noalias !1514
  %i.adm = add nuw nsw i64 %i.aag, 9              ; 4 uses
  store i64 %i.adm, ptr %i.bh, align 8, !alias.scope !1513, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1515), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1516), !noalias !1277
  %i.adn = load i64, ptr %1, align 8, !range !43, !alias.scope !1517, !noalias !1444, !noundef !28
  %i.ado = icmp eq i64 %i.adn, %i.adm
  br i1 %i.ado, label %bb.fp, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit58.i, !prof !44

bb.fp:                                            ; preds = %bb.fo
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.adm, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit58.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit58.i: ; preds = %bb.fp, %bb.fo
  %i.adp = load ptr, ptr %i.bi, align 8, !alias.scope !1518, !noalias !1444, !nonnull !28, !noundef !28
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.adm
  store i8 58, ptr %i.adq, align 1, !noalias !1519
  %i.adr = add nuw nsw i64 %i.aag, 10             ; 4 uses
  store i64 %i.adr, ptr %i.bh, align 8, !alias.scope !1518, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1520), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1521), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1522), !noalias !1277
  %i.ads = load i64, ptr %1, align 8, !range !43, !alias.scope !1523, !noalias !1444, !noundef !28 ; 2 uses
  %i.adt = icmp eq i64 %i.ads, %i.adr
  br i1 %i.adt, label %bb.fq, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i59.i, !prof !44

bb.fq:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit58.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.adr, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i62.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1524, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i59.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i59.i: ; preds = %bb.fq, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit58.i
  %i.adu = phi i64 [ %.pre.i62.i, %bb.fq ], [ %i.ads, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit58.i ] ; 2 uses
  %i.adv = load ptr, ptr %i.bi, align 8, !alias.scope !1525, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 %i.adr
  store i8 %i.dk, ptr %i.adw, align 1, !noalias !1526
  %i.adx = add nuw i64 %i.aag, 11                 ; 3 uses
  store i64 %i.adx, ptr %i.bh, align 8, !alias.scope !1525, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1527), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1528), !noalias !1277
  %i.ady = icmp eq i64 %i.adu, %i.adx
  br i1 %i.ady, label %bb.fr, label %bb.fs, !prof !44

bb.fr:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i59.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.adu, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i61.i = load ptr, ptr %i.bi, align 8, !alias.scope !1529, !noalias !1444
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i59.i
  %i.adz = phi ptr [ %.pre4.i61.i, %bb.fr ], [ %i.adv, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i59.i ]
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 %i.adx
  store i8 %i.dm, ptr %i.aea, align 1, !noalias !1530
  %i.aeb = add nuw nsw i64 %i.aag, 12             ; 4 uses
  store i64 %i.aeb, ptr %i.bh, align 8, !alias.scope !1529, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1531), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1532), !noalias !1277
  %i.aec = load i64, ptr %1, align 8, !range !43, !alias.scope !1533, !noalias !1444, !noundef !28
  %i.aed = icmp eq i64 %i.aec, %i.aeb
  br i1 %i.aed, label %bb.ft, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit65.i, !prof !44

bb.ft:                                            ; preds = %bb.fs
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aeb, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit65.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit65.i: ; preds = %bb.ft, %bb.fs
  %i.aee = load ptr, ptr %i.bi, align 8, !alias.scope !1534, !noalias !1444, !nonnull !28, !noundef !28
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.aeb
  store i8 58, ptr %i.aef, align 1, !noalias !1535
  %i.aeg = add nuw nsw i64 %i.aag, 13             ; 4 uses
  store i64 %i.aeg, ptr %i.bh, align 8, !alias.scope !1534, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1536), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1537), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1538), !noalias !1277
  %i.aeh = load i64, ptr %1, align 8, !range !43, !alias.scope !1539, !noalias !1444, !noundef !28 ; 2 uses
  %i.aei = icmp eq i64 %i.aeh, %i.aeg
  br i1 %i.aei, label %bb.fu, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i66.i, !prof !44

bb.fu:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit65.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aeg, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i69.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1540, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i66.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i66.i: ; preds = %bb.fu, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit65.i
  %i.aej = phi i64 [ %.pre.i69.i, %bb.fu ], [ %i.aeh, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit65.i ] ; 2 uses
  %i.aek = load ptr, ptr %i.bi, align 8, !alias.scope !1541, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 %i.aeg
  store i8 %i.dp, ptr %i.ael, align 1, !noalias !1542
  %i.aem = add nuw i64 %i.aag, 14                 ; 3 uses
  store i64 %i.aem, ptr %i.bh, align 8, !alias.scope !1541, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1543), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1544), !noalias !1277
  %i.aen = icmp eq i64 %i.aej, %i.aem
  br i1 %i.aen, label %bb.fv, label %bb.fw, !prof !44

bb.fv:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i66.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aej, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i68.i = load ptr, ptr %i.bi, align 8, !alias.scope !1545, !noalias !1444
  br label %bb.fw

.split:                                           ; preds = %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit85.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit80.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just.exit75.i, %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1443
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.a, align 4, !noalias !1443
  %i.aeo = call fastcc noundef zeroext i1 @_RINvMs0_NtNtCs2uF6e5yHHeh_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cn), !noalias !1444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1443
end_hunk_1
begin_hunk_2_@_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser5parse:bb.a
  store i64 0, ptr %.sroa.57.0..sroa_idx.i1306.i.i, align 8, !noalias !48106
  br label %bb.di

bb.dd:                                            ; preds = %.noexc294.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !48106
  %i.ud = ptrtoint ptr %.sroa.01532.0.copyload.i.i to i64
  %i.ue = shufflevector <2 x i64> %i.tz, <2 x i64> %i.ua, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB11_.exit1311.i.i

bb.de:                                            ; preds = %.noexc294.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.51117.0..sroa_idx.i.i, i64 16, i1 false), !noalias !48106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !48106
  br label %bb.da

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1308.i.i: ; preds = %bb.dh, %bb.dg
  %.pn.i.i = phi { ptr, i32 } [ %i.ug, %bb.dg ], [ %i.uh, %bb.dh ] ; 2 uses
  %i.uf = icmp sgt i64 %.sroa.01377.0.i.i, 0
  br i1 %i.uf, label %bb.df, label %.body304.i

bb.df:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1308.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.81379.0.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.81379.0.i.i, i64 noundef %.sroa.01377.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !48174
  br label %.body304.i

bb.dg:                                            ; preds = %bb.dk
  %i.ug = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1308.i.i

bb.dh:                                            ; preds = %bb.dl, %bb.di
  %i.uh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1E_4name4NameEEB1E_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.cs)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1308.i.i unwind label %bb.cp, !noalias !48105

bb.di:                                            ; preds = %bb.dc, %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !48106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !48106
  store i8 %.sroa.0266.0.copyload267, ptr %i.cu, align 8, !noalias !48106
  store i56 %.sroa.7268.0.copyload270, ptr %.sroa.51376.0..sroa_idx.i.i, align 1, !noalias !48106
  store i64 %.sroa.9271.0.copyload273, ptr %.sroa.51376.i.sroa.5.0..sroa.51376.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !48106
  store i64 %.sroa.11274.0.copyload276, ptr %.sroa.51376.i.sroa.6.0..sroa.51376.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !48106
  store i64 %.sroa.13277.0.copyload279, ptr %.sroa.51376.i.sroa.7.0..sroa.51376.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !48106
  store i64 %.sroa.15280.0.copyload282, ptr %.sroa.51376.i.sroa.8.0..sroa.51376.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !48106
  store i64 %.sroa.17.0.copyload284, ptr %.sroa.51376.i.sroa.9.0..sroa.51376.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !48106
  store i64 %.sroa.19.0.copyload286, ptr %.sroa.51376.i.sroa.10.0..sroa.51376.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !48106
  store i64 %.sroa.21.0.copyload288, ptr %.sroa.51376.i.sroa.11.0..sroa.51376.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !48106
  store i64 %.sroa.23.0.copyload290, ptr %.sroa.51376.i.sroa.12.0..sroa.51376.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !48106
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just13attribute_setNtB2_12AttributeSet23ensure_valid_attributes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, i8 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(72) %i.cu)
          to label %bb.dj unwind label %bb.dh, !noalias !48105

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !48106
  %i.ui = load i8, ptr %i.gd, align 8, !range !45, !noalias !48106, !noundef !28
  %.not1258.i.i = icmp eq i8 %i.ui, -1
  br i1 %.not1258.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %.sroa.33.8.copyload377.i = load i64, ptr %i.cv, align 8, !noalias !48102 ; 2 uses
  %.sroa.69.8..sroa_idx390.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.69.8.copyload391.i = load i64, ptr %.sroa.69.8..sroa_idx390.i, align 8, !noalias !48102 ; 2 uses
  %.sroa.85.8..sroa_idx407.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %.sroa.85.8.copyload408.i = load i64, ptr %.sroa.85.8..sroa_idx407.i, align 8, !noalias !48102 ; 2 uses
  %.sroa.101.8..sroa_idx429.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %.sroa.101.8.copyload430.i = load i64, ptr %.sroa.101.8..sroa_idx429.i, align 8, !noalias !48102 ; 2 uses
  %.sroa.111.8..sroa_idx452.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %.sroa.111.8.copyload453.i = load i64, ptr %.sroa.111.8..sroa_idx452.i, align 8, !noalias !48102 ; 2 uses
  %.sroa.118.8..sroa_idx475.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.uj = load <4 x i64>, ptr %.sroa.118.8..sroa_idx475.i, align 8, !noalias !48102 ; 2 uses
  %.sroa.182.8.copyload557.i = load i64, ptr %i.gd, align 8, !noalias !48102 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !48106
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1E_4name4NameEEB1E_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.cs)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1309.i.i unwind label %bb.dg, !noalias !48105

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !48106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !48106
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16take_doc_comment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ct, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs)
          to label %bb.dm unwind label %bb.dh, !noalias !48175

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.sroa.12.sroa.15.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.sroa.5.i.i, i64 16, i1 false), !noalias !48106
  %.sroa.32.i.sroa.19.i.sroa.0.0.copyload5162 = load i64, ptr %i.cs, align 8, !noalias !48106
  %.sroa.32.i.sroa.19.i.sroa.12.sroa.0.0.copyload10651 = load i64, ptr %.sroa.32.i.sroa.19.i.sroa.12.0..sroa_idx, align 8, !noalias !48106
  %.sroa.32.i.sroa.19.i.sroa.12.sroa.12.0.copyload10656 = load i64, ptr %.sroa.32.i.sroa.19.i.sroa.12.sroa.12.0..sroa.32.i.sroa.19.i.sroa.12.0..sroa_idx.sroa_idx, align 8, !noalias !48106
  %.sroa.25.sroa.12.sroa.0.sroa.0.i.sroa.0.0.copyload945.i = load i64, ptr %i.ct, align 8, !noalias !48106
  %.sroa.25.sroa.12.sroa.0.sroa.0.i.sroa.14.0.copyload955.i = load i64, ptr %.sroa.25.sroa.12.sroa.0.sroa.0.i.sroa.14.0..sroa_idx.i, align 8, !noalias !48106
  %.sroa.25.sroa.12.sroa.0.sroa.0.i.sroa.15.0.copyload965.i = load i64, ptr %.sroa.25.sroa.12.sroa.0.sroa.0.i.sroa.15.0..sroa_idx.i, align 8, !noalias !48106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !48106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.5.i.i)
  br label %bb.mu

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1309.i.i: ; preds = %bb.dk
  %i.uk = icmp sgt i64 %.sroa.01377.0.i.i, 0
  br i1 %i.uk, label %bb.dn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB11_.exit1311.i.i

bb.dn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1309.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.81379.0.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.81379.0.i.i, i64 noundef %.sroa.01377.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !48176
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB11_.exit1311.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB11_.exit1311.i.i: ; preds = %bb.dn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1309.i.i, %bb.dd
  %.sroa.33.sroa.34.sroa.0.2.in.in.i = phi i64 [ %i.ud, %bb.dd ], [ %.sroa.33.8.copyload377.i, %bb.dn ], [ %.sroa.33.8.copyload377.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1309.i.i ] ; 2 uses
  %.sroa.182.sroa.34.sroa.0.2.in.in.i = phi i64 [ %.sroa.81537.0.copyload.i.i, %bb.dd ], [ %.sroa.182.8.copyload557.i, %bb.dn ], [ %.sroa.182.8.copyload557.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1309.i.i ] ; 2 uses
  %.sroa.111.2.i = phi i64 [ %.sroa.6570.sroa.7.i.sroa.9.0.copyload1176.i, %bb.dd ], [ %.sroa.111.8.copyload453.i, %bb.dn ], [ %.sroa.111.8.copyload453.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1309.i.i ]
  %.sroa.101.2.i = phi i64 [ %.sroa.6570.sroa.7.i.sroa.8.0.copyload1174.i, %bb.dd ], [ %.sroa.101.8.copyload430.i, %bb.dn ], [ %.sroa.101.8.copyload430.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1309.i.i ]
  %.sroa.85.2.i = phi i64 [ %.sroa.6570.sroa.7.i.sroa.7.0.copyload1172.i, %bb.dd ], [ %.sroa.85.8.copyload408.i, %bb.dn ], [ %.sroa.85.8.copyload408.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1309.i.i ]
  %.sroa.69.2.i = phi i64 [ %.sroa.6570.sroa.7.i.sroa.0.0.copyload1170.i, %bb.dd ], [ %.sroa.69.8.copyload391.i, %bb.dn ], [ %.sroa.69.8.copyload391.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1309.i.i ]
  %i.ul = phi <4 x i64> [ %i.ue, %bb.dd ], [ %i.uj, %bb.dn ], [ %i.uj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit1309.i.i ] ; 4 uses
  %.sroa.182.sroa.0.2.i = trunc i64 %.sroa.182.sroa.34.sroa.0.2.in.in.i to i8
  %.sroa.182.sroa.34.sroa.0.2.in.i = lshr i64 %.sroa.182.sroa.34.sroa.0.2.in.in.i, 8
  %.sroa.182.sroa.34.sroa.0.2.i = trunc nuw i64 %.sroa.182.sroa.34.sroa.0.2.in.i to i56
  %i.um = extractelement <4 x i64> %i.ul, i64 3   ; 2 uses
  %.sroa.166.sroa.0.2.i = trunc i64 %i.um to i8
  %.sroa.166.sroa.34.sroa.0.2.in.i = lshr i64 %i.um, 8
  %.sroa.166.sroa.34.sroa.0.2.i = trunc nuw i64 %.sroa.166.sroa.34.sroa.0.2.in.i to i56
  %.sroa.33.sroa.0.2.i = trunc i64 %.sroa.33.sroa.34.sroa.0.2.in.in.i to i8
  %.sroa.33.sroa.34.sroa.0.2.in.i = lshr i64 %.sroa.33.sroa.34.sroa.0.2.in.in.i, 8
  %.sroa.33.sroa.34.sroa.0.2.i = trunc nuw i64 %.sroa.33.sroa.34.sroa.0.2.in.i to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.5.i.i)
  %i.un = extractelement <4 x i64> %i.ul, i64 0
  %i.uo = extractelement <4 x i64> %i.ul, i64 1
  %i.up = extractelement <4 x i64> %i.ul, i64 2
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit1302.i.i

.noexc274.i.thread1746:                           ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCskXtk6F4WjxZ_4just5token5TokenuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvMNtB17_6parserNtB3n_6Parser4rest0E0E0B17_.exit.thread.i.i131, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCskXtk6F4WjxZ_4just5token5TokenuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvMNtB17_6parserNtB3n_6Parser4rest0E0E0B17_.exit.thread.i.i131.1, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCskXtk6F4WjxZ_4just5token5TokenuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvMNtB17_6parserNtB3n_6Parser4rest0E0E0B17_.exit.thread.i.i131.2, %.lr.ph.i.i128.2, %bb.bg, %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser4rest.exit.i125, %bb.bh
  %i.uq = invoke fastcc noundef zeroext i1 @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser7line_is(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %.noexc295.i unwind label %.loopexit1365.i.loopexit.loopexit

.noexc295.i:                                      ; preds = %.noexc274.i.thread1746
  br i1 %i.uq, label %.noexc274.i.thread, label %.noexc269.i.thread1741

.noexc274.i.thread:                               ; preds = %.lr.ph.i.i128.2, %.noexc295.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.221)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.239)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !48106
  %.sroa.4.0.copyload.i1313.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i1312.i.i, align 8, !noalias !48092
  store i8 -1, ptr %.sroa.4.0..sroa_idx.i1312.i.i, align 8, !noalias !48092
  %.not.i1314.i.i = icmp eq i8 %.sroa.4.0.copyload.i1313.i.i, -1
  br i1 %.not.i1314.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %.noexc274.i.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 24, i1 false), !noalias !48092
  br label %_RNCNvMNtCskXtk6F4WjxZ_4just6parserNtB4_6Parser10parse_item0B6_.exit1316.i.i

bb.dp:                                            ; preds = %.noexc274.i.thread
  store ptr null, ptr %i.cr, align 8, !alias.scope !48177, !noalias !48106
  store i64 0, ptr %.sroa.57.0..sroa_idx.i1315.i.i, align 8, !alias.scope !48177, !noalias !48106
  br label %_RNCNvMNtCskXtk6F4WjxZ_4just6parserNtB4_6Parser10parse_item0B6_.exit1316.i.i

_RNCNvMNtCskXtk6F4WjxZ_4just6parserNtB4_6Parser10parse_item0B6_.exit1316.i.i: ; preds = %bb.dp, %bb.do
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48179)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5686.i.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser15presume_keyword(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek, i8 noundef 32)
          to label %bb.dq unwind label %.loopexit1845, !noalias !48179

.loopexit1845:                                    ; preds = %bb.eu, %_RNCNvMNtCskXtk6F4WjxZ_4just6parserNtB4_6Parser10parse_item0B6_.exit1316.i.i, %bb.ds, %bb.ed, %bb.eh, %bb.ei, %bb.ej, %bb.ek, %bb.el, %bb.em, %bb.en, %bb.eo, %bb.ep, %bb.eq, %bb.er, %bb.es, %bb.et, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.gm, %bb.hl, %bb.hm, %bb.hn, %bb.ho, %bb.hp, %bb.hq, %bb.hr, %bb.hs, %bb.ht, %bb.hu
  %lpad.loopexit1847 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i96

.loopexit.split-lp1846:                           ; preds = %bb.dw, %bb.iq, %bb.jm, %bb.kc, %bb.kd, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i1307.invoke.i
  %lpad.loopexit.split-lp1848 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i96

bb.dq:                                            ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just6parserNtB4_6Parser10parse_item0B6_.exit1316.i.i
  %i.ur = load i8, ptr %i.gr, align 8, !range !45, !noalias !48180, !noundef !28 ; 2 uses
  %.not.i98 = icmp eq i8 %i.ur, -1
  br i1 %.not.i98, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.sroa.0820.0.copyload.i = load ptr, ptr %i.bi, align 8, !noalias !48180
  %.sroa.4821.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.4821.0.copyload.i = load i64, ptr %.sroa.4821.0..sroa_idx.i, align 8, !noalias !48180 ; 2 uses
  %.sroa.5822.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.5822.0.copyload.i = load ptr, ptr %.sroa.5822.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.6823.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %.sroa.6823.0.copyload.i = load i64, ptr %.sroa.6823.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.7824.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %.sroa.7824.0.copyload.i = load i64, ptr %.sroa.7824.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.8825.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %.sroa.8825.0.copyload.i = load i64, ptr %.sroa.8825.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.9826.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %.sroa.9826.0.copyload.i = load i64, ptr %.sroa.9826.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.10827.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %.sroa.10827.0.copyload.i = load i64, ptr %.sroa.10827.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.11828.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %.sroa.11828.0.copyload.i = load i8, ptr %.sroa.11828.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.12829.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 65
  %.sroa.15.i95.sroa.0.0.copyload = load i56, ptr %.sroa.12829.0..sroa_idx.i, align 1, !noalias !48180
  %.sroa.14831.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 73
  %.sroa.164.sroa.48.sroa.0.0.copyload = load i56, ptr %.sroa.14831.0..sroa_idx.i, align 1, !noalias !48181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !48180
  %i.us = ptrtoint ptr %.sroa.0820.0.copyload.i to i64 ; 3 uses
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1163 = trunc i64 %i.us to i8
  %10 = lshr i64 %i.us, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1197 = trunc i64 %10 to i24
  %.sroa.50.sroa.67.0.extract.shift = lshr i64 %i.us, 32
  %.sroa.50.sroa.67.0.extract.trunc = trunc nuw i64 %.sroa.50.sroa.67.0.extract.shift to i32
  %.sroa.122.sroa.0.0.extract.trunc972 = trunc i64 %.sroa.4821.0.copyload.i to i32
  %.sroa.122.sroa.48.0.extract.shift1052 = lshr i64 %.sroa.4821.0.copyload.i, 32
  %.sroa.122.sroa.48.0.extract.trunc1053 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift1052 to i32
  %i.ut = ptrtoint ptr %.sroa.5822.0.copyload.i to i64
  br label %bb.km

bb.ds:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !48180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser7presume(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek, i8 noundef 28)
          to label %bb.dt unwind label %.loopexit1845, !noalias !48179

bb.dt:                                            ; preds = %bb.ds
  %i.uu = load i8, ptr %i.gs, align 8, !range !45, !noalias !48180, !noundef !28 ; 2 uses
  %.not1241.i = icmp eq i8 %i.uu, -1
  %.sroa.055.i.sroa.0.0.copyload1438 = load i64, ptr %i.bh, align 8, !noalias !48180 ; 8 uses
  %.sroa.055.i.sroa.8.0.copyload1442 = load i64, ptr %.sroa.055.i.sroa.8.0..sroa_idx1441, align 8, !noalias !48180 ; 6 uses
  %.sroa.055.i.sroa.9.0.copyload1448 = load i64, ptr %.sroa.055.i.sroa.9.0..sroa_idx1447, align 8, !noalias !48180 ; 6 uses
  %.sroa.055.i.sroa.10.0.copyload1454 = load i64, ptr %.sroa.055.i.sroa.10.0..sroa_idx1453, align 8, !noalias !48180 ; 11 uses
  %.sroa.055.i.sroa.11.0.copyload1460 = load i64, ptr %.sroa.055.i.sroa.11.0..sroa_idx1459, align 8, !noalias !48180 ; 5 uses
  %.sroa.055.i.sroa.12.0.copyload1466 = load i64, ptr %.sroa.055.i.sroa.12.0..sroa_idx1465, align 8, !noalias !48180 ; 9 uses
  %.sroa.055.i.sroa.13.0.copyload1472 = load i64, ptr %.sroa.055.i.sroa.13.0..sroa_idx1471, align 8, !noalias !48180 ; 5 uses
  %.sroa.055.i.sroa.14.0.copyload1478 = load i64, ptr %.sroa.055.i.sroa.14.0..sroa_idx1477, align 8, !noalias !48180 ; 13 uses
  %.sroa.055.i.sroa.15.0.copyload1484 = load i64, ptr %.sroa.055.i.sroa.15.0..sroa_idx1483, align 8, !noalias !48180 ; 7 uses
  br i1 %.not1241.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.sroa.5849.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 73
  %.sroa.164.sroa.48.sroa.0.0.copyload781 = load i56, ptr %.sroa.5849.0..sroa_idx.i, align 1, !noalias !48181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !48180
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1181 = trunc i64 %.sroa.055.i.sroa.0.0.copyload1438 to i8
  %11 = lshr i64 %.sroa.055.i.sroa.0.0.copyload1438, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1231 = trunc i64 %11 to i24
  %.sroa.50.sroa.67.0.extract.shift1129 = lshr i64 %.sroa.055.i.sroa.0.0.copyload1438, 32
  %.sroa.50.sroa.67.0.extract.trunc1130 = trunc nuw i64 %.sroa.50.sroa.67.0.extract.shift1129 to i32
  %.sroa.122.sroa.0.0.extract.trunc941 = trunc i64 %.sroa.055.i.sroa.8.0.copyload1442 to i32
  %.sroa.122.sroa.48.0.extract.shift992 = lshr i64 %.sroa.055.i.sroa.8.0.copyload1442, 32
  %.sroa.122.sroa.48.0.extract.trunc993 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift992 to i32
  %.sroa.158.sroa.0.0.extract.trunc812 = trunc i64 %.sroa.055.i.sroa.15.0.copyload1484 to i8
  %.sroa.158.sroa.48.0.extract.shift863 = lshr i64 %.sroa.055.i.sroa.15.0.copyload1484, 8
  %.sroa.158.sroa.48.0.extract.trunc864 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift863 to i56
  br label %bb.km

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !48180
  store i64 %.sroa.055.i.sroa.0.0.copyload1438, ptr %i.bg, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.8.0.copyload1442, ptr %.sroa.055.i.sroa.8.0..sroa_idx1443, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.9.0.copyload1448, ptr %.sroa.055.i.sroa.9.0..sroa_idx1449, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.10.0.copyload1454, ptr %.sroa.055.i.sroa.10.0..sroa_idx1455, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.11.0.copyload1460, ptr %.sroa.055.i.sroa.11.0..sroa_idx1461, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.12.0.copyload1466, ptr %.sroa.055.i.sroa.12.0..sroa_idx1467, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.13.0.copyload1472, ptr %.sroa.055.i.sroa.13.0..sroa_idx1473, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.14.0.copyload1478, ptr %.sroa.055.i.sroa.14.0..sroa_idx1479, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.15.0.copyload1484, ptr %.sroa.055.i.sroa.15.0..sroa_idx1485, align 8, !noalias !48180
  %i.uv = and i64 %.sroa.055.i.sroa.15.0.copyload1484, 255
  %i.uw = icmp eq i64 %i.uv, 28
  br i1 %i.uw, label %bb.dx, label %bb.dw, !prof !29

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindBM_EBQ_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %.sroa.055.i.sroa.15.0..sroa_idx1485, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @829, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #75
          to label %.noexc.i99 unwind label %.loopexit.split-lp1846, !noalias !48181

.noexc.i99:                                       ; preds = %bb.dw
  unreachable

bb.dx:                                            ; preds = %bb.dv
  store i64 %.sroa.055.i.sroa.0.0.copyload1438, ptr %i.bd, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.8.0.copyload1442, ptr %.sroa.055.i.sroa.8.0..sroa_idx1445, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.9.0.copyload1448, ptr %.sroa.055.i.sroa.9.0..sroa_idx1451, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.10.0.copyload1454, ptr %.sroa.055.i.sroa.10.0..sroa_idx1457, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.11.0.copyload1460, ptr %.sroa.055.i.sroa.11.0..sroa_idx1463, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.12.0.copyload1466, ptr %.sroa.055.i.sroa.12.0..sroa_idx1469, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.13.0.copyload1472, ptr %.sroa.055.i.sroa.13.0..sroa_idx1475, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.14.0.copyload1478, ptr %.sroa.055.i.sroa.14.0..sroa_idx1481, align 8, !noalias !48180
  store i64 %.sroa.055.i.sroa.15.0.copyload1484, ptr %.sroa.055.i.sroa.15.0..sroa_idx1487, align 8, !noalias !48180
  %i.ux = inttoptr i64 %.sroa.055.i.sroa.9.0.copyload1448 to ptr ; 6 uses
  %i.uy = add i64 %.sroa.055.i.sroa.14.0.copyload1478, %.sroa.055.i.sroa.12.0.copyload1466 ; 6 uses
  %i.uz = icmp ugt i64 %.sroa.055.i.sroa.14.0.copyload1478, %i.uy
  %i.va = icmp ugt i64 %i.uy, %.sroa.055.i.sroa.10.0.copyload1454
  %or.cond.i.i.i100 = or i1 %i.uz, %i.va
  br i1 %or.cond.i.i.i100, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i1307.invoke.i, label %bb.dy, !prof !31

bb.dy:                                            ; preds = %bb.dx
  %i.vb = icmp eq i64 %.sroa.055.i.sroa.14.0.copyload1478, %.sroa.055.i.sroa.10.0.copyload1454
  br i1 %i.vb, label %.thread1394.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.vc = icmp eq i64 %.sroa.055.i.sroa.14.0.copyload1478, 0 ; 2 uses
  br i1 %i.vc, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.eb, %bb.dz
  %i.vd = icmp eq i64 %i.uy, %.sroa.055.i.sroa.10.0.copyload1454 ; 2 uses
  br i1 %i.vd, label %bb.ec, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i101

bb.eb:                                            ; preds = %bb.dz
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ux, i64 %.sroa.055.i.sroa.14.0.copyload1478
  %i.vf = load i8, ptr %i.ve, align 1, !alias.scope !48182, !noalias !48183, !noundef !28
  %i.vg = icmp sgt i8 %i.vf, -65
  br i1 %i.vg, label %bb.ea, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i1307.invoke.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i101: ; preds = %bb.ea
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uy
  %i.vi = load i8, ptr %i.vh, align 1, !alias.scope !48182, !noalias !48183, !noundef !28
  %i.vj = icmp sgt i8 %i.vi, -65
  br i1 %i.vj, label %bb.ec, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i1307.invoke.i, !prof !33

bb.ec:                                            ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i101, %bb.ea
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ux, i64 %.sroa.055.i.sroa.14.0.copyload1478 ; 4 uses
  %i.vl = tail call fastcc noundef i8 @_RNvMNtCskXtk6F4WjxZ_4just7keywordNtB2_7Keyword11from_lexeme(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vk, i64 noundef %.sroa.055.i.sroa.12.0.copyload1466), !noalias !48181 ; 2 uses
  %.not1242.i = icmp eq i8 %i.vl, -1
  br i1 %.not1242.i, label %bb.kf, label %bb.ed

.thread1394.i:                                    ; preds = %bb.dy
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ux, i64 %.sroa.055.i.sroa.10.0.copyload1454 ; 2 uses
  %i.vn = tail call fastcc noundef i8 @_RNvMNtCskXtk6F4WjxZ_4just7keywordNtB2_7Keyword11from_lexeme(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vm, i64 noundef %.sroa.055.i.sroa.12.0.copyload1466), !noalias !48181 ; 2 uses
  %.not12421395.i = icmp eq i8 %i.vn, -1
  br i1 %.not12421395.i, label %.thread1396.i, label %bb.ed

.thread1396.i:                                    ; preds = %.thread1394.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !48180
  br label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit1310.i

bb.ed:                                            ; preds = %.thread1394.i, %bb.ec
  %i.vo = phi i8 [ %i.vn, %.thread1394.i ], [ %i.vl, %bb.ec ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just13attribute_setNtB2_12AttributeSet23ensure_valid_attributes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr, i8 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(72) %i.bd)
          to label %bb.ee unwind label %.loopexit1845, !noalias !48184

bb.ee:                                            ; preds = %bb.ed
  %i.vp = load i8, ptr %i.gt, align 8, !range !45, !noalias !48180, !noundef !28
  %.not1243.i = icmp eq i8 %i.vp, -1
  br i1 %.not1243.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %.sroa.50.8.copyload = load i64, ptr %i.be, align 8, !noalias !48181 ; 3 uses
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1172 = trunc i64 %.sroa.50.8.copyload to i8
  %12 = lshr i64 %.sroa.50.8.copyload, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1213 = trunc i64 %12 to i24
  %.sroa.50.sroa.67.0.extract.shift1111 = lshr i64 %.sroa.50.8.copyload, 32
  %.sroa.50.sroa.67.0.extract.trunc1112 = trunc nuw i64 %.sroa.50.sroa.67.0.extract.shift1111 to i32
  %.sroa.122.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.122.8.copyload = load i64, ptr %.sroa.122.8..sroa_idx, align 8, !noalias !48181 ; 2 uses
  %.sroa.122.sroa.0.0.extract.trunc = trunc i64 %.sroa.122.8.copyload to i32
  %.sroa.122.sroa.48.0.extract.shift = lshr i64 %.sroa.122.8.copyload, 32
  %.sroa.122.sroa.48.0.extract.trunc = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift to i32
  %.sroa.132.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.132.8.copyload = load i64, ptr %.sroa.132.8..sroa_idx, align 8, !noalias !48181
  %.sroa.137.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %.sroa.137.8.copyload = load i64, ptr %.sroa.137.8..sroa_idx, align 8, !noalias !48181
  %.sroa.142.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %.sroa.142.8.copyload = load i64, ptr %.sroa.142.8..sroa_idx, align 8, !noalias !48181
  %.sroa.146.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %.sroa.146.8.copyload = load i64, ptr %.sroa.146.8..sroa_idx, align 8, !noalias !48181
  %.sroa.150.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %.sroa.150.8.copyload = load i64, ptr %.sroa.150.8..sroa_idx, align 8, !noalias !48181
  %.sroa.154.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %.sroa.154.8.copyload = load i64, ptr %.sroa.154.8..sroa_idx, align 8, !noalias !48181
  %.sroa.158.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %.sroa.158.8.copyload = load i64, ptr %.sroa.158.8..sroa_idx, align 8, !noalias !48181 ; 2 uses
  %.sroa.158.sroa.0.0.extract.trunc = trunc i64 %.sroa.158.8.copyload to i8
  %.sroa.158.sroa.48.0.extract.shift = lshr i64 %.sroa.158.8.copyload, 8
  %.sroa.158.sroa.48.0.extract.trunc = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift to i56
  %.sroa.164.8.copyload = load i64, ptr %i.gt, align 8, !noalias !48181 ; 2 uses
  %.sroa.164.sroa.0.0.extract.trunc = trunc i64 %.sroa.164.8.copyload to i8
  %.sroa.164.sroa.48.0.extract.shift = lshr i64 %.sroa.164.8.copyload, 8
  %.sroa.164.sroa.48.0.extract.trunc = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !48180
  br label %bb.km

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !48180
  switch i8 %i.vo, label %bb.eh [
    i8 1, label %bb.ei
    i8 2, label %bb.ej
    i8 4, label %bb.ek
    i8 5, label %bb.el
    i8 8, label %bb.em
    i8 9, label %bb.en
    i8 11, label %bb.eo
    i8 14, label %bb.ep
    i8 16, label %bb.eq
    i8 18, label %bb.er
    i8 20, label %bb.es
    i8 23, label %bb.et
    i8 24, label %bb.eu
    i8 27, label %bb.ev
    i8 28, label %bb.ew
    i8 29, label %bb.ex
    i8 30, label %bb.ey
    i8 37, label %bb.ez
    i8 38, label %bb.fa
  ]

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser6expect(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek, i8 noundef 15)
          to label %bb.hi unwind label %.loopexit1845, !noalias !48179

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.bc, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.fb unwind label %.loopexit1845, !noalias !48179

bb.ej:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.ff unwind label %.loopexit1845, !noalias !48179

bb.ek:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.fi unwind label %.loopexit1845, !noalias !48179

bb.el:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.az, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.fl unwind label %.loopexit1845, !noalias !48179

bb.em:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ay, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.fo unwind label %.loopexit1845, !noalias !48179

bb.en:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.fr unwind label %.loopexit1845, !noalias !48179

bb.eo:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.fu unwind label %.loopexit1845, !noalias !48179

bb.ep:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.fx unwind label %.loopexit1845, !noalias !48179

bb.eq:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.ga unwind label %.loopexit1845, !noalias !48179

bb.er:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.at, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.gd unwind label %.loopexit1845, !noalias !48179

bb.es:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.gg unwind label %.loopexit1845, !noalias !48179

bb.et:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.gj unwind label %.loopexit1845, !noalias !48179

bb.eu:                                            ; preds = %bb.eg
  invoke fastcc void @_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB7_7set_val9SetValZSTE6insertB1b_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fb, i8 noundef 1)
          to label %bb.gm unwind label %.loopexit1845

bb.ev:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.gq unwind label %.loopexit1845, !noalias !48179

bb.ew:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.gt unwind label %.loopexit1845, !noalias !48179

bb.ex:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.gw unwind label %.loopexit1845, !noalias !48179

bb.ey:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.gz unwind label %.loopexit1845, !noalias !48179

bb.ez:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.hc unwind label %.loopexit1845, !noalias !48179

bb.fa:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser14parse_set_bool(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.hf unwind label %.loopexit1845, !noalias !48179

bb.fb:                                            ; preds = %bb.ei
  %i.vq = load i8, ptr %i.hm, align 8, !range !45, !noalias !48180, !noundef !28 ; 2 uses
  %.not1262.i = icmp eq i8 %i.vq, -1
  %i.vr = load i8, ptr %i.bc, align 8, !noalias !48180 ; 2 uses
  br i1 %.not1262.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %.sroa.4858.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1250 = load i24, ptr %.sroa.4858.0..sroa_idx.i, align 1, !noalias !48181
  %.sroa.50.sroa.67.1..sroa.4858.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %.sroa.50.sroa.67.1.copyload1148 = load i32, ptr %.sroa.50.sroa.67.1..sroa.4858.0..sroa_idx.i.sroa_idx, align 4, !noalias !48181
  %.sroa.122.9..sroa.4858.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.122.9.copyload358 = load i64, ptr %.sroa.122.9..sroa.4858.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181 ; 2 uses
  %.sroa.122.sroa.0.0.extract.trunc960 = trunc i64 %.sroa.122.9.copyload358 to i32
  %.sroa.122.sroa.48.0.extract.shift1030 = lshr i64 %.sroa.122.9.copyload358, 32
  %.sroa.122.sroa.48.0.extract.trunc1031 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift1030 to i32
  %.sroa.132.9..sroa.4858.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.132.9.copyload399 = load i64, ptr %.sroa.132.9..sroa.4858.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.137.9..sroa.4858.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.137.9.copyload440 = load i64, ptr %.sroa.137.9..sroa.4858.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.142.9..sroa.4858.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.sroa.142.9.copyload481 = load i64, ptr %.sroa.142.9..sroa.4858.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.146.9..sroa.4858.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %.sroa.146.9.copyload522 = load i64, ptr %.sroa.146.9..sroa.4858.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.150.9..sroa.4858.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %.sroa.150.9.copyload563 = load i64, ptr %.sroa.150.9..sroa.4858.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.154.9..sroa.4858.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %.sroa.154.9.copyload604 = load i64, ptr %.sroa.154.9..sroa.4858.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.158.9..sroa.4858.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %.sroa.158.9.copyload645 = load i64, ptr %.sroa.158.9..sroa.4858.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181 ; 2 uses
  %.sroa.158.sroa.0.0.extract.trunc831 = trunc i64 %.sroa.158.9.copyload645 to i8
  %.sroa.158.sroa.48.0.extract.shift901 = lshr i64 %.sroa.158.9.copyload645, 8
  %.sroa.158.sroa.48.0.extract.trunc902 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift901 to i56
  %.sroa.6860.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 73
  %.sroa.164.sroa.48.sroa.0.0.copyload800 = load i56, ptr %.sroa.6860.0..sroa_idx.i, align 1, !noalias !48181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !48180
  br label %bb.km

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !48180
  br label %bb.fe

bb.fe:                                            ; preds = %bb.hh, %bb.he, %bb.hb, %bb.gy, %bb.gv, %bb.gs, %bb.gp, %bb.gl, %bb.gi, %bb.gf, %bb.gc, %bb.fz, %bb.fw, %bb.ft, %bb.fq, %bb.fn, %bb.fk, %bb.fh, %bb.fd
  %.sroa.25.sroa.0.0.i = phi i8 [ %i.vr, %bb.fd ], [ %i.vw, %bb.fh ], [ %i.vy, %bb.fk ], [ %i.wa, %bb.fn ], [ %i.wc, %bb.fq ], [ %i.we, %bb.ft ], [ %i.wg, %bb.fw ], [ %i.wi, %bb.fz ], [ %i.wk, %bb.gc ], [ %i.wm, %bb.gf ], [ %i.wo, %bb.gi ], [ %i.wq, %bb.gl ], [ %i.ws, %bb.gp ], [ %i.wu, %bb.gs ], [ %i.ww, %bb.gv ], [ %i.wy, %bb.gy ], [ %i.xa, %bb.hb ], [ %i.xc, %bb.he ], [ %i.xe, %bb.hh ]
  %.sroa.066.0.i = phi i64 [ 0, %bb.fd ], [ 1, %bb.fh ], [ 2, %bb.fk ], [ 3, %bb.fn ], [ 6, %bb.fq ], [ 7, %bb.ft ], [ 9, %bb.fw ], [ 10, %bb.fz ], [ 11, %bb.gc ], [ 12, %bb.gf ], [ 13, %bb.gi ], [ 15, %bb.gl ], [ 16, %bb.gp ], [ 18, %bb.gs ], [ 19, %bb.gv ], [ 20, %bb.gy ], [ 21, %bb.hb ], [ 25, %bb.he ], [ 26, %bb.hh ]
  %.sroa.235.sroa.6.sroa.0.0.copyload = load i64, ptr %i.cr, align 8, !alias.scope !48185, !noalias !48184
end_hunk_2
begin_hunk_3_@_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser5parse:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !48180
  br label %bb.fe

bb.gw:                                            ; preds = %bb.ex
  %i.wx = load i8, ptr %i.gx, align 8, !range !45, !noalias !48180, !noundef !28 ; 2 uses
  %.not1247.i = icmp eq i8 %i.wx, -1
  %i.wy = load i8, ptr %i.an, align 8, !noalias !48180 ; 2 uses
  br i1 %.not1247.i, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %.sroa.41038.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1235 = load i24, ptr %.sroa.41038.0..sroa_idx.i, align 1, !noalias !48181
  %.sroa.50.sroa.67.1..sroa.41038.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.sroa.50.sroa.67.1.copyload1133 = load i32, ptr %.sroa.50.sroa.67.1..sroa.41038.0..sroa_idx.i.sroa_idx, align 4, !noalias !48181
  %.sroa.122.9..sroa.41038.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.122.9.copyload343 = load i64, ptr %.sroa.122.9..sroa.41038.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181 ; 2 uses
  %.sroa.122.sroa.0.0.extract.trunc945 = trunc i64 %.sroa.122.9.copyload343 to i32
  %.sroa.122.sroa.48.0.extract.shift1000 = lshr i64 %.sroa.122.9.copyload343, 32
  %.sroa.122.sroa.48.0.extract.trunc1001 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift1000 to i32
  %.sroa.132.9..sroa.41038.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.132.9.copyload384 = load i64, ptr %.sroa.132.9..sroa.41038.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.137.9..sroa.41038.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.137.9.copyload425 = load i64, ptr %.sroa.137.9..sroa.41038.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.142.9..sroa.41038.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.sroa.142.9.copyload466 = load i64, ptr %.sroa.142.9..sroa.41038.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.146.9..sroa.41038.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.146.9.copyload507 = load i64, ptr %.sroa.146.9..sroa.41038.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.150.9..sroa.41038.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %.sroa.150.9.copyload548 = load i64, ptr %.sroa.150.9..sroa.41038.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.154.9..sroa.41038.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %.sroa.154.9.copyload589 = load i64, ptr %.sroa.154.9..sroa.41038.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.158.9..sroa.41038.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %.sroa.158.9.copyload630 = load i64, ptr %.sroa.158.9..sroa.41038.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181 ; 2 uses
  %.sroa.158.sroa.0.0.extract.trunc816 = trunc i64 %.sroa.158.9.copyload630 to i8
  %.sroa.158.sroa.48.0.extract.shift871 = lshr i64 %.sroa.158.9.copyload630, 8
  %.sroa.158.sroa.48.0.extract.trunc872 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift871 to i56
  %.sroa.61040.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 73
  %.sroa.164.sroa.48.sroa.0.0.copyload785 = load i56, ptr %.sroa.61040.0..sroa_idx.i, align 1, !noalias !48181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !48180
  br label %bb.km

bb.gy:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !48180
  br label %bb.fe

bb.gz:                                            ; preds = %bb.ey
  %i.wz = load i8, ptr %i.gw, align 8, !range !45, !noalias !48180, !noundef !28 ; 2 uses
  %.not1246.i = icmp eq i8 %i.wz, -1
  %i.xa = load i8, ptr %i.am, align 8, !noalias !48180 ; 2 uses
  br i1 %.not1246.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %.sroa.41050.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1234 = load i24, ptr %.sroa.41050.0..sroa_idx.i, align 1, !noalias !48181
  %.sroa.50.sroa.67.1..sroa.41050.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.sroa.50.sroa.67.1.copyload1132 = load i32, ptr %.sroa.50.sroa.67.1..sroa.41050.0..sroa_idx.i.sroa_idx, align 4, !noalias !48181
  %.sroa.122.9..sroa.41050.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.122.9.copyload342 = load i64, ptr %.sroa.122.9..sroa.41050.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181 ; 2 uses
  %.sroa.122.sroa.0.0.extract.trunc944 = trunc i64 %.sroa.122.9.copyload342 to i32
  %.sroa.122.sroa.48.0.extract.shift998 = lshr i64 %.sroa.122.9.copyload342, 32
  %.sroa.122.sroa.48.0.extract.trunc999 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift998 to i32
  %.sroa.132.9..sroa.41050.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.132.9.copyload383 = load i64, ptr %.sroa.132.9..sroa.41050.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.137.9..sroa.41050.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.137.9.copyload424 = load i64, ptr %.sroa.137.9..sroa.41050.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.142.9..sroa.41050.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.142.9.copyload465 = load i64, ptr %.sroa.142.9..sroa.41050.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.146.9..sroa.41050.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.146.9.copyload506 = load i64, ptr %.sroa.146.9..sroa.41050.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.150.9..sroa.41050.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.sroa.150.9.copyload547 = load i64, ptr %.sroa.150.9..sroa.41050.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.154.9..sroa.41050.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %.sroa.154.9.copyload588 = load i64, ptr %.sroa.154.9..sroa.41050.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.158.9..sroa.41050.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %.sroa.158.9.copyload629 = load i64, ptr %.sroa.158.9..sroa.41050.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181 ; 2 uses
  %.sroa.158.sroa.0.0.extract.trunc815 = trunc i64 %.sroa.158.9.copyload629 to i8
  %.sroa.158.sroa.48.0.extract.shift869 = lshr i64 %.sroa.158.9.copyload629, 8
  %.sroa.158.sroa.48.0.extract.trunc870 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift869 to i56
  %.sroa.61052.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 73
  %.sroa.164.sroa.48.sroa.0.0.copyload784 = load i56, ptr %.sroa.61052.0..sroa_idx.i, align 1, !noalias !48181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !48180
  br label %bb.km

bb.hb:                                            ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !48180
  br label %bb.fe

bb.hc:                                            ; preds = %bb.ez
  %i.xb = load i8, ptr %i.gv, align 8, !range !45, !noalias !48180, !noundef !28 ; 2 uses
  %.not1245.i = icmp eq i8 %i.xb, -1
  %i.xc = load i8, ptr %i.al, align 8, !noalias !48180 ; 2 uses
  br i1 %.not1245.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %.sroa.41062.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1233 = load i24, ptr %.sroa.41062.0..sroa_idx.i, align 1, !noalias !48181
  %.sroa.50.sroa.67.1..sroa.41062.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.50.sroa.67.1.copyload1131 = load i32, ptr %.sroa.50.sroa.67.1..sroa.41062.0..sroa_idx.i.sroa_idx, align 4, !noalias !48181
  %.sroa.122.9..sroa.41062.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.122.9.copyload341 = load i64, ptr %.sroa.122.9..sroa.41062.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181 ; 2 uses
  %.sroa.122.sroa.0.0.extract.trunc943 = trunc i64 %.sroa.122.9.copyload341 to i32
  %.sroa.122.sroa.48.0.extract.shift996 = lshr i64 %.sroa.122.9.copyload341, 32
  %.sroa.122.sroa.48.0.extract.trunc997 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift996 to i32
  %.sroa.132.9..sroa.41062.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.132.9.copyload382 = load i64, ptr %.sroa.132.9..sroa.41062.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.137.9..sroa.41062.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.137.9.copyload423 = load i64, ptr %.sroa.137.9..sroa.41062.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.142.9..sroa.41062.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.142.9.copyload464 = load i64, ptr %.sroa.142.9..sroa.41062.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.146.9..sroa.41062.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.sroa.146.9.copyload505 = load i64, ptr %.sroa.146.9..sroa.41062.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.150.9..sroa.41062.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %.sroa.150.9.copyload546 = load i64, ptr %.sroa.150.9..sroa.41062.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.154.9..sroa.41062.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %.sroa.154.9.copyload587 = load i64, ptr %.sroa.154.9..sroa.41062.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.158.9..sroa.41062.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %.sroa.158.9.copyload628 = load i64, ptr %.sroa.158.9..sroa.41062.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181 ; 2 uses
  %.sroa.158.sroa.0.0.extract.trunc814 = trunc i64 %.sroa.158.9.copyload628 to i8
  %.sroa.158.sroa.48.0.extract.shift867 = lshr i64 %.sroa.158.9.copyload628, 8
  %.sroa.158.sroa.48.0.extract.trunc868 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift867 to i56
  %.sroa.61064.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 73
  %.sroa.164.sroa.48.sroa.0.0.copyload783 = load i56, ptr %.sroa.61064.0..sroa_idx.i, align 1, !noalias !48181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !48180
  br label %bb.km

bb.he:                                            ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !48180
  br label %bb.fe

bb.hf:                                            ; preds = %bb.fa
  %i.xd = load i8, ptr %i.gu, align 8, !range !45, !noalias !48180, !noundef !28 ; 2 uses
  %.not1244.i = icmp eq i8 %i.xd, -1
  %i.xe = load i8, ptr %i.ak, align 8, !noalias !48180 ; 2 uses
  br i1 %.not1244.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %.sroa.41074.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload = load i24, ptr %.sroa.41074.0..sroa_idx.i, align 1, !noalias !48181
  %.sroa.50.sroa.67.1..sroa.41074.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.sroa.50.sroa.67.1.copyload = load i32, ptr %.sroa.50.sroa.67.1..sroa.41074.0..sroa_idx.i.sroa_idx, align 4, !noalias !48181
  %.sroa.122.9..sroa.41074.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.122.9.copyload = load i64, ptr %.sroa.122.9..sroa.41074.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181 ; 2 uses
  %.sroa.122.sroa.0.0.extract.trunc942 = trunc i64 %.sroa.122.9.copyload to i32
  %.sroa.122.sroa.48.0.extract.shift994 = lshr i64 %.sroa.122.9.copyload, 32
  %.sroa.122.sroa.48.0.extract.trunc995 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift994 to i32
  %.sroa.132.9..sroa.41074.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.132.9.copyload = load i64, ptr %.sroa.132.9..sroa.41074.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.137.9..sroa.41074.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.137.9.copyload = load i64, ptr %.sroa.137.9..sroa.41074.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.142.9..sroa.41074.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.142.9.copyload = load i64, ptr %.sroa.142.9..sroa.41074.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.146.9..sroa.41074.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.146.9.copyload = load i64, ptr %.sroa.146.9..sroa.41074.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.150.9..sroa.41074.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %.sroa.150.9.copyload = load i64, ptr %.sroa.150.9..sroa.41074.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.154.9..sroa.41074.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %.sroa.154.9.copyload = load i64, ptr %.sroa.154.9..sroa.41074.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.158.9..sroa.41074.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %.sroa.158.9.copyload = load i64, ptr %.sroa.158.9..sroa.41074.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181 ; 2 uses
  %.sroa.158.sroa.0.0.extract.trunc813 = trunc i64 %.sroa.158.9.copyload to i8
  %.sroa.158.sroa.48.0.extract.shift865 = lshr i64 %.sroa.158.9.copyload, 8
  %.sroa.158.sroa.48.0.extract.trunc866 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift865 to i56
  %.sroa.61076.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 73
  %.sroa.164.sroa.48.sroa.0.0.copyload782 = load i56, ptr %.sroa.61076.0..sroa_idx.i, align 1, !noalias !48181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !48180
  br label %bb.km

bb.hh:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !48180
  br label %bb.fe

bb.hi:                                            ; preds = %bb.eh
  %i.xf = load i8, ptr %i.hn, align 8, !range !45, !noalias !48180, !noundef !28 ; 2 uses
  %.not1263.i = icmp eq i8 %i.xf, -1
  br i1 %.not1263.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %.sroa.01103.0.copyload.i = load ptr, ptr %i.aj, align 8, !noalias !48180
  %.sroa.41104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.41104.0.copyload.i = load i64, ptr %.sroa.41104.0..sroa_idx.i, align 8, !noalias !48180 ; 2 uses
  %.sroa.51105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.51105.0.copyload.i = load ptr, ptr %.sroa.51105.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.61106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.61106.0.copyload.i = load i64, ptr %.sroa.61106.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.71107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.71107.0.copyload.i = load i64, ptr %.sroa.71107.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.81108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.81108.0.copyload.i = load i64, ptr %.sroa.81108.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.91109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %.sroa.91109.0.copyload.i = load i64, ptr %.sroa.91109.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.101110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.sroa.101110.0.copyload.i = load i64, ptr %.sroa.101110.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.111111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %.sroa.111111.0.copyload.i = load i8, ptr %.sroa.111111.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.121112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 65
  %.sroa.15478.i.sroa.0.0.copyload = load i56, ptr %.sroa.121112.0..sroa_idx.i, align 1, !noalias !48180
  %.sroa.141114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 73
  %.sroa.164.sroa.48.sroa.0.0.copyload801 = load i56, ptr %.sroa.141114.0..sroa_idx.i, align 1, !noalias !48181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !48180
  %i.xg = ptrtoint ptr %.sroa.01103.0.copyload.i to i64 ; 3 uses
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1164 = trunc i64 %i.xg to i8
  %13 = lshr i64 %i.xg, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1199 = trunc i64 %13 to i24
  %.sroa.50.sroa.67.0.extract.shift1097 = lshr i64 %i.xg, 32
  %.sroa.50.sroa.67.0.extract.trunc1098 = trunc nuw i64 %.sroa.50.sroa.67.0.extract.shift1097 to i32
  %.sroa.122.sroa.0.0.extract.trunc973 = trunc i64 %.sroa.41104.0.copyload.i to i32
  %.sroa.122.sroa.48.0.extract.shift1054 = lshr i64 %.sroa.41104.0.copyload.i, 32
  %.sroa.122.sroa.48.0.extract.trunc1055 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift1054 to i32
  %i.xh = ptrtoint ptr %.sroa.51105.0.copyload.i to i64
  br label %bb.km

bb.hk:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !48180
  switch i8 %i.vo, label %bb.kc [
    i8 6, label %bb.hl
    i8 7, label %bb.hm
    i8 10, label %bb.hn
    i8 22, label %bb.ho
    i8 25, label %bb.hp
    i8 31, label %bb.hq
    i8 33, label %bb.hr
    i8 34, label %bb.hs
    i8 39, label %bb.ht
    i8 40, label %bb.hu
  ]

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser31parse_expression_with_condition(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek, i1 noundef zeroext false)
          to label %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit.i105 unwind label %.loopexit1845, !noalias !48179, !inline_history !10

bb.hm:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser31parse_expression_with_condition(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek, i1 noundef zeroext false)
          to label %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1280.i unwind label %.loopexit1845, !noalias !48179, !inline_history !10

bb.hn:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser31parse_expression_with_condition(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek, i1 noundef zeroext false)
          to label %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1282.i unwind label %.loopexit1845, !noalias !48179, !inline_history !10

bb.ho:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser31parse_expression_with_condition(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek, i1 noundef zeroext false)
          to label %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1284.i unwind label %.loopexit1845, !noalias !48179, !inline_history !10

bb.hp:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !48180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser31parse_expression_with_condition(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek, i1 noundef zeroext false)
          to label %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1286.i unwind label %.loopexit1845, !noalias !48179, !inline_history !10

bb.hq:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser17parse_interpreter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.jp unwind label %.loopexit1845, !noalias !48179

bb.hr:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser17parse_interpreter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.js unwind label %.loopexit1845, !noalias !48179

bb.hs:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser31parse_expression_with_condition(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek, i1 noundef zeroext false)
          to label %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1288.i unwind label %.loopexit1845, !noalias !48179, !inline_history !10

bb.ht:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser17parse_interpreter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %bb.jx unwind label %.loopexit1845, !noalias !48179

bb.hu:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser31parse_expression_with_condition(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek, i1 noundef zeroext false)
          to label %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1290.i unwind label %.loopexit1845, !noalias !48179, !inline_history !10

_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit.i105: ; preds = %bb.hl
  %i.xi = load i64, ptr %i.ai, align 8, !range !39, !noalias !48180, !noundef !28 ; 2 uses
  %i.xj = icmp eq i64 %i.xi, -1
  %.sroa.01133.0.copyload.i = load i32, ptr %.sroa.41128.0..sroa_idx.i, align 8, !noalias !48180 ; 3 uses
  %.sroa.6524.sroa.7.i.sroa.0.0.copyload1490 = load i32, ptr %.sroa.51129.0..sroa_idx.i, align 4, !noalias !48180 ; 2 uses
  %.sroa.6524.sroa.7.i.sroa.7.0.copyload1492 = load i64, ptr %.sroa.6524.sroa.7.i.sroa.7.0..sroa.51129.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6524.sroa.7.i.sroa.8.0.copyload1494 = load i64, ptr %.sroa.6524.sroa.7.i.sroa.8.0..sroa.51129.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6524.sroa.7.i.sroa.9.0.copyload1496 = load i64, ptr %.sroa.6524.sroa.7.i.sroa.9.0..sroa.51129.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6524.sroa.7.i.sroa.10.0.copyload1498 = load i64, ptr %.sroa.6524.sroa.7.i.sroa.10.0..sroa.51129.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6524.sroa.7.i.sroa.11.0.copyload1500 = load i64, ptr %.sroa.6524.sroa.7.i.sroa.11.0..sroa.51129.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6524.sroa.7.i.sroa.12.0.copyload1502 = load i64, ptr %.sroa.6524.sroa.7.i.sroa.12.0..sroa.51129.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6524.sroa.7.i.sroa.13.0.copyload1504 = load i64, ptr %.sroa.6524.sroa.7.i.sroa.13.0..sroa.51129.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6524.sroa.7.i.sroa.14.0.copyload1506 = load i64, ptr %.sroa.6524.sroa.7.i.sroa.14.0..sroa.51129.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6524.sroa.7.i.sroa.15.0.copyload1508 = load i64, ptr %.sroa.6524.sroa.7.i.sroa.15.0..sroa.51129.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  br i1 %i.xj, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !48180
  %.sroa.122.sroa.0.0.extract.trunc968 = trunc i64 %.sroa.6524.sroa.7.i.sroa.7.0.copyload1492 to i32
  %.sroa.122.sroa.48.0.extract.shift1046 = lshr i64 %.sroa.6524.sroa.7.i.sroa.7.0.copyload1492, 32
  %.sroa.122.sroa.48.0.extract.trunc1047 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift1046 to i32
  %.sroa.158.sroa.0.0.extract.trunc839 = trunc i64 %.sroa.6524.sroa.7.i.sroa.14.0.copyload1506 to i8
  %.sroa.158.sroa.48.0.extract.shift917 = lshr i64 %.sroa.6524.sroa.7.i.sroa.14.0.copyload1506, 8
  %.sroa.158.sroa.48.0.extract.trunc918 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift917 to i56
  %.sroa.164.sroa.0.0.extract.trunc734 = trunc i64 %.sroa.6524.sroa.7.i.sroa.15.0.copyload1508 to i8
  %.sroa.164.sroa.48.0.extract.shift770 = lshr i64 %.sroa.6524.sroa.7.i.sroa.15.0.copyload1508, 8
  %.sroa.164.sroa.48.0.extract.trunc771 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift770 to i56
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1162 = trunc i32 %.sroa.01133.0.copyload.i to i8
  %.sroa.50.sroa.0.sroa.48.0.extract.shift1194 = lshr i32 %.sroa.01133.0.copyload.i, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1195 = trunc nuw i32 %.sroa.50.sroa.0.sroa.48.0.extract.shift1194 to i24
  br label %bb.km

bb.hw:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit.i105
  %i.xk = load <2 x i64>, ptr %.sroa.61130.0..sroa_idx.i, align 8, !noalias !48180
  %i.xl = load <2 x i64>, ptr %.sroa.5686.i.sroa.14.0..sroa.61130.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  %.sroa.5686.i.sroa.16.0.copyload1730 = load i64, ptr %.sroa.5686.i.sroa.16.0..sroa.61130.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !48180
  br label %bb.hx

bb.hx:                                            ; preds = %bb.kb, %bb.jz, %bb.jw, %bb.ju, %bb.jr, %bb.jf, %bb.ik, %bb.ib, %bb.hz, %bb.hw
  %.sroa.9610.i.sroa.85.0 = phi i64 [ %.sroa.6524.sroa.7.i.sroa.15.0.copyload1508, %bb.hw ], [ %.sroa.6546.sroa.7.i.sroa.15.0.copyload1528, %bb.hz ], [ %.sroa.6561.sroa.7.i.sroa.15.0.copyload1548, %bb.ib ], [ %.sroa.6570.i.sroa.14.0.copyload1566, %bb.ik ], [ %.sroa.9610.i.sroa.85.0.copyload, %bb.jf ], [ %.sroa.6680.sroa.7.i.sroa.15.0.copyload1608, %bb.jr ], [ %.sroa.6701.sroa.7.i.sroa.15.0.copyload1628, %bb.ju ], [ %.sroa.6723.sroa.7.i.sroa.15.0.copyload1648, %bb.jw ], [ %.sroa.6745.sroa.7.i.sroa.15.0.copyload1668, %bb.jz ], [ %.sroa.6767.sroa.7.i.sroa.15.0.copyload1688, %bb.kb ]
  %.sroa.9610.i.sroa.76.0 = phi i64 [ %.sroa.6524.sroa.7.i.sroa.14.0.copyload1506, %bb.hw ], [ %.sroa.6546.sroa.7.i.sroa.14.0.copyload1526, %bb.hz ], [ %.sroa.6561.sroa.7.i.sroa.14.0.copyload1546, %bb.ib ], [ %.sroa.6570.i.sroa.13.0.copyload1564, %bb.ik ], [ %.sroa.6638.i.sroa.15.0.copyload1588, %bb.jf ], [ %.sroa.6680.sroa.7.i.sroa.14.0.copyload1606, %bb.jr ], [ %.sroa.6701.sroa.7.i.sroa.14.0.copyload1626, %bb.ju ], [ %.sroa.6723.sroa.7.i.sroa.14.0.copyload1646, %bb.jw ], [ %.sroa.6745.sroa.7.i.sroa.14.0.copyload1666, %bb.jz ], [ %.sroa.6767.sroa.7.i.sroa.14.0.copyload1686, %bb.kb ]
  %.sroa.9610.i.sroa.67.0 = phi i64 [ %.sroa.6524.sroa.7.i.sroa.13.0.copyload1504, %bb.hw ], [ %.sroa.6546.sroa.7.i.sroa.13.0.copyload1524, %bb.hz ], [ %.sroa.6561.sroa.7.i.sroa.13.0.copyload1544, %bb.ib ], [ %.sroa.6570.i.sroa.12.0.copyload1562, %bb.ik ], [ %.sroa.6638.i.sroa.14.0.copyload1586, %bb.jf ], [ %.sroa.6680.sroa.7.i.sroa.13.0.copyload1604, %bb.jr ], [ %.sroa.6701.sroa.7.i.sroa.13.0.copyload1624, %bb.ju ], [ %.sroa.6723.sroa.7.i.sroa.13.0.copyload1644, %bb.jw ], [ %.sroa.6745.sroa.7.i.sroa.13.0.copyload1664, %bb.jz ], [ %.sroa.6767.sroa.7.i.sroa.13.0.copyload1684, %bb.kb ]
  %.sroa.9610.i.sroa.58.0 = phi i64 [ %.sroa.6524.sroa.7.i.sroa.12.0.copyload1502, %bb.hw ], [ %.sroa.6546.sroa.7.i.sroa.12.0.copyload1522, %bb.hz ], [ %.sroa.6561.sroa.7.i.sroa.12.0.copyload1542, %bb.ib ], [ %.sroa.6570.i.sroa.11.0.copyload1560, %bb.ik ], [ %.sroa.6638.i.sroa.13.0.copyload1584, %bb.jf ], [ %.sroa.6680.sroa.7.i.sroa.12.0.copyload1602, %bb.jr ], [ %.sroa.6701.sroa.7.i.sroa.12.0.copyload1622, %bb.ju ], [ %.sroa.6723.sroa.7.i.sroa.12.0.copyload1642, %bb.jw ], [ %.sroa.6745.sroa.7.i.sroa.12.0.copyload1662, %bb.jz ], [ %.sroa.6767.sroa.7.i.sroa.12.0.copyload1682, %bb.kb ]
  %.sroa.9610.i.sroa.49.0 = phi i64 [ %.sroa.6524.sroa.7.i.sroa.11.0.copyload1500, %bb.hw ], [ %.sroa.6546.sroa.7.i.sroa.11.0.copyload1520, %bb.hz ], [ %.sroa.6561.sroa.7.i.sroa.11.0.copyload1540, %bb.ib ], [ %.sroa.6570.i.sroa.10.0.copyload1558, %bb.ik ], [ %.sroa.6638.i.sroa.12.0.copyload1582, %bb.jf ], [ %.sroa.6680.sroa.7.i.sroa.11.0.copyload1600, %bb.jr ], [ %.sroa.6701.sroa.7.i.sroa.11.0.copyload1620, %bb.ju ], [ %.sroa.6723.sroa.7.i.sroa.11.0.copyload1640, %bb.jw ], [ %.sroa.6745.sroa.7.i.sroa.11.0.copyload1660, %bb.jz ], [ %.sroa.6767.sroa.7.i.sroa.11.0.copyload1680, %bb.kb ]
  %.sroa.9610.i.sroa.40.0 = phi i64 [ %.sroa.6524.sroa.7.i.sroa.10.0.copyload1498, %bb.hw ], [ %.sroa.6546.sroa.7.i.sroa.10.0.copyload1518, %bb.hz ], [ %.sroa.6561.sroa.7.i.sroa.10.0.copyload1538, %bb.ib ], [ %.sroa.6570.i.sroa.9.0.copyload1556, %bb.ik ], [ %.sroa.6638.i.sroa.11.0.copyload1580, %bb.jf ], [ %.sroa.6680.sroa.7.i.sroa.10.0.copyload1598, %bb.jr ], [ %.sroa.6701.sroa.7.i.sroa.10.0.copyload1618, %bb.ju ], [ %.sroa.6723.sroa.7.i.sroa.10.0.copyload1638, %bb.jw ], [ %.sroa.6745.sroa.7.i.sroa.10.0.copyload1658, %bb.jz ], [ %.sroa.6767.sroa.7.i.sroa.10.0.copyload1678, %bb.kb ]
  %.sroa.9610.i.sroa.31.0 = phi i64 [ %.sroa.6524.sroa.7.i.sroa.9.0.copyload1496, %bb.hw ], [ %.sroa.6546.sroa.7.i.sroa.9.0.copyload1516, %bb.hz ], [ %.sroa.6561.sroa.7.i.sroa.9.0.copyload1536, %bb.ib ], [ %.sroa.6570.i.sroa.8.0.copyload1554, %bb.ik ], [ %.sroa.6638.i.sroa.10.0.copyload1578, %bb.jf ], [ %.sroa.6680.sroa.7.i.sroa.9.0.copyload1596, %bb.jr ], [ %.sroa.6701.sroa.7.i.sroa.9.0.copyload1616, %bb.ju ], [ %.sroa.6723.sroa.7.i.sroa.9.0.copyload1636, %bb.jw ], [ %.sroa.6745.sroa.7.i.sroa.9.0.copyload1656, %bb.jz ], [ %.sroa.6767.sroa.7.i.sroa.9.0.copyload1676, %bb.kb ]
  %.sroa.9610.i.sroa.22.0 = phi i64 [ %.sroa.6524.sroa.7.i.sroa.8.0.copyload1494, %bb.hw ], [ %.sroa.6546.sroa.7.i.sroa.8.0.copyload1514, %bb.hz ], [ %.sroa.6561.sroa.7.i.sroa.8.0.copyload1534, %bb.ib ], [ %.sroa.6570.i.sroa.7.0.copyload1552, %bb.ik ], [ %.sroa.6638.i.sroa.9.0.copyload1576, %bb.jf ], [ %.sroa.6680.sroa.7.i.sroa.8.0.copyload1594, %bb.jr ], [ %.sroa.6701.sroa.7.i.sroa.8.0.copyload1614, %bb.ju ], [ %.sroa.6723.sroa.7.i.sroa.8.0.copyload1634, %bb.jw ], [ %.sroa.6745.sroa.7.i.sroa.8.0.copyload1654, %bb.jz ], [ %.sroa.6767.sroa.7.i.sroa.8.0.copyload1674, %bb.kb ]
  %.sroa.9610.i.sroa.12.0 = phi i64 [ %.sroa.6524.sroa.7.i.sroa.7.0.copyload1492, %bb.hw ], [ %.sroa.6546.sroa.7.i.sroa.7.0.copyload1512, %bb.hz ], [ %.sroa.6561.sroa.7.i.sroa.7.0.copyload1532, %bb.ib ], [ %.sroa.6570.i.sroa.0.0.copyload1550, %bb.ik ], [ %.sroa.6638.i.sroa.8.0.copyload1574, %bb.jf ], [ %.sroa.6680.sroa.7.i.sroa.7.0.copyload1592, %bb.jr ], [ %.sroa.6701.sroa.7.i.sroa.7.0.copyload1612, %bb.ju ], [ %.sroa.6723.sroa.7.i.sroa.7.0.copyload1632, %bb.jw ], [ %.sroa.6745.sroa.7.i.sroa.7.0.copyload1652, %bb.jz ], [ %.sroa.6767.sroa.7.i.sroa.7.0.copyload1672, %bb.kb ]
  %.sroa.9610.i.sroa.0.0 = phi i32 [ %.sroa.6524.sroa.7.i.sroa.0.0.copyload1490, %bb.hw ], [ %.sroa.6546.sroa.7.i.sroa.0.0.copyload1510, %bb.hz ], [ %.sroa.6561.sroa.7.i.sroa.0.0.copyload1530, %bb.ib ], [ undef, %bb.ik ], [ %i.zf, %bb.jf ], [ %.sroa.6680.sroa.7.i.sroa.0.0.copyload1590, %bb.jr ], [ %.sroa.6701.sroa.7.i.sroa.0.0.copyload1610, %bb.ju ], [ %.sroa.6723.sroa.7.i.sroa.0.0.copyload1630, %bb.jw ], [ %.sroa.6745.sroa.7.i.sroa.0.0.copyload1650, %bb.jz ], [ %.sroa.6767.sroa.7.i.sroa.0.0.copyload1670, %bb.kb ]
  %.sroa.5686.i.sroa.21.0 = phi i56 [ undef, %bb.hw ], [ undef, %bb.hz ], [ undef, %bb.ib ], [ undef, %bb.ik ], [ undef, %bb.jf ], [ %.sroa.5686.i.sroa.21.0.copyload, %bb.jr ], [ %.sroa.5708.i.sroa.10.0.copyload, %bb.ju ], [ undef, %bb.jw ], [ %.sroa.5752.i.sroa.10.0.copyload, %bb.jz ], [ undef, %bb.kb ]
  %.sroa.5686.i.sroa.20.0 = phi i8 [ undef, %bb.hw ], [ undef, %bb.hz ], [ undef, %bb.ib ], [ undef, %bb.ik ], [ undef, %bb.jf ], [ %.sroa.5686.i.sroa.20.0.copyload, %bb.jr ], [ %.sroa.5708.i.sroa.9.0.copyload, %bb.ju ], [ undef, %bb.jw ], [ %.sroa.5752.i.sroa.9.0.copyload, %bb.jz ], [ undef, %bb.kb ]
  %.sroa.5686.i.sroa.16.0 = phi i64 [ %.sroa.5686.i.sroa.16.0.copyload1730, %bb.hw ], [ %.sroa.5686.i.sroa.16.0.copyload1729, %bb.hz ], [ %.sroa.5686.i.sroa.16.0.copyload1728, %bb.ib ], [ undef, %bb.ik ], [ undef, %bb.jf ], [ %.sroa.5686.i.sroa.16.0.copyload, %bb.jr ], [ %.sroa.5708.i.sroa.7.0.copyload, %bb.ju ], [ %.sroa.5686.i.sroa.16.0.copyload1726, %bb.jw ], [ %.sroa.5752.i.sroa.7.0.copyload, %bb.jz ], [ %.sroa.5686.i.sroa.16.0.copyload1724, %bb.kb ]
  %.sroa.0498.0.i = phi i64 [ 4, %bb.hw ], [ 5, %bb.hz ], [ 8, %bb.ib ], [ 14, %bb.ik ], [ 17, %bb.jf ], [ 22, %bb.jr ], [ 23, %bb.ju ], [ 24, %bb.jw ], [ 27, %bb.jz ], [ 28, %bb.kb ]
  %.sroa.16509.sroa.15.0.i = phi i64 [ %i.xi, %bb.hw ], [ %i.xt, %bb.hz ], [ %i.xx, %bb.ib ], [ %i.yr, %bb.ik ], [ %.sroa.0667.0.copyload.i, %bb.jf ], [ %i.aal, %bb.jr ], [ %i.aap, %bb.ju ], [ %i.aat, %bb.jw ], [ %i.aax, %bb.jz ], [ %i.abb, %bb.kb ]
  %.sroa.16509.sroa.16.sroa.0.0.i = phi i32 [ %.sroa.01133.0.copyload.i, %bb.hw ], [ %.sroa.01143.0.copyload.i, %bb.hz ], [ %.sroa.01153.0.copyload.i, %bb.ib ], [ %i.ys, %bb.ik ], [ %i.zo, %bb.jf ], [ %.sroa.01195.0.copyload.i, %bb.jr ], [ %.sroa.01205.0.copyload.i, %bb.ju ], [ %.sroa.01215.0.copyload.i, %bb.jw ], [ %.sroa.01225.0.copyload.i, %bb.jz ], [ %.sroa.01235.0.copyload.i, %bb.kb ]
  %i.xm = phi <2 x i64> [ %i.xk, %bb.hw ], [ %i.xv, %bb.hz ], [ %i.xz, %bb.ib ], [ %i.yv, %bb.ik ], [ %i.aag, %bb.jf ], [ %i.aan, %bb.jr ], [ %i.aar, %bb.ju ], [ %i.aav, %bb.jw ], [ %i.aaz, %bb.jz ], [ %i.abd, %bb.kb ]
  %i.xn = phi <2 x i64> [ %i.xl, %bb.hw ], [ %i.xw, %bb.hz ], [ %i.ya, %bb.ib ], [ %i.yt, %bb.ik ], [ undef, %bb.jf ], [ %i.aao, %bb.jr ], [ %i.aas, %bb.ju ], [ %i.aaw, %bb.jw ], [ %i.aba, %bb.jz ], [ %i.abe, %bb.kb ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.221, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5686.i.sroa.17, i64 16, i1 false), !noalias !48181
  %.sroa.235.sroa.6.sroa.0.0.copyload10660 = load i64, ptr %i.cr, align 8, !alias.scope !48185, !noalias !48184
  %.sroa.235.sroa.6.sroa.6.0.copyload10662 = load i64, ptr %.sroa.235.sroa.6.sroa.6.0..sroa_idx10661, align 8, !alias.scope !48185, !noalias !48184
  %.sroa.238.232.copyload717 = load i8, ptr %.sroa.57.0..sroa_idx.i1315.i.i, align 8, !alias.scope !48185, !noalias !48184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.239, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.239.232..sroa_idx, i64 7, i1 false), !alias.scope !48185, !noalias !48184
  %i.xo = zext i32 %.sroa.9610.i.sroa.0.0 to i64
  %i.xp = shl nuw i64 %i.xo, 32
  %i.xq = zext i32 %.sroa.16509.sroa.16.sroa.0.0.i to i64
  %i.xr = or disjoint i64 %i.xp, %i.xq
  %i.xs = inttoptr i64 %.sroa.9610.i.sroa.49.0 to ptr
  br label %bb.ko

_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1280.i: ; preds = %bb.hm
  %i.xt = load i64, ptr %i.ah, align 8, !range !39, !noalias !48180, !noundef !28 ; 2 uses
  %i.xu = icmp eq i64 %i.xt, -1
  %.sroa.01143.0.copyload.i = load i32, ptr %.sroa.41138.0..sroa_idx.i, align 8, !noalias !48180 ; 3 uses
  %.sroa.6546.sroa.7.i.sroa.0.0.copyload1510 = load i32, ptr %.sroa.51139.0..sroa_idx.i, align 4, !noalias !48180 ; 2 uses
  %.sroa.6546.sroa.7.i.sroa.7.0.copyload1512 = load i64, ptr %.sroa.6546.sroa.7.i.sroa.7.0..sroa.51139.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6546.sroa.7.i.sroa.8.0.copyload1514 = load i64, ptr %.sroa.6546.sroa.7.i.sroa.8.0..sroa.51139.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6546.sroa.7.i.sroa.9.0.copyload1516 = load i64, ptr %.sroa.6546.sroa.7.i.sroa.9.0..sroa.51139.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6546.sroa.7.i.sroa.10.0.copyload1518 = load i64, ptr %.sroa.6546.sroa.7.i.sroa.10.0..sroa.51139.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6546.sroa.7.i.sroa.11.0.copyload1520 = load i64, ptr %.sroa.6546.sroa.7.i.sroa.11.0..sroa.51139.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6546.sroa.7.i.sroa.12.0.copyload1522 = load i64, ptr %.sroa.6546.sroa.7.i.sroa.12.0..sroa.51139.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6546.sroa.7.i.sroa.13.0.copyload1524 = load i64, ptr %.sroa.6546.sroa.7.i.sroa.13.0..sroa.51139.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6546.sroa.7.i.sroa.14.0.copyload1526 = load i64, ptr %.sroa.6546.sroa.7.i.sroa.14.0..sroa.51139.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6546.sroa.7.i.sroa.15.0.copyload1528 = load i64, ptr %.sroa.6546.sroa.7.i.sroa.15.0..sroa.51139.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  br i1 %i.xu, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1280.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !48180
  %.sroa.122.sroa.0.0.extract.trunc967 = trunc i64 %.sroa.6546.sroa.7.i.sroa.7.0.copyload1512 to i32
  %.sroa.122.sroa.48.0.extract.shift1044 = lshr i64 %.sroa.6546.sroa.7.i.sroa.7.0.copyload1512, 32
  %.sroa.122.sroa.48.0.extract.trunc1045 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift1044 to i32
  %.sroa.158.sroa.0.0.extract.trunc838 = trunc i64 %.sroa.6546.sroa.7.i.sroa.14.0.copyload1526 to i8
  %.sroa.158.sroa.48.0.extract.shift915 = lshr i64 %.sroa.6546.sroa.7.i.sroa.14.0.copyload1526, 8
  %.sroa.158.sroa.48.0.extract.trunc916 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift915 to i56
  %.sroa.164.sroa.0.0.extract.trunc733 = trunc i64 %.sroa.6546.sroa.7.i.sroa.15.0.copyload1528 to i8
  %.sroa.164.sroa.48.0.extract.shift768 = lshr i64 %.sroa.6546.sroa.7.i.sroa.15.0.copyload1528, 8
  %.sroa.164.sroa.48.0.extract.trunc769 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift768 to i56
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1161 = trunc i32 %.sroa.01143.0.copyload.i to i8
  %.sroa.50.sroa.0.sroa.48.0.extract.shift1192 = lshr i32 %.sroa.01143.0.copyload.i, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1193 = trunc nuw i32 %.sroa.50.sroa.0.sroa.48.0.extract.shift1192 to i24
  br label %bb.km

bb.hz:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1280.i
  %i.xv = load <2 x i64>, ptr %.sroa.61140.0..sroa_idx.i, align 8, !noalias !48180
  %i.xw = load <2 x i64>, ptr %.sroa.5686.i.sroa.14.0..sroa.61140.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  %.sroa.5686.i.sroa.16.0.copyload1729 = load i64, ptr %.sroa.5686.i.sroa.16.0..sroa.61140.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !48180
  br label %bb.hx

_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1282.i: ; preds = %bb.hn
  %i.xx = load i64, ptr %i.ag, align 8, !range !39, !noalias !48180, !noundef !28 ; 2 uses
  %i.xy = icmp eq i64 %i.xx, -1
  %.sroa.01153.0.copyload.i = load i32, ptr %.sroa.41148.0..sroa_idx.i, align 8, !noalias !48180 ; 3 uses
  %.sroa.6561.sroa.7.i.sroa.0.0.copyload1530 = load i32, ptr %.sroa.51149.0..sroa_idx.i, align 4, !noalias !48180 ; 2 uses
  %.sroa.6561.sroa.7.i.sroa.7.0.copyload1532 = load i64, ptr %.sroa.6561.sroa.7.i.sroa.7.0..sroa.51149.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6561.sroa.7.i.sroa.8.0.copyload1534 = load i64, ptr %.sroa.6561.sroa.7.i.sroa.8.0..sroa.51149.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6561.sroa.7.i.sroa.9.0.copyload1536 = load i64, ptr %.sroa.6561.sroa.7.i.sroa.9.0..sroa.51149.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6561.sroa.7.i.sroa.10.0.copyload1538 = load i64, ptr %.sroa.6561.sroa.7.i.sroa.10.0..sroa.51149.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6561.sroa.7.i.sroa.11.0.copyload1540 = load i64, ptr %.sroa.6561.sroa.7.i.sroa.11.0..sroa.51149.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6561.sroa.7.i.sroa.12.0.copyload1542 = load i64, ptr %.sroa.6561.sroa.7.i.sroa.12.0..sroa.51149.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6561.sroa.7.i.sroa.13.0.copyload1544 = load i64, ptr %.sroa.6561.sroa.7.i.sroa.13.0..sroa.51149.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6561.sroa.7.i.sroa.14.0.copyload1546 = load i64, ptr %.sroa.6561.sroa.7.i.sroa.14.0..sroa.51149.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6561.sroa.7.i.sroa.15.0.copyload1548 = load i64, ptr %.sroa.6561.sroa.7.i.sroa.15.0..sroa.51149.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  br i1 %i.xy, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1282.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !48180
  %.sroa.122.sroa.0.0.extract.trunc966 = trunc i64 %.sroa.6561.sroa.7.i.sroa.7.0.copyload1532 to i32
  %.sroa.122.sroa.48.0.extract.shift1042 = lshr i64 %.sroa.6561.sroa.7.i.sroa.7.0.copyload1532, 32
  %.sroa.122.sroa.48.0.extract.trunc1043 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift1042 to i32
  %.sroa.158.sroa.0.0.extract.trunc837 = trunc i64 %.sroa.6561.sroa.7.i.sroa.14.0.copyload1546 to i8
  %.sroa.158.sroa.48.0.extract.shift913 = lshr i64 %.sroa.6561.sroa.7.i.sroa.14.0.copyload1546, 8
  %.sroa.158.sroa.48.0.extract.trunc914 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift913 to i56
  %.sroa.164.sroa.0.0.extract.trunc732 = trunc i64 %.sroa.6561.sroa.7.i.sroa.15.0.copyload1548 to i8
  %.sroa.164.sroa.48.0.extract.shift766 = lshr i64 %.sroa.6561.sroa.7.i.sroa.15.0.copyload1548, 8
  %.sroa.164.sroa.48.0.extract.trunc767 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift766 to i56
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1160 = trunc i32 %.sroa.01153.0.copyload.i to i8
  %.sroa.50.sroa.0.sroa.48.0.extract.shift1190 = lshr i32 %.sroa.01153.0.copyload.i, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1191 = trunc nuw i32 %.sroa.50.sroa.0.sroa.48.0.extract.shift1190 to i24
  br label %bb.km

bb.ib:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1282.i
  %i.xz = load <2 x i64>, ptr %.sroa.61150.0..sroa_idx.i, align 8, !noalias !48180
  %i.ya = load <2 x i64>, ptr %.sroa.5686.i.sroa.14.0..sroa.61150.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  %.sroa.5686.i.sroa.16.0.copyload1728 = load i64, ptr %.sroa.5686.i.sroa.16.0..sroa.61150.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !48180
  br label %bb.hx

_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1284.i: ; preds = %bb.ho
  %i.yb = load i64, ptr %i.af, align 8, !range !39, !noalias !48180, !noundef !28 ; 4 uses
  %i.yc = icmp eq i64 %i.yb, -1
  %.sroa.6570.i.sroa.0.0.copyload1550 = load i64, ptr %.sroa.41158.0..sroa_idx.i, align 8, !noalias !48180 ; 5 uses
  %.sroa.6570.i.sroa.7.0.copyload1552 = load i64, ptr %.sroa.6570.i.sroa.7.0..sroa.41158.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 4 uses
  %.sroa.6570.i.sroa.8.0.copyload1554 = load i64, ptr %.sroa.6570.i.sroa.8.0..sroa.41158.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6570.i.sroa.9.0.copyload1556 = load i64, ptr %.sroa.6570.i.sroa.9.0..sroa.41158.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6570.i.sroa.10.0.copyload1558 = load i64, ptr %.sroa.6570.i.sroa.10.0..sroa.41158.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6570.i.sroa.11.0.copyload1560 = load i64, ptr %.sroa.6570.i.sroa.11.0..sroa.41158.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6570.i.sroa.12.0.copyload1562 = load i64, ptr %.sroa.6570.i.sroa.12.0..sroa.41158.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6570.i.sroa.13.0.copyload1564 = load i64, ptr %.sroa.6570.i.sroa.13.0..sroa.41158.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6570.i.sroa.14.0.copyload1566 = load i64, ptr %.sroa.6570.i.sroa.14.0..sroa.41158.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 4 uses
  %.sroa.6570.i.sroa.15.0.copyload1568 = load i64, ptr %.sroa.6570.i.sroa.15.0..sroa.41158.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 4 uses
  br i1 %i.yc, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1284.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !48180
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1179 = trunc i64 %.sroa.6570.i.sroa.0.0.copyload1550 to i8
  %14 = lshr i64 %.sroa.6570.i.sroa.0.0.copyload1550, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1227 = trunc i64 %14 to i24
  %.sroa.50.sroa.67.0.extract.shift1125 = lshr i64 %.sroa.6570.i.sroa.0.0.copyload1550, 32
  %.sroa.50.sroa.67.0.extract.trunc1126 = trunc nuw i64 %.sroa.50.sroa.67.0.extract.shift1125 to i32
  %.sroa.122.sroa.0.0.extract.trunc939 = trunc i64 %.sroa.6570.i.sroa.7.0.copyload1552 to i32
  %.sroa.122.sroa.48.0.extract.shift988 = lshr i64 %.sroa.6570.i.sroa.7.0.copyload1552, 32
  %.sroa.122.sroa.48.0.extract.trunc989 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift988 to i32
  %.sroa.158.sroa.0.0.extract.trunc810 = trunc i64 %.sroa.6570.i.sroa.14.0.copyload1566 to i8
  %.sroa.158.sroa.48.0.extract.shift859 = lshr i64 %.sroa.6570.i.sroa.14.0.copyload1566, 8
  %.sroa.158.sroa.48.0.extract.trunc860 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift859 to i56
  %.sroa.164.sroa.0.0.extract.trunc725 = trunc i64 %.sroa.6570.i.sroa.15.0.copyload1568 to i8
  %.sroa.164.sroa.48.0.extract.shift752 = lshr i64 %.sroa.6570.i.sroa.15.0.copyload1568, 8
  %.sroa.164.sroa.48.0.extract.trunc753 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift752 to i56
  br label %bb.km

bb.id:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1284.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5576.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51159.0..sroa_idx.i, i64 40, i1 false), !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !48180
  store i64 %.sroa.6570.i.sroa.0.0.copyload1550, ptr %.sroa.4575.0..sroa_idx.i, align 8, !noalias !48180
  store i64 %.sroa.6570.i.sroa.7.0.copyload1552, ptr %.sroa.6570.i.sroa.7.0..sroa.4575.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6570.i.sroa.8.0.copyload1554, ptr %.sroa.6570.i.sroa.8.0..sroa.4575.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6570.i.sroa.9.0.copyload1556, ptr %.sroa.6570.i.sroa.9.0..sroa.4575.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6570.i.sroa.10.0.copyload1558, ptr %.sroa.6570.i.sroa.10.0..sroa.4575.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6570.i.sroa.11.0.copyload1560, ptr %.sroa.6570.i.sroa.11.0..sroa.4575.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6570.i.sroa.12.0.copyload1562, ptr %.sroa.6570.i.sroa.12.0..sroa.4575.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6570.i.sroa.13.0.copyload1564, ptr %.sroa.6570.i.sroa.13.0..sroa.4575.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6570.i.sroa.14.0.copyload1566, ptr %.sroa.6570.i.sroa.14.0..sroa.4575.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6570.i.sroa.15.0.copyload1568, ptr %.sroa.6570.i.sroa.15.0..sroa.4575.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %i.yb, ptr %i.y, align 8, !noalias !48180
  %i.yd = icmp ne i64 %i.yb, -9223372036854775801
  tail call void @llvm.assume(i1 %i.yd)
  %.not1357.i = icmp eq i64 %i.yb, -9223372036854775794
  br i1 %.not1357.i, label %bb.ie, label %bb.is

bb.ie:                                            ; preds = %bb.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !48180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4575.0..sroa_idx.i, i64 104, i1 false), !noalias !48180
  %i.ye = load i8, ptr %i.hy, align 2, !range !40, !noalias !48180, !noundef !28
  %i.yf = trunc nuw i8 %i.ye to i1
  %i.yg = load i8, ptr %i.hz, align 8, !range !40, !noalias !48180
  %i.yh = trunc nuw i8 %i.yg to i1
  %or.cond.i103 = select i1 %i.yf, i1 true, i1 %i.yh
  %i.yi = load i8, ptr %i.ia, align 1, !range !112, !noalias !48180
  %.not1267.i = icmp ne i8 %i.yi, -1
  %or.cond1273.not.i = select i1 %or.cond.i103, i1 true, i1 %.not1267.i
  br i1 %or.cond1273.not.i, label %bb.io, label %bb.if

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !48180
  %i.yj = load ptr, ptr %i.ib, align 8, !noalias !48180, !nonnull !28, !noundef !28
  %i.yk = load i64, ptr %i.ic, align 8, !noalias !48180, !noundef !28
  invoke void @_RNvXs1_NtCskXtk6F4WjxZ_4just11indentationNtB5_11IndentationNtNtNtCsj6eKBz9Db1c_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.yj, i64 noundef %i.yk)
          to label %bb.ii unwind label %.loopexit1855, !noalias !48181

.loopexit1855:                                    ; preds = %bb.if
  %lpad.loopexit1857 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

.loopexit.split-lp1856:                           ; preds = %bb.ij, %bb.io
  %lpad.loopexit.split-lp1858 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

bb.ig:                                            ; preds = %.loopexit.split-lp1856, %.loopexit1855
  %lpad.phi1859 = phi { ptr, i32 } [ %lpad.loopexit1857, %.loopexit1855 ], [ %lpad.loopexit.split-lp1858, %.loopexit.split-lp1856 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48186)
  call void @llvm.experimental.noalias.scope.decl(metadata !48187)
  call void @llvm.experimental.noalias.scope.decl(metadata !48188)
  %.val.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !48189, !noalias !48180 ; 2 uses
  %i.yl = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.yl, label %.body.i96, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %.val1.i.i.i.i = load ptr, ptr %i.ib, align 8, !alias.scope !48189, !noalias !48180, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !48190
  br label %.body.i96

bb.ii:                                            ; preds = %bb.if
  %i.ym = load i64, ptr %i.z, align 8, !range !41, !noalias !48180, !noundef !28
  %i.yn = trunc nuw i64 %i.ym to i1
  br i1 %i.yn, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.yp = load ptr, ptr %i.id, align 8, !noalias !48180, !nonnull !28, !noundef !28
  %i.yq = load i64, ptr %i.ie, align 8, !noalias !48180, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !48180
  invoke fastcc void @_RNCNvMNtCskXtk6F4WjxZ_4just6parserNtB4_6Parser9parse_set0B6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.yo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.yp, i64 noundef %i.yq)
          to label %bb.il unwind label %.loopexit.split-lp1856, !noalias !48181

bb.ik:                                            ; preds = %bb.ii
  %i.yr = load i64, ptr %i.id, align 8, !noalias !48180, !noundef !28
  %i.ys = load i32, ptr %i.ie, align 8, !range !52, !noalias !48180, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !48180
  %.sroa.5686.i.sroa.13.0.copyload1705 = load i64, ptr %.sroa.5576.0..sroa_idx.i, align 8, !noalias !48180
  %i.yt = load <2 x i64>, ptr %.sroa.5686.i.sroa.14.0..sroa_idx, align 8, !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !48180
  %i.yu = insertelement <2 x i64> poison, i64 %.sroa.6570.i.sroa.15.0.copyload1568, i64 0
  %i.yv = insertelement <2 x i64> %i.yu, i64 %.sroa.5686.i.sroa.13.0.copyload1705, i64 1
  br label %bb.hx

bb.il:                                            ; preds = %bb.ij
  %.sroa.0589.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !48180
  %.sroa.7591.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7591.0.copyload.i = load i32, ptr %.sroa.7591.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.9594.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.122.sroa.48.4.copyload1060 = load i32, ptr %.sroa.9594.0..sroa_idx.i, align 4, !noalias !48181
  %.sroa.132.20..sroa.9594.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.132.20.copyload407 = load i64, ptr %.sroa.132.20..sroa.9594.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.137.20..sroa.9594.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.137.20.copyload448 = load i64, ptr %.sroa.137.20..sroa.9594.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.142.20..sroa.9594.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.142.20.copyload489 = load i64, ptr %.sroa.142.20..sroa.9594.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.146.20..sroa.9594.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.146.20.copyload530 = load i64, ptr %.sroa.146.20..sroa.9594.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.150.20..sroa.9594.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.150.20.copyload571 = load i64, ptr %.sroa.150.20..sroa.9594.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.154.20..sroa.9594.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.154.20.copyload612 = load i64, ptr %.sroa.154.20..sroa.9594.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.158.20..sroa.9594.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.158.20.copyload653 = load i64, ptr %.sroa.158.20..sroa.9594.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.9596.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.9596.0.copyload.i = load i8, ptr %.sroa.9596.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.10599.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 73
  %.sroa.164.sroa.48.sroa.0.0.copyload803 = load i56, ptr %.sroa.10599.0..sroa_idx.i, align 1, !noalias !48181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !48180
  br label %bb.im

bb.im:                                            ; preds = %bb.ip, %bb.il
  %.sroa.50.sroa.0.sroa.48.sroa.0.3.in.in.in = phi i64 [ %.sroa.50.8.copyload297, %bb.ip ], [ %.sroa.0589.0.copyload.i, %bb.il ] ; 3 uses
  %.sroa.122.sroa.48.3 = phi i32 [ %.sroa.122.sroa.48.0.extract.trunc987, %bb.ip ], [ %.sroa.122.sroa.48.4.copyload1060, %bb.il ]
  %.sroa.122.sroa.0.3 = phi i32 [ %.sroa.122.sroa.0.0.extract.trunc938, %bb.ip ], [ %.sroa.7591.0.copyload.i, %bb.il ]
  %.sroa.158.sroa.48.sroa.0.3.in.in = phi i64 [ %.sroa.158.8.copyload623, %bb.ip ], [ %.sroa.158.20.copyload653, %bb.il ] ; 2 uses
  %.sroa.164.sroa.48.sroa.0.3 = phi i56 [ %.sroa.164.sroa.48.0.extract.trunc751, %bb.ip ], [ %.sroa.164.sroa.48.sroa.0.0.copyload803, %bb.il ]
  %.sroa.164.sroa.0.3 = phi i8 [ %.sroa.164.sroa.0.0.extract.trunc724, %bb.ip ], [ %.sroa.9596.0.copyload.i, %bb.il ]
  %.sroa.154.3 = phi i64 [ %.sroa.154.8.copyload582, %bb.ip ], [ %.sroa.154.20.copyload612, %bb.il ]
  %.sroa.150.3 = phi i64 [ %.sroa.150.8.copyload541, %bb.ip ], [ %.sroa.150.20.copyload571, %bb.il ]
  %.sroa.146.3 = phi i64 [ %.sroa.146.8.copyload500, %bb.ip ], [ %.sroa.146.20.copyload530, %bb.il ]
  %.sroa.142.3 = phi i64 [ %.sroa.142.8.copyload459, %bb.ip ], [ %.sroa.142.20.copyload489, %bb.il ]
  %.sroa.137.3 = phi i64 [ %.sroa.137.8.copyload418, %bb.ip ], [ %.sroa.137.20.copyload448, %bb.il ]
  %.sroa.132.3 = phi i64 [ %.sroa.132.8.copyload377, %bb.ip ], [ %.sroa.132.20.copyload407, %bb.il ]
  %.sroa.158.sroa.0.3 = trunc i64 %.sroa.158.sroa.48.sroa.0.3.in.in to i8
  %.sroa.158.sroa.48.sroa.0.3.in = lshr i64 %.sroa.158.sroa.48.sroa.0.3.in.in, 8
  %.sroa.158.sroa.48.sroa.0.3 = trunc nuw i64 %.sroa.158.sroa.48.sroa.0.3.in to i56
  %.sroa.50.sroa.67.3.in = lshr i64 %.sroa.50.sroa.0.sroa.48.sroa.0.3.in.in.in, 32
  %.sroa.50.sroa.67.3 = trunc nuw i64 %.sroa.50.sroa.67.3.in to i32
  %.sroa.50.sroa.0.sroa.0.3 = trunc i64 %.sroa.50.sroa.0.sroa.48.sroa.0.3.in.in.in to i8
  %.sroa.50.sroa.0.sroa.48.sroa.0.3.in = lshr i64 %.sroa.50.sroa.0.sroa.48.sroa.0.3.in.in.in, 8
  %.sroa.50.sroa.0.sroa.48.sroa.0.3 = trunc i64 %.sroa.50.sroa.0.sroa.48.sroa.0.3.in to i24
  call void @llvm.experimental.noalias.scope.decl(metadata !48191)
  call void @llvm.experimental.noalias.scope.decl(metadata !48192)
  call void @llvm.experimental.noalias.scope.decl(metadata !48193)
  %.val.i.i.i1291.i = load i64, ptr %i.ac, align 8, !alias.scope !48194, !noalias !48180 ; 2 uses
  %i.yw = icmp eq i64 %.val.i.i.i1291.i, 0
  br i1 %i.yw, label %.thread.i104, label %bb.in

bb.in:                                            ; preds = %bb.im
  %.val1.i.i.i1292.i = load ptr, ptr %i.ib, align 8, !alias.scope !48194, !noalias !48180, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1292.i, i64 noundef %.val.i.i.i1291.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !48195
  br label %.thread.i104

bb.io:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !48180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !48180
  %i.yx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 22, ptr %i.yx, align 8, !noalias !48180
  store i64 -9223372036854775738, ptr %i.aa, align 8, !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token5error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.aa)
          to label %bb.ip unwind label %.loopexit.split-lp1856, !noalias !48181

bb.ip:                                            ; preds = %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !48180
  %.sroa.50.8.copyload297 = load i64, ptr %i.ab, align 8, !noalias !48181
  %.sroa.122.8..sroa_idx335 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.122.8.copyload336 = load i64, ptr %.sroa.122.8..sroa_idx335, align 8, !noalias !48181 ; 2 uses
  %.sroa.122.sroa.0.0.extract.trunc938 = trunc i64 %.sroa.122.8.copyload336 to i32
  %.sroa.122.sroa.48.0.extract.shift986 = lshr i64 %.sroa.122.8.copyload336, 32
  %.sroa.122.sroa.48.0.extract.trunc987 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift986 to i32
  %.sroa.132.8..sroa_idx376 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.132.8.copyload377 = load i64, ptr %.sroa.132.8..sroa_idx376, align 8, !noalias !48181
  %.sroa.137.8..sroa_idx417 = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.137.8.copyload418 = load i64, ptr %.sroa.137.8..sroa_idx417, align 8, !noalias !48181
  %.sroa.142.8..sroa_idx458 = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.142.8.copyload459 = load i64, ptr %.sroa.142.8..sroa_idx458, align 8, !noalias !48181
  %.sroa.146.8..sroa_idx499 = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.146.8.copyload500 = load i64, ptr %.sroa.146.8..sroa_idx499, align 8, !noalias !48181
  %.sroa.150.8..sroa_idx540 = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.150.8.copyload541 = load i64, ptr %.sroa.150.8..sroa_idx540, align 8, !noalias !48181
  %.sroa.154.8..sroa_idx581 = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %.sroa.154.8.copyload582 = load i64, ptr %.sroa.154.8..sroa_idx581, align 8, !noalias !48181
  %.sroa.158.8..sroa_idx622 = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %.sroa.158.8.copyload623 = load i64, ptr %.sroa.158.8..sroa_idx622, align 8, !noalias !48181
  %.sroa.164.8..sroa_idx664 = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %.sroa.164.8.copyload665 = load i64, ptr %.sroa.164.8..sroa_idx664, align 8, !noalias !48181 ; 2 uses
  %.sroa.164.sroa.0.0.extract.trunc724 = trunc i64 %.sroa.164.8.copyload665 to i8
  %.sroa.164.sroa.48.0.extract.shift750 = lshr i64 %.sroa.164.8.copyload665, 8
  %.sroa.164.sroa.48.0.extract.trunc751 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift750 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !48180
  br label %bb.im

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i: ; preds = %bb.is
  %i.yy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.y) #72
          to label %.body.i96 unwind label %bb.ir, !noalias !48181

.thread.i104:                                     ; preds = %bb.in, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !48180
  br label %bb.km

bb.iq:                                            ; preds = %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !48180
  %.sroa.50.8.copyload296 = load i64, ptr %i.ae, align 8, !noalias !48181 ; 3 uses
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1177 = trunc i64 %.sroa.50.8.copyload296 to i8
  %15 = lshr i64 %.sroa.50.8.copyload296, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1223 = trunc i64 %15 to i24
  %.sroa.50.sroa.67.0.extract.shift1121 = lshr i64 %.sroa.50.8.copyload296, 32
  %.sroa.50.sroa.67.0.extract.trunc1122 = trunc nuw i64 %.sroa.50.sroa.67.0.extract.shift1121 to i32
  %.sroa.122.8..sroa_idx333 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.122.8.copyload334 = load i64, ptr %.sroa.122.8..sroa_idx333, align 8, !noalias !48181 ; 2 uses
  %.sroa.122.sroa.0.0.extract.trunc937 = trunc i64 %.sroa.122.8.copyload334 to i32
  %.sroa.122.sroa.48.0.extract.shift984 = lshr i64 %.sroa.122.8.copyload334, 32
  %.sroa.122.sroa.48.0.extract.trunc985 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift984 to i32
  %.sroa.132.8..sroa_idx374 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.132.8.copyload375 = load i64, ptr %.sroa.132.8..sroa_idx374, align 8, !noalias !48181
  %.sroa.137.8..sroa_idx415 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.137.8.copyload416 = load i64, ptr %.sroa.137.8..sroa_idx415, align 8, !noalias !48181
  %.sroa.142.8..sroa_idx456 = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.142.8.copyload457 = load i64, ptr %.sroa.142.8..sroa_idx456, align 8, !noalias !48181
  %.sroa.146.8..sroa_idx497 = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.146.8.copyload498 = load i64, ptr %.sroa.146.8..sroa_idx497, align 8, !noalias !48181
  %.sroa.150.8..sroa_idx538 = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.150.8.copyload539 = load i64, ptr %.sroa.150.8..sroa_idx538, align 8, !noalias !48181
  %.sroa.154.8..sroa_idx579 = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.sroa.154.8.copyload580 = load i64, ptr %.sroa.154.8..sroa_idx579, align 8, !noalias !48181
  %.sroa.158.8..sroa_idx620 = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %.sroa.158.8.copyload621 = load i64, ptr %.sroa.158.8..sroa_idx620, align 8, !noalias !48181 ; 2 uses
  %.sroa.158.sroa.0.0.extract.trunc808 = trunc i64 %.sroa.158.8.copyload621 to i8
  %.sroa.158.sroa.48.0.extract.shift855 = lshr i64 %.sroa.158.8.copyload621, 8
  %.sroa.158.sroa.48.0.extract.trunc856 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift855 to i56
  %.sroa.164.8..sroa_idx662 = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %.sroa.164.8.copyload663 = load i64, ptr %.sroa.164.8..sroa_idx662, align 8, !noalias !48181 ; 2 uses
  %.sroa.164.sroa.0.0.extract.trunc723 = trunc i64 %.sroa.164.8.copyload663 to i8
  %.sroa.164.sroa.48.0.extract.shift748 = lshr i64 %.sroa.164.8.copyload663, 8
  %.sroa.164.sroa.48.0.extract.trunc749 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift748 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !48180
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.y)
          to label %bb.km unwind label %.loopexit.split-lp1846, !noalias !48181

bb.ir:                                            ; preds = %.body.i96, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit1299.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i
  %i.yz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !48181
  unreachable

bb.is:                                            ; preds = %bb.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !48180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !48180
  %i.za = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i8 22, ptr %i.za, align 8, !noalias !48180
  store i64 -9223372036854775738, ptr %i.ad, align 8, !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token5error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.ad)
          to label %bb.iq unwind label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i, !noalias !48181

_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1286.i: ; preds = %bb.hp
  %i.zb = load i64, ptr %i.w, align 8, !range !39, !noalias !48180, !noundef !28 ; 4 uses
  %i.zc = icmp eq i64 %i.zb, -1
  %.sroa.6638.i.sroa.0.0.copyload1570 = load i64, ptr %.sroa.41176.0..sroa_idx.i, align 8, !noalias !48180 ; 2 uses
  %.sroa.6638.i.sroa.7.0.copyload1572 = load i64, ptr %.sroa.6638.i.sroa.7.0..sroa.41176.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6638.i.sroa.8.0.copyload1574 = load i64, ptr %.sroa.6638.i.sroa.8.0..sroa.41176.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6638.i.sroa.9.0.copyload1576 = load i64, ptr %.sroa.6638.i.sroa.9.0..sroa.41176.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6638.i.sroa.10.0.copyload1578 = load i64, ptr %.sroa.6638.i.sroa.10.0..sroa.41176.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6638.i.sroa.11.0.copyload1580 = load i64, ptr %.sroa.6638.i.sroa.11.0..sroa.41176.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6638.i.sroa.12.0.copyload1582 = load i64, ptr %.sroa.6638.i.sroa.12.0..sroa.41176.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6638.i.sroa.13.0.copyload1584 = load i64, ptr %.sroa.6638.i.sroa.13.0..sroa.41176.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6638.i.sroa.14.0.copyload1586 = load i64, ptr %.sroa.6638.i.sroa.14.0..sroa.41176.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6638.i.sroa.15.0.copyload1588 = load i64, ptr %.sroa.6638.i.sroa.15.0..sroa.41176.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 4 uses
  br i1 %i.zc, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1286.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !48180
  %.sroa.164.sroa.0.0.extract.trunc722 = trunc i64 %.sroa.6638.i.sroa.15.0.copyload1588 to i8
  %.sroa.164.sroa.48.0.extract.shift746 = lshr i64 %.sroa.6638.i.sroa.15.0.copyload1588, 8
  %.sroa.164.sroa.48.0.extract.trunc747 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift746 to i56
  br label %bb.jo

bb.iu:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1286.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5644.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.51177.0..sroa_idx.i, i64 40, i1 false), !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !48180
  store i64 %.sroa.6638.i.sroa.0.0.copyload1570, ptr %.sroa.4643.0..sroa_idx.i, align 8, !noalias !48180
  store i64 %.sroa.6638.i.sroa.7.0.copyload1572, ptr %.sroa.6638.i.sroa.7.0..sroa.4643.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6638.i.sroa.8.0.copyload1574, ptr %.sroa.6638.i.sroa.8.0..sroa.4643.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6638.i.sroa.9.0.copyload1576, ptr %.sroa.6638.i.sroa.9.0..sroa.4643.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6638.i.sroa.10.0.copyload1578, ptr %.sroa.6638.i.sroa.10.0..sroa.4643.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6638.i.sroa.11.0.copyload1580, ptr %.sroa.6638.i.sroa.11.0..sroa.4643.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6638.i.sroa.12.0.copyload1582, ptr %.sroa.6638.i.sroa.12.0..sroa.4643.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6638.i.sroa.13.0.copyload1584, ptr %.sroa.6638.i.sroa.13.0..sroa.4643.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6638.i.sroa.14.0.copyload1586, ptr %.sroa.6638.i.sroa.14.0..sroa.4643.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %.sroa.6638.i.sroa.15.0.copyload1588, ptr %.sroa.6638.i.sroa.15.0..sroa.4643.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  store i64 %i.zb, ptr %i.x, align 8, !noalias !48180
  %i.zd = icmp ne i64 %i.zb, -9223372036854775801
  tail call void @llvm.assume(i1 %i.zd)
  %.not1356.i = icmp eq i64 %i.zb, -9223372036854775794
  %i.ze = lshr i64 %.sroa.6638.i.sroa.7.0.copyload1572, 32
  %i.zf = trunc nuw i64 %i.ze to i32
  br i1 %.not1356.i, label %bb.iv, label %bb.jn

bb.iv:                                            ; preds = %bb.iu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !48180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4643.0..sroa_idx.i, i64 104, i1 false), !noalias !48180
  %i.zg = load i8, ptr %i.ho, align 2, !range !40, !noalias !48180, !noundef !28
  %i.zh = trunc nuw i8 %i.zg to i1
  %i.zi = load i8, ptr %i.hp, align 8, !range !40, !noalias !48180
  %i.zj = trunc nuw i8 %i.zi to i1
  %or.cond5.i = select i1 %i.zh, i1 true, i1 %i.zj
  %i.zk = load i8, ptr %i.hq, align 1, !range !112, !noalias !48180
  %.not1264.i = icmp ne i8 %i.zk, -1
  %or.cond1275.not.i = select i1 %or.cond5.i, i1 true, i1 %.not1264.i
  br i1 %or.cond1275.not.i, label %bb.jk, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !48180
  %i.zl = load ptr, ptr %i.hr, align 8, !noalias !48180, !nonnull !28, !noundef !28 ; 2 uses
  %i.zm = load i64, ptr %i.hs, align 8, !noalias !48180, !noundef !28
  %i.zn = ptrtoint ptr %i.zl to i64
  %i.zo = trunc i64 %i.zn to i32
  invoke void @_RNvXs0_NtCskXtk6F4WjxZ_4just7versionNtB5_7VersionNtNtNtCsj6eKBz9Db1c_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.zl, i64 noundef %i.zm)
          to label %bb.iz unwind label %.loopexit1850, !noalias !48181

.loopexit1850:                                    ; preds = %bb.iw, %bb.jb
  %lpad.loopexit1852 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

.loopexit.split-lp1851:                           ; preds = %bb.ja, %bb.je, %bb.jk
  %lpad.loopexit.split-lp1853 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

bb.ix:                                            ; preds = %.loopexit.split-lp1851, %.loopexit1850
  %lpad.phi1854 = phi { ptr, i32 } [ %lpad.loopexit1852, %.loopexit1850 ], [ %lpad.loopexit.split-lp1853, %.loopexit.split-lp1851 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48196)
  call void @llvm.experimental.noalias.scope.decl(metadata !48197)
  call void @llvm.experimental.noalias.scope.decl(metadata !48198)
  %.val.i.i.i1297.i = load i64, ptr %i.t, align 8, !alias.scope !48199, !noalias !48180 ; 2 uses
  %i.zp = icmp eq i64 %.val.i.i.i1297.i, 0
  br i1 %i.zp, label %.body.i96, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %.val1.i.i.i1298.i = load ptr, ptr %i.hr, align 8, !alias.scope !48199, !noalias !48180, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1298.i, i64 noundef %.val.i.i.i1297.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !48200
  br label %.body.i96

bb.iz:                                            ; preds = %bb.iw
  %i.zq = load i64, ptr %i.q, align 8, !range !41, !noalias !48180, !noundef !28
  %i.zr = trunc nuw i64 %i.zq to i1
  %i.zs = load i64, ptr %i.hu, align 8, !noalias !48180 ; 4 uses
  br i1 %i.zr, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.zt = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.zu = load ptr, ptr %i.ht, align 8, !noalias !48180, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !48180
  invoke fastcc void @_RNCNvMNtCskXtk6F4WjxZ_4just6parserNtB4_6Parser9parse_sets_0B6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.zt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.zu, i64 noundef %i.zs)
          to label %bb.jh unwind label %.loopexit.split-lp1851, !noalias !48181

bb.jb:                                            ; preds = %bb.iz
  %.sroa.01336.0.copyload.i = load i64, ptr %i.ht, align 8, !noalias !48180 ; 3 uses
  %.sroa.51338.0.copyload.i = load i64, ptr %.sroa.51338.0..sroa_idx.i, align 8, !noalias !48180 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !48180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just7versionNtB2_7Version7current(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.jc unwind label %.loopexit1850, !noalias !48181

bb.jc:                                            ; preds = %bb.jb
  %i.zv = load i64, ptr %i.p, align 8, !alias.scope !48201, !noalias !48202, !noundef !28 ; 2 uses
  %i.zw = icmp eq i64 %i.zv, %.sroa.01336.0.copyload.i
  %i.zx = icmp ult i64 %i.zv, %.sroa.01336.0.copyload.i
  br i1 %i.zw, label %bb.jd, label %_RNvXs5_NtCskXtk6F4WjxZ_4just7versionNtB5_7VersionNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.jd:                                            ; preds = %bb.jc
  %i.zy = load i64, ptr %i.hv, align 8, !alias.scope !48201, !noalias !48202, !noundef !28 ; 2 uses
  %i.zz = icmp eq i64 %i.zy, %i.zs
  %i.aaa = icmp ult i64 %i.zy, %i.zs
  br i1 %i.zz, label %.split.i, label %_RNvXs5_NtCskXtk6F4WjxZ_4just7versionNtB5_7VersionNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp.exit.i

.split.i:                                         ; preds = %bb.jd
  %i.aab = load i64, ptr %i.hw, align 8, !alias.scope !48201, !noalias !48202, !noundef !28
  %i.aac = icmp ult i64 %i.aab, %.sroa.51338.0.copyload.i
  br i1 %i.aac, label %bb.je, label %bb.jf

_RNvXs5_NtCskXtk6F4WjxZ_4just7versionNtB5_7VersionNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp.exit.i: ; preds = %bb.jd, %bb.jc
  %.sroa.0.0.i.i.i102 = phi i1 [ %i.zx, %bb.jc ], [ %i.aaa, %bb.jd ]
  br i1 %.sroa.0.0.i.i.i102, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %_RNvXs5_NtCskXtk6F4WjxZ_4just7versionNtB5_7VersionNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp.exit.i, %.split.i
  %i.aad = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !48180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !48180
  %i.aae = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aae, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !48180
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %.sroa.01336.0.copyload.i, ptr %i.aaf, align 8, !noalias !48180
  %.sroa.31315.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %i.zs, ptr %.sroa.31315.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.41317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 %.sroa.51338.0.copyload.i, ptr %.sroa.41317.0..sroa_idx.i, align 8, !noalias !48180
  store i64 -9223372036854775750, ptr %i.n, align 8, !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token5error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aad, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.n)
          to label %bb.jg unwind label %.loopexit.split-lp1851, !noalias !48181

bb.jf:                                            ; preds = %_RNvXs5_NtCskXtk6F4WjxZ_4just7versionNtB5_7VersionNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp.exit.i, %.split.i
  %.sroa.0667.0.copyload.i = load i64, ptr %i.t, align 8, !noalias !48180
  %.sroa.9610.i.sroa.85.0.copyload = load i64, ptr %.sroa.5644.0..sroa_idx.i, align 8, !noalias !48180
  %i.aag = load <2 x i64>, ptr %i.hx, align 8, !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !48180
  br label %bb.hx

bb.jg:                                            ; preds = %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !48180
  %.sroa.50.8.copyload293 = load i64, ptr %i.o, align 8, !noalias !48181
  %.sroa.122.8..sroa_idx328 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.122.8.copyload329 = load i64, ptr %.sroa.122.8..sroa_idx328, align 8, !noalias !48181
  %.sroa.132.8..sroa_idx369 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.132.8.copyload370 = load i64, ptr %.sroa.132.8..sroa_idx369, align 8, !noalias !48181
  %.sroa.137.8..sroa_idx410 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.137.8.copyload411 = load i64, ptr %.sroa.137.8..sroa_idx410, align 8, !noalias !48181
  %.sroa.142.8..sroa_idx451 = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.142.8.copyload452 = load i64, ptr %.sroa.142.8..sroa_idx451, align 8, !noalias !48181
  %.sroa.146.8..sroa_idx492 = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.146.8.copyload493 = load i64, ptr %.sroa.146.8..sroa_idx492, align 8, !noalias !48181
  %.sroa.150.8..sroa_idx533 = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.150.8.copyload534 = load i64, ptr %.sroa.150.8..sroa_idx533, align 8, !noalias !48181
  %.sroa.154.8..sroa_idx574 = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.154.8.copyload575 = load i64, ptr %.sroa.154.8..sroa_idx574, align 8, !noalias !48181
  %.sroa.158.8..sroa_idx615 = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.158.8.copyload616 = load i64, ptr %.sroa.158.8..sroa_idx615, align 8, !noalias !48181
  %.sroa.164.8..sroa_idx657 = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.sroa.164.8.copyload658 = load i64, ptr %.sroa.164.8..sroa_idx657, align 8, !noalias !48181 ; 2 uses
  %.sroa.164.sroa.0.0.extract.trunc720 = trunc i64 %.sroa.164.8.copyload658 to i8
  %.sroa.164.sroa.48.0.extract.shift742 = lshr i64 %.sroa.164.8.copyload658, 8
  %.sroa.164.sroa.48.0.extract.trunc743 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift742 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !48180
  br label %bb.ji

bb.jh:                                            ; preds = %bb.ja
  %.sroa.0651.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !48180
  %.sroa.0651.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0651.sroa.7.0.copyload.i = load i64, ptr %.sroa.0651.sroa.7.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.0651.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.0651.sroa.8.0.copyload.i = load i64, ptr %.sroa.0651.sroa.8.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.0651.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.137.32.copyload = load i64, ptr %.sroa.0651.sroa.9.0..sroa_idx.i, align 8, !noalias !48181
  %.sroa.142.32..sroa.0651.sroa.9.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.142.32.copyload = load i64, ptr %.sroa.142.32..sroa.0651.sroa.9.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.146.32..sroa.0651.sroa.9.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.146.32.copyload = load i64, ptr %.sroa.146.32..sroa.0651.sroa.9.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.150.32..sroa.0651.sroa.9.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.150.32.copyload = load i64, ptr %.sroa.150.32..sroa.0651.sroa.9.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.154.32..sroa.0651.sroa.9.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.154.32.copyload = load i64, ptr %.sroa.154.32..sroa.0651.sroa.9.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.158.32..sroa.0651.sroa.9.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.158.32.copyload = load i64, ptr %.sroa.158.32..sroa.0651.sroa.9.0..sroa_idx.i.sroa_idx, align 8, !noalias !48181
  %.sroa.7652.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.7652.0.copyload.i = load i8, ptr %.sroa.7652.0..sroa_idx.i, align 8, !noalias !48180
  %.sroa.8655.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 73
  %.sroa.164.sroa.48.sroa.0.0.copyload802 = load i56, ptr %.sroa.8655.0..sroa_idx.i, align 1, !noalias !48181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !48180
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jl, %bb.jh, %bb.jg
  %.sroa.50.sroa.0.sroa.48.sroa.0.2.in.in.in = phi i64 [ %.sroa.50.8.copyload294, %bb.jl ], [ %.sroa.0651.sroa.0.0.copyload.i, %bb.jh ], [ %.sroa.50.8.copyload293, %bb.jg ]
  %.sroa.122.sroa.48.2.in.in = phi i64 [ %.sroa.122.8.copyload331, %bb.jl ], [ %.sroa.0651.sroa.7.0.copyload.i, %bb.jh ], [ %.sroa.122.8.copyload329, %bb.jg ]
  %.sroa.158.sroa.48.sroa.0.2.in.in = phi i64 [ %.sroa.158.8.copyload618, %bb.jl ], [ %.sroa.158.32.copyload, %bb.jh ], [ %.sroa.158.8.copyload616, %bb.jg ]
  %.sroa.164.sroa.48.sroa.0.2 = phi i56 [ %.sroa.164.sroa.48.0.extract.trunc745, %bb.jl ], [ %.sroa.164.sroa.48.sroa.0.0.copyload802, %bb.jh ], [ %.sroa.164.sroa.48.0.extract.trunc743, %bb.jg ]
  %.sroa.164.sroa.0.2 = phi i8 [ %.sroa.164.sroa.0.0.extract.trunc721, %bb.jl ], [ %.sroa.7652.0.copyload.i, %bb.jh ], [ %.sroa.164.sroa.0.0.extract.trunc720, %bb.jg ]
  %.sroa.154.2 = phi i64 [ %.sroa.154.8.copyload577, %bb.jl ], [ %.sroa.154.32.copyload, %bb.jh ], [ %.sroa.154.8.copyload575, %bb.jg ]
  %.sroa.150.2 = phi i64 [ %.sroa.150.8.copyload536, %bb.jl ], [ %.sroa.150.32.copyload, %bb.jh ], [ %.sroa.150.8.copyload534, %bb.jg ]
  %.sroa.146.2 = phi i64 [ %.sroa.146.8.copyload495, %bb.jl ], [ %.sroa.146.32.copyload, %bb.jh ], [ %.sroa.146.8.copyload493, %bb.jg ]
  %.sroa.142.2 = phi i64 [ %.sroa.142.8.copyload454, %bb.jl ], [ %.sroa.142.32.copyload, %bb.jh ], [ %.sroa.142.8.copyload452, %bb.jg ]
  %.sroa.137.2 = phi i64 [ %.sroa.137.8.copyload413, %bb.jl ], [ %.sroa.137.32.copyload, %bb.jh ], [ %.sroa.137.8.copyload411, %bb.jg ]
  %.sroa.132.2 = phi i64 [ %.sroa.132.8.copyload372, %bb.jl ], [ %.sroa.0651.sroa.8.0.copyload.i, %bb.jh ], [ %.sroa.132.8.copyload370, %bb.jg ]
  call void @llvm.experimental.noalias.scope.decl(metadata !48203)
  call void @llvm.experimental.noalias.scope.decl(metadata !48204)
  call void @llvm.experimental.noalias.scope.decl(metadata !48205)
  %.val.i.i.i1300.i = load i64, ptr %i.t, align 8, !alias.scope !48206, !noalias !48180 ; 2 uses
  %i.aah = icmp eq i64 %.val.i.i.i1300.i, 0
  br i1 %i.aah, label %.thread1351.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %.val1.i.i.i1301.i = load ptr, ptr %i.hr, align 8, !alias.scope !48206, !noalias !48180, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1301.i, i64 noundef %.val.i.i.i1300.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !48207
  br label %.thread1351.i

bb.jk:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !48180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !48180
  %i.aai = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i8 25, ptr %i.aai, align 8, !noalias !48180
  store i64 -9223372036854775738, ptr %i.r, align 8, !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token5error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.r)
          to label %bb.jl unwind label %.loopexit.split-lp1851, !noalias !48181

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !48180
  %.sroa.50.8.copyload294 = load i64, ptr %i.s, align 8, !noalias !48181
  %.sroa.122.8..sroa_idx330 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.122.8.copyload331 = load i64, ptr %.sroa.122.8..sroa_idx330, align 8, !noalias !48181
  %.sroa.132.8..sroa_idx371 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.132.8.copyload372 = load i64, ptr %.sroa.132.8..sroa_idx371, align 8, !noalias !48181
  %.sroa.137.8..sroa_idx412 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.137.8.copyload413 = load i64, ptr %.sroa.137.8..sroa_idx412, align 8, !noalias !48181
  %.sroa.142.8..sroa_idx453 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.142.8.copyload454 = load i64, ptr %.sroa.142.8..sroa_idx453, align 8, !noalias !48181
  %.sroa.146.8..sroa_idx494 = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.146.8.copyload495 = load i64, ptr %.sroa.146.8..sroa_idx494, align 8, !noalias !48181
  %.sroa.150.8..sroa_idx535 = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.150.8.copyload536 = load i64, ptr %.sroa.150.8..sroa_idx535, align 8, !noalias !48181
  %.sroa.154.8..sroa_idx576 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.154.8.copyload577 = load i64, ptr %.sroa.154.8..sroa_idx576, align 8, !noalias !48181
  %.sroa.158.8..sroa_idx617 = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.158.8.copyload618 = load i64, ptr %.sroa.158.8..sroa_idx617, align 8, !noalias !48181
  %.sroa.164.8..sroa_idx659 = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.164.8.copyload660 = load i64, ptr %.sroa.164.8..sroa_idx659, align 8, !noalias !48181 ; 2 uses
  %.sroa.164.sroa.0.0.extract.trunc721 = trunc i64 %.sroa.164.8.copyload660 to i8
  %.sroa.164.sroa.48.0.extract.shift744 = lshr i64 %.sroa.164.8.copyload660, 8
  %.sroa.164.sroa.48.0.extract.trunc745 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift744 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !48180
  br label %bb.ji

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit1299.i: ; preds = %bb.jn
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.x) #72
          to label %.body.i96 unwind label %bb.ir, !noalias !48181

.thread1351.i:                                    ; preds = %bb.jj, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !48180
  br label %bb.jo

bb.jm:                                            ; preds = %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !48180
  %.sroa.50.8.copyload292 = load i64, ptr %i.v, align 8, !noalias !48181
  %.sroa.122.8..sroa_idx326 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.122.8.copyload327 = load i64, ptr %.sroa.122.8..sroa_idx326, align 8, !noalias !48181
  %.sroa.132.8..sroa_idx367 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.132.8.copyload368 = load i64, ptr %.sroa.132.8..sroa_idx367, align 8, !noalias !48181
  %.sroa.137.8..sroa_idx408 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.137.8.copyload409 = load i64, ptr %.sroa.137.8..sroa_idx408, align 8, !noalias !48181
  %.sroa.142.8..sroa_idx449 = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.142.8.copyload450 = load i64, ptr %.sroa.142.8..sroa_idx449, align 8, !noalias !48181
  %.sroa.146.8..sroa_idx490 = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.146.8.copyload491 = load i64, ptr %.sroa.146.8..sroa_idx490, align 8, !noalias !48181
  %.sroa.150.8..sroa_idx531 = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.150.8.copyload532 = load i64, ptr %.sroa.150.8..sroa_idx531, align 8, !noalias !48181
  %.sroa.154.8..sroa_idx572 = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sroa.154.8.copyload573 = load i64, ptr %.sroa.154.8..sroa_idx572, align 8, !noalias !48181
  %.sroa.158.8..sroa_idx613 = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.158.8.copyload614 = load i64, ptr %.sroa.158.8..sroa_idx613, align 8, !noalias !48181
  %.sroa.164.8..sroa_idx655 = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.164.8.copyload656 = load i64, ptr %.sroa.164.8..sroa_idx655, align 8, !noalias !48181 ; 2 uses
  %.sroa.164.sroa.0.0.extract.trunc719 = trunc i64 %.sroa.164.8.copyload656 to i8
  %.sroa.164.sroa.48.0.extract.shift740 = lshr i64 %.sroa.164.8.copyload656, 8
  %.sroa.164.sroa.48.0.extract.trunc741 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift740 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !48180
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.x)
          to label %bb.jo unwind label %.loopexit.split-lp1846, !noalias !48181

bb.jn:                                            ; preds = %bb.iu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !48180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !48180
  %i.aak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 25, ptr %i.aak, align 8, !noalias !48180
  store i64 -9223372036854775738, ptr %i.u, align 8, !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token5error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.u)
          to label %bb.jm unwind label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit1299.i, !noalias !48181

bb.jo:                                            ; preds = %bb.jm, %.thread1351.i, %bb.it
  %.sroa.50.sroa.0.sroa.48.sroa.0.1.in.in.in = phi i64 [ %.sroa.6638.i.sroa.0.0.copyload1570, %bb.it ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.2.in.in.in, %.thread1351.i ], [ %.sroa.50.8.copyload292, %bb.jm ] ; 3 uses
  %.sroa.122.sroa.48.1.in.in = phi i64 [ %.sroa.6638.i.sroa.7.0.copyload1572, %bb.it ], [ %.sroa.122.sroa.48.2.in.in, %.thread1351.i ], [ %.sroa.122.8.copyload327, %bb.jm ] ; 2 uses
  %.sroa.158.sroa.48.sroa.0.1.in.in = phi i64 [ %.sroa.6638.i.sroa.14.0.copyload1586, %bb.it ], [ %.sroa.158.sroa.48.sroa.0.2.in.in, %.thread1351.i ], [ %.sroa.158.8.copyload614, %bb.jm ] ; 2 uses
  %.sroa.164.sroa.48.sroa.0.1 = phi i56 [ %.sroa.164.sroa.48.0.extract.trunc747, %bb.it ], [ %.sroa.164.sroa.48.sroa.0.2, %.thread1351.i ], [ %.sroa.164.sroa.48.0.extract.trunc741, %bb.jm ]
  %.sroa.164.sroa.0.1 = phi i8 [ %.sroa.164.sroa.0.0.extract.trunc722, %bb.it ], [ %.sroa.164.sroa.0.2, %.thread1351.i ], [ %.sroa.164.sroa.0.0.extract.trunc719, %bb.jm ]
  %.sroa.154.1 = phi i64 [ %.sroa.6638.i.sroa.13.0.copyload1584, %bb.it ], [ %.sroa.154.2, %.thread1351.i ], [ %.sroa.154.8.copyload573, %bb.jm ]
  %.sroa.150.1 = phi i64 [ %.sroa.6638.i.sroa.12.0.copyload1582, %bb.it ], [ %.sroa.150.2, %.thread1351.i ], [ %.sroa.150.8.copyload532, %bb.jm ]
  %.sroa.146.1 = phi i64 [ %.sroa.6638.i.sroa.11.0.copyload1580, %bb.it ], [ %.sroa.146.2, %.thread1351.i ], [ %.sroa.146.8.copyload491, %bb.jm ]
  %.sroa.142.1 = phi i64 [ %.sroa.6638.i.sroa.10.0.copyload1578, %bb.it ], [ %.sroa.142.2, %.thread1351.i ], [ %.sroa.142.8.copyload450, %bb.jm ]
  %.sroa.137.1 = phi i64 [ %.sroa.6638.i.sroa.9.0.copyload1576, %bb.it ], [ %.sroa.137.2, %.thread1351.i ], [ %.sroa.137.8.copyload409, %bb.jm ]
  %.sroa.132.1 = phi i64 [ %.sroa.6638.i.sroa.8.0.copyload1574, %bb.it ], [ %.sroa.132.2, %.thread1351.i ], [ %.sroa.132.8.copyload368, %bb.jm ]
  %.sroa.158.sroa.0.1 = trunc i64 %.sroa.158.sroa.48.sroa.0.1.in.in to i8
  %.sroa.158.sroa.48.sroa.0.1.in = lshr i64 %.sroa.158.sroa.48.sroa.0.1.in.in, 8
  %.sroa.158.sroa.48.sroa.0.1 = trunc nuw i64 %.sroa.158.sroa.48.sroa.0.1.in to i56
  %.sroa.122.sroa.0.1 = trunc i64 %.sroa.122.sroa.48.1.in.in to i32
  %.sroa.122.sroa.48.1.in = lshr i64 %.sroa.122.sroa.48.1.in.in, 32
  %.sroa.122.sroa.48.1 = trunc nuw i64 %.sroa.122.sroa.48.1.in to i32
  %.sroa.50.sroa.67.1.in = lshr i64 %.sroa.50.sroa.0.sroa.48.sroa.0.1.in.in.in, 32
  %.sroa.50.sroa.67.1 = trunc nuw i64 %.sroa.50.sroa.67.1.in to i32
  %.sroa.50.sroa.0.sroa.0.1 = trunc i64 %.sroa.50.sroa.0.sroa.48.sroa.0.1.in.in.in to i8
  %.sroa.50.sroa.0.sroa.48.sroa.0.1.in = lshr i64 %.sroa.50.sroa.0.sroa.48.sroa.0.1.in.in.in, 8
  %.sroa.50.sroa.0.sroa.48.sroa.0.1 = trunc i64 %.sroa.50.sroa.0.sroa.48.sroa.0.1.in to i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !48180
  br label %bb.km

bb.jp:                                            ; preds = %bb.hq
  %i.aal = load i64, ptr %i.m, align 8, !range !37, !noalias !48180, !noundef !28 ; 2 uses
  %i.aam = icmp eq i64 %i.aal, -1
  %.sroa.01195.0.copyload.i = load i32, ptr %.sroa.41190.0..sroa_idx.i, align 8, !noalias !48180 ; 3 uses
  %.sroa.6680.sroa.7.i.sroa.0.0.copyload1590 = load i32, ptr %.sroa.51191.0..sroa_idx.i, align 4, !noalias !48180 ; 2 uses
  %.sroa.6680.sroa.7.i.sroa.7.0.copyload1592 = load i64, ptr %.sroa.6680.sroa.7.i.sroa.7.0..sroa.51191.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6680.sroa.7.i.sroa.8.0.copyload1594 = load i64, ptr %.sroa.6680.sroa.7.i.sroa.8.0..sroa.51191.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6680.sroa.7.i.sroa.9.0.copyload1596 = load i64, ptr %.sroa.6680.sroa.7.i.sroa.9.0..sroa.51191.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6680.sroa.7.i.sroa.10.0.copyload1598 = load i64, ptr %.sroa.6680.sroa.7.i.sroa.10.0..sroa.51191.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6680.sroa.7.i.sroa.11.0.copyload1600 = load i64, ptr %.sroa.6680.sroa.7.i.sroa.11.0..sroa.51191.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6680.sroa.7.i.sroa.12.0.copyload1602 = load i64, ptr %.sroa.6680.sroa.7.i.sroa.12.0..sroa.51191.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6680.sroa.7.i.sroa.13.0.copyload1604 = load i64, ptr %.sroa.6680.sroa.7.i.sroa.13.0..sroa.51191.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6680.sroa.7.i.sroa.14.0.copyload1606 = load i64, ptr %.sroa.6680.sroa.7.i.sroa.14.0..sroa.51191.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6680.sroa.7.i.sroa.15.0.copyload1608 = load i64, ptr %.sroa.6680.sroa.7.i.sroa.15.0..sroa.51191.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  br i1 %i.aam, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !48180
  %.sroa.122.sroa.0.0.extract.trunc965 = trunc i64 %.sroa.6680.sroa.7.i.sroa.7.0.copyload1592 to i32
  %.sroa.122.sroa.48.0.extract.shift1040 = lshr i64 %.sroa.6680.sroa.7.i.sroa.7.0.copyload1592, 32
  %.sroa.122.sroa.48.0.extract.trunc1041 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift1040 to i32
  %.sroa.158.sroa.0.0.extract.trunc836 = trunc i64 %.sroa.6680.sroa.7.i.sroa.14.0.copyload1606 to i8
  %.sroa.158.sroa.48.0.extract.shift911 = lshr i64 %.sroa.6680.sroa.7.i.sroa.14.0.copyload1606, 8
  %.sroa.158.sroa.48.0.extract.trunc912 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift911 to i56
  %.sroa.164.sroa.0.0.extract.trunc731 = trunc i64 %.sroa.6680.sroa.7.i.sroa.15.0.copyload1608 to i8
  %.sroa.164.sroa.48.0.extract.shift764 = lshr i64 %.sroa.6680.sroa.7.i.sroa.15.0.copyload1608, 8
  %.sroa.164.sroa.48.0.extract.trunc765 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift764 to i56
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1159 = trunc i32 %.sroa.01195.0.copyload.i to i8
  %.sroa.50.sroa.0.sroa.48.0.extract.shift1188 = lshr i32 %.sroa.01195.0.copyload.i, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1189 = trunc nuw i32 %.sroa.50.sroa.0.sroa.48.0.extract.shift1188 to i24
  br label %bb.km

bb.jr:                                            ; preds = %bb.jp
  %i.aan = load <2 x i64>, ptr %.sroa.61192.0..sroa_idx.i, align 8, !noalias !48180
  %i.aao = load <2 x i64>, ptr %.sroa.5686.i.sroa.14.0..sroa.61192.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  %.sroa.5686.i.sroa.16.0.copyload = load i64, ptr %.sroa.5686.i.sroa.16.0..sroa.61192.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5686.i.sroa.17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5686.i.sroa.17.0..sroa.61192.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !48180
  %.sroa.5686.i.sroa.20.0.copyload = load i8, ptr %.sroa.5686.i.sroa.20.0..sroa.61192.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  %.sroa.5686.i.sroa.21.0.copyload = load i56, ptr %.sroa.5686.i.sroa.21.0..sroa.61192.0..sroa_idx.i.sroa_idx, align 1, !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !48180
  br label %bb.hx

bb.js:                                            ; preds = %bb.hr
  %i.aap = load i64, ptr %i.l, align 8, !range !37, !noalias !48180, !noundef !28 ; 2 uses
  %i.aaq = icmp eq i64 %i.aap, -1
  %.sroa.01205.0.copyload.i = load i32, ptr %.sroa.41200.0..sroa_idx.i, align 8, !noalias !48180 ; 3 uses
  %.sroa.6701.sroa.7.i.sroa.0.0.copyload1610 = load i32, ptr %.sroa.51201.0..sroa_idx.i, align 4, !noalias !48180 ; 2 uses
  %.sroa.6701.sroa.7.i.sroa.7.0.copyload1612 = load i64, ptr %.sroa.6701.sroa.7.i.sroa.7.0..sroa.51201.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6701.sroa.7.i.sroa.8.0.copyload1614 = load i64, ptr %.sroa.6701.sroa.7.i.sroa.8.0..sroa.51201.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6701.sroa.7.i.sroa.9.0.copyload1616 = load i64, ptr %.sroa.6701.sroa.7.i.sroa.9.0..sroa.51201.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6701.sroa.7.i.sroa.10.0.copyload1618 = load i64, ptr %.sroa.6701.sroa.7.i.sroa.10.0..sroa.51201.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6701.sroa.7.i.sroa.11.0.copyload1620 = load i64, ptr %.sroa.6701.sroa.7.i.sroa.11.0..sroa.51201.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6701.sroa.7.i.sroa.12.0.copyload1622 = load i64, ptr %.sroa.6701.sroa.7.i.sroa.12.0..sroa.51201.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6701.sroa.7.i.sroa.13.0.copyload1624 = load i64, ptr %.sroa.6701.sroa.7.i.sroa.13.0..sroa.51201.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6701.sroa.7.i.sroa.14.0.copyload1626 = load i64, ptr %.sroa.6701.sroa.7.i.sroa.14.0..sroa.51201.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6701.sroa.7.i.sroa.15.0.copyload1628 = load i64, ptr %.sroa.6701.sroa.7.i.sroa.15.0..sroa.51201.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  br i1 %i.aaq, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !48180
  %.sroa.122.sroa.0.0.extract.trunc964 = trunc i64 %.sroa.6701.sroa.7.i.sroa.7.0.copyload1612 to i32
  %.sroa.122.sroa.48.0.extract.shift1038 = lshr i64 %.sroa.6701.sroa.7.i.sroa.7.0.copyload1612, 32
  %.sroa.122.sroa.48.0.extract.trunc1039 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift1038 to i32
  %.sroa.158.sroa.0.0.extract.trunc835 = trunc i64 %.sroa.6701.sroa.7.i.sroa.14.0.copyload1626 to i8
  %.sroa.158.sroa.48.0.extract.shift909 = lshr i64 %.sroa.6701.sroa.7.i.sroa.14.0.copyload1626, 8
  %.sroa.158.sroa.48.0.extract.trunc910 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift909 to i56
  %.sroa.164.sroa.0.0.extract.trunc730 = trunc i64 %.sroa.6701.sroa.7.i.sroa.15.0.copyload1628 to i8
  %.sroa.164.sroa.48.0.extract.shift762 = lshr i64 %.sroa.6701.sroa.7.i.sroa.15.0.copyload1628, 8
  %.sroa.164.sroa.48.0.extract.trunc763 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift762 to i56
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1158 = trunc i32 %.sroa.01205.0.copyload.i to i8
  %.sroa.50.sroa.0.sroa.48.0.extract.shift1186 = lshr i32 %.sroa.01205.0.copyload.i, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1187 = trunc nuw i32 %.sroa.50.sroa.0.sroa.48.0.extract.shift1186 to i24
  br label %bb.km

bb.ju:                                            ; preds = %bb.js
  %i.aar = load <2 x i64>, ptr %.sroa.61202.0..sroa_idx.i, align 8, !noalias !48180
  %i.aas = load <2 x i64>, ptr %.sroa.5708.i.sroa.5.0..sroa.61202.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  %.sroa.5708.i.sroa.7.0.copyload = load i64, ptr %.sroa.5708.i.sroa.7.0..sroa.61202.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5686.i.sroa.17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5708.i.sroa.8.0..sroa.61202.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !48180
  %.sroa.5708.i.sroa.9.0.copyload = load i8, ptr %.sroa.5708.i.sroa.9.0..sroa.61202.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  %.sroa.5708.i.sroa.10.0.copyload = load i56, ptr %.sroa.5708.i.sroa.10.0..sroa.61202.0..sroa_idx.i.sroa_idx, align 1, !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !48180
  br label %bb.hx

_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1288.i: ; preds = %bb.hs
  %i.aat = load i64, ptr %i.k, align 8, !range !39, !noalias !48180, !noundef !28 ; 2 uses
  %i.aau = icmp eq i64 %i.aat, -1
  %.sroa.01215.0.copyload.i = load i32, ptr %.sroa.41210.0..sroa_idx.i, align 8, !noalias !48180 ; 3 uses
  %.sroa.6723.sroa.7.i.sroa.0.0.copyload1630 = load i32, ptr %.sroa.51211.0..sroa_idx.i, align 4, !noalias !48180 ; 2 uses
  %.sroa.6723.sroa.7.i.sroa.7.0.copyload1632 = load i64, ptr %.sroa.6723.sroa.7.i.sroa.7.0..sroa.51211.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6723.sroa.7.i.sroa.8.0.copyload1634 = load i64, ptr %.sroa.6723.sroa.7.i.sroa.8.0..sroa.51211.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6723.sroa.7.i.sroa.9.0.copyload1636 = load i64, ptr %.sroa.6723.sroa.7.i.sroa.9.0..sroa.51211.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6723.sroa.7.i.sroa.10.0.copyload1638 = load i64, ptr %.sroa.6723.sroa.7.i.sroa.10.0..sroa.51211.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6723.sroa.7.i.sroa.11.0.copyload1640 = load i64, ptr %.sroa.6723.sroa.7.i.sroa.11.0..sroa.51211.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6723.sroa.7.i.sroa.12.0.copyload1642 = load i64, ptr %.sroa.6723.sroa.7.i.sroa.12.0..sroa.51211.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6723.sroa.7.i.sroa.13.0.copyload1644 = load i64, ptr %.sroa.6723.sroa.7.i.sroa.13.0..sroa.51211.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6723.sroa.7.i.sroa.14.0.copyload1646 = load i64, ptr %.sroa.6723.sroa.7.i.sroa.14.0..sroa.51211.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6723.sroa.7.i.sroa.15.0.copyload1648 = load i64, ptr %.sroa.6723.sroa.7.i.sroa.15.0..sroa.51211.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  br i1 %i.aau, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1288.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !48180
  %.sroa.122.sroa.0.0.extract.trunc963 = trunc i64 %.sroa.6723.sroa.7.i.sroa.7.0.copyload1632 to i32
  %.sroa.122.sroa.48.0.extract.shift1036 = lshr i64 %.sroa.6723.sroa.7.i.sroa.7.0.copyload1632, 32
  %.sroa.122.sroa.48.0.extract.trunc1037 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift1036 to i32
  %.sroa.158.sroa.0.0.extract.trunc834 = trunc i64 %.sroa.6723.sroa.7.i.sroa.14.0.copyload1646 to i8
  %.sroa.158.sroa.48.0.extract.shift907 = lshr i64 %.sroa.6723.sroa.7.i.sroa.14.0.copyload1646, 8
  %.sroa.158.sroa.48.0.extract.trunc908 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift907 to i56
  %.sroa.164.sroa.0.0.extract.trunc729 = trunc i64 %.sroa.6723.sroa.7.i.sroa.15.0.copyload1648 to i8
  %.sroa.164.sroa.48.0.extract.shift760 = lshr i64 %.sroa.6723.sroa.7.i.sroa.15.0.copyload1648, 8
  %.sroa.164.sroa.48.0.extract.trunc761 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift760 to i56
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1157 = trunc i32 %.sroa.01215.0.copyload.i to i8
  %.sroa.50.sroa.0.sroa.48.0.extract.shift1184 = lshr i32 %.sroa.01215.0.copyload.i, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1185 = trunc nuw i32 %.sroa.50.sroa.0.sroa.48.0.extract.shift1184 to i24
  br label %bb.km

bb.jw:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1288.i
  %i.aav = load <2 x i64>, ptr %.sroa.61212.0..sroa_idx.i, align 8, !noalias !48180
  %i.aaw = load <2 x i64>, ptr %.sroa.5686.i.sroa.14.0..sroa.61212.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  %.sroa.5686.i.sroa.16.0.copyload1726 = load i64, ptr %.sroa.5686.i.sroa.16.0..sroa.61212.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !48180
  br label %bb.hx

bb.jx:                                            ; preds = %bb.ht
  %i.aax = load i64, ptr %i.j, align 8, !range !37, !noalias !48180, !noundef !28 ; 2 uses
  %i.aay = icmp eq i64 %i.aax, -1
  %.sroa.01225.0.copyload.i = load i32, ptr %.sroa.41220.0..sroa_idx.i, align 8, !noalias !48180 ; 3 uses
  %.sroa.6745.sroa.7.i.sroa.0.0.copyload1650 = load i32, ptr %.sroa.51221.0..sroa_idx.i, align 4, !noalias !48180 ; 2 uses
  %.sroa.6745.sroa.7.i.sroa.7.0.copyload1652 = load i64, ptr %.sroa.6745.sroa.7.i.sroa.7.0..sroa.51221.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6745.sroa.7.i.sroa.8.0.copyload1654 = load i64, ptr %.sroa.6745.sroa.7.i.sroa.8.0..sroa.51221.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6745.sroa.7.i.sroa.9.0.copyload1656 = load i64, ptr %.sroa.6745.sroa.7.i.sroa.9.0..sroa.51221.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6745.sroa.7.i.sroa.10.0.copyload1658 = load i64, ptr %.sroa.6745.sroa.7.i.sroa.10.0..sroa.51221.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6745.sroa.7.i.sroa.11.0.copyload1660 = load i64, ptr %.sroa.6745.sroa.7.i.sroa.11.0..sroa.51221.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6745.sroa.7.i.sroa.12.0.copyload1662 = load i64, ptr %.sroa.6745.sroa.7.i.sroa.12.0..sroa.51221.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6745.sroa.7.i.sroa.13.0.copyload1664 = load i64, ptr %.sroa.6745.sroa.7.i.sroa.13.0..sroa.51221.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6745.sroa.7.i.sroa.14.0.copyload1666 = load i64, ptr %.sroa.6745.sroa.7.i.sroa.14.0..sroa.51221.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6745.sroa.7.i.sroa.15.0.copyload1668 = load i64, ptr %.sroa.6745.sroa.7.i.sroa.15.0..sroa.51221.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  br i1 %i.aay, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !48180
  %.sroa.122.sroa.0.0.extract.trunc962 = trunc i64 %.sroa.6745.sroa.7.i.sroa.7.0.copyload1652 to i32
  %.sroa.122.sroa.48.0.extract.shift1034 = lshr i64 %.sroa.6745.sroa.7.i.sroa.7.0.copyload1652, 32
  %.sroa.122.sroa.48.0.extract.trunc1035 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift1034 to i32
  %.sroa.158.sroa.0.0.extract.trunc833 = trunc i64 %.sroa.6745.sroa.7.i.sroa.14.0.copyload1666 to i8
  %.sroa.158.sroa.48.0.extract.shift905 = lshr i64 %.sroa.6745.sroa.7.i.sroa.14.0.copyload1666, 8
  %.sroa.158.sroa.48.0.extract.trunc906 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift905 to i56
  %.sroa.164.sroa.0.0.extract.trunc728 = trunc i64 %.sroa.6745.sroa.7.i.sroa.15.0.copyload1668 to i8
  %.sroa.164.sroa.48.0.extract.shift758 = lshr i64 %.sroa.6745.sroa.7.i.sroa.15.0.copyload1668, 8
  %.sroa.164.sroa.48.0.extract.trunc759 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift758 to i56
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1156 = trunc i32 %.sroa.01225.0.copyload.i to i8
  %.sroa.50.sroa.0.sroa.48.0.extract.shift1182 = lshr i32 %.sroa.01225.0.copyload.i, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1183 = trunc nuw i32 %.sroa.50.sroa.0.sroa.48.0.extract.shift1182 to i24
  br label %bb.km

bb.jz:                                            ; preds = %bb.jx
  %i.aaz = load <2 x i64>, ptr %.sroa.61222.0..sroa_idx.i, align 8, !noalias !48180
  %i.aba = load <2 x i64>, ptr %.sroa.5752.i.sroa.5.0..sroa.61222.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  %.sroa.5752.i.sroa.7.0.copyload = load i64, ptr %.sroa.5752.i.sroa.7.0..sroa.61222.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5686.i.sroa.17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5752.i.sroa.8.0..sroa.61222.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !48180
  %.sroa.5752.i.sroa.9.0.copyload = load i8, ptr %.sroa.5752.i.sroa.9.0..sroa.61222.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  %.sroa.5752.i.sroa.10.0.copyload = load i56, ptr %.sroa.5752.i.sroa.10.0..sroa.61222.0..sroa_idx.i.sroa_idx, align 1, !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !48180
  br label %bb.hx

_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1290.i: ; preds = %bb.hu
  %i.abb = load i64, ptr %i.i, align 8, !range !39, !noalias !48180, !noundef !28 ; 2 uses
  %i.abc = icmp eq i64 %i.abb, -1
  %.sroa.01235.0.copyload.i = load i32, ptr %.sroa.41230.0..sroa_idx.i, align 8, !noalias !48180 ; 3 uses
  %.sroa.6767.sroa.7.i.sroa.0.0.copyload1670 = load i32, ptr %.sroa.51231.0..sroa_idx.i, align 4, !noalias !48180 ; 2 uses
  %.sroa.6767.sroa.7.i.sroa.7.0.copyload1672 = load i64, ptr %.sroa.6767.sroa.7.i.sroa.7.0..sroa.51231.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6767.sroa.7.i.sroa.8.0.copyload1674 = load i64, ptr %.sroa.6767.sroa.7.i.sroa.8.0..sroa.51231.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6767.sroa.7.i.sroa.9.0.copyload1676 = load i64, ptr %.sroa.6767.sroa.7.i.sroa.9.0..sroa.51231.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6767.sroa.7.i.sroa.10.0.copyload1678 = load i64, ptr %.sroa.6767.sroa.7.i.sroa.10.0..sroa.51231.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6767.sroa.7.i.sroa.11.0.copyload1680 = load i64, ptr %.sroa.6767.sroa.7.i.sroa.11.0..sroa.51231.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6767.sroa.7.i.sroa.12.0.copyload1682 = load i64, ptr %.sroa.6767.sroa.7.i.sroa.12.0..sroa.51231.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6767.sroa.7.i.sroa.13.0.copyload1684 = load i64, ptr %.sroa.6767.sroa.7.i.sroa.13.0..sroa.51231.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 2 uses
  %.sroa.6767.sroa.7.i.sroa.14.0.copyload1686 = load i64, ptr %.sroa.6767.sroa.7.i.sroa.14.0..sroa.51231.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  %.sroa.6767.sroa.7.i.sroa.15.0.copyload1688 = load i64, ptr %.sroa.6767.sroa.7.i.sroa.15.0..sroa.51231.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180 ; 3 uses
  br i1 %i.abc, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1290.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !48180
  %.sroa.122.sroa.0.0.extract.trunc961 = trunc i64 %.sroa.6767.sroa.7.i.sroa.7.0.copyload1672 to i32
  %.sroa.122.sroa.48.0.extract.shift1032 = lshr i64 %.sroa.6767.sroa.7.i.sroa.7.0.copyload1672, 32
  %.sroa.122.sroa.48.0.extract.trunc1033 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift1032 to i32
  %.sroa.158.sroa.0.0.extract.trunc832 = trunc i64 %.sroa.6767.sroa.7.i.sroa.14.0.copyload1686 to i8
  %.sroa.158.sroa.48.0.extract.shift903 = lshr i64 %.sroa.6767.sroa.7.i.sroa.14.0.copyload1686, 8
  %.sroa.158.sroa.48.0.extract.trunc904 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift903 to i56
  %.sroa.164.sroa.0.0.extract.trunc727 = trunc i64 %.sroa.6767.sroa.7.i.sroa.15.0.copyload1688 to i8
  %.sroa.164.sroa.48.0.extract.shift756 = lshr i64 %.sroa.6767.sroa.7.i.sroa.15.0.copyload1688, 8
  %.sroa.164.sroa.48.0.extract.trunc757 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift756 to i56
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc = trunc i32 %.sroa.01235.0.copyload.i to i8
  %.sroa.50.sroa.0.sroa.48.0.extract.shift = lshr i32 %.sroa.01235.0.copyload.i, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc = trunc nuw i32 %.sroa.50.sroa.0.sroa.48.0.extract.shift to i24
  br label %bb.km

bb.kb:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_expression.exit1290.i
  %i.abd = load <2 x i64>, ptr %.sroa.61232.0..sroa_idx.i, align 8, !noalias !48180
  %i.abe = load <2 x i64>, ptr %.sroa.5686.i.sroa.14.0..sroa.61232.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  %.sroa.5686.i.sroa.16.0.copyload1724 = load i64, ptr %.sroa.5686.i.sroa.16.0..sroa.61232.0..sroa_idx.i.sroa_idx, align 8, !noalias !48180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !48180
  br label %bb.hx

bb.kc:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !48180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !48180
  %i.abf = invoke { ptr, i64 } @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bd)
          to label %bb.kd unwind label %.loopexit.split-lp1846, !noalias !48181 ; 2 uses

bb.kd:                                            ; preds = %bb.kc
  %i.abg = extractvalue { ptr, i64 } %i.abf, 0
  %i.abh = extractvalue { ptr, i64 } %i.abf, 1
  %i.abi = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.abg, ptr %i.abi, align 8, !noalias !48180
  %i.abj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.abh, ptr %i.abj, align 8, !noalias !48180
  store i64 -9223372036854775717, ptr %i.g, align 8, !noalias !48180
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token5error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.g)
          to label %bb.ke unwind label %.loopexit.split-lp1846, !noalias !48181

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !48180
  %.sroa.50.8.copyload299 = load i64, ptr %i.h, align 8, !noalias !48181 ; 3 uses
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1180 = trunc i64 %.sroa.50.8.copyload299 to i8
  %16 = lshr i64 %.sroa.50.8.copyload299, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1229 = trunc i64 %16 to i24
  %.sroa.50.sroa.67.0.extract.shift1127 = lshr i64 %.sroa.50.8.copyload299, 32
  %.sroa.50.sroa.67.0.extract.trunc1128 = trunc nuw i64 %.sroa.50.sroa.67.0.extract.shift1127 to i32
  %.sroa.122.8..sroa_idx338 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.122.8.copyload339 = load i64, ptr %.sroa.122.8..sroa_idx338, align 8, !noalias !48181 ; 2 uses
  %.sroa.122.sroa.0.0.extract.trunc940 = trunc i64 %.sroa.122.8.copyload339 to i32
  %.sroa.122.sroa.48.0.extract.shift990 = lshr i64 %.sroa.122.8.copyload339, 32
  %.sroa.122.sroa.48.0.extract.trunc991 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift990 to i32
  %.sroa.132.8..sroa_idx379 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.132.8.copyload380 = load i64, ptr %.sroa.132.8..sroa_idx379, align 8, !noalias !48181
  %.sroa.137.8..sroa_idx420 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.137.8.copyload421 = load i64, ptr %.sroa.137.8..sroa_idx420, align 8, !noalias !48181
  %.sroa.142.8..sroa_idx461 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.142.8.copyload462 = load i64, ptr %.sroa.142.8..sroa_idx461, align 8, !noalias !48181
  %.sroa.146.8..sroa_idx502 = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.146.8.copyload503 = load i64, ptr %.sroa.146.8..sroa_idx502, align 8, !noalias !48181
  %.sroa.150.8..sroa_idx543 = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.150.8.copyload544 = load i64, ptr %.sroa.150.8..sroa_idx543, align 8, !noalias !48181
  %.sroa.154.8..sroa_idx584 = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.154.8.copyload585 = load i64, ptr %.sroa.154.8..sroa_idx584, align 8, !noalias !48181
  %.sroa.158.8..sroa_idx625 = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.158.8.copyload626 = load i64, ptr %.sroa.158.8..sroa_idx625, align 8, !noalias !48181 ; 2 uses
  %.sroa.158.sroa.0.0.extract.trunc811 = trunc i64 %.sroa.158.8.copyload626 to i8
  %.sroa.158.sroa.48.0.extract.shift861 = lshr i64 %.sroa.158.8.copyload626, 8
  %.sroa.158.sroa.48.0.extract.trunc862 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift861 to i56
  %.sroa.164.8..sroa_idx667 = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %.sroa.164.8.copyload668 = load i64, ptr %.sroa.164.8..sroa_idx667, align 8, !noalias !48181 ; 2 uses
  %.sroa.164.sroa.0.0.extract.trunc726 = trunc i64 %.sroa.164.8.copyload668 to i8
  %.sroa.164.sroa.48.0.extract.shift754 = lshr i64 %.sroa.164.8.copyload668, 8
  %.sroa.164.sroa.48.0.extract.trunc755 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift754 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !48180
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1E_4name4NameEEB1E_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.cr)
          to label %bb.kn unwind label %.loopexit1365.i.loopexit.split-lp

bb.kf:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !48180
  br i1 %i.vc, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kh, %bb.kf
  br i1 %i.vd, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit1310.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i1308.i

bb.kh:                                            ; preds = %bb.kf
  %i.abk = load i8, ptr %i.vk, align 1, !alias.scope !48208, !noalias !48209, !noundef !28
  %i.abl = icmp sgt i8 %i.abk, -65
  br i1 %i.abl, label %bb.kg, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i1307.invoke.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i1308.i: ; preds = %bb.kg
  %i.abm = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uy
  %i.abn = load i8, ptr %i.abm, align 1, !alias.scope !48208, !noalias !48209, !noundef !28
  %i.abo = icmp sgt i8 %i.abn, -65
  br i1 %i.abo, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit1310.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i1307.invoke.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i1307.invoke.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i101, %bb.eb, %bb.dx, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i1308.i, %bb.kh
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ux, i64 noundef %.sroa.055.i.sroa.10.0.copyload1454, i64 noundef %.sroa.055.i.sroa.14.0.copyload1478, i64 noundef %i.uy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75
          to label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i1307.cont.i unwind label %.loopexit.split-lp1846, !noalias !48181

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i1307.cont.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i1307.invoke.i
  unreachable

_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit1310.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i1308.i, %bb.kg, %.thread1396.i
  %.sroa.055.i.sroa.14.0.copyload14783946 = phi i64 [ %.sroa.055.i.sroa.10.0.copyload1454, %.thread1396.i ], [ %.sroa.055.i.sroa.14.0.copyload1478, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i1308.i ], [ %.sroa.055.i.sroa.14.0.copyload1478, %bb.kg ] ; 2 uses
  %i.abp = phi ptr [ %i.vm, %.thread1396.i ], [ %i.vk, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i1308.i ], [ %i.vk, %bb.kg ]
  %i.abq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.abp, ptr %i.abq, align 8, !noalias !48180
  %i.abr = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %.sroa.055.i.sroa.12.0.copyload1466, ptr %i.abr, align 8, !noalias !48180
  store i64 -9223372036854775717, ptr %i.bf, align 8, !noalias !48180
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !48210
  %i.abs = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !48210 ; 3 uses
  %i.abt = icmp eq ptr %i.abs, null
  br i1 %i.abt, label %bb.ki, label %bb.kl, !prof !26

bb.ki:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit1310.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc.i.i.i107 unwind label %bb.kj, !noalias !48211

.noexc.i.i.i107:                                  ; preds = %bb.ki
  unreachable

bb.kj:                                            ; preds = %bb.ki
  %i.abu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.bf) #72
          to label %.body.i96 unwind label %bb.kk, !noalias !48212

bb.kk:                                            ; preds = %bb.kj
  %i.abv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !48212
  unreachable

bb.kl:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit1310.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.abs, ptr noundef nonnull align 8 dereferenceable(128) %i.bf, i64 128, i1 false), !noalias !48212
  %.sroa.122.sroa.0.0.extract.trunc975 = trunc i64 %.sroa.055.i.sroa.0.0.copyload1438 to i32
  %.sroa.122.sroa.48.0.extract.shift1058 = lshr i64 %.sroa.055.i.sroa.0.0.copyload1438, 32
  %.sroa.122.sroa.48.0.extract.trunc1059 = trunc nuw i64 %.sroa.122.sroa.48.0.extract.shift1058 to i32
  %.sroa.158.sroa.0.0.extract.trunc840 = trunc i64 %.sroa.055.i.sroa.14.0.copyload14783946 to i8
  %.sroa.158.sroa.48.0.extract.shift919 = lshr i64 %.sroa.055.i.sroa.14.0.copyload14783946, 8
  %.sroa.158.sroa.48.0.extract.trunc920 = trunc nuw i64 %.sroa.158.sroa.48.0.extract.shift919 to i56
  %.sroa.164.sroa.48.0.extract.shift772 = lshr i64 %.sroa.055.i.sroa.15.0.copyload1484, 8
  %.sroa.164.sroa.48.0.extract.trunc773 = trunc nuw i64 %.sroa.164.sroa.48.0.extract.shift772 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !48180
  %i.abw = ptrtoint ptr %i.abs to i64             ; 3 uses
  %.sroa.50.sroa.0.sroa.0.0.extract.trunc1165 = trunc i64 %i.abw to i8
  %17 = lshr i64 %i.abw, 8
  %.sroa.50.sroa.0.sroa.48.0.extract.trunc1201 = trunc i64 %17 to i24
  %.sroa.50.sroa.67.0.extract.shift1099 = lshr i64 %i.abw, 32
  %.sroa.50.sroa.67.0.extract.trunc1100 = trunc nuw i64 %.sroa.50.sroa.67.0.extract.shift1099 to i32
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.ka, %bb.jy, %bb.jv, %bb.jt, %bb.jq, %bb.jo, %bb.iq, %.thread.i104, %bb.ic, %bb.ia, %bb.hy, %bb.hv, %bb.hj, %bb.hg, %bb.hd, %bb.ha, %bb.gx, %bb.gu, %bb.gr, %bb.go, %bb.gk, %bb.gh, %bb.ge, %bb.gb, %bb.fy, %bb.fv, %bb.fs, %bb.fp, %bb.fm, %bb.fj, %bb.fg, %bb.fc, %bb.ef, %bb.du, %bb.dr
  %.sroa.50.sroa.0.sroa.48.sroa.0.0 = phi i24 [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1201, %bb.kl ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1195, %bb.hv ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1193, %bb.hy ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1191, %bb.ia ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1227, %bb.ic ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.3, %.thread.i104 ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1223, %bb.iq ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.1, %bb.jo ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1189, %bb.jq ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1187, %bb.jt ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1185, %bb.jv ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1183, %bb.jy ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc, %bb.ka ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1199, %bb.hj ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1250, %bb.fc ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1249, %bb.fg ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1248, %bb.fj ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1247, %bb.fm ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1246, %bb.fp ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1245, %bb.fs ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1244, %bb.fv ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1243, %bb.fy ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1242, %bb.gb ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1241, %bb.ge ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1240, %bb.gh ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1239, %bb.gk ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1238, %bb.go ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1237, %bb.gr ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1236, %bb.gu ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1235, %bb.gx ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1234, %bb.ha ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload1233, %bb.hd ], [ %.sroa.50.sroa.0.sroa.48.sroa.0.0.copyload, %bb.hg ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1213, %bb.ef ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1231, %bb.du ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1197, %bb.dr ]
  %.sroa.50.sroa.0.sroa.0.0 = phi i8 [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1165, %bb.kl ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1162, %bb.hv ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1161, %bb.hy ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1160, %bb.ia ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1179, %bb.ic ], [ %.sroa.50.sroa.0.sroa.0.3, %.thread.i104 ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1177, %bb.iq ], [ %.sroa.50.sroa.0.sroa.0.1, %bb.jo ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1159, %bb.jq ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1158, %bb.jt ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1157, %bb.jv ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1156, %bb.jy ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc, %bb.ka ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1164, %bb.hj ], [ %i.vr, %bb.fc ], [ %i.vw, %bb.fg ], [ %i.vy, %bb.fj ], [ %i.wa, %bb.fm ], [ %i.wc, %bb.fp ], [ %i.we, %bb.fs ], [ %i.wg, %bb.fv ], [ %i.wi, %bb.fy ], [ %i.wk, %bb.gb ], [ %i.wm, %bb.ge ], [ %i.wo, %bb.gh ], [ %i.wq, %bb.gk ], [ %i.ws, %bb.go ], [ %i.wu, %bb.gr ], [ %i.ww, %bb.gu ], [ %i.wy, %bb.gx ], [ %i.xa, %bb.ha ], [ %i.xc, %bb.hd ], [ %i.xe, %bb.hg ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1172, %bb.ef ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1181, %bb.du ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1163, %bb.dr ]
  %.sroa.50.sroa.67.0 = phi i32 [ %.sroa.50.sroa.67.0.extract.trunc1100, %bb.kl ], [ %.sroa.6524.sroa.7.i.sroa.0.0.copyload1490, %bb.hv ], [ %.sroa.6546.sroa.7.i.sroa.0.0.copyload1510, %bb.hy ], [ %.sroa.6561.sroa.7.i.sroa.0.0.copyload1530, %bb.ia ], [ %.sroa.50.sroa.67.0.extract.trunc1126, %bb.ic ], [ %.sroa.50.sroa.67.3, %.thread.i104 ], [ %.sroa.50.sroa.67.0.extract.trunc1122, %bb.iq ], [ %.sroa.50.sroa.67.1, %bb.jo ], [ %.sroa.6680.sroa.7.i.sroa.0.0.copyload1590, %bb.jq ], [ %.sroa.6701.sroa.7.i.sroa.0.0.copyload1610, %bb.jt ], [ %.sroa.6723.sroa.7.i.sroa.0.0.copyload1630, %bb.jv ], [ %.sroa.6745.sroa.7.i.sroa.0.0.copyload1650, %bb.jy ], [ %.sroa.6767.sroa.7.i.sroa.0.0.copyload1670, %bb.ka ], [ %.sroa.50.sroa.67.0.extract.trunc1098, %bb.hj ], [ %.sroa.50.sroa.67.1.copyload1148, %bb.fc ], [ %.sroa.50.sroa.67.1.copyload1147, %bb.fg ], [ %.sroa.50.sroa.67.1.copyload1146, %bb.fj ], [ %.sroa.50.sroa.67.1.copyload1145, %bb.fm ], [ %.sroa.50.sroa.67.1.copyload1144, %bb.fp ], [ %.sroa.50.sroa.67.1.copyload1143, %bb.fs ], [ %.sroa.50.sroa.67.1.copyload1142, %bb.fv ], [ %.sroa.50.sroa.67.1.copyload1141, %bb.fy ], [ %.sroa.50.sroa.67.1.copyload1140, %bb.gb ], [ %.sroa.50.sroa.67.1.copyload1139, %bb.ge ], [ %.sroa.50.sroa.67.1.copyload1138, %bb.gh ], [ %.sroa.50.sroa.67.1.copyload1137, %bb.gk ], [ %.sroa.50.sroa.67.1.copyload1136, %bb.go ], [ %.sroa.50.sroa.67.1.copyload1135, %bb.gr ], [ %.sroa.50.sroa.67.1.copyload1134, %bb.gu ], [ %.sroa.50.sroa.67.1.copyload1133, %bb.gx ], [ %.sroa.50.sroa.67.1.copyload1132, %bb.ha ], [ %.sroa.50.sroa.67.1.copyload1131, %bb.hd ], [ %.sroa.50.sroa.67.1.copyload, %bb.hg ], [ %.sroa.50.sroa.67.0.extract.trunc1112, %bb.ef ], [ %.sroa.50.sroa.67.0.extract.trunc1130, %bb.du ], [ %.sroa.50.sroa.67.0.extract.trunc, %bb.dr ]
  %.sroa.122.sroa.48.0 = phi i32 [ %.sroa.122.sroa.48.0.extract.trunc1059, %bb.kl ], [ %.sroa.122.sroa.48.0.extract.trunc1047, %bb.hv ], [ %.sroa.122.sroa.48.0.extract.trunc1045, %bb.hy ], [ %.sroa.122.sroa.48.0.extract.trunc1043, %bb.ia ], [ %.sroa.122.sroa.48.0.extract.trunc989, %bb.ic ], [ %.sroa.122.sroa.48.3, %.thread.i104 ], [ %.sroa.122.sroa.48.0.extract.trunc985, %bb.iq ], [ %.sroa.122.sroa.48.1, %bb.jo ], [ %.sroa.122.sroa.48.0.extract.trunc1041, %bb.jq ], [ %.sroa.122.sroa.48.0.extract.trunc1039, %bb.jt ], [ %.sroa.122.sroa.48.0.extract.trunc1037, %bb.jv ], [ %.sroa.122.sroa.48.0.extract.trunc1035, %bb.jy ], [ %.sroa.122.sroa.48.0.extract.trunc1033, %bb.ka ], [ %.sroa.122.sroa.48.0.extract.trunc1055, %bb.hj ], [ %.sroa.122.sroa.48.0.extract.trunc1031, %bb.fc ], [ %.sroa.122.sroa.48.0.extract.trunc1029, %bb.fg ], [ %.sroa.122.sroa.48.0.extract.trunc1027, %bb.fj ], [ %.sroa.122.sroa.48.0.extract.trunc1025, %bb.fm ], [ %.sroa.122.sroa.48.0.extract.trunc1023, %bb.fp ], [ %.sroa.122.sroa.48.0.extract.trunc1021, %bb.fs ], [ %.sroa.122.sroa.48.0.extract.trunc1019, %bb.fv ], [ %.sroa.122.sroa.48.0.extract.trunc1017, %bb.fy ], [ %.sroa.122.sroa.48.0.extract.trunc1015, %bb.gb ], [ %.sroa.122.sroa.48.0.extract.trunc1013, %bb.ge ], [ %.sroa.122.sroa.48.0.extract.trunc1011, %bb.gh ], [ %.sroa.122.sroa.48.0.extract.trunc1009, %bb.gk ], [ %.sroa.122.sroa.48.0.extract.trunc1007, %bb.go ], [ %.sroa.122.sroa.48.0.extract.trunc1005, %bb.gr ], [ %.sroa.122.sroa.48.0.extract.trunc1003, %bb.gu ], [ %.sroa.122.sroa.48.0.extract.trunc1001, %bb.gx ], [ %.sroa.122.sroa.48.0.extract.trunc999, %bb.ha ], [ %.sroa.122.sroa.48.0.extract.trunc997, %bb.hd ], [ %.sroa.122.sroa.48.0.extract.trunc995, %bb.hg ], [ %.sroa.122.sroa.48.0.extract.trunc, %bb.ef ], [ %.sroa.122.sroa.48.0.extract.trunc993, %bb.du ], [ %.sroa.122.sroa.48.0.extract.trunc1053, %bb.dr ]
  %.sroa.122.sroa.0.0 = phi i32 [ %.sroa.122.sroa.0.0.extract.trunc975, %bb.kl ], [ %.sroa.122.sroa.0.0.extract.trunc968, %bb.hv ], [ %.sroa.122.sroa.0.0.extract.trunc967, %bb.hy ], [ %.sroa.122.sroa.0.0.extract.trunc966, %bb.ia ], [ %.sroa.122.sroa.0.0.extract.trunc939, %bb.ic ], [ %.sroa.122.sroa.0.3, %.thread.i104 ], [ %.sroa.122.sroa.0.0.extract.trunc937, %bb.iq ], [ %.sroa.122.sroa.0.1, %bb.jo ], [ %.sroa.122.sroa.0.0.extract.trunc965, %bb.jq ], [ %.sroa.122.sroa.0.0.extract.trunc964, %bb.jt ], [ %.sroa.122.sroa.0.0.extract.trunc963, %bb.jv ], [ %.sroa.122.sroa.0.0.extract.trunc962, %bb.jy ], [ %.sroa.122.sroa.0.0.extract.trunc961, %bb.ka ], [ %.sroa.122.sroa.0.0.extract.trunc973, %bb.hj ], [ %.sroa.122.sroa.0.0.extract.trunc960, %bb.fc ], [ %.sroa.122.sroa.0.0.extract.trunc959, %bb.fg ], [ %.sroa.122.sroa.0.0.extract.trunc958, %bb.fj ], [ %.sroa.122.sroa.0.0.extract.trunc957, %bb.fm ], [ %.sroa.122.sroa.0.0.extract.trunc956, %bb.fp ], [ %.sroa.122.sroa.0.0.extract.trunc955, %bb.fs ], [ %.sroa.122.sroa.0.0.extract.trunc954, %bb.fv ], [ %.sroa.122.sroa.0.0.extract.trunc953, %bb.fy ], [ %.sroa.122.sroa.0.0.extract.trunc952, %bb.gb ], [ %.sroa.122.sroa.0.0.extract.trunc951, %bb.ge ], [ %.sroa.122.sroa.0.0.extract.trunc950, %bb.gh ], [ %.sroa.122.sroa.0.0.extract.trunc949, %bb.gk ], [ %.sroa.122.sroa.0.0.extract.trunc948, %bb.go ], [ %.sroa.122.sroa.0.0.extract.trunc947, %bb.gr ], [ %.sroa.122.sroa.0.0.extract.trunc946, %bb.gu ], [ %.sroa.122.sroa.0.0.extract.trunc945, %bb.gx ], [ %.sroa.122.sroa.0.0.extract.trunc944, %bb.ha ], [ %.sroa.122.sroa.0.0.extract.trunc943, %bb.hd ], [ %.sroa.122.sroa.0.0.extract.trunc942, %bb.hg ], [ %.sroa.122.sroa.0.0.extract.trunc, %bb.ef ], [ %.sroa.122.sroa.0.0.extract.trunc941, %bb.du ], [ %.sroa.122.sroa.0.0.extract.trunc972, %bb.dr ]
  %.sroa.158.sroa.48.sroa.0.0 = phi i56 [ %.sroa.158.sroa.48.0.extract.trunc920, %bb.kl ], [ %.sroa.158.sroa.48.0.extract.trunc918, %bb.hv ], [ %.sroa.158.sroa.48.0.extract.trunc916, %bb.hy ], [ %.sroa.158.sroa.48.0.extract.trunc914, %bb.ia ], [ %.sroa.158.sroa.48.0.extract.trunc860, %bb.ic ], [ %.sroa.158.sroa.48.sroa.0.3, %.thread.i104 ], [ %.sroa.158.sroa.48.0.extract.trunc856, %bb.iq ], [ %.sroa.158.sroa.48.sroa.0.1, %bb.jo ], [ %.sroa.158.sroa.48.0.extract.trunc912, %bb.jq ], [ %.sroa.158.sroa.48.0.extract.trunc910, %bb.jt ], [ %.sroa.158.sroa.48.0.extract.trunc908, %bb.jv ], [ %.sroa.158.sroa.48.0.extract.trunc906, %bb.jy ], [ %.sroa.158.sroa.48.0.extract.trunc904, %bb.ka ], [ %.sroa.15478.i.sroa.0.0.copyload, %bb.hj ], [ %.sroa.158.sroa.48.0.extract.trunc902, %bb.fc ], [ %.sroa.158.sroa.48.0.extract.trunc900, %bb.fg ], [ %.sroa.158.sroa.48.0.extract.trunc898, %bb.fj ], [ %.sroa.158.sroa.48.0.extract.trunc896, %bb.fm ], [ %.sroa.158.sroa.48.0.extract.trunc894, %bb.fp ], [ %.sroa.158.sroa.48.0.extract.trunc892, %bb.fs ], [ %.sroa.158.sroa.48.0.extract.trunc890, %bb.fv ], [ %.sroa.158.sroa.48.0.extract.trunc888, %bb.fy ], [ %.sroa.158.sroa.48.0.extract.trunc886, %bb.gb ], [ %.sroa.158.sroa.48.0.extract.trunc884, %bb.ge ], [ %.sroa.158.sroa.48.0.extract.trunc882, %bb.gh ], [ %.sroa.158.sroa.48.0.extract.trunc880, %bb.gk ], [ %.sroa.158.sroa.48.0.extract.trunc878, %bb.go ], [ %.sroa.158.sroa.48.0.extract.trunc876, %bb.gr ], [ %.sroa.158.sroa.48.0.extract.trunc874, %bb.gu ], [ %.sroa.158.sroa.48.0.extract.trunc872, %bb.gx ], [ %.sroa.158.sroa.48.0.extract.trunc870, %bb.ha ], [ %.sroa.158.sroa.48.0.extract.trunc868, %bb.hd ], [ %.sroa.158.sroa.48.0.extract.trunc866, %bb.hg ], [ %.sroa.158.sroa.48.0.extract.trunc, %bb.ef ], [ %.sroa.158.sroa.48.0.extract.trunc864, %bb.du ], [ %.sroa.15.i95.sroa.0.0.copyload, %bb.dr ]
  %.sroa.158.sroa.0.0 = phi i8 [ %.sroa.158.sroa.0.0.extract.trunc840, %bb.kl ], [ %.sroa.158.sroa.0.0.extract.trunc839, %bb.hv ], [ %.sroa.158.sroa.0.0.extract.trunc838, %bb.hy ], [ %.sroa.158.sroa.0.0.extract.trunc837, %bb.ia ], [ %.sroa.158.sroa.0.0.extract.trunc810, %bb.ic ], [ %.sroa.158.sroa.0.3, %.thread.i104 ], [ %.sroa.158.sroa.0.0.extract.trunc808, %bb.iq ], [ %.sroa.158.sroa.0.1, %bb.jo ], [ %.sroa.158.sroa.0.0.extract.trunc836, %bb.jq ], [ %.sroa.158.sroa.0.0.extract.trunc835, %bb.jt ], [ %.sroa.158.sroa.0.0.extract.trunc834, %bb.jv ], [ %.sroa.158.sroa.0.0.extract.trunc833, %bb.jy ], [ %.sroa.158.sroa.0.0.extract.trunc832, %bb.ka ], [ %.sroa.111111.0.copyload.i, %bb.hj ], [ %.sroa.158.sroa.0.0.extract.trunc831, %bb.fc ], [ %.sroa.158.sroa.0.0.extract.trunc830, %bb.fg ], [ %.sroa.158.sroa.0.0.extract.trunc829, %bb.fj ], [ %.sroa.158.sroa.0.0.extract.trunc828, %bb.fm ], [ %.sroa.158.sroa.0.0.extract.trunc827, %bb.fp ], [ %.sroa.158.sroa.0.0.extract.trunc826, %bb.fs ], [ %.sroa.158.sroa.0.0.extract.trunc825, %bb.fv ], [ %.sroa.158.sroa.0.0.extract.trunc824, %bb.fy ], [ %.sroa.158.sroa.0.0.extract.trunc823, %bb.gb ], [ %.sroa.158.sroa.0.0.extract.trunc822, %bb.ge ], [ %.sroa.158.sroa.0.0.extract.trunc821, %bb.gh ], [ %.sroa.158.sroa.0.0.extract.trunc820, %bb.gk ], [ %.sroa.158.sroa.0.0.extract.trunc819, %bb.go ], [ %.sroa.158.sroa.0.0.extract.trunc818, %bb.gr ], [ %.sroa.158.sroa.0.0.extract.trunc817, %bb.gu ], [ %.sroa.158.sroa.0.0.extract.trunc816, %bb.gx ], [ %.sroa.158.sroa.0.0.extract.trunc815, %bb.ha ], [ %.sroa.158.sroa.0.0.extract.trunc814, %bb.hd ], [ %.sroa.158.sroa.0.0.extract.trunc813, %bb.hg ], [ %.sroa.158.sroa.0.0.extract.trunc, %bb.ef ], [ %.sroa.158.sroa.0.0.extract.trunc812, %bb.du ], [ %.sroa.11828.0.copyload.i, %bb.dr ]
  %.sroa.164.sroa.48.sroa.0.0 = phi i56 [ %.sroa.164.sroa.48.0.extract.trunc773, %bb.kl ], [ %.sroa.164.sroa.48.0.extract.trunc771, %bb.hv ], [ %.sroa.164.sroa.48.0.extract.trunc769, %bb.hy ], [ %.sroa.164.sroa.48.0.extract.trunc767, %bb.ia ], [ %.sroa.164.sroa.48.0.extract.trunc753, %bb.ic ], [ %.sroa.164.sroa.48.sroa.0.3, %.thread.i104 ], [ %.sroa.164.sroa.48.0.extract.trunc749, %bb.iq ], [ %.sroa.164.sroa.48.sroa.0.1, %bb.jo ], [ %.sroa.164.sroa.48.0.extract.trunc765, %bb.jq ], [ %.sroa.164.sroa.48.0.extract.trunc763, %bb.jt ], [ %.sroa.164.sroa.48.0.extract.trunc761, %bb.jv ], [ %.sroa.164.sroa.48.0.extract.trunc759, %bb.jy ], [ %.sroa.164.sroa.48.0.extract.trunc757, %bb.ka ], [ %.sroa.164.sroa.48.sroa.0.0.copyload801, %bb.hj ], [ %.sroa.164.sroa.48.sroa.0.0.copyload800, %bb.fc ], [ %.sroa.164.sroa.48.sroa.0.0.copyload799, %bb.fg ], [ %.sroa.164.sroa.48.sroa.0.0.copyload798, %bb.fj ], [ %.sroa.164.sroa.48.sroa.0.0.copyload797, %bb.fm ], [ %.sroa.164.sroa.48.sroa.0.0.copyload796, %bb.fp ], [ %.sroa.164.sroa.48.sroa.0.0.copyload795, %bb.fs ], [ %.sroa.164.sroa.48.sroa.0.0.copyload794, %bb.fv ], [ %.sroa.164.sroa.48.sroa.0.0.copyload793, %bb.fy ], [ %.sroa.164.sroa.48.sroa.0.0.copyload792, %bb.gb ], [ %.sroa.164.sroa.48.sroa.0.0.copyload791, %bb.ge ], [ %.sroa.164.sroa.48.sroa.0.0.copyload790, %bb.gh ], [ %.sroa.164.sroa.48.sroa.0.0.copyload789, %bb.gk ], [ %.sroa.164.sroa.48.sroa.0.0.copyload788, %bb.go ], [ %.sroa.164.sroa.48.sroa.0.0.copyload787, %bb.gr ], [ %.sroa.164.sroa.48.sroa.0.0.copyload786, %bb.gu ], [ %.sroa.164.sroa.48.sroa.0.0.copyload785, %bb.gx ], [ %.sroa.164.sroa.48.sroa.0.0.copyload784, %bb.ha ], [ %.sroa.164.sroa.48.sroa.0.0.copyload783, %bb.hd ], [ %.sroa.164.sroa.48.sroa.0.0.copyload782, %bb.hg ], [ %.sroa.164.sroa.48.0.extract.trunc, %bb.ef ], [ %.sroa.164.sroa.48.sroa.0.0.copyload781, %bb.du ], [ %.sroa.164.sroa.48.sroa.0.0.copyload, %bb.dr ]
  %.sroa.164.sroa.0.0 = phi i8 [ 28, %bb.kl ], [ %.sroa.164.sroa.0.0.extract.trunc734, %bb.hv ], [ %.sroa.164.sroa.0.0.extract.trunc733, %bb.hy ], [ %.sroa.164.sroa.0.0.extract.trunc732, %bb.ia ], [ %.sroa.164.sroa.0.0.extract.trunc725, %bb.ic ], [ %.sroa.164.sroa.0.3, %.thread.i104 ], [ %.sroa.164.sroa.0.0.extract.trunc723, %bb.iq ], [ %.sroa.164.sroa.0.1, %bb.jo ], [ %.sroa.164.sroa.0.0.extract.trunc731, %bb.jq ], [ %.sroa.164.sroa.0.0.extract.trunc730, %bb.jt ], [ %.sroa.164.sroa.0.0.extract.trunc729, %bb.jv ], [ %.sroa.164.sroa.0.0.extract.trunc728, %bb.jy ], [ %.sroa.164.sroa.0.0.extract.trunc727, %bb.ka ], [ %i.xf, %bb.hj ], [ %i.vq, %bb.fc ], [ %i.vv, %bb.fg ], [ %i.vx, %bb.fj ], [ %i.vz, %bb.fm ], [ %i.wb, %bb.fp ], [ %i.wd, %bb.fs ], [ %i.wf, %bb.fv ], [ %i.wh, %bb.fy ], [ %i.wj, %bb.gb ], [ %i.wl, %bb.ge ], [ %i.wn, %bb.gh ], [ %i.wp, %bb.gk ], [ %i.wr, %bb.go ], [ %i.wt, %bb.gr ], [ %i.wv, %bb.gu ], [ %i.wx, %bb.gx ], [ %i.wz, %bb.ha ], [ %i.xb, %bb.hd ], [ %i.xd, %bb.hg ], [ %.sroa.164.sroa.0.0.extract.trunc, %bb.ef ], [ %i.uu, %bb.du ], [ %i.ur, %bb.dr ]
  %.sroa.154.0 = phi i64 [ %.sroa.055.i.sroa.13.0.copyload1472, %bb.kl ], [ %.sroa.6524.sroa.7.i.sroa.13.0.copyload1504, %bb.hv ], [ %.sroa.6546.sroa.7.i.sroa.13.0.copyload1524, %bb.hy ], [ %.sroa.6561.sroa.7.i.sroa.13.0.copyload1544, %bb.ia ], [ %.sroa.6570.i.sroa.13.0.copyload1564, %bb.ic ], [ %.sroa.154.3, %.thread.i104 ], [ %.sroa.154.8.copyload580, %bb.iq ], [ %.sroa.154.1, %bb.jo ], [ %.sroa.6680.sroa.7.i.sroa.13.0.copyload1604, %bb.jq ], [ %.sroa.6701.sroa.7.i.sroa.13.0.copyload1624, %bb.jt ], [ %.sroa.6723.sroa.7.i.sroa.13.0.copyload1644, %bb.jv ], [ %.sroa.6745.sroa.7.i.sroa.13.0.copyload1664, %bb.jy ], [ %.sroa.6767.sroa.7.i.sroa.13.0.copyload1684, %bb.ka ], [ %.sroa.101110.0.copyload.i, %bb.hj ], [ %.sroa.154.9.copyload604, %bb.fc ], [ %.sroa.154.9.copyload603, %bb.fg ], [ %.sroa.154.9.copyload602, %bb.fj ], [ %.sroa.154.9.copyload601, %bb.fm ], [ %.sroa.154.9.copyload600, %bb.fp ], [ %.sroa.154.9.copyload599, %bb.fs ], [ %.sroa.154.9.copyload598, %bb.fv ], [ %.sroa.154.9.copyload597, %bb.fy ], [ %.sroa.154.9.copyload596, %bb.gb ], [ %.sroa.154.9.copyload595, %bb.ge ], [ %.sroa.154.9.copyload594, %bb.gh ], [ %.sroa.154.9.copyload593, %bb.gk ], [ %.sroa.154.9.copyload592, %bb.go ], [ %.sroa.154.9.copyload591, %bb.gr ], [ %.sroa.154.9.copyload590, %bb.gu ], [ %.sroa.154.9.copyload589, %bb.gx ], [ %.sroa.154.9.copyload588, %bb.ha ], [ %.sroa.154.9.copyload587, %bb.hd ], [ %.sroa.154.9.copyload, %bb.hg ], [ %.sroa.154.8.copyload, %bb.ef ], [ %.sroa.055.i.sroa.14.0.copyload1478, %bb.du ], [ %.sroa.10827.0.copyload.i, %bb.dr ]
  %.sroa.150.0 = phi i64 [ %.sroa.055.i.sroa.12.0.copyload1466, %bb.kl ], [ %.sroa.6524.sroa.7.i.sroa.12.0.copyload1502, %bb.hv ], [ %.sroa.6546.sroa.7.i.sroa.12.0.copyload1522, %bb.hy ], [ %.sroa.6561.sroa.7.i.sroa.12.0.copyload1542, %bb.ia ], [ %.sroa.6570.i.sroa.12.0.copyload1562, %bb.ic ], [ %.sroa.150.3, %.thread.i104 ], [ %.sroa.150.8.copyload539, %bb.iq ], [ %.sroa.150.1, %bb.jo ], [ %.sroa.6680.sroa.7.i.sroa.12.0.copyload1602, %bb.jq ], [ %.sroa.6701.sroa.7.i.sroa.12.0.copyload1622, %bb.jt ], [ %.sroa.6723.sroa.7.i.sroa.12.0.copyload1642, %bb.jv ], [ %.sroa.6745.sroa.7.i.sroa.12.0.copyload1662, %bb.jy ], [ %.sroa.6767.sroa.7.i.sroa.12.0.copyload1682, %bb.ka ], [ %.sroa.91109.0.copyload.i, %bb.hj ], [ %.sroa.150.9.copyload563, %bb.fc ], [ %.sroa.150.9.copyload562, %bb.fg ], [ %.sroa.150.9.copyload561, %bb.fj ], [ %.sroa.150.9.copyload560, %bb.fm ], [ %.sroa.150.9.copyload559, %bb.fp ], [ %.sroa.150.9.copyload558, %bb.fs ], [ %.sroa.150.9.copyload557, %bb.fv ], [ %.sroa.150.9.copyload556, %bb.fy ], [ %.sroa.150.9.copyload555, %bb.gb ], [ %.sroa.150.9.copyload554, %bb.ge ], [ %.sroa.150.9.copyload553, %bb.gh ], [ %.sroa.150.9.copyload552, %bb.gk ], [ %.sroa.150.9.copyload551, %bb.go ], [ %.sroa.150.9.copyload550, %bb.gr ], [ %.sroa.150.9.copyload549, %bb.gu ], [ %.sroa.150.9.copyload548, %bb.gx ], [ %.sroa.150.9.copyload547, %bb.ha ], [ %.sroa.150.9.copyload546, %bb.hd ], [ %.sroa.150.9.copyload, %bb.hg ], [ %.sroa.150.8.copyload, %bb.ef ], [ %.sroa.055.i.sroa.13.0.copyload1472, %bb.du ], [ %.sroa.9826.0.copyload.i, %bb.dr ]
  %.sroa.146.0 = phi i64 [ %.sroa.055.i.sroa.11.0.copyload1460, %bb.kl ], [ %.sroa.6524.sroa.7.i.sroa.11.0.copyload1500, %bb.hv ], [ %.sroa.6546.sroa.7.i.sroa.11.0.copyload1520, %bb.hy ], [ %.sroa.6561.sroa.7.i.sroa.11.0.copyload1540, %bb.ia ], [ %.sroa.6570.i.sroa.11.0.copyload1560, %bb.ic ], [ %.sroa.146.3, %.thread.i104 ], [ %.sroa.146.8.copyload498, %bb.iq ], [ %.sroa.146.1, %bb.jo ], [ %.sroa.6680.sroa.7.i.sroa.11.0.copyload1600, %bb.jq ], [ %.sroa.6701.sroa.7.i.sroa.11.0.copyload1620, %bb.jt ], [ %.sroa.6723.sroa.7.i.sroa.11.0.copyload1640, %bb.jv ], [ %.sroa.6745.sroa.7.i.sroa.11.0.copyload1660, %bb.jy ], [ %.sroa.6767.sroa.7.i.sroa.11.0.copyload1680, %bb.ka ], [ %.sroa.81108.0.copyload.i, %bb.hj ], [ %.sroa.146.9.copyload522, %bb.fc ], [ %.sroa.146.9.copyload521, %bb.fg ], [ %.sroa.146.9.copyload520, %bb.fj ], [ %.sroa.146.9.copyload519, %bb.fm ], [ %.sroa.146.9.copyload518, %bb.fp ], [ %.sroa.146.9.copyload517, %bb.fs ], [ %.sroa.146.9.copyload516, %bb.fv ], [ %.sroa.146.9.copyload515, %bb.fy ], [ %.sroa.146.9.copyload514, %bb.gb ], [ %.sroa.146.9.copyload513, %bb.ge ], [ %.sroa.146.9.copyload512, %bb.gh ], [ %.sroa.146.9.copyload511, %bb.gk ], [ %.sroa.146.9.copyload510, %bb.go ], [ %.sroa.146.9.copyload509, %bb.gr ], [ %.sroa.146.9.copyload508, %bb.gu ], [ %.sroa.146.9.copyload507, %bb.gx ], [ %.sroa.146.9.copyload506, %bb.ha ], [ %.sroa.146.9.copyload505, %bb.hd ], [ %.sroa.146.9.copyload, %bb.hg ], [ %.sroa.146.8.copyload, %bb.ef ], [ %.sroa.055.i.sroa.12.0.copyload1466, %bb.du ], [ %.sroa.8825.0.copyload.i, %bb.dr ]
  %.sroa.142.0 = phi i64 [ %.sroa.055.i.sroa.10.0.copyload1454, %bb.kl ], [ %.sroa.6524.sroa.7.i.sroa.10.0.copyload1498, %bb.hv ], [ %.sroa.6546.sroa.7.i.sroa.10.0.copyload1518, %bb.hy ], [ %.sroa.6561.sroa.7.i.sroa.10.0.copyload1538, %bb.ia ], [ %.sroa.6570.i.sroa.10.0.copyload1558, %bb.ic ], [ %.sroa.142.3, %.thread.i104 ], [ %.sroa.142.8.copyload457, %bb.iq ], [ %.sroa.142.1, %bb.jo ], [ %.sroa.6680.sroa.7.i.sroa.10.0.copyload1598, %bb.jq ], [ %.sroa.6701.sroa.7.i.sroa.10.0.copyload1618, %bb.jt ], [ %.sroa.6723.sroa.7.i.sroa.10.0.copyload1638, %bb.jv ], [ %.sroa.6745.sroa.7.i.sroa.10.0.copyload1658, %bb.jy ], [ %.sroa.6767.sroa.7.i.sroa.10.0.copyload1678, %bb.ka ], [ %.sroa.71107.0.copyload.i, %bb.hj ], [ %.sroa.142.9.copyload481, %bb.fc ], [ %.sroa.142.9.copyload480, %bb.fg ], [ %.sroa.142.9.copyload479, %bb.fj ], [ %.sroa.142.9.copyload478, %bb.fm ], [ %.sroa.142.9.copyload477, %bb.fp ], [ %.sroa.142.9.copyload476, %bb.fs ], [ %.sroa.142.9.copyload475, %bb.fv ], [ %.sroa.142.9.copyload474, %bb.fy ], [ %.sroa.142.9.copyload473, %bb.gb ], [ %.sroa.142.9.copyload472, %bb.ge ], [ %.sroa.142.9.copyload471, %bb.gh ], [ %.sroa.142.9.copyload470, %bb.gk ], [ %.sroa.142.9.copyload469, %bb.go ], [ %.sroa.142.9.copyload468, %bb.gr ], [ %.sroa.142.9.copyload467, %bb.gu ], [ %.sroa.142.9.copyload466, %bb.gx ], [ %.sroa.142.9.copyload465, %bb.ha ], [ %.sroa.142.9.copyload464, %bb.hd ], [ %.sroa.142.9.copyload, %bb.hg ], [ %.sroa.142.8.copyload, %bb.ef ], [ %.sroa.055.i.sroa.11.0.copyload1460, %bb.du ], [ %.sroa.7824.0.copyload.i, %bb.dr ]
  %.sroa.137.0 = phi i64 [ %.sroa.055.i.sroa.9.0.copyload1448, %bb.kl ], [ %.sroa.6524.sroa.7.i.sroa.9.0.copyload1496, %bb.hv ], [ %.sroa.6546.sroa.7.i.sroa.9.0.copyload1516, %bb.hy ], [ %.sroa.6561.sroa.7.i.sroa.9.0.copyload1536, %bb.ia ], [ %.sroa.6570.i.sroa.9.0.copyload1556, %bb.ic ], [ %.sroa.137.3, %.thread.i104 ], [ %.sroa.137.8.copyload416, %bb.iq ], [ %.sroa.137.1, %bb.jo ], [ %.sroa.6680.sroa.7.i.sroa.9.0.copyload1596, %bb.jq ], [ %.sroa.6701.sroa.7.i.sroa.9.0.copyload1616, %bb.jt ], [ %.sroa.6723.sroa.7.i.sroa.9.0.copyload1636, %bb.jv ], [ %.sroa.6745.sroa.7.i.sroa.9.0.copyload1656, %bb.jy ], [ %.sroa.6767.sroa.7.i.sroa.9.0.copyload1676, %bb.ka ], [ %.sroa.61106.0.copyload.i, %bb.hj ], [ %.sroa.137.9.copyload440, %bb.fc ], [ %.sroa.137.9.copyload439, %bb.fg ], [ %.sroa.137.9.copyload438, %bb.fj ], [ %.sroa.137.9.copyload437, %bb.fm ], [ %.sroa.137.9.copyload436, %bb.fp ], [ %.sroa.137.9.copyload435, %bb.fs ], [ %.sroa.137.9.copyload434, %bb.fv ], [ %.sroa.137.9.copyload433, %bb.fy ], [ %.sroa.137.9.copyload432, %bb.gb ], [ %.sroa.137.9.copyload431, %bb.ge ], [ %.sroa.137.9.copyload430, %bb.gh ], [ %.sroa.137.9.copyload429, %bb.gk ], [ %.sroa.137.9.copyload428, %bb.go ], [ %.sroa.137.9.copyload427, %bb.gr ], [ %.sroa.137.9.copyload426, %bb.gu ], [ %.sroa.137.9.copyload425, %bb.gx ], [ %.sroa.137.9.copyload424, %bb.ha ], [ %.sroa.137.9.copyload423, %bb.hd ], [ %.sroa.137.9.copyload, %bb.hg ], [ %.sroa.137.8.copyload, %bb.ef ], [ %.sroa.055.i.sroa.10.0.copyload1454, %bb.du ], [ %.sroa.6823.0.copyload.i, %bb.dr ]
  %.sroa.132.0 = phi i64 [ %.sroa.055.i.sroa.8.0.copyload1442, %bb.kl ], [ %.sroa.6524.sroa.7.i.sroa.8.0.copyload1494, %bb.hv ], [ %.sroa.6546.sroa.7.i.sroa.8.0.copyload1514, %bb.hy ], [ %.sroa.6561.sroa.7.i.sroa.8.0.copyload1534, %bb.ia ], [ %.sroa.6570.i.sroa.8.0.copyload1554, %bb.ic ], [ %.sroa.132.3, %.thread.i104 ], [ %.sroa.132.8.copyload375, %bb.iq ], [ %.sroa.132.1, %bb.jo ], [ %.sroa.6680.sroa.7.i.sroa.8.0.copyload1594, %bb.jq ], [ %.sroa.6701.sroa.7.i.sroa.8.0.copyload1614, %bb.jt ], [ %.sroa.6723.sroa.7.i.sroa.8.0.copyload1634, %bb.jv ], [ %.sroa.6745.sroa.7.i.sroa.8.0.copyload1654, %bb.jy ], [ %.sroa.6767.sroa.7.i.sroa.8.0.copyload1674, %bb.ka ], [ %i.xh, %bb.hj ], [ %.sroa.132.9.copyload399, %bb.fc ], [ %.sroa.132.9.copyload398, %bb.fg ], [ %.sroa.132.9.copyload397, %bb.fj ], [ %.sroa.132.9.copyload396, %bb.fm ], [ %.sroa.132.9.copyload395, %bb.fp ], [ %.sroa.132.9.copyload394, %bb.fs ], [ %.sroa.132.9.copyload393, %bb.fv ], [ %.sroa.132.9.copyload392, %bb.fy ], [ %.sroa.132.9.copyload391, %bb.gb ], [ %.sroa.132.9.copyload390, %bb.ge ], [ %.sroa.132.9.copyload389, %bb.gh ], [ %.sroa.132.9.copyload388, %bb.gk ], [ %.sroa.132.9.copyload387, %bb.go ], [ %.sroa.132.9.copyload386, %bb.gr ], [ %.sroa.132.9.copyload385, %bb.gu ], [ %.sroa.132.9.copyload384, %bb.gx ], [ %.sroa.132.9.copyload383, %bb.ha ], [ %.sroa.132.9.copyload382, %bb.hd ], [ %.sroa.132.9.copyload, %bb.hg ], [ %.sroa.132.8.copyload, %bb.ef ], [ %.sroa.055.i.sroa.9.0.copyload1448, %bb.du ], [ %i.ut, %bb.dr ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1E_4name4NameEEB1E_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.cr)
          to label %bb.kn unwind label %.loopexit1365.i.loopexit.split-lp

.body.i96:                                        ; preds = %.loopexit1845, %.loopexit.split-lp1846, %bb.kj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit1299.i, %bb.iy, %bb.ix, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i, %bb.ih, %bb.ig
  %.pn1270.i = phi { ptr, i32 } [ %i.aaj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit1299.i ], [ %lpad.phi1859, %bb.ig ], [ %i.abu, %bb.kj ], [ %i.yy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i ], [ %lpad.phi1854, %bb.ix ], [ %lpad.phi1854, %bb.iy ], [ %lpad.phi1859, %bb.ih ], [ %lpad.loopexit1847, %.loopexit1845 ], [ %lpad.loopexit.split-lp1848, %.loopexit.split-lp1846 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1E_4name4NameEEB1E_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.cr)
          to label %.body304.i unwind label %bb.ir, !noalias !48184

bb.kn:                                            ; preds = %bb.ke, %bb.km
  %.sroa.50.sroa.0.sroa.48.sroa.0.4.ph = phi i24 [ %.sroa.50.sroa.0.sroa.48.sroa.0.0, %bb.km ], [ %.sroa.50.sroa.0.sroa.48.0.extract.trunc1229, %bb.ke ]
  %.sroa.50.sroa.0.sroa.0.4.ph = phi i8 [ %.sroa.50.sroa.0.sroa.0.0, %bb.km ], [ %.sroa.50.sroa.0.sroa.0.0.extract.trunc1180, %bb.ke ]
  %.sroa.50.sroa.67.4.ph = phi i32 [ %.sroa.50.sroa.67.0, %bb.km ], [ %.sroa.50.sroa.67.0.extract.trunc1128, %bb.ke ]
  %.sroa.122.sroa.48.4.ph = phi i32 [ %.sroa.122.sroa.48.0, %bb.km ], [ %.sroa.122.sroa.48.0.extract.trunc991, %bb.ke ]
  %.sroa.122.sroa.0.4.ph = phi i32 [ %.sroa.122.sroa.0.0, %bb.km ], [ %.sroa.122.sroa.0.0.extract.trunc940, %bb.ke ]
  %.sroa.158.sroa.48.sroa.0.4.ph = phi i56 [ %.sroa.158.sroa.48.sroa.0.0, %bb.km ], [ %.sroa.158.sroa.48.0.extract.trunc862, %bb.ke ]
  %.sroa.158.sroa.0.4.ph = phi i8 [ %.sroa.158.sroa.0.0, %bb.km ], [ %.sroa.158.sroa.0.0.extract.trunc811, %bb.ke ]
  %.sroa.164.sroa.48.sroa.0.4.ph = phi i56 [ %.sroa.164.sroa.48.sroa.0.0, %bb.km ], [ %.sroa.164.sroa.48.0.extract.trunc755, %bb.ke ]
  %.sroa.164.sroa.0.4.ph = phi i8 [ %.sroa.164.sroa.0.0, %bb.km ], [ %.sroa.164.sroa.0.0.extract.trunc726, %bb.ke ]
  %.sroa.154.4.ph = phi i64 [ %.sroa.154.0, %bb.km ], [ %.sroa.154.8.copyload585, %bb.ke ]
  %.sroa.150.4.ph = phi i64 [ %.sroa.150.0, %bb.km ], [ %.sroa.150.8.copyload544, %bb.ke ]
  %.sroa.146.4.ph = phi i64 [ %.sroa.146.0, %bb.km ], [ %.sroa.146.8.copyload503, %bb.ke ]
  %.sroa.142.4.ph = phi i64 [ %.sroa.142.0, %bb.km ], [ %.sroa.142.8.copyload462, %bb.ke ]
  %.sroa.137.4.ph = phi i64 [ %.sroa.137.0, %bb.km ], [ %.sroa.137.8.copyload421, %bb.ke ]
  %.sroa.132.4.ph = phi i64 [ %.sroa.132.0, %bb.km ], [ %.sroa.132.8.copyload380, %bb.ke ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5686.i.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !48106
  %.sroa.50.sroa.0.sroa.48.0.insert.ext1202 = zext i24 %.sroa.50.sroa.0.sroa.48.sroa.0.4.ph to i64
  %.sroa.50.sroa.67.0.insert.ext1101 = zext i32 %.sroa.50.sroa.67.4.ph to i64
  %.sroa.50.sroa.67.0.insert.shift1102 = shl nuw nsw i64 %.sroa.50.sroa.67.0.insert.ext1101, 24
  %i.abx = or disjoint i64 %.sroa.50.sroa.67.0.insert.shift1102, %.sroa.50.sroa.0.sroa.48.0.insert.ext1202
  %.sroa.122.sroa.48.0.insert.ext1048 = zext i32 %.sroa.122.sroa.48.4.ph to i64
  %.sroa.122.sroa.48.0.insert.shift1049 = shl nuw i64 %.sroa.122.sroa.48.0.insert.ext1048, 32
  %.sroa.122.sroa.0.0.insert.ext969 = zext i32 %.sroa.122.sroa.0.4.ph to i64
  %.sroa.122.sroa.0.0.insert.insert971 = or disjoint i64 %.sroa.122.sroa.48.0.insert.shift1049, %.sroa.122.sroa.0.0.insert.ext969
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.221)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.239)
  %.sroa.33.sroa.34.0.extract.trunc776.i = trunc nuw i64 %i.abx to i56
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit1302.i.i

bb.ko:                                            ; preds = %bb.fe, %bb.hx
  %.sroa.235.sroa.6.sroa.6.0 = phi i64 [ %.sroa.235.sroa.6.sroa.6.0.copyload10662, %bb.hx ], [ %.sroa.235.sroa.6.sroa.6.0.copyload, %bb.fe ]
  %.sroa.235.sroa.6.sroa.0.0 = phi i64 [ %.sroa.235.sroa.6.sroa.0.0.copyload10660, %bb.hx ], [ %.sroa.235.sroa.6.sroa.0.0.copyload, %bb.fe ]
  %.sroa.238.0 = phi i8 [ %.sroa.238.232.copyload717, %bb.hx ], [ %.sroa.238.232.copyload, %bb.fe ]
  %.sroa.224.0 = phi i56 [ %.sroa.5686.i.sroa.21.0, %bb.hx ], [ undef, %bb.fe ]
  %.sroa.223.0 = phi i8 [ %.sroa.5686.i.sroa.20.0, %bb.hx ], [ undef, %bb.fe ]
  %.sroa.220.0 = phi i64 [ %.sroa.5686.i.sroa.16.0, %bb.hx ], [ undef, %bb.fe ]
  %.sroa.214.0 = phi i64 [ %.sroa.9610.i.sroa.85.0, %bb.hx ], [ undef, %bb.fe ]
  %.sroa.154.4 = phi i64 [ %.sroa.9610.i.sroa.58.0, %bb.hx ], [ undef, %bb.fe ]
  %.sroa.150.4 = phi ptr [ %i.xs, %bb.hx ], [ undef, %bb.fe ]
  %.sroa.146.4 = phi i64 [ %.sroa.9610.i.sroa.40.0, %bb.hx ], [ undef, %bb.fe ]
  %.sroa.142.4 = phi i64 [ %.sroa.9610.i.sroa.31.0, %bb.hx ], [ undef, %bb.fe ]
  %.sroa.137.4 = phi i64 [ %.sroa.9610.i.sroa.22.0, %bb.hx ], [ undef, %bb.fe ]
  %.sroa.132.4 = phi i64 [ %.sroa.9610.i.sroa.12.0, %bb.hx ], [ undef, %bb.fe ]
  %.sroa.48.0 = phi i64 [ %.sroa.0498.0.i, %bb.hx ], [ %i.vu, %bb.fe ]
  %.sroa.50.sroa.0.0.insert.insert = phi i64 [ %.sroa.16509.sroa.15.0.i, %bb.hx ], [ 0, %bb.fe ]
  %.sroa.122.sroa.0.0.insert.insert = phi i64 [ %i.xr, %bb.hx ], [ 0, %bb.fe ]
  %.sroa.158.sroa.0.0.insert.insert = phi i64 [ %.sroa.9610.i.sroa.67.0, %bb.hx ], [ 0, %bb.fe ]
  %.sroa.164.sroa.0.0.insert.insert = phi i64 [ %.sroa.9610.i.sroa.76.0, %bb.hx ], [ 0, %bb.fe ]
  %i.aby = phi <2 x i64> [ %i.xm, %bb.hx ], [ undef, %bb.fe ]
  %i.abz = phi <2 x i64> [ %i.xn, %bb.hx ], [ undef, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5686.i.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !48106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.sroa.12.sroa.15.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.221, i64 16, i1 false), !noalias !48106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.34.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.239, i64 7, i1 false), !noalias !48106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.221)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.239)
  %i.aca = inttoptr i64 %.sroa.48.0 to ptr
  br label %bb.mu

.noexc275.i:                                      ; preds = %.lr.ph.i37.i, %.lr.ph.i37.i, %.lr.ph.i37.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !48106
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser15presume_keyword(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.dj, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek, i8 noundef 36)
          to label %.noexc297.i unwind label %.loopexit1365.i.loopexit.loopexit

.noexc297.i:                                      ; preds = %.noexc275.i
  %i.acb = load i8, ptr %i.gj, align 8, !range !45, !noalias !48106, !noundef !28 ; 2 uses
  %.not1252.i.i = icmp eq i8 %i.acb, -1
  br i1 %.not1252.i.i, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %.noexc297.i
  %.sroa.0949.0.copyload.i.i = load ptr, ptr %i.dj, align 8, !noalias !48106
  %.sroa.4950.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.4950.0.copyload.i.i = load i64, ptr %.sroa.4950.0..sroa_idx.i.i, align 8, !noalias !48106
  %.sroa.5951.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.5951.0.copyload.i.i = load ptr, ptr %.sroa.5951.0..sroa_idx.i.i, align 8, !noalias !48106
  %.sroa.6952.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %.sroa.6952.0.copyload.i.i = load i64, ptr %.sroa.6952.0..sroa_idx.i.i, align 8, !noalias !48106
  %.sroa.7953.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %.sroa.7953.0.copyload.i.i = load i64, ptr %.sroa.7953.0..sroa_idx.i.i, align 8, !noalias !48106
  %.sroa.8954.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %.sroa.8954.0.copyload.i.i = load i64, ptr %.sroa.8954.0..sroa_idx.i.i, align 8, !noalias !48106
  %.sroa.9955.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %.sroa.9955.0.copyload.i.i = load i64, ptr %.sroa.9955.0..sroa_idx.i.i, align 8, !noalias !48106
  %.sroa.10956.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %.sroa.10956.0.copyload.i.i = load i64, ptr %.sroa.10956.0..sroa_idx.i.i, align 8, !noalias !48106
  %.sroa.11957.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %.sroa.11957.0.copyload.i.i = load i8, ptr %.sroa.11957.0..sroa_idx.i.i, align 8, !noalias !48106
  %.sroa.12958.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 65
  %.sroa.15312.i.sroa.0.0.copyload.i = load i56, ptr %.sroa.12958.0..sroa_idx.i.i, align 1, !noalias !48106
  %.sroa.14960.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 73
  %.sroa.182.sroa.34.sroa.0.0.copyload647.i = load i56, ptr %.sroa.14960.0..sroa_idx.i.i, align 1, !noalias !48102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !48106
  %i.acc = ptrtoint ptr %.sroa.0949.0.copyload.i.i to i64 ; 2 uses
  %.sroa.33.sroa.0.0.extract.trunc735.i = trunc i64 %i.acc to i8
  %.sroa.33.sroa.34.0.extract.shift767.i = lshr i64 %i.acc, 8
  %.sroa.33.sroa.34.0.extract.trunc768.i = trunc nuw i64 %.sroa.33.sroa.34.0.extract.shift767.i to i56
  %i.acd = ptrtoint ptr %.sroa.5951.0.copyload.i.i to i64
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit1302.i.i

bb.kq:                                            ; preds = %.noexc297.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !48106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !48106
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser10parse_name(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.di, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ek)
          to label %.noexc298.i unwind label %.loopexit1365.i.loopexit.loopexit

.noexc298.i:                                      ; preds = %bb.kq
  %i.ace = load i8, ptr %i.gk, align 8, !range !45, !noalias !48106, !noundef !28 ; 2 uses
  %.not1253.i.i = icmp eq i8 %i.ace, -1
  %.sroa.0332.sroa.0.i.sroa.0.0.copyload1050.i = load i64, ptr %i.di, align 8, !noalias !48106 ; 4 uses
  %.sroa.0332.sroa.0.i.sroa.8.0.copyload1054.i = load i64, ptr %.sroa.0332.sroa.0.i.sroa.8.0..sroa_idx1053.i, align 8, !noalias !48106 ; 3 uses
  %.sroa.0332.sroa.0.i.sroa.9.0.copyload1058.i = load i64, ptr %.sroa.0332.sroa.0.i.sroa.9.0..sroa_idx1057.i, align 8, !noalias !48106 ; 3 uses
  %.sroa.41505.0.copyload.i.i = load i64, ptr %.sroa.41505.0..sroa_idx.i.i, align 8, !noalias !48106 ; 3 uses
  %.sroa.51506.0.copyload.i.i = load ptr, ptr %.sroa.51506.0..sroa_idx.i.i, align 8, !noalias !48106 ; 3 uses
  %.sroa.0332.sroa.9.i.sroa.0.0.copyload1038.i = load i64, ptr %.sroa.61507.0..sroa_idx.i.i, align 8, !noalias !48106 ; 3 uses
  %.sroa.0332.sroa.9.i.sroa.8.0.copyload1041.i = load i64, ptr %.sroa.0332.sroa.9.i.sroa.8.0..sroa.61507.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !48106 ; 3 uses
  %.sroa.0332.sroa.9.i.sroa.9.0.copyload1044.i = load i64, ptr %.sroa.0332.sroa.9.i.sroa.9.0..sroa.61507.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !48106 ; 3 uses
  %.sroa.0332.sroa.9.i.sroa.10.0.copyload1047.i = load i64, ptr %.sroa.0332.sroa.9.i.sroa.10.0..sroa.61507.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !48106 ; 4 uses
  br i1 %.not1253.i.i, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %.noexc298.i
  %.sroa.5978.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 73
  %.sroa.182.sroa.34.sroa.0.0.copyload648.i = load i56, ptr %.sroa.5978.0..sroa_idx.i.i, align 1, !noalias !48102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !48106
  %.sroa.33.sroa.0.0.extract.trunc753.i = trunc i64 %.sroa.0332.sroa.0.i.sroa.0.0.copyload1050.i to i8
  %.sroa.33.sroa.34.0.extract.shift801.i = lshr i64 %.sroa.0332.sroa.0.i.sroa.0.0.copyload1050.i, 8
  %.sroa.33.sroa.34.0.extract.trunc802.i = trunc nuw i64 %.sroa.33.sroa.34.0.extract.shift801.i to i56
  %.sroa.166.sroa.0.0.extract.trunc663.i = trunc i64 %.sroa.0332.sroa.9.i.sroa.10.0.copyload1047.i to i8
  %.sroa.166.sroa.34.0.extract.shift699.i = lshr i64 %.sroa.0332.sroa.9.i.sroa.10.0.copyload1047.i, 8
  %.sroa.166.sroa.34.0.extract.trunc700.i = trunc nuw i64 %.sroa.166.sroa.34.0.extract.shift699.i to i56
  %i.acf = ptrtoint ptr %.sroa.51506.0.copyload.i.i to i64
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit1302.i.i

bb.ks:                                            ; preds = %.noexc298.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !48106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !48106
  %.sroa.4.0.copyload.i1318.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i1312.i.i, align 8, !noalias !48092
  store i8 -1, ptr %.sroa.4.0..sroa_idx.i1312.i.i, align 8, !noalias !48092
  %.not.i1319.i.i = icmp eq i8 %.sroa.4.0.copyload.i1318.i.i, -1
  br i1 %.not.i1319.i.i, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 24, i1 false), !noalias !48092
  br label %bb.kw

bb.ku:                                            ; preds = %bb.ks
  store ptr null, ptr %i.dh, align 8, !alias.scope !48213, !noalias !48106
  store i64 0, ptr %.sroa.57.0..sroa_idx.i1320.i.i, align 8, !alias.scope !48213, !noalias !48106
  br label %bb.kw

bb.kv:                                            ; preds = %bb.kw
  %i.acg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1E_4name4NameEEB1E_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.dh)
          to label %.body304.i unwind label %bb.cp, !noalias !48105

bb.kw:                                            ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !48106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !48106
  store i64 %.sroa.0332.sroa.0.i.sroa.0.0.copyload1050.i, ptr %i.df, align 8, !noalias !48106
  store i64 %.sroa.0332.sroa.0.i.sroa.8.0.copyload1054.i, ptr %.sroa.01444.i.sroa.5.0..sroa_idx.i, align 8, !noalias !48106
  store i64 %.sroa.0332.sroa.0.i.sroa.9.0.copyload1058.i, ptr %.sroa.01444.i.sroa.6.0..sroa_idx.i, align 8, !noalias !48106
  store i64 %.sroa.41505.0.copyload.i.i, ptr %.sroa.51445.0..sroa_idx.i.i, align 8, !noalias !48106
  store ptr %.sroa.51506.0.copyload.i.i, ptr %.sroa.61446.0..sroa_idx.i.i, align 8, !noalias !48106
  store i64 %.sroa.0332.sroa.9.i.sroa.0.0.copyload1038.i, ptr %.sroa.71447.0..sroa_idx.i.i, align 8, !noalias !48106
end_hunk_3
begin_hunk_4_@_RNvNtCskXtk6F4WjxZ_4just8function5style:bb.a
  %i.ii = or disjoint i32 %i.ih, 318767104
  %.sroa.0164.0.insert.insert = call i32 @llvm.bswap.i32(i32 %i.ii) ; 2 uses
  %.sroa.13131.13.copyload574 = select i1 %i.ig, i32 %.sroa.13131.13.copyload572960, i32 %.sroa.0164.0.insert.insert ; 2 uses
  %.sroa.12119.9.copyload568 = select i1 %i.ig, i32 %.sroa.0164.0.insert.insert, i32 %.sroa.12119.9.copyload566961 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.l

.loopexit773:                                     ; preds = %bb.t
  %lpad.loopexit775 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp774:                            ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %lpad.loopexit.split-lp776 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp774, %.loopexit773
  %lpad.phi777 = phi { ptr, i32 } [ %lpad.loopexit775, %.loopexit773 ], [ %lpad.loopexit.split-lp776, %.loopexit.split-lp774 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2kgGfOW2lp_5regex5regex6string8CapturesECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(72) %i.v) #72
          to label %common.resume unwind label %bb.s

bb.am:                                            ; preds = %_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexE5force0ECskXtk6F4WjxZ_4just.exit642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false)
  %i.ij = invoke { ptr, i64 } @_RNvXsc_NtNtCs2kgGfOW2lp_5regex5regex6stringNtB5_8CapturesINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.s, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1357)
          to label %bb.ao unwind label %.loopexit779 ; 2 uses

bb.an:                                            ; preds = %_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexE5force0ECskXtk6F4WjxZ_4just.exit642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ik = load ptr, ptr %i.ab, align 8, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !nonnull !28, !noundef !28 ; 65 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.io = load i64, ptr %i.in, align 8, !noundef !28
  switch i64 %i.io, label %bb.co [
    i64 8, label %bb.ba
    i64 5, label %bb.bb
    i64 7, label %bb.bc
    i64 4, label %bb.bd
    i64 10, label %bb.bi
    i64 6, label %bb.bk
    i64 3, label %bb.bl
    i64 9, label %bb.bo
    i64 13, label %bb.ce
  ]

bb.ao:                                            ; preds = %bb.am
  %i.ip = extractvalue { ptr, i64 } %i.ij, 0      ; 3 uses
  %i.iq = extractvalue { ptr, i64 } %i.ij, 1      ; 2 uses
  switch i64 %i.iq, label %thread-pre-split.i663 [
    i64 0, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit980
    i64 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ir = load i8, ptr %i.ip, align 1, !alias.scope !78032, !noundef !28 ; 2 uses
  switch i8 %i.ir, label %bb.aq [
    i8 43, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit980
    i8 45, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit980
  ]

thread-pre-split.i663:                            ; preds = %bb.ao
  %.pr.i664 = load i8, ptr %i.ip, align 1, !alias.scope !78032
  br label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split.i663, %bb.ap
  %i.is = phi i8 [ %.pr.i664, %thread-pre-split.i663 ], [ %i.ir, %bb.ap ]
  %cond.i653 = icmp eq i8 %i.is, 43               ; 2 uses
  %i.it = sext i1 %cond.i653 to i64
  %.sroa.15.0.i654 = add nsw i64 %i.iq, %i.it     ; 6 uses
  %.sroa.0.0.idx.i655 = zext i1 %cond.i653 to i64
  %.sroa.0.0.i656 = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.sroa.0.0.idx.i655 ; 5 uses
  %i.iu = icmp samesign ult i64 %.sroa.15.0.i654, 5
  br i1 %i.iu, label %.preheader.i660, label %.preheader60.i

.preheader.i660:                                  ; preds = %bb.aq
  %.not5471.i = icmp eq i64 %.sroa.15.0.i654, 0
  br i1 %.not5471.i, label %.loopexit.i658, label %.lr.ph.i661

bb.ar:                                            ; preds = %bb.as
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.170.i, i64 1
  %i.iw = add nsw i64 %.sroa.15.169.i, -1         ; 2 uses
  %i.ix = shl nuw i16 %.sroa.043.068.i, 4
  %i.iy = trunc nuw nsw i32 %.sroa.02.0.i.i657 to i16
  %i.iz = or disjoint i16 %i.ix, %i.iy            ; 2 uses
  %.not53.i = icmp eq i64 %i.iw, 0
  br i1 %.not53.i, label %.loopexit.i658, label %.preheader60.i

.loopexit.i658:                                   ; preds = %bb.ar, %bb.au, %bb.av, %bb.aw, %bb.ax, %.preheader.i660
  %.sroa.043.1.i = phi i16 [ %i.lg, %bb.ax ], [ 0, %.preheader.i660 ], [ %i.jw, %bb.au ], [ %i.ki, %bb.av ], [ %i.ku, %bb.aw ], [ %i.iz, %bb.ar ]
  %i.ja = zext i16 %.sroa.043.1.i to i32
  %i.jb = shl nuw i32 %i.ja, 16
  br label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit

.preheader60.i:                                   ; preds = %bb.aq, %bb.ar
  %.sroa.0.170.i = phi ptr [ %i.iv, %bb.ar ], [ %.sroa.0.0.i656, %bb.aq ] ; 2 uses
  %.sroa.15.169.i = phi i64 [ %i.iw, %bb.ar ], [ %.sroa.15.0.i654, %bb.aq ]
  %.sroa.043.068.i = phi i16 [ %i.iz, %bb.ar ], [ 0, %bb.aq ] ; 2 uses
  %i.jc = icmp ugt i16 %.sroa.043.068.i, 4095
  %i.jd = load i8, ptr %.sroa.0.170.i, align 1, !alias.scope !78032, !noundef !28 ; 2 uses
  %i.je = zext i8 %i.jd to i32                    ; 2 uses
  %i.jf = icmp ugt i8 %i.jd, 57                   ; 2 uses
  %i.jg = add nsw i32 %i.je, -65                  ; 2 uses
  %i.jh = add nsw i32 %i.je, -48                  ; 2 uses
  br i1 %i.jc, label %bb.at, label %bb.as, !prof !44

bb.as:                                            ; preds = %.preheader60.i
  %i.ji = and i32 %i.jg, -33
  %i.jj = add nuw nsw i32 %i.ji, 10
  %.sroa.02.0.i.i657 = select i1 %i.jf, i32 %i.jj, i32 %i.jh ; 2 uses
  %i.jk = icmp ult i32 %.sroa.02.0.i.i657, 16
  br i1 %i.jk, label %bb.ar, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.at:                                            ; preds = %.preheader60.i
  %i.jl = and i32 %i.jg, -34
  %i.jm = add nuw nsw i32 %i.jl, 10
  %.sroa.02.0.i55.i = select i1 %i.jf, i32 %i.jm, i32 %i.jh
  %i.jn = icmp ult i32 %.sroa.02.0.i55.i, 16
  %spec.select.i659 = select i1 %i.jn, i32 513, i32 257
  br label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit

.lr.ph.i661:                                      ; preds = %.preheader.i660
  %i.jo = load i8, ptr %.sroa.0.0.i656, align 1, !alias.scope !78032, !noundef !28 ; 2 uses
  %i.jp = zext i8 %i.jo to i32                    ; 2 uses
  %i.jq = icmp ugt i8 %i.jo, 57
  %i.jr = add nsw i32 %i.jp, -65
  %i.js = and i32 %i.jr, -33
  %i.jt = add nuw nsw i32 %i.js, 10
  %i.ju = add nsw i32 %i.jp, -48
  %.sroa.02.0.i57.i662 = select i1 %i.jq, i32 %i.jt, i32 %i.ju ; 2 uses
  %i.jv = icmp ult i32 %.sroa.02.0.i57.i662, 16
  br i1 %i.jv, label %bb.au, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.au:                                            ; preds = %.lr.ph.i661
  %i.jw = trunc nuw nsw i32 %.sroa.02.0.i57.i662 to i16 ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i654, 1
  br i1 %.not54.i, label %.loopexit.i658, label %.lr.ph.i661.1

.lr.ph.i661.1:                                    ; preds = %bb.au
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i656, i64 1
  %i.jy = load i8, ptr %i.jx, align 1, !alias.scope !78032, !noundef !28 ; 2 uses
  %i.jz = zext i8 %i.jy to i32                    ; 2 uses
  %i.ka = icmp ugt i8 %i.jy, 57
  %i.kb = add nsw i32 %i.jz, -65
  %i.kc = and i32 %i.kb, -33
  %i.kd = add nuw nsw i32 %i.kc, 10
  %i.ke = add nsw i32 %i.jz, -48
  %.sroa.02.0.i57.i662.1 = select i1 %i.ka, i32 %i.kd, i32 %i.ke ; 2 uses
  %i.kf = icmp ult i32 %.sroa.02.0.i57.i662.1, 16
  br i1 %i.kf, label %bb.av, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.av:                                            ; preds = %.lr.ph.i661.1
  %i.kg = shl nuw nsw i16 %i.jw, 4
  %i.kh = trunc nuw nsw i32 %.sroa.02.0.i57.i662.1 to i16
  %i.ki = or disjoint i16 %i.kg, %i.kh            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i654, 2
  br i1 %.not54.i.1, label %.loopexit.i658, label %.lr.ph.i661.2

.lr.ph.i661.2:                                    ; preds = %bb.av
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i656, i64 2
  %i.kk = load i8, ptr %i.kj, align 1, !alias.scope !78032, !noundef !28 ; 2 uses
  %i.kl = zext i8 %i.kk to i32                    ; 2 uses
  %i.km = icmp ugt i8 %i.kk, 57
  %i.kn = add nsw i32 %i.kl, -65
  %i.ko = and i32 %i.kn, -33
  %i.kp = add nuw nsw i32 %i.ko, 10
  %i.kq = add nsw i32 %i.kl, -48
  %.sroa.02.0.i57.i662.2 = select i1 %i.km, i32 %i.kp, i32 %i.kq ; 2 uses
  %i.kr = icmp ult i32 %.sroa.02.0.i57.i662.2, 16
  br i1 %i.kr, label %bb.aw, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.aw:                                            ; preds = %.lr.ph.i661.2
  %i.ks = shl nuw nsw i16 %i.ki, 4
  %i.kt = trunc nuw nsw i32 %.sroa.02.0.i57.i662.2 to i16
  %i.ku = or disjoint i16 %i.ks, %i.kt            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i654, 3
  br i1 %.not54.i.2, label %.loopexit.i658, label %.lr.ph.i661.3

.lr.ph.i661.3:                                    ; preds = %bb.aw
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i656, i64 3
  %i.kw = load i8, ptr %i.kv, align 1, !alias.scope !78032, !noundef !28 ; 2 uses
  %i.kx = zext i8 %i.kw to i32                    ; 2 uses
  %i.ky = icmp ugt i8 %i.kw, 57
  %i.kz = add nsw i32 %i.kx, -65
  %i.la = and i32 %i.kz, -33
  %i.lb = add nuw nsw i32 %i.la, 10
  %i.lc = add nsw i32 %i.kx, -48
  %.sroa.02.0.i57.i662.3 = select i1 %i.ky, i32 %i.lb, i32 %i.lc ; 2 uses
  %i.ld = icmp ult i32 %.sroa.02.0.i57.i662.3, 16
  br i1 %i.ld, label %bb.ax, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.ax:                                            ; preds = %.lr.ph.i661.3
  %i.le = shl nuw i16 %i.ku, 4
  %i.lf = trunc nuw nsw i32 %.sroa.02.0.i57.i662.3 to i16
  %i.lg = or disjoint i16 %i.le, %i.lf
  br label %.loopexit.i658

_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %bb.at, %.loopexit.i658
  %.sroa.8.0.insert.insert.i652 = phi i32 [ %spec.select.i659, %bb.at ], [ %i.jb, %.loopexit.i658 ] ; 5 uses
  %i.lh = trunc i32 %.sroa.8.0.insert.insert.i652 to i1
  br i1 %i.lh, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit980, label %bb.ay, !prof !47

_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit980: ; preds = %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit, %bb.ap, %bb.ap, %bb.ao
  %.sroa.8.0.insert.insert.i652750.ph = phi i32 [ 257, %bb.ap ], [ 257, %bb.ap ], [ 1, %bb.ao ], [ %.sroa.8.0.insert.insert.i652, %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit ]
  %i.li = lshr i32 %.sroa.8.0.insert.insert.i652750.ph, 8
  %i.lj = trunc i32 %i.li to i8
  br label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.as, %.lr.ph.i661, %.lr.ph.i661.1, %.lr.ph.i661.2, %.lr.ph.i661.3, %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit980
  %.sroa.8.0.insert.insert.i652750 = phi i8 [ 1, %.lr.ph.i661 ], [ %i.lj, %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit980 ], [ 1, %.lr.ph.i661.3 ], [ 1, %.lr.ph.i661.2 ], [ 1, %.lr.ph.i661.1 ], [ 1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %.sroa.8.0.insert.insert.i652750, ptr %i.p, align 1
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @790, i64 noundef 43, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @800, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1358) #75
          to label %.noexc638 unwind label %.loopexit.split-lp780

.noexc638:                                        ; preds = %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  unreachable

bb.ay:                                            ; preds = %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.8.0.insert.insert.i652, 16
  %i.lk = lshr i32 %.sroa.8.0.insert.insert.i652, 24
  %i.ll = and i32 %i.lk, 15
  %5 = lshr i32 %.sroa.8.0.insert.insert.i652, 20
  %6 = and i32 %5, 15
  %i.lm = and i32 %.sroa.5.0.extract.shift.i, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false)
  %i.ln = call fastcc noundef zeroext i1 @_RNvNvNtCskXtk6F4WjxZ_4just8function5style5layer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.r) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.6193.0.insert.shift = mul nuw i32 %i.lm, 285212672
  %.sroa.5192.0.insert.shift = mul nuw nsw i32 %6, 1114112
  %.sroa.5192.0.insert.insert = or disjoint i32 %.sroa.6193.0.insert.shift, %.sroa.5192.0.insert.shift
  %.sroa.4191.0.insert.shift = mul nuw nsw i32 %i.ll, 4352
  %.sroa.4191.0.insert.insert = or disjoint i32 %.sroa.5192.0.insert.insert, %.sroa.4191.0.insert.shift
  %.sroa.0190.0.insert.insert = or disjoint i32 %.sroa.4191.0.insert.insert, 19 ; 2 uses
  %.sroa.13131.13.copyload572960..sroa.0190.0.insert.insert = select i1 %i.ln, i32 %.sroa.13131.13.copyload572960, i32 %.sroa.0190.0.insert.insert ; 2 uses
  %.sroa.0190.0.insert.insert..sroa.12119.9.copyload566961 = select i1 %i.ln, i32 %.sroa.0190.0.insert.insert, i32 %.sroa.12119.9.copyload566961 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.l

.loopexit779:                                     ; preds = %bb.am
  %lpad.loopexit781 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp780:                            ; preds = %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  %lpad.loopexit.split-lp782 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp780, %.loopexit779
  %lpad.phi783 = phi { ptr, i32 } [ %lpad.loopexit781, %.loopexit779 ], [ %lpad.loopexit.split-lp782, %.loopexit.split-lp780 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2kgGfOW2lp_5regex5regex6string8CapturesECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(72) %i.s) #72
          to label %common.resume unwind label %bb.s

bb.ba:                                            ; preds = %bb.an
  %i.lo = load i64, ptr %i.im, align 1
  %i.lp = icmp ne i64 %i.lo, 7738135702885001062
  %i.lq = zext i1 %i.lp to i32
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %bb.l, label %bb.bg

bb.bb:                                            ; preds = %bb.an
  %i.ls = load i32, ptr %i.im, align 1
  %i.lt = xor i32 %i.ls, 1667329122
  %i.lu = getelementptr i8, ptr %i.im, i64 4
  %i.lv = load i8, ptr %i.lu, align 1
  %i.lw = zext i8 %i.lv to i32
  %i.lx = xor i32 %i.lw, 107
  %i.ly = or i32 %i.lt, %i.lx
  %i.lz = icmp ne i32 %i.ly, 0
  %i.ma = zext i1 %i.lz to i32
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bb.l, label %bb.bh

bb.bc:                                            ; preds = %bb.an
  %i.mc = load i32, ptr %i.im, align 1
  %i.md = xor i32 %i.mc, 1647994726
  %i.me = getelementptr i8, ptr %i.im, i64 3
  %i.mf = load i32, ptr %i.me, align 1
  %i.mg = xor i32 %i.mf, 1702194274
  %i.mh = or i32 %i.md, %i.mg
  %i.mi = icmp ne i32 %i.mh, 0
  %i.mj = zext i1 %i.mi to i32
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %bb.l, label %bb.be

bb.bd:                                            ; preds = %bb.an
  %i.ml = load i32, ptr %i.im, align 1
  %i.mm = icmp ne i32 %i.ml, 1702194274
  %i.mn = zext i1 %i.mm to i32
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %bb.l, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.mp = load i32, ptr %i.im, align 1
  %i.mq = xor i32 %i.mp, 1664771942
  %i.mr = getelementptr i8, ptr %i.im, i64 3
  %i.ms = load i32, ptr %i.mr, align 1
  %i.mt = xor i32 %i.ms, 1851881827
  %i.mu = or i32 %i.mq, %i.mt
  %i.mv = icmp ne i32 %i.mu, 0
  %i.mw = zext i1 %i.mv to i32
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %bb.l, label %bb.bj

bb.bf:                                            ; preds = %bb.bd
  %i.my = load i32, ptr %i.im, align 1
  %i.mz = icmp ne i32 %i.my, 1851881827
  %i.na = zext i1 %i.mz to i32
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %bb.l, label %bb.bz

bb.bg:                                            ; preds = %bb.ba
  %i.nc = load i64, ptr %i.im, align 1
  %i.nd = icmp ne i64 %i.nc, 7954875858852407142
  %i.ne = zext i1 %i.nd to i32
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %bb.l, label %bb.bm

bb.bh:                                            ; preds = %bb.bb
  %i.ng = load i32, ptr %i.im, align 1
  %i.nh = xor i32 %i.ng, 1701147239
  %i.ni = getelementptr i8, ptr %i.im, i64 4
  %i.nj = load i8, ptr %i.ni, align 1
  %i.nk = zext i8 %i.nj to i32
  %i.nl = xor i32 %i.nk, 110
  %i.nm = or i32 %i.nh, %i.nl
  %i.nn = icmp ne i32 %i.nm, 0
  %i.no = zext i1 %i.nn to i32
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %bb.l, label %bb.bn

bb.bi:                                            ; preds = %bb.an
  %i.nq = load i64, ptr %i.im, align 1
  %i.nr = xor i64 %i.nq, 7954877984961881958
  %i.ns = getelementptr i8, ptr %i.im, i64 8
  %i.nt = load i16, ptr %i.ns, align 1
  %i.nu = zext i16 %i.nt to i64
  %i.nv = xor i64 %i.nu, 24948
  %i.nw = or i64 %i.nr, %i.nv
  %i.nx = icmp ne i64 %i.nw, 0
  %i.ny = zext i1 %i.nx to i32
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.l, label %bb.bu

bb.bj:                                            ; preds = %bb.be
  %i.oa = load i32, ptr %i.im, align 1
  %i.ob = xor i32 %i.oa, 1701273965
  %i.oc = getelementptr i8, ptr %i.im, i64 3
  %i.od = load i32, ptr %i.oc, align 1
  %i.oe = xor i32 %i.od, 1635020389
  %i.of = or i32 %i.ob, %i.oe
  %i.og = icmp ne i32 %i.of, 0
  %i.oh = zext i1 %i.og to i32
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %bb.l, label %bb.br

bb.bk:                                            ; preds = %bb.an
  %i.oj = load i32, ptr %i.im, align 1
  %i.ok = xor i32 %i.oj, 1916430182
  %i.ol = getelementptr i8, ptr %i.im, i64 4
  %i.om = load i16, ptr %i.ol, align 1
  %i.on = zext i16 %i.om to i32
  %i.oo = xor i32 %i.on, 25701
  %i.op = or i32 %i.ok, %i.oo
  %i.oq = icmp ne i32 %i.op, 0
  %i.or = zext i1 %i.oq to i32
  %i.os = icmp eq i32 %i.or, 0
  br i1 %i.os, label %bb.l, label %bb.bp

bb.bl:                                            ; preds = %bb.an
  %i.ot = load i16, ptr %i.im, align 1
  %i.ou = xor i16 %i.ot, 25970
  %i.ov = getelementptr i8, ptr %i.im, i64 2
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = zext i8 %i.ow to i16
  %i.oy = xor i16 %i.ox, 100
  %i.oz = or i16 %i.ou, %i.oy
  %i.pa = icmp ne i16 %i.oz, 0
  %i.pb = zext i1 %i.pa to i32
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %bb.l, label %bb.ca

bb.bm:                                            ; preds = %bb.bg
  %i.pd = load i64, ptr %i.im, align 1
  %i.pe = icmp ne i64 %i.pd, 7310583992526989158
  %i.pf = zext i1 %i.pe to i32
  %i.pg = icmp eq i32 %i.pf, 0
  br i1 %i.pg, label %bb.l, label %bb.bq

bb.bn:                                            ; preds = %bb.bh
  %i.ph = load i32, ptr %i.im, align 1
  %i.pi = xor i32 %i.ph, 1953065079
  %i.pj = getelementptr i8, ptr %i.im, i64 4
  %i.pk = load i8, ptr %i.pj, align 1
  %i.pl = zext i8 %i.pk to i32
  %i.pm = xor i32 %i.pl, 101
  %i.pn = or i32 %i.pi, %i.pm
  %i.po = icmp ne i32 %i.pn, 0
  %i.pp = zext i1 %i.po to i32
  %i.pq = icmp eq i32 %i.pp, 0
  br i1 %i.pq, label %bb.l, label %bb.by

bb.bo:                                            ; preds = %bb.an
  %i.pr = load i64, ptr %i.im, align 1
  %i.ps = xor i64 %i.pr, 8028911418776119142
  %i.pt = getelementptr i8, ptr %i.im, i64 8
  %i.pu = load i8, ptr %i.pt, align 1
  %i.pv = zext i8 %i.pu to i64
  %i.pw = xor i64 %i.pv, 119
  %i.px = or i64 %i.ps, %i.pw
  %i.py = icmp ne i64 %i.px, 0
  %i.pz = zext i1 %i.py to i32
  %i.qa = icmp eq i32 %i.pz, 0
  br i1 %i.qa, label %bb.l, label %bb.bx

bb.bp:                                            ; preds = %bb.bk
  %i.qb = load i32, ptr %i.im, align 1
  %i.qc = xor i32 %i.qb, 1819043193
  %i.qd = getelementptr i8, ptr %i.im, i64 4
  %i.qe = load i16, ptr %i.qd, align 1
  %i.qf = zext i16 %i.qe to i32
  %i.qg = xor i32 %i.qf, 30575
  %i.qh = or i32 %i.qc, %i.qg
  %i.qi = icmp ne i32 %i.qh, 0
  %i.qj = zext i1 %i.qi to i32
  %i.qk = icmp eq i32 %i.qj, 0
  br i1 %i.qk, label %bb.l, label %bb.bv

end_hunk_4
