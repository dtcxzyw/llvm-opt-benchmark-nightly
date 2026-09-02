Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder3argNtB3_3Arg3addNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom17ArgValueCompleterECskXtk6F4WjxZ_4just:bb.a
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
  %i.cv = trunc i32 %i.cg to i8
  %i.cw = urem i32 %.sroa.10.0.copyload.i, 60     ; 2 uses
  %i.cx = udiv i32 %.sroa.10.0.copyload.i, 60
  %i.cy = urem i32 %i.cx, 60
  %i.cz = udiv i32 %.sroa.10.0.copyload.i, 3600
  %i.da = icmp ugt i32 %.sroa.21.0.copyload.i, 999999999 ; 2 uses
  %i.db = add i32 %.sroa.21.0.copyload.i, -1000000000
  %storemerge.i = select i1 %i.da, i32 %i.db, i32 %.sroa.21.0.copyload.i ; 6 uses
  %2 = zext i1 %i.da to i8
  %i.dc = trunc i32 %i.cz to i8                   ; 3 uses
  %i.dd = icmp ugt i8 %i.dc, 99                   ; 2 uses
  %i.de = udiv i8 %i.dc, 10
  %i.df = or disjoint i8 %i.de, 48                ; 2 uses
  %i.dg = urem i8 %i.dc, 10
  %i.dh = or disjoint i8 %i.dg, 48                ; 2 uses
  %i.di = trunc nuw nsw i32 %i.cy to i8           ; 2 uses
  %i.dj = udiv i8 %i.di, 10
  %i.dk = or disjoint i8 %i.dj, 48                ; 2 uses
  %i.dl = urem i8 %i.di, 10
  %i.dm = or disjoint i8 %i.dl, 48                ; 2 uses
  %i.dn = trunc nuw nsw i32 %i.cw to i8
  %3 = add nuw nsw i8 %2, %i.dn                   ; 2 uses
  %i.do = udiv i8 %3, 10
  %i.dp = or disjoint i8 %i.do, 48
  %i.dq = urem i8 %3, 10
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
  %i.eg = add nuw nsw i32 %i.ef, %i.cw
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
  %i.ff = and i32 %i.fe, 511                      ; 8 uses
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
  %i.gh = urem i16 %.lhs.trunc6.i, 7              ; 6 uses
  %switch.idx.cast.i = trunc nuw nsw i16 %i.gh to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 49
  %i.gi = trunc i32 %i.es to i8
  %i.gj = and i8 %i.gi, 15                        ; 4 uses
  %i.gk = trunc nuw nsw i32 %i.ff to i16          ; 2 uses
  %i.gl = add nuw nsw i16 %i.gk, 6
  %.lhs.trunc1.i106.i = sub nuw nsw i16 %i.gl, %i.gh
  %i.gm = udiv i16 %.lhs.trunc1.i106.i, 7
  %i.gn = trunc nuw nsw i16 %i.gm to i8
  %i.go = icmp samesign ult i16 %i.gh, 6
  %4 = add nuw nsw i16 %i.gh, 7
  %.pn.i.i = select i1 %i.go, i16 %4, i16 %i.gh
  %5 = add nuw nsw i16 %i.gk, 12
  %.lhs.trunc1.i.i = sub nsw i16 %5, %.pn.i.i
  %i.gp = sdiv i16 %.lhs.trunc1.i.i, 7
  %i.gq = trunc nuw nsw i16 %i.gp to i8
  %i.gr = lshr i32 %i.es, 3                       ; 2 uses
  %i.gs = and i32 %i.gr, 1023                     ; 4 uses
  %i.gt = zext nneg i32 %i.gs to i64              ; 4 uses
  %i.gu = icmp samesign ult i32 %i.gs, 733        ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr @46, i64 %i.gt ; 3 uses
  %i.gw = trunc i32 %i.gr to i8
  %i.gx = srem i32 %i.ex, 100                     ; 4 uses
  %i.gy = icmp slt i32 %i.gx, 0
  %i.gz = add nsw i32 %i.gx, 100
  %spec.select.i.i = select i1 %i.gy, i32 %i.gz, i32 %i.gx
  %i.ha = trunc nuw nsw i32 %spec.select.i.i to i8
  %i.hb = sdiv i32 %i.ex, 100
  %.lobit.i.i = ashr i32 %i.gx, 31
  %.sroa.0.0.i.i = add nsw i32 %.lobit.i.i, %i.hb
  %i.hc = trunc i32 %.sroa.0.0.i.i to i8
  %spec.select = select i1 %i.ez, i32 %.neg.i, i32 0
  %i.hd = select i1 %i.ez, i32 %i.fd, i32 0
  %spec.select199 = add nsw i32 %i.ey, %i.hd      ; 2 uses
  %i.he = sdiv i32 %spec.select199, 100           ; 2 uses
  %i.hf = mul nsw i32 %spec.select199, 1461
  %i.hg = ashr i32 %i.hf, 2
  %i.hh = ashr i32 %i.he, 2
  %i.hi = add i32 %i.fh, %spec.select
  %i.hj = sub i32 %i.hi, %i.he
  %i.hk = add i32 %i.hj, %i.hg
  %narrow.i = add i32 %i.hk, %i.hh
  %i.hl = sext i32 %narrow.i to i64
  %i.hm = mul nsw i64 %i.hl, 86400
  %i.hn = add nsw i64 %i.fi, %i.hm
  %i.ho = insertelement <2 x ptr> poison, ptr %.146.i, i64 0
  %i.hp = insertelement <2 x ptr> %i.ho, ptr %i.br, i64 1
  %i.hq = shl nuw nsw i16 %i.gh, 3
  %switch.shiftamt = zext nneg i16 %i.hq to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0.0110 = phi ptr [ %.val, %.lr.ph ], [ %i.hr, %.critedge ] ; 9 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 24 ; 2 uses
  %i.hs = load i8, ptr %.sroa.0.0110, align 8, !range !50, !noundef !28
  switch i8 %i.hs, label %default.unreachable292 [
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

default.unreachable292:                           ; preds = %_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit, %bb.ax, %bb.as, %bb.c, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 2
  %i.hw = load i8, ptr %i.hv, align 2, !range !38, !noundef !28 ; 18 uses
  %.val8 = load i8, ptr %i.hu, align 1, !range !1193, !noundef !28
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
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.hc, i8 noundef range(i8 0, 3) %i.hw)
  br label %.critedge

bb.z:                                             ; preds = %bb.f
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.ha, i8 noundef range(i8 0, 3) %i.hw)
  br label %.critedge

.split73:                                         ; preds = %bb.g
  %i.hx = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ex, i32 noundef %i.ff, i8 noundef %i.gj), !noalias !1195
  %i.hy = ashr i32 %i.hx, 10
  %i.hz = call fastcc noundef zeroext i1 @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric10write_yearNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.hy, i8 noundef range(i8 0, 3) %i.hw) #76, !noalias !1196
  br i1 %i.hz, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.aa:                                            ; preds = %bb.h
  %i.ia = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ex, i32 noundef %i.ff, i8 noundef %i.gj), !noalias !1195
  %i.ib = ashr i32 %i.ia, 10                      ; 2 uses
  %i.ic = sdiv i32 %i.ib, 100
  %i.id = srem i32 %i.ib, 100
  %.lobit.i98.i = ashr i32 %i.id, 31
  %.sroa.0.0.i99.i = add nsw i32 %.lobit.i98.i, %i.ic
  %i.ie = trunc i32 %.sroa.0.0.i99.i to i8
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.ie, i8 noundef range(i8 0, 3) %i.hw)
  br label %.critedge

bb.ab:                                            ; preds = %bb.i
  %i.if = call noundef i32 @_RNvMNtNtCs2uF6e5yHHeh_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.ex, i32 noundef %i.ff, i8 noundef %i.gj), !noalias !1195
  %i.ig = ashr i32 %i.if, 10
  %i.ih = srem i32 %i.ig, 100                     ; 3 uses
  %i.ii = icmp slt i32 %i.ih, 0
  %i.ij = add nsw i32 %i.ih, 100
  %spec.select.i100.i = select i1 %i.ii, i32 %i.ij, i32 %i.ih
  %i.ik = trunc nuw nsw i32 %spec.select.i100.i to i8
  call fastcc void @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.ik, i8 noundef range(i8 0, 3) %i.hw)
  br label %.critedge

bb.ac:                                            ; preds = %bb.j
  br i1 %i.gu, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.il = load i8, ptr %i.gv, align 1, !noalias !1195, !noundef !28
  %i.im = zext i8 %i.il to i32
  %i.in = add nuw nsw i32 %i.gs, %i.im
  %i.io = lshr i32 %i.in, 6
  %i.ip = add nsw i32 %i.io, -1
  %i.iq = udiv i32 %i.ip, 3
  %i.ir = add nuw nsw i32 %i.iq, 49               ; 2 uses
end_hunk_0
