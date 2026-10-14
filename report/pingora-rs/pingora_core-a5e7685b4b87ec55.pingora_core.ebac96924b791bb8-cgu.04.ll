Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.04?download=true
inline.NumInlined: 817
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http4date14to_date_string:bb.a
  %i.cb = load i32, ptr %i.ca, align 4, !noalias !2203, !noundef !5 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !noalias !2203, !noundef !5 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !2209
  store i64 0, ptr %i.bk, align 8, !noalias !2209
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2209
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !2209
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 1610612768, ptr %i.ce, align 8, !noalias !2209
  store ptr %i.bk, ptr %i.bj, align 8, !noalias !2209
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @401, ptr %i.cf, align 8, !noalias !2209
  %i.cg = invoke noundef zeroext i1 @_RNvXs1_NtNtCsff3niNi8lqe_6chrono6offset3utcNtB5_3UtcNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.by, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.e unwind label %bb.d, !noalias !2210

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk) #24
          to label %common.resume unwind label %bb.g, !noalias !2210

bb.e:                                             ; preds = %bb.c
  br i1 %i.cg, label %bb.f, label %_RINvMs5_NtCsff3niNi8lqe_6chrono8datetimeINtB6_8DateTimeNtNtNtB8_6offset3utc3UtcE17format_with_itemsNtNtNtB8_6format8strftime13StrftimeItemsNtB1D_4ItemECskeugdADtBsi_12pingora_core.exit, !prof !12

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @402, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @404) #27
          to label %.noexc.i.i.i.i unwind label %bb.d, !noalias !2210

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !2210
  unreachable

common.resume:                                    ; preds = %.body, %bb.dt, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.alg, %bb.dt ], [ %i.ch, %bb.d ], [ %eh.lpad-body.i, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvMs5_NtCsff3niNi8lqe_6chrono8datetimeINtB6_8DateTimeNtNtNtB8_6offset3utc3UtcE17format_with_itemsNtNtNtB8_6format8strftime13StrftimeItemsNtB1D_4ItemECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !2211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !2209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !2209
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 84
  store i32 %i.bz, ptr %i.cj, align 4, !alias.scope !2212, !noalias !2211
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  store i32 1, ptr %i.ck, align 8, !alias.scope !2213, !noalias !2214
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 76
  store i32 %i.cb, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !2213, !noalias !2214
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store i32 %i.cd, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2213, !noalias !2214
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !2212, !noalias !2211
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store ptr @183, ptr %i.cl, align 8, !alias.scope !2215, !noalias !2216
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i64 25, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2215, !noalias !2216
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2215, !noalias !2216
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2215, !noalias !2216
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  store i8 0, ptr %.sroa.76.0..sroa_idx, align 8, !alias.scope !2215, !noalias !2216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !2203
  call void @llvm.experimental.noalias.scope.decl(metadata !2217)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !2218
  store i64 0, ptr %i.bi, align 8, !noalias !2218
  %.sroa.4.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i1, align 8, !noalias !2218
  %.sroa.5.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i2, align 8, !noalias !2218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2218
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 1610612768, ptr %i.cm, align 8, !noalias !2218
  store ptr %i.bi, ptr %i.bh, align 8, !noalias !2218
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr @401, ptr %i.cn, align 8, !noalias !2218
  call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2220
  store i64 0, ptr %i.bg, align 8, !noalias !2220
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 103 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2220
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 176 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2220
  call void @llvm.experimental.noalias.scope.decl(metadata !2221)
  call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !2223
  store ptr @183, ptr %i.bf, align 8, !noalias !2223
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 25, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !2223
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !2223
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2223
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2223
  invoke void @_RNvXs_NtNtCsff3niNi8lqe_6chrono6format8strftimeNtB4_13StrftimeItemsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bf)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !2220

.noexc.i.i:                                       ; preds = %_RINvMs5_NtCsff3niNi8lqe_6chrono8datetimeINtB6_8DateTimeNtNtNtB8_6offset3utc3UtcE17format_with_itemsNtNtNtB8_6format8strftime13StrftimeItemsNtB1D_4ItemECskeugdADtBsi_12pingora_core.exit
  %i.co = load i8, ptr %i.be, align 8, !range !2224, !noalias !2223, !noundef !5
  %.not242.not.i.i.i = icmp eq i8 %i.co, -1
  br i1 %.not242.not.i.i.i, label %.loopexit23.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  %i.cq = load i64, ptr %i.bn, align 8, !range !8, !alias.scope !2225, !noalias !2226
  %.not.i66.i.i.i = icmp eq i64 %i.cq, -1         ; 2 uses
  %i.cr = urem i32 %i.cd, 1000000000              ; 9 uses
  %.sroa.4118.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cs = udiv i32 %i.cd, 1000
  %i.ct = urem i32 %i.cs, 1000000                 ; 2 uses
  %.sroa.4114.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cu = udiv i32 %i.cd, 1000000
  %.lhs.trunc13.i.i.i.i = trunc nuw nsw i32 %i.cu to i16
  %i.cv = urem i16 %.lhs.trunc13.i.i.i.i, 1000
  %.zext14.i.i.i.i = zext nneg i16 %i.cv to i32   ; 2 uses
  %.sroa.4110.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.476.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.4106.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.4102.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.498.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cw = icmp eq i32 %i.cr, 0
  %i.cx = urem i32 %i.cr, 1000000
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = urem i32 %i.cr, 1000
  %i.da = icmp eq i32 %i.cz, 0
  %.sroa.494.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.db = udiv i32 %i.cr, 1000
  %.sroa.490.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dc = udiv i32 %i.cr, 1000000
  %.sroa.486.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.dd = icmp ugt i32 %i.cb, 43199               ; 3 uses
  %.146.i.i.i.i = select i1 %i.dd, ptr @48, ptr @47
  %i.de = select i1 %i.dd, ptr getelementptr inbounds nuw (i8, ptr @48, i64 2), ptr getelementptr inbounds nuw (i8, ptr @47, i64 2)
  %.sroa.078.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 80 ; 11 uses
  %.sroa.379.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 88 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.dj = lshr i32 %i.bz, 4
  %i.dk = and i32 %i.dj, 511                      ; 9 uses
  %i.dl = and i32 %i.bz, 7
  %i.dm = add nuw nsw i32 %i.dk, %i.dl
  %.lhs.trunc9.i.i.i.i = trunc nuw nsw i32 %i.dm to i16
  %i.dn = urem i16 %.lhs.trunc9.i.i.i.i, 7        ; 6 uses
  %i.do = icmp samesign ult i16 %i.dn, 6          ; 2 uses
  %narrow40.i.i.i.i = add nuw nsw i16 %i.dn, 1
  %narrow41.i.i.i.i = select i1 %i.do, i16 %narrow40.i.i.i.i, i16 0
  %i.dp = zext nneg i16 %narrow41.i.i.i.i to i64  ; 2 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr @46, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr @38, i64 %i.dp ; 2 uses
  %i.dt = lshr i32 %i.bz, 3                       ; 3 uses
  %i.du = and i32 %i.dt, 1023                     ; 8 uses
  %i.dv = zext nneg i32 %i.du to i64              ; 8 uses
  %i.dw = icmp samesign ult i32 %i.du, 733        ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr @13, i64 %i.dv ; 7 uses
  %i.dy = ashr i32 %i.bz, 13                      ; 13 uses
  %or.cond.i122.i.i.i = icmp ult i32 %i.dy, 10000 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.lhs.trunc.i126.i.i.i = trunc nuw nsw i32 %i.dy to i16 ; 2 uses
  %i.dz = udiv i16 %.lhs.trunc.i126.i.i.i, 100
  %i.ea = trunc nuw nsw i16 %i.dz to i8           ; 2 uses
  %i.eb = udiv i8 %i.ea, 10
  %i.ec = or disjoint i8 %i.eb, 48                ; 2 uses
  %i.ed = urem i8 %i.ea, 10
  %i.ee = or disjoint i8 %i.ed, 48                ; 2 uses
  %i.ef = urem i16 %.lhs.trunc.i126.i.i.i, 100
  %i.eg = trunc nuw nsw i16 %i.ef to i8           ; 2 uses
  %i.eh = udiv i8 %i.eg, 10
  %i.ei = or disjoint i8 %i.eh, 48                ; 2 uses
  %i.ej = urem i8 %i.eg, 10
  %i.ek = or disjoint i8 %i.ej, 48                ; 2 uses
  %i.el = trunc i32 %i.dt to i8                   ; 2 uses
  %i.em = udiv i32 %i.cb, 3600                    ; 2 uses
  %i.en = icmp ugt i32 %i.cd, 999999999           ; 2 uses
  %i.eo = add i32 %i.cd, -1000000000
  %storemerge.i.i.i.i = select i1 %i.en, i32 %i.eo, i32 %i.cd ; 6 uses
  %i.ep = trunc i32 %i.em to i8                   ; 4 uses
  %i.eq = icmp ugt i8 %i.ep, 99                   ; 2 uses
  %i.er = urem i32 %i.cb, 60                      ; 2 uses
  %i.es = zext i1 %i.en to i32
  %.sroa.04.0.i.i.i.i = add nuw nsw i32 %i.er, %i.es
  %i.et = udiv i32 %i.cb, 60
  %i.eu = urem i32 %i.et, 60                      ; 2 uses
  %i.ev = udiv i8 %i.ep, 10                       ; 2 uses
  %i.ew = or disjoint i8 %i.ev, 48                ; 2 uses
  %i.ex = trunc nuw nsw i32 %i.eu to i8           ; 2 uses
  %i.ey = udiv i8 %i.ex, 10
  %i.ez = or disjoint i8 %i.ey, 48                ; 3 uses
  %i.fa = trunc nuw nsw i32 %.sroa.04.0.i.i.i.i to i8 ; 2 uses
  %i.fb = udiv i8 %i.fa, 10
  %i.fc = or disjoint i8 %i.fb, 48
  %i.fd = icmp eq i32 %storemerge.i.i.i.i, 0
  %i.fe = urem i32 %storemerge.i.i.i.i, 1000000
  %i.ff = icmp eq i32 %i.fe, 0
  %i.fg = urem i32 %storemerge.i.i.i.i, 1000
  %i.fh = icmp eq i32 %i.fg, 0
  %.sroa.429.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fi = udiv i32 %storemerge.i.i.i.i, 1000
  %.sroa.425.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fj = udiv i32 %storemerge.i.i.i.i, 1000000
  %.sroa.421.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fk = udiv i32 %i.cd, 1000000000
  %i.fl = add nuw nsw i32 %i.fk, %i.er            ; 2 uses
  %i.fm = trunc nuw nsw i32 %i.fl to i8           ; 2 uses
  %i.fn = udiv i8 %i.fm, 10
  %i.fo = or disjoint i8 %i.fn, 48                ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.fs = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.ft = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.fw = add nsw i32 %i.dy, -1
  %i.fx = icmp slt i32 %i.dy, 1                   ; 2 uses
  %i.fy = sub nsw i32 1, %i.dy
  %i.fz = udiv i32 %i.fy, 400
  %i.ga = add nuw nsw i32 %i.fz, 1                ; 2 uses
  %i.gb = mul nuw nsw i32 %i.ga, 400
  %.neg.i.i.i.i = mul nsw i32 %i.ga, -146097
  %i.gc = zext i32 %i.cb to i64
  %i.gd = add nuw nsw i32 %i.dk, -719163
  %.sroa.426.0..sroa_idx.i194.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.445.0..sroa_idx.i195.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.430.0..sroa_idx.i198.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.439.0..sroa_idx.i199.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.434.0..sroa_idx.i201.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.gg = zext nneg i32 %i.cr to i64
  %.sroa.426.0..sroa_idx.i183.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.445.0..sroa_idx.i184.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.430.0..sroa_idx.i187.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.439.0..sroa_idx.i188.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.434.0..sroa_idx.i190.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.gj = icmp samesign ult i32 %i.fl, 10
  %i.gk = icmp samesign ult i32 %i.eu, 10
  %i.gl = urem i32 %i.em, 12                      ; 2 uses
  %i.gm = icmp eq i32 %i.gl, 0
  %i.gn = trunc nuw nsw i32 %i.gl to i8
  %i.go = select i1 %i.gm, i8 12, i8 %i.gn        ; 4 uses
  %.cmp9.i.i.i.i = icmp samesign ugt i8 %i.go, 9
  %i.gp = icmp samesign ult i8 %i.go, 10          ; 2 uses
  %i.gq = select i1 %.cmp9.i.i.i.i, i8 49, i8 48
  %.urem10.i.i.i.i = add nsw i8 %i.go, -10
  %i.gr = select i1 %i.gp, i8 %i.go, i8 %.urem10.i.i.i.i
  %i.gs = or disjoint i8 %i.gr, 48
  %i.gt = icmp ult i8 %i.ep, 10
  %i.gu = add nuw nsw i8 %i.ev, 48
  %i.gv = zext nneg i32 %i.dk to i64
  %.sroa.426.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.445.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.430.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.439.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.434.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %switch.idx.cast.i.i.i.i = trunc nuw nsw i16 %i.dn to i8
  %switch.offset.i.i.i.i = add nuw nsw i8 %switch.idx.cast.i.i.i.i, 49
  %i.gy = trunc i32 %i.bz to i8
  %i.gz = and i8 %i.gy, 15                        ; 4 uses
  %i.ha = trunc nuw nsw i32 %i.dk to i16
  %i.hb = add nuw nsw i16 %i.ha, 6
  %.lhs.trunc1.i142.i.i.i.i = sub nuw nsw i16 %i.hb, %i.dn ; 2 uses
  %i.hc = udiv i16 %.lhs.trunc1.i142.i.i.i.i, 7
  %i.hd = trunc nuw nsw i16 %i.hc to i8           ; 2 uses
  %i.he = udiv i8 %i.hd, 10
  %i.hf = icmp samesign ult i16 %.lhs.trunc1.i142.i.i.i.i, 70
  %i.hg = add nuw nsw i8 %i.he, 48
  %spec.select.i131.i.i.i.i = zext nneg i16 %i.dn to i32 ; 2 uses
  %i.hh = add nuw nsw i32 %spec.select.i131.i.i.i.i, 7
  %.pn.i.i.i.i.i = select i1 %i.do, i32 %i.hh, i32 %spec.select.i131.i.i.i.i
  %.sroa.0.0.neg.i.i.i.i.i = add nuw nsw i32 %i.dk, 6
  %i.hi = sub nsw i32 %.sroa.0.0.neg.i.i.i.i.i, %.pn.i.i.i.i.i
  %i.hj = trunc nsw i32 %i.hi to i16
  %.lhs.trunc1.i.i.i.i.i = add nsw i16 %i.hj, 6
  %i.hk = sdiv i16 %.lhs.trunc1.i.i.i.i.i, 7      ; 2 uses
  %i.hl = trunc nsw i16 %i.hk to i8               ; 2 uses
  %i.hm = udiv i8 %i.hl, 10
  %i.hn = icmp samesign ult i16 %i.hk, 10
  %i.ho = add nuw nsw i8 %i.hm, 48
  %i.hp = srem i32 %i.dy, 100                     ; 4 uses
  %i.hq = icmp slt i32 %i.hp, 0
  %i.hr = add nsw i32 %i.hp, 100
  %spec.select.i.i.i.i.i = select i1 %i.hq, i32 %i.hr, i32 %i.hp ; 2 uses
  %i.hs = trunc nsw i32 %spec.select.i.i.i.i.i to i8 ; 2 uses
  %i.ht = udiv i8 %i.hs, 10
  %i.hu = icmp samesign ult i32 %spec.select.i.i.i.i.i, 10
  %i.hv = add nuw nsw i8 %i.ht, 48
  %i.hw = sdiv i32 %i.dy, 100
  %.lobit.i.i.i.i.i = ashr i32 %i.hp, 31
  %.sroa.0.0.i.i.i.i.i = add nsw i32 %.lobit.i.i.i.i.i, %i.hw
  %i.hx = trunc i32 %.sroa.0.0.i.i.i.i.i to i8    ; 3 uses
  %i.hy = udiv i8 %i.hx, 10
  %i.hz = icmp ult i8 %i.hx, 10
  %i.ia = add nuw nsw i8 %i.hy, 48
  %2 = insertelement <8 x i8> poison, i8 %i.ep, i64 0
  %3 = insertelement <8 x i8> %2, i8 %i.ex, i64 1
  %4 = insertelement <8 x i8> %3, i8 %i.fa, i64 2
  %5 = insertelement <8 x i8> %4, i8 %i.fm, i64 3
  %6 = insertelement <8 x i8> %5, i8 %i.hd, i64 4
  %7 = insertelement <8 x i8> %6, i8 %i.hl, i64 5
  %8 = insertelement <8 x i8> %7, i8 %i.hs, i64 6
  %9 = insertelement <8 x i8> %8, i8 %i.hx, i64 7
  %10 = urem <8 x i8> %9, splat (i8 10)           ; 5 uses
  %11 = extractelement <8 x i8> %10, i64 0
  %12 = or disjoint i8 %11, 48                    ; 3 uses
  %13 = extractelement <8 x i8> %10, i64 1
  %14 = or disjoint i8 %13, 48                    ; 3 uses
  %15 = extractelement <8 x i8> %10, i64 2
  %16 = or disjoint i8 %15, 48
  %17 = extractelement <8 x i8> %10, i64 3
  %i.ib = or disjoint i8 %17, 48                  ; 2 uses
  %18 = shufflevector <8 x i8> %10, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %19 = or disjoint <4 x i8> %18, splat (i8 48)   ; 4 uses
  %.sroa.03.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 4 uses
  %spec.select.i.i.i = select i1 %i.fx, i32 %.neg.i.i.i.i, i32 0
  %i.id = select i1 %i.fx, i32 %i.gb, i32 0
  %spec.select244.i.i.i = add nsw i32 %i.fw, %i.id ; 2 uses
  %i.ie = sdiv i32 %spec.select244.i.i.i, 100     ; 2 uses
  %i.if = mul nsw i32 %spec.select244.i.i.i, 1461
  %i.ig = ashr i32 %i.if, 2
  %i.ih = ashr i32 %i.ie, 2
  %i.ii = add i32 %i.gd, %spec.select.i.i.i
  %i.ij = sub i32 %i.ii, %i.ie
  %i.ik = add i32 %i.ij, %i.ig
  %narrow.i.i.i.i = add i32 %i.ik, %i.ih
  %i.il = sext i32 %narrow.i.i.i.i to i64
  %i.im = mul nsw i64 %i.il, 86400
  %i.in = add nsw i64 %i.im, %i.gc
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.445.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.is = insertelement <2 x ptr> poison, ptr %.146.i.i.i.i, i64 0
  %i.it = insertelement <2 x ptr> %i.is, ptr %i.de, i64 1
  %20 = extractelement <4 x i8> %19, i64 0
  %21 = extractelement <4 x i8> %19, i64 1
  %22 = extractelement <4 x i8> %19, i64 2
  %23 = extractelement <4 x i8> %19, i64 3
  %i.iu = shl nuw nsw i16 %i.dn, 3
  %switch.shiftamt = zext nneg i16 %i.iu to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.h

.loopexit.i.i.i:                                  ; preds = %.noexc84.i.i.i, %.noexc.i.i.i.i4
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %.noexc163.i.i.i.i, %.noexc162.i.i.i.i, %.noexc160.i.i.i.i, %.noexc.peel.i.i.i.i
  %lpad.loopexit196.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %bb.dc, %bb.da, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit53.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit49.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit45.i.i.i.i, %bb.cx, %.noexc146.i.i.i, %.noexc145.i.i.i, %.noexc144.i.i.i, %.noexc143.i.i.i, %.noexc142.i.i.i, %.noexc141.i.i.i, %.noexc140.i.i.i, %bb.cw, %.noexc137.i.i.i, %.noexc136.i.i.i, %.noexc135.i.i.i, %.noexc134.i.i.i, %.noexc133.i.i.i, %bb.cv, %.noexc131.i.i.i, %.noexc130.i.i.i, %.noexc129.i.i.i, %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit33.i.i.i.i, %bb.cu, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i, %.noexc182.i.i.i, %.noexc181.i.i.i, %.noexc180.i.i.i, %.noexc179.i.i.i, %.noexc178.i.i.i, %.noexc177.i.i.i, %.noexc176.i.i.i, %.noexc175.i.i.i, %.noexc174.i.i.i, %bb.cr, %.noexc171.i.i.i, %.noexc170.i.i.i, %.noexc169.i.i.i, %.noexc168.i.i.i, %.noexc167.i.i.i, %.noexc166.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit15.i.i.i.i, %bb.cq, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i, %.noexc162.i.i.i, %bb.cp, %.noexc159.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i154.i.i.i, %bb.cm, %bb.cl, %bb.cj, %bb.ci, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit206.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit202.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit198.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit194.i.i.i.i, %.noexc98.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit190.i.i.i.i, %.noexc96.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit185.i.i.i.i, %.noexc94.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit180.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit175.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit171.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i.i, %bb.ce, %bb.cc, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit159.i.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit156.i.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit153.i.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i193.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i197.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i200.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i182.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i186.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i189.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit181.i.i.i.i, %bb.bf, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i176.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit175.i.i.i.i, %bb.bc, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i170.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit169.i.i.i.i, %bb.az, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i164.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit163.i.i.i.i, %bb.aw, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i, %switch.lookup.i.i.i.i, %switch.lookup, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit155.i.i.i.i, %bb.as, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i150.i.i.i.i, %bb.aq, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit149.i.i.i.i, %bb.ap, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i144.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit137.i.i.i.i, %bb.am, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i132.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit130.i.i.i.i, %bb.aj, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i125.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit124.i.i.i.i, %bb.af, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i119.i.i.i.i, %bb.ab, %bb.aa, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit118.i.i.i.i, %bb.x, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i113.i.i.i.i, %bb.v, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit111.i.i.i.i, %bb.u, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i106.i.i.i.i, %bb.s, %bb.r, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit103.i.i.i.i, %bb.q, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i98.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i, %bb.n, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i.i, %.noexc11.i.i, %.noexc10.i.i, %.noexc9.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i2.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit68.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit64.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit60.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i
  %lpad.loopexit199.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i: ; preds = %.invoke290.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit196.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit199.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bd) #24, !noalias !2227
  br label %.body.i.i

bb.h:                                             ; preds = %.noexc4.i.i, %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !2223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !2223
  %i.iv = load i8, ptr %i.bd, align 8, !range !23, !noalias !2223, !noundef !5
  switch i8 %i.iv, label %default.unreachable [
    i8 0, label %bb.da
    i8 1, label %bb.dc
    i8 2, label %bb.da
    i8 3, label %bb.dc
    i8 4, label %bb.i
    i8 5, label %bb.bh
    i8 6, label %.loopexit.i.i
  ]

default.unreachable:                              ; preds = %_RNvMNtNtCsff3niNi8lqe_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i, %bb.bg, %bb.be, %bb.bb, %bb.ay, %bb.av, %bb.at, %bb.ar, %bb.ao, %bb.al, %bb.ai, %bb.ae, %bb.w, %bb.t, %bb.p, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.iw = load i8, ptr %i.fv, align 2, !range !11, !noalias !2223, !noundef !5 ; 18 uses
  %.val.i.i.i = load i8, ptr %i.cp, align 1, !range !2228, !noalias !2223, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  switch i8 %.val.i.i.i, label %default.unreachable [
    i8 0, label %.invoke.i.i.i
    i8 1, label %bb.l
    i8 2, label %bb.o
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %bb.v
    i8 6, label %bb.y
    i8 7, label %bb.ac
    i8 8, label %bb.ag
    i8 9, label %bb.ak
    i8 10, label %bb.an
    i8 11, label %bb.aq
    i8 12, label %switch.lookup
    i8 13, label %switch.lookup.i.i.i.i
    i8 14, label %bb.at
    i8 15, label %bb.au
    i8 16, label %bb.ax
    i8 17, label %bb.ba
    i8 18, label %bb.bd
    i8 19, label %bb.bg
    i8 20, label %_RNvMNtNtCsff3niNi8lqe_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i
  ]

.invoke.i.i.i:                                    ; preds = %bb.i, %.noexc12.i.i.i
  %i.ix = phi i32 [ %i.ll, %.noexc12.i.i.i ], [ %i.dy, %bb.i ] ; 4 uses
  %i.iy = add nsw i32 %i.ix, -1000
  %or.cond.i.i.i = icmp ult i32 %i.iy, 9000
  br i1 %or.cond.i.i.i, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i2.i.i.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i: ; preds = %.invoke.i.i.i
  %i.iz = sext i32 %i.ix to i64
  %spec.select.i.i7.i.i = icmp ugt i32 %i.ix, 9999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2220
  store i64 %i.iz, ptr %i.h, align 8, !noalias !2230
  br i1 %spec.select.i.i7.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i
    i8 1, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i
    i8 2, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i
  ]

bb.k:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit60.i.i.i
    i8 1, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit64.i.i.i
    i8 2, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit68.i.i.i
  ]

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2230
  store ptr %i.h, ptr %i.d, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.ja = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @52, ptr noundef nonnull %i.d)
          to label %.noexc13.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc13.i.i:                                     ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.ja, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2230
  store ptr %i.h, ptr %i.c, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i.i.i, align 8, !noalias !2230
  store ptr null, ptr %i.ip, align 8, !noalias !2230
  store i16 4, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.jb = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @80, ptr noundef nonnull %i.c)
          to label %.noexc14.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc14.i.i:                                     ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.jb, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2230
  store ptr %i.h, ptr %i.b, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !noalias !2230
  store ptr null, ptr %i.io, align 8, !noalias !2230
  store i16 4, ptr %.sroa.445.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.jc = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @81, ptr noundef nonnull %i.b)
          to label %.noexc15.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc15.i.i:                                     ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.jc, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit60.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2230
  store ptr %i.h, ptr %i.g, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.jd = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @82, ptr noundef nonnull %i.g)
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc16.i.i:                                     ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit60.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.jd, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit64.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2230
  store ptr %i.h, ptr %i.f, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !noalias !2230
  store ptr null, ptr %i.ir, align 8, !noalias !2230
  store i16 5, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.je = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @83, ptr noundef nonnull %i.f)
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit68.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2230
  store ptr %i.h, ptr %i.e, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !2230
  store ptr null, ptr %i.iq, align 8, !noalias !2230
  store i16 5, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.jf = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @84, ptr noundef nonnull %i.e)
          to label %.noexc18.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc18.i.i:                                     ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit68.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.jf, label %.loopexit.i.i, label %.critedge.i.i.i

.noexc8.i.i:                                      ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit64.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.je, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i2.i.i.i: ; preds = %.invoke.i.i.i
  %.lhs.trunc.i.i.i = trunc nuw nsw i32 %i.ix to i16 ; 2 uses
  %i.jg = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2231, !noalias !2220, !noundef !5 ; 6 uses
  %i.jh = icmp sgt i64 %i.jg, -1
  call void @llvm.assume(i1 %i.jh)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc9.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc9.i.i:                                      ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i2.i.i.i
  %i.ji = udiv i16 %.lhs.trunc.i.i.i, 100
  %i.jj = urem i16 %.lhs.trunc.i.i.i, 100
  %i.jk = trunc nuw nsw i16 %i.ji to i8           ; 2 uses
  %i.jl = udiv i8 %i.jk, 10
  %i.jm = urem i8 %i.jk, 10
  %i.jn = or disjoint i8 %i.jl, 48
  %i.jo = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2231, !noalias !2220, !nonnull !5, !noundef !5
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jg
  store i8 %i.jn, ptr %i.jp, align 1, !noalias !2227
  %i.jq = add nuw nsw i64 %i.jg, 1                ; 2 uses
  store i64 %i.jq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2231, !noalias !2220
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc10.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc10.i.i:                                     ; preds = %.noexc9.i.i
  %i.jr = or disjoint i8 %i.jm, 48
  %i.js = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2232, !noalias !2220, !nonnull !5, !noundef !5
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jq
  store i8 %i.jr, ptr %i.jt, align 1, !noalias !2227
  %i.ju = add nuw nsw i64 %i.jg, 2                ; 2 uses
  store i64 %i.ju, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2232, !noalias !2220
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc11.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc11.i.i:                                     ; preds = %.noexc10.i.i
  %i.jv = trunc nuw nsw i16 %i.jj to i8           ; 2 uses
  %i.jw = udiv i8 %i.jv, 10
  %i.jx = urem i8 %i.jv, 10
  %i.jy = or disjoint i8 %i.jw, 48
  %i.jz = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2233, !noalias !2220, !nonnull !5, !noundef !5
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.ju
  store i8 %i.jy, ptr %i.ka, align 1, !noalias !2227
  %i.kb = add nuw i64 %i.jg, 3                    ; 2 uses
  store i64 %i.kb, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2233, !noalias !2220
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.thread.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.thread.i.i: ; preds = %.noexc11.i.i
  %i.kc = or disjoint i8 %i.jx, 48
  %i.kd = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2234, !noalias !2220, !nonnull !5, !noundef !5
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kb
  store i8 %i.kc, ptr %i.ke, align 1, !noalias !2227
  %i.kf = add nuw i64 %i.jg, 4
  store i64 %i.kf, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2234, !noalias !2220
  br label %.critedge.i.i.i

bb.l:                                             ; preds = %bb.i
  br i1 %i.hz, label %bb.m, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i.i.i.i.i
    i8 2, label %bb.n
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i.i.i.i.i: ; preds = %bb.m
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2235, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.kg = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2237, !noalias !2236, !noundef !5 ; 3 uses
  %i.kh = icmp sgt i64 %i.kg, -1
  call void @llvm.assume(i1 %i.kh)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc6.i.i.i:                                    ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i.i
  %i.ki = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2237, !noalias !2236, !nonnull !5, !noundef !5
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kg
  store i8 %i.ia, ptr %i.kj, align 1, !noalias !2238
  %i.kk = add nuw i64 %i.kg, 1                    ; 2 uses
  store i64 %i.kk, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2237, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.kl = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2239, !noalias !2236, !noundef !5 ; 3 uses
  %i.km = icmp sgt i64 %i.kl, -1
  call void @llvm.assume(i1 %i.km)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc7.i.i.i:                                    ; preds = %bb.n
  %i.kn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2239, !noalias !2236, !nonnull !5, !noundef !5
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kl
  store i8 32, ptr %i.ko, align 1, !noalias !2238
  %i.kp = add nuw i64 %i.kl, 1                    ; 2 uses
  store i64 %i.kp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2239, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i: ; preds = %.noexc7.i.i.i, %.noexc6.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i.i.i.i.i
  %i.kq = phi i64 [ %.pre.i.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i.i.i.i.i ], [ %i.kp, %.noexc7.i.i.i ], [ %i.kk, %.noexc6.i.i.i ] ; 3 uses
  %i.kr = icmp sgt i64 %i.kq, -1
  call void @llvm.assume(i1 %i.kr)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc8.i.i.i:                                    ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i
  %i.ks = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2235, !noalias !2236, !nonnull !5, !noundef !5
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kq
  store i8 %23, ptr %i.kt, align 1, !noalias !2238
  %i.ku = add nuw i64 %i.kq, 1
  store i64 %i.ku, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2235, !noalias !2236
  br label %.critedge.i.i.i

bb.o:                                             ; preds = %bb.i
  br i1 %i.hu, label %bb.p, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i98.i.i.i.i

bb.p:                                             ; preds = %bb.o
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i99.i.i.i.i
    i8 2, label %bb.q
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i98.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i99.i.i.i.i: ; preds = %bb.p
  %.pre.i101.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2240, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit103.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i98.i.i.i.i: ; preds = %bb.p, %bb.o
  %i.kv = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2241, !noalias !2236, !noundef !5 ; 3 uses
  %i.kw = icmp sgt i64 %i.kv, -1
  call void @llvm.assume(i1 %i.kw)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc9.i.i.i:                                    ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i98.i.i.i.i
  %i.kx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2241, !noalias !2236, !nonnull !5, !noundef !5
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kv
  store i8 %i.hv, ptr %i.ky, align 1, !noalias !2238
  %i.kz = add nuw i64 %i.kv, 1                    ; 2 uses
  store i64 %i.kz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2241, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit103.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.la = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2242, !noalias !2236, !noundef !5 ; 3 uses
  %i.lb = icmp sgt i64 %i.la, -1
  call void @llvm.assume(i1 %i.lb)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc10.i.i.i:                                   ; preds = %bb.q
  %i.lc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2242, !noalias !2236, !nonnull !5, !noundef !5
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.la
  store i8 32, ptr %i.ld, align 1, !noalias !2238
  %i.le = add nuw i64 %i.la, 1                    ; 2 uses
  store i64 %i.le, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2242, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit103.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit103.i.i.i.i: ; preds = %.noexc10.i.i.i, %.noexc9.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i99.i.i.i.i
  %i.lf = phi i64 [ %.pre.i101.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i99.i.i.i.i ], [ %i.le, %.noexc10.i.i.i ], [ %i.kz, %.noexc9.i.i.i ] ; 3 uses
  %i.lg = icmp sgt i64 %i.lf, -1
  call void @llvm.assume(i1 %i.lg)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc11.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit103.i.i.i.i
  %i.lh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2240, !noalias !2236, !nonnull !5, !noundef !5
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lf
  store i8 %22, ptr %i.li, align 1, !noalias !2238
  %i.lj = add nuw i64 %i.lf, 1
  store i64 %i.lj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2240, !noalias !2236
  br label %.critedge.i.i.i

bb.r:                                             ; preds = %bb.i
  %i.lk = invoke noundef i32 @_RNvMNtNtCsff3niNi8lqe_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.dy, i32 noundef %i.dk, i8 noundef %i.gz)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc12.i.i.i:                                   ; preds = %bb.r
  %i.ll = ashr i32 %i.lk, 10
  br label %.invoke.i.i.i

bb.s:                                             ; preds = %bb.i
  %i.lm = invoke noundef i32 @_RNvMNtNtCsff3niNi8lqe_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.dy, i32 noundef %i.dk, i8 noundef %i.gz)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc14.i.i.i:                                   ; preds = %bb.s
  %i.ln = ashr i32 %i.lm, 10                      ; 2 uses
  %i.lo = sdiv i32 %i.ln, 100
  %i.lp = srem i32 %i.ln, 100
  %.lobit.i104.i.i.i.i = ashr i32 %i.lp, 31
  %.sroa.0.0.i105.i.i.i.i = add nsw i32 %.lobit.i104.i.i.i.i, %i.lo
  %i.lq = trunc i32 %.sroa.0.0.i105.i.i.i.i to i8 ; 3 uses
  %i.lr = udiv i8 %i.lq, 10
  %i.ls = urem i8 %i.lq, 10
  %i.lt = icmp ult i8 %i.lq, 10
  br i1 %i.lt, label %bb.t, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i106.i.i.i.i

bb.t:                                             ; preds = %.noexc14.i.i.i
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i107.i.i.i.i
    i8 2, label %bb.u
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i106.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i107.i.i.i.i: ; preds = %bb.t
  %.pre.i109.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2243, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit111.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i106.i.i.i.i: ; preds = %bb.t, %.noexc14.i.i.i
  %i.lu = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2244, !noalias !2236, !noundef !5 ; 3 uses
  %i.lv = icmp sgt i64 %i.lu, -1
  call void @llvm.assume(i1 %i.lv)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc15.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc15.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i106.i.i.i.i
  %i.lw = add nuw nsw i8 %i.lr, 48
  %i.lx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2244, !noalias !2236, !nonnull !5, !noundef !5
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lu
  store i8 %i.lw, ptr %i.ly, align 1, !noalias !2238
  %i.lz = add nuw i64 %i.lu, 1                    ; 2 uses
  store i64 %i.lz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2244, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit111.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ma = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2245, !noalias !2236, !noundef !5 ; 3 uses
  %i.mb = icmp sgt i64 %i.ma, -1
  call void @llvm.assume(i1 %i.mb)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc16.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc16.i.i.i:                                   ; preds = %bb.u
  %i.mc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2245, !noalias !2236, !nonnull !5, !noundef !5
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.ma
  store i8 32, ptr %i.md, align 1, !noalias !2238
  %i.me = add nuw i64 %i.ma, 1                    ; 2 uses
  store i64 %i.me, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2245, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit111.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit111.i.i.i.i: ; preds = %.noexc16.i.i.i, %.noexc15.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i107.i.i.i.i
  %i.mf = phi i64 [ %.pre.i109.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i107.i.i.i.i ], [ %i.me, %.noexc16.i.i.i ], [ %i.lz, %.noexc15.i.i.i ] ; 3 uses
  %i.mg = icmp sgt i64 %i.mf, -1
  call void @llvm.assume(i1 %i.mg)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc17.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc17.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit111.i.i.i.i
  %i.mh = or disjoint i8 %i.ls, 48
  %i.mi = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2243, !noalias !2236, !nonnull !5, !noundef !5
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mf
  store i8 %i.mh, ptr %i.mj, align 1, !noalias !2238
  %i.mk = add nuw i64 %i.mf, 1
  store i64 %i.mk, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2243, !noalias !2236
  br label %.critedge.i.i.i

bb.v:                                             ; preds = %bb.i
  %i.ml = invoke noundef i32 @_RNvMNtNtCsff3niNi8lqe_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.dy, i32 noundef %i.dk, i8 noundef %i.gz)
          to label %.noexc18.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc18.i.i.i:                                   ; preds = %bb.v
  %i.mm = ashr i32 %i.ml, 10
  %i.mn = srem i32 %i.mm, 100                     ; 3 uses
  %i.mo = icmp slt i32 %i.mn, 0
  %i.mp = add nsw i32 %i.mn, 100
  %spec.select.i112.i.i.i.i = select i1 %i.mo, i32 %i.mp, i32 %i.mn ; 2 uses
  %i.mq = trunc nuw nsw i32 %spec.select.i112.i.i.i.i to i8 ; 2 uses
  %i.mr = udiv i8 %i.mq, 10
  %i.ms = urem i8 %i.mq, 10
  %i.mt = icmp samesign ult i32 %spec.select.i112.i.i.i.i, 10
  br i1 %i.mt, label %bb.w, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i113.i.i.i.i

bb.w:                                             ; preds = %.noexc18.i.i.i
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i114.i.i.i.i
    i8 2, label %bb.x
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i113.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i114.i.i.i.i: ; preds = %bb.w
  %.pre.i116.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2246, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit118.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i113.i.i.i.i: ; preds = %bb.w, %.noexc18.i.i.i
  %i.mu = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2247, !noalias !2236, !noundef !5 ; 3 uses
  %i.mv = icmp sgt i64 %i.mu, -1
  call void @llvm.assume(i1 %i.mv)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc19.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i113.i.i.i.i
  %i.mw = add nuw nsw i8 %i.mr, 48
  %i.mx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2247, !noalias !2236, !nonnull !5, !noundef !5
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mu
  store i8 %i.mw, ptr %i.my, align 1, !noalias !2238
  %i.mz = add nuw i64 %i.mu, 1                    ; 2 uses
  store i64 %i.mz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2247, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit118.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.na = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2248, !noalias !2236, !noundef !5 ; 3 uses
  %i.nb = icmp sgt i64 %i.na, -1
  call void @llvm.assume(i1 %i.nb)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc20.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc20.i.i.i:                                   ; preds = %bb.x
  %i.nc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2248, !noalias !2236, !nonnull !5, !noundef !5
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.na
  store i8 32, ptr %i.nd, align 1, !noalias !2238
  %i.ne = add nuw i64 %i.na, 1                    ; 2 uses
  store i64 %i.ne, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2248, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit118.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit118.i.i.i.i: ; preds = %.noexc20.i.i.i, %.noexc19.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i114.i.i.i.i
  %i.nf = phi i64 [ %.pre.i116.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i114.i.i.i.i ], [ %i.ne, %.noexc20.i.i.i ], [ %i.mz, %.noexc19.i.i.i ] ; 3 uses
  %i.ng = icmp sgt i64 %i.nf, -1
  call void @llvm.assume(i1 %i.ng)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc21.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc21.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit118.i.i.i.i
  %i.nh = or disjoint i8 %i.ms, 48
  %i.ni = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2246, !noalias !2236, !nonnull !5, !noundef !5
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nf
  store i8 %i.nh, ptr %i.nj, align 1, !noalias !2238
  %i.nk = add nuw i64 %i.nf, 1
  store i64 %i.nk, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2246, !noalias !2236
  br label %.critedge.i.i.i

bb.y:                                             ; preds = %bb.i
  br i1 %i.dw, label %bb.z, label %.invoke290.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.nl = load i8, ptr %i.dx, align 1, !noalias !2249, !noundef !5
  %i.nm = zext i8 %i.nl to i32
  %i.nn = add nuw nsw i32 %i.du, %i.nm
  %i.no = lshr i32 %i.nn, 6
  %i.np = add nsw i32 %i.no, -1
  %i.nq = udiv i32 %i.np, 3
  %i.nr = add nuw nsw i32 %i.nq, 49               ; 2 uses
  %i.ns = and i32 %i.nr, 255                      ; 2 uses
  %i.nt = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2250, !noalias !2236, !noundef !5 ; 4 uses
  %i.nu = icmp sgt i64 %i.nt, -1
  call void @llvm.assume(i1 %i.nu)
  %i.nv = icmp samesign ult i32 %i.ns, 128
  %i.nw = trunc i32 %i.nr to i8                   ; 2 uses
  br i1 %i.nv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 2)
          to label %.noexc22.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc22.i.i.i:                                   ; preds = %bb.aa
  %i.nx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2250, !noalias !2236, !nonnull !5, !noundef !5
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.nt ; 2 uses
  %i.nz = and i8 %i.nw, 63
  %i.oa = or disjoint i8 %i.nz, -128
  %i.ob = lshr i32 %i.ns, 6
  %i.oc = trunc nuw nsw i32 %i.ob to i8
  %i.od = or disjoint i8 %i.oc, -64
  store i8 %i.od, ptr %i.ny, align 1, !noalias !2238
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  store i8 %i.oa, ptr %i.oe, align 1, !noalias !2238
  br label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc23.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

end_hunk_0
begin_hunk_1_@_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http4date14to_date_string:bb.a
  unreachable

bb.ac:                                            ; preds = %bb.i
  br i1 %i.dw, label %bb.ad, label %.invoke290.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ol = load i8, ptr %i.dx, align 1, !noalias !2249, !noundef !5
  %i.om = zext i8 %i.ol to i32
  %i.on = add nuw nsw i32 %i.du, %i.om            ; 3 uses
  %i.oo = lshr i32 %i.on, 6
  %i.op = trunc nuw nsw i32 %i.oo to i8           ; 2 uses
  %.cmp.i.i.i.i = icmp samesign ugt i32 %i.on, 639
  %i.oq = icmp samesign ult i32 %i.on, 640        ; 2 uses
  br i1 %i.oq, label %bb.ae, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i119.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i120.i.i.i.i
    i8 2, label %bb.af
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i119.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i120.i.i.i.i: ; preds = %bb.ae
  %.pre.i122.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2251, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit124.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i119.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.or = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2252, !noalias !2236, !noundef !5 ; 3 uses
  %i.os = icmp sgt i64 %i.or, -1
  call void @llvm.assume(i1 %i.os)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc25.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i119.i.i.i.i
  %i.ot = select i1 %.cmp.i.i.i.i, i8 49, i8 48
  %i.ou = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2252, !noalias !2236, !nonnull !5, !noundef !5
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.or
  store i8 %i.ot, ptr %i.ov, align 1, !noalias !2238
  %i.ow = add nuw i64 %i.or, 1                    ; 2 uses
  store i64 %i.ow, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2252, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit124.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ox = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2253, !noalias !2236, !noundef !5 ; 3 uses
  %i.oy = icmp sgt i64 %i.ox, -1
  call void @llvm.assume(i1 %i.oy)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc26.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc26.i.i.i:                                   ; preds = %bb.af
  %i.oz = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2253, !noalias !2236, !nonnull !5, !noundef !5
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.ox
  store i8 32, ptr %i.pa, align 1, !noalias !2238
  %i.pb = add nuw i64 %i.ox, 1                    ; 2 uses
  store i64 %i.pb, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2253, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit124.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit124.i.i.i.i: ; preds = %.noexc26.i.i.i, %.noexc25.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i120.i.i.i.i
  %i.pc = phi i64 [ %.pre.i122.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i120.i.i.i.i ], [ %i.pb, %.noexc26.i.i.i ], [ %i.ow, %.noexc25.i.i.i ] ; 3 uses
  %i.pd = icmp sgt i64 %i.pc, -1
  call void @llvm.assume(i1 %i.pd)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc27.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc27.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit124.i.i.i.i
  %.urem.i.i.i.i = add nsw i8 %i.op, -10
  %i.pe = select i1 %i.oq, i8 %i.op, i8 %.urem.i.i.i.i
  %i.pf = or disjoint i8 %i.pe, 48
  %i.pg = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2251, !noalias !2236, !nonnull !5, !noundef !5
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.pc
  store i8 %i.pf, ptr %i.ph, align 1, !noalias !2238
  %i.pi = add nuw i64 %i.pc, 1
  store i64 %i.pi, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2251, !noalias !2236
  br label %.critedge.i.i.i

bb.ag:                                            ; preds = %bb.i
  br i1 %i.dw, label %bb.ah, label %.invoke290.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.pj = load i8, ptr %i.dx, align 1, !noalias !2249, !noundef !5
  %i.pk = add i8 %i.pj, %i.el
  %i.pl = lshr i8 %i.pk, 1
  %i.pm = and i8 %i.pl, 31                        ; 3 uses
  %i.pn = udiv i8 %i.pm, 10
  %i.po = urem i8 %i.pm, 10
  %i.pp = icmp samesign ult i8 %i.pm, 10
  br i1 %i.pp, label %bb.ai, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i125.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i126.i.i.i.i
    i8 2, label %bb.aj
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i125.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i126.i.i.i.i: ; preds = %bb.ai
  %.pre.i128.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2254, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit130.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i125.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %i.pq = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2255, !noalias !2236, !noundef !5 ; 3 uses
  %i.pr = icmp sgt i64 %i.pq, -1
  call void @llvm.assume(i1 %i.pr)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc29.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc29.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i125.i.i.i.i
  %i.ps = or disjoint i8 %i.pn, 48
  %i.pt = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2255, !noalias !2236, !nonnull !5, !noundef !5
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pq
  store i8 %i.ps, ptr %i.pu, align 1, !noalias !2238
  %i.pv = add nuw i64 %i.pq, 1                    ; 2 uses
  store i64 %i.pv, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2255, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit130.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.pw = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2256, !noalias !2236, !noundef !5 ; 3 uses
  %i.px = icmp sgt i64 %i.pw, -1
  call void @llvm.assume(i1 %i.px)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc30.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc30.i.i.i:                                   ; preds = %bb.aj
  %i.py = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2256, !noalias !2236, !nonnull !5, !noundef !5
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.pw
  store i8 32, ptr %i.pz, align 1, !noalias !2238
  %i.qa = add nuw i64 %i.pw, 1                    ; 2 uses
  store i64 %i.qa, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2256, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit130.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit130.i.i.i.i: ; preds = %.noexc30.i.i.i, %.noexc29.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i126.i.i.i.i
  %i.qb = phi i64 [ %.pre.i128.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i126.i.i.i.i ], [ %i.qa, %.noexc30.i.i.i ], [ %i.pv, %.noexc29.i.i.i ] ; 3 uses
  %i.qc = icmp sgt i64 %i.qb, -1
  call void @llvm.assume(i1 %i.qc)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc31.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc31.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit130.i.i.i.i
  %i.qd = or disjoint i8 %i.po, 48
  %i.qe = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2254, !noalias !2236, !nonnull !5, !noundef !5
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qb
  store i8 %i.qd, ptr %i.qf, align 1, !noalias !2238
  %i.qg = add nuw i64 %i.qb, 1
  store i64 %i.qg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2254, !noalias !2236
  br label %.critedge.i.i.i

bb.ak:                                            ; preds = %bb.i
  br i1 %i.hn, label %bb.al, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i132.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i133.i.i.i.i
    i8 2, label %bb.am
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i132.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i133.i.i.i.i: ; preds = %bb.al
  %.pre.i135.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2257, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit137.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i132.i.i.i.i: ; preds = %bb.al, %bb.ak
  %i.qh = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2258, !noalias !2236, !noundef !5 ; 3 uses
  %i.qi = icmp sgt i64 %i.qh, -1
  call void @llvm.assume(i1 %i.qi)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc33.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc33.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i132.i.i.i.i
  %i.qj = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2258, !noalias !2236, !nonnull !5, !noundef !5
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.qh
  store i8 %i.ho, ptr %i.qk, align 1, !noalias !2238
  %i.ql = add nuw i64 %i.qh, 1                    ; 2 uses
  store i64 %i.ql, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2258, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit137.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.qm = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2259, !noalias !2236, !noundef !5 ; 3 uses
  %i.qn = icmp sgt i64 %i.qm, -1
  call void @llvm.assume(i1 %i.qn)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc34.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc34.i.i.i:                                   ; preds = %bb.am
  %i.qo = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2259, !noalias !2236, !nonnull !5, !noundef !5
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qm
  store i8 32, ptr %i.qp, align 1, !noalias !2238
  %i.qq = add nuw i64 %i.qm, 1                    ; 2 uses
  store i64 %i.qq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2259, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit137.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit137.i.i.i.i: ; preds = %.noexc34.i.i.i, %.noexc33.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i133.i.i.i.i
  %i.qr = phi i64 [ %.pre.i135.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i133.i.i.i.i ], [ %i.qq, %.noexc34.i.i.i ], [ %i.ql, %.noexc33.i.i.i ] ; 3 uses
  %i.qs = icmp sgt i64 %i.qr, -1
  call void @llvm.assume(i1 %i.qs)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc35.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc35.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit137.i.i.i.i
  %i.qt = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2257, !noalias !2236, !nonnull !5, !noundef !5
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qr
  store i8 %21, ptr %i.qu, align 1, !noalias !2238
  %i.qv = add nuw i64 %i.qr, 1
  store i64 %i.qv, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2257, !noalias !2236
  br label %.critedge.i.i.i

bb.an:                                            ; preds = %bb.i
  br i1 %i.hf, label %bb.ao, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i144.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i145.i.i.i.i
    i8 2, label %bb.ap
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i144.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i145.i.i.i.i: ; preds = %bb.ao
  %.pre.i147.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2260, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit149.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i144.i.i.i.i: ; preds = %bb.ao, %bb.an
  %i.qw = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2261, !noalias !2236, !noundef !5 ; 3 uses
  %i.qx = icmp sgt i64 %i.qw, -1
  call void @llvm.assume(i1 %i.qx)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc36.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc36.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i144.i.i.i.i
  %i.qy = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2261, !noalias !2236, !nonnull !5, !noundef !5
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qw
  store i8 %i.hg, ptr %i.qz, align 1, !noalias !2238
  %i.ra = add nuw i64 %i.qw, 1                    ; 2 uses
  store i64 %i.ra, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2261, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit149.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.rb = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2262, !noalias !2236, !noundef !5 ; 3 uses
  %i.rc = icmp sgt i64 %i.rb, -1
  call void @llvm.assume(i1 %i.rc)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc37.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc37.i.i.i:                                   ; preds = %bb.ap
  %i.rd = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2262, !noalias !2236, !nonnull !5, !noundef !5
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rb
  store i8 32, ptr %i.re, align 1, !noalias !2238
  %i.rf = add nuw i64 %i.rb, 1                    ; 2 uses
  store i64 %i.rf, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2262, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit149.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit149.i.i.i.i: ; preds = %.noexc37.i.i.i, %.noexc36.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i145.i.i.i.i
  %i.rg = phi i64 [ %.pre.i147.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i145.i.i.i.i ], [ %i.rf, %.noexc37.i.i.i ], [ %i.ra, %.noexc36.i.i.i ] ; 3 uses
  %i.rh = icmp sgt i64 %i.rg, -1
  call void @llvm.assume(i1 %i.rh)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc38.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc38.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit149.i.i.i.i
  %i.ri = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2260, !noalias !2236, !nonnull !5, !noundef !5
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rg
  store i8 %20, ptr %i.rj, align 1, !noalias !2238
  %i.rk = add nuw i64 %i.rg, 1
  store i64 %i.rk, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2260, !noalias !2236
  br label %.critedge.i.i.i

bb.aq:                                            ; preds = %bb.i
  %i.rl = invoke noundef i32 @_RNvMNtNtCsff3niNi8lqe_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.dy, i32 noundef %i.dk, i8 noundef %i.gz)
          to label %.noexc39.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc39.i.i.i:                                   ; preds = %bb.aq
  %i.rm = lshr i32 %i.rl, 4
  %i.rn = trunc i32 %i.rm to i8
  %i.ro = and i8 %i.rn, 63                        ; 3 uses
  %i.rp = udiv i8 %i.ro, 10
  %i.rq = urem i8 %i.ro, 10
  %i.rr = icmp samesign ult i8 %i.ro, 10
  br i1 %i.rr, label %bb.ar, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i150.i.i.i.i

bb.ar:                                            ; preds = %.noexc39.i.i.i
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i151.i.i.i.i
    i8 2, label %bb.as
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i150.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i151.i.i.i.i: ; preds = %bb.ar
  %.pre.i153.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2263, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit155.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i150.i.i.i.i: ; preds = %bb.ar, %.noexc39.i.i.i
  %i.rs = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2264, !noalias !2236, !noundef !5 ; 3 uses
  %i.rt = icmp sgt i64 %i.rs, -1
  call void @llvm.assume(i1 %i.rt)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc40.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc40.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i150.i.i.i.i
  %i.ru = or disjoint i8 %i.rp, 48
  %i.rv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2264, !noalias !2236, !nonnull !5, !noundef !5
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.rs
  store i8 %i.ru, ptr %i.rw, align 1, !noalias !2238
  %i.rx = add nuw i64 %i.rs, 1                    ; 2 uses
  store i64 %i.rx, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2264, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit155.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ry = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2265, !noalias !2236, !noundef !5 ; 3 uses
  %i.rz = icmp sgt i64 %i.ry, -1
  call void @llvm.assume(i1 %i.rz)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc41.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc41.i.i.i:                                   ; preds = %bb.as
  %i.sa = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2265, !noalias !2236, !nonnull !5, !noundef !5
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.ry
  store i8 32, ptr %i.sb, align 1, !noalias !2238
  %i.sc = add nuw i64 %i.ry, 1                    ; 2 uses
  store i64 %i.sc, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2265, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit155.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit155.i.i.i.i: ; preds = %.noexc41.i.i.i, %.noexc40.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i151.i.i.i.i
  %i.sd = phi i64 [ %.pre.i153.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i151.i.i.i.i ], [ %i.sc, %.noexc41.i.i.i ], [ %i.rx, %.noexc40.i.i.i ] ; 3 uses
  %i.se = icmp sgt i64 %i.sd, -1
  call void @llvm.assume(i1 %i.se)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc42.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc42.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit155.i.i.i.i
  %i.sf = or disjoint i8 %i.rq, 48
  %i.sg = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2263, !noalias !2236, !nonnull !5, !noundef !5
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.sd
  store i8 %i.sf, ptr %i.sh, align 1, !noalias !2238
  %i.si = add nuw i64 %i.sd, 1
  store i64 %i.si, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2263, !noalias !2236
  br label %.critedge.i.i.i

switch.lookup:                                    ; preds = %bb.i
  %i.sj = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2266, !noalias !2236, !noundef !5 ; 3 uses
  %i.sk = icmp sgt i64 %i.sj, -1
  call void @llvm.assume(i1 %i.sk)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc43.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc43.i.i.i:                                   ; preds = %switch.lookup
  %i.sl = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2266, !noalias !2236, !nonnull !5, !noundef !5
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sj
  store i8 %switch.masked, ptr %i.sm, align 1, !noalias !2238
  %i.sn = add nuw i64 %i.sj, 1
  store i64 %i.sn, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2266, !noalias !2236
  br label %.critedge.i.i.i

switch.lookup.i.i.i.i:                            ; preds = %bb.i
  %i.so = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2267, !noalias !2236, !noundef !5 ; 3 uses
  %i.sp = icmp sgt i64 %i.so, -1
  call void @llvm.assume(i1 %i.sp)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc44.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc44.i.i.i:                                   ; preds = %switch.lookup.i.i.i.i
  %i.sq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2267, !noalias !2236, !nonnull !5, !noundef !5
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.so
  store i8 %switch.offset.i.i.i.i, ptr %i.sr, align 1, !noalias !2238
  %i.ss = add nuw i64 %i.so, 1
  store i64 %i.ss, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2267, !noalias !2236
  br label %.critedge.i.i.i

bb.at:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !2249
  store i64 %i.gv, ptr %i.bc, align 8, !noalias !2268
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i
    i8 1, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i.i.i
    i8 2, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i.i.i
  ]

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !2268
  store ptr %i.bc, ptr %i.bb, align 8, !noalias !2268
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2268
  %i.st = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @52, ptr noundef nonnull %i.bb)
          to label %.noexc45.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc45.i.i.i:                                   ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2249
  br i1 %i.st, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i.i.i: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !2268
  store ptr %i.bc, ptr %i.ba, align 8, !noalias !2268
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2268
  store ptr null, ptr %i.gx, align 8, !noalias !2268
  store i16 3, ptr %.sroa.439.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2268
  %i.su = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @80, ptr noundef nonnull %i.ba)
          to label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i.i.i: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !2268
  store ptr %i.bc, ptr %i.az, align 8, !noalias !2268
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2268
  store ptr null, ptr %i.gw, align 8, !noalias !2268
  store i16 3, ptr %.sroa.445.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2268
  %i.sv = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @81, ptr noundef nonnull %i.az)
          to label %.noexc47.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc47.i.i.i:                                   ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !2268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2249
  br i1 %i.sv, label %.loopexit.i.i, label %.critedge.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i: ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2249
  br i1 %i.su, label %.loopexit.i.i, label %.critedge.i.i.i

bb.au:                                            ; preds = %bb.i
  br i1 %i.gt, label %bb.av, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i.i

bb.av:                                            ; preds = %bb.au
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i159.i.i.i.i
    i8 2, label %bb.aw
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i159.i.i.i.i: ; preds = %bb.av
  %.pre.i161.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2269, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit163.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i.i: ; preds = %bb.av, %bb.au
  %i.sw = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2270, !noalias !2236, !noundef !5 ; 3 uses
  %i.sx = icmp sgt i64 %i.sw, -1
  call void @llvm.assume(i1 %i.sx)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc48.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc48.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i.i
  %i.sy = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2270, !noalias !2236, !nonnull !5, !noundef !5
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.sw
  store i8 %i.gu, ptr %i.sz, align 1, !noalias !2238
  %i.ta = add nuw i64 %i.sw, 1                    ; 2 uses
  store i64 %i.ta, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2270, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit163.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.tb = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2271, !noalias !2236, !noundef !5 ; 3 uses
  %i.tc = icmp sgt i64 %i.tb, -1
  call void @llvm.assume(i1 %i.tc)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc49.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc49.i.i.i:                                   ; preds = %bb.aw
  %i.td = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2271, !noalias !2236, !nonnull !5, !noundef !5
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.tb
  store i8 32, ptr %i.te, align 1, !noalias !2238
  %i.tf = add nuw i64 %i.tb, 1                    ; 2 uses
  store i64 %i.tf, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2271, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit163.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit163.i.i.i.i: ; preds = %.noexc49.i.i.i, %.noexc48.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i159.i.i.i.i
  %i.tg = phi i64 [ %.pre.i161.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i159.i.i.i.i ], [ %i.tf, %.noexc49.i.i.i ], [ %i.ta, %.noexc48.i.i.i ] ; 3 uses
  %i.th = icmp sgt i64 %i.tg, -1
  call void @llvm.assume(i1 %i.th)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc50.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc50.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit163.i.i.i.i
  %i.ti = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2269, !noalias !2236, !nonnull !5, !noundef !5
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tg
  store i8 %12, ptr %i.tj, align 1, !noalias !2238
  %i.tk = add nuw i64 %i.tg, 1
  store i64 %i.tk, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2269, !noalias !2236
  br label %.critedge.i.i.i

bb.ax:                                            ; preds = %bb.i
  br i1 %i.gp, label %bb.ay, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i164.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i165.i.i.i.i
    i8 2, label %bb.az
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i164.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i165.i.i.i.i: ; preds = %bb.ay
  %.pre.i167.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2272, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit169.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i164.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %i.tl = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2273, !noalias !2236, !noundef !5 ; 3 uses
  %i.tm = icmp sgt i64 %i.tl, -1
  call void @llvm.assume(i1 %i.tm)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc51.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc51.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i164.i.i.i.i
  %i.tn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2273, !noalias !2236, !nonnull !5, !noundef !5
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tl
  store i8 %i.gq, ptr %i.to, align 1, !noalias !2238
  %i.tp = add nuw i64 %i.tl, 1                    ; 2 uses
  store i64 %i.tp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2273, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit169.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.tq = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2274, !noalias !2236, !noundef !5 ; 3 uses
  %i.tr = icmp sgt i64 %i.tq, -1
  call void @llvm.assume(i1 %i.tr)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc52.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc52.i.i.i:                                   ; preds = %bb.az
  %i.ts = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2274, !noalias !2236, !nonnull !5, !noundef !5
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.tq
  store i8 32, ptr %i.tt, align 1, !noalias !2238
  %i.tu = add nuw i64 %i.tq, 1                    ; 2 uses
  store i64 %i.tu, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2274, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit169.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit169.i.i.i.i: ; preds = %.noexc52.i.i.i, %.noexc51.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i165.i.i.i.i
  %i.tv = phi i64 [ %.pre.i167.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i165.i.i.i.i ], [ %i.tu, %.noexc52.i.i.i ], [ %i.tp, %.noexc51.i.i.i ] ; 3 uses
  %i.tw = icmp sgt i64 %i.tv, -1
  call void @llvm.assume(i1 %i.tw)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc53.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc53.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit169.i.i.i.i
  %i.tx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2272, !noalias !2236, !nonnull !5, !noundef !5
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.tv
  store i8 %i.gs, ptr %i.ty, align 1, !noalias !2238
  %i.tz = add nuw i64 %i.tv, 1
  store i64 %i.tz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2272, !noalias !2236
  br label %.critedge.i.i.i

bb.ba:                                            ; preds = %bb.i
  br i1 %i.gk, label %bb.bb, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i170.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i171.i.i.i.i
    i8 2, label %bb.bc
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i170.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i171.i.i.i.i: ; preds = %bb.bb
  %.pre.i173.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2275, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit175.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i170.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %i.ua = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2276, !noalias !2236, !noundef !5 ; 3 uses
  %i.ub = icmp sgt i64 %i.ua, -1
  call void @llvm.assume(i1 %i.ub)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc54.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc54.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i170.i.i.i.i
  %i.uc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2276, !noalias !2236, !nonnull !5, !noundef !5
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ua
  store i8 %i.ez, ptr %i.ud, align 1, !noalias !2238
  %i.ue = add nuw i64 %i.ua, 1                    ; 2 uses
  store i64 %i.ue, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2276, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit175.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.uf = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2277, !noalias !2236, !noundef !5 ; 3 uses
  %i.ug = icmp sgt i64 %i.uf, -1
  call void @llvm.assume(i1 %i.ug)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc55.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc55.i.i.i:                                   ; preds = %bb.bc
  %i.uh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2277, !noalias !2236, !nonnull !5, !noundef !5
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.uf
  store i8 32, ptr %i.ui, align 1, !noalias !2238
  %i.uj = add nuw i64 %i.uf, 1                    ; 2 uses
  store i64 %i.uj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2277, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit175.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit175.i.i.i.i: ; preds = %.noexc55.i.i.i, %.noexc54.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i171.i.i.i.i
  %i.uk = phi i64 [ %.pre.i173.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i171.i.i.i.i ], [ %i.uj, %.noexc55.i.i.i ], [ %i.ue, %.noexc54.i.i.i ] ; 3 uses
  %i.ul = icmp sgt i64 %i.uk, -1
  call void @llvm.assume(i1 %i.ul)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc56.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc56.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit175.i.i.i.i
  %i.um = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2275, !noalias !2236, !nonnull !5, !noundef !5
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.uk
  store i8 %14, ptr %i.un, align 1, !noalias !2238
  %i.uo = add nuw i64 %i.uk, 1
  store i64 %i.uo, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2275, !noalias !2236
  br label %.critedge.i.i.i

bb.bd:                                            ; preds = %bb.i
  br i1 %i.gj, label %bb.be, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i176.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i177.i.i.i.i
    i8 2, label %bb.bf
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i176.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i177.i.i.i.i: ; preds = %bb.be
  %.pre.i179.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2278, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit181.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i176.i.i.i.i: ; preds = %bb.be, %bb.bd
  %i.up = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2279, !noalias !2236, !noundef !5 ; 3 uses
  %i.uq = icmp sgt i64 %i.up, -1
  call void @llvm.assume(i1 %i.uq)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc57.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc57.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i176.i.i.i.i
  %i.ur = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2279, !noalias !2236, !nonnull !5, !noundef !5
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.up
  store i8 %i.fo, ptr %i.us, align 1, !noalias !2238
  %i.ut = add nuw i64 %i.up, 1                    ; 2 uses
  store i64 %i.ut, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2279, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit181.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.uu = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2280, !noalias !2236, !noundef !5 ; 3 uses
  %i.uv = icmp sgt i64 %i.uu, -1
  call void @llvm.assume(i1 %i.uv)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc58.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc58.i.i.i:                                   ; preds = %bb.bf
  %i.uw = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2280, !noalias !2236, !nonnull !5, !noundef !5
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.uu
  store i8 32, ptr %i.ux, align 1, !noalias !2238
  %i.uy = add nuw i64 %i.uu, 1                    ; 2 uses
  store i64 %i.uy, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2280, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit181.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit181.i.i.i.i: ; preds = %.noexc58.i.i.i, %.noexc57.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i177.i.i.i.i
  %i.uz = phi i64 [ %.pre.i179.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i177.i.i.i.i ], [ %i.uy, %.noexc58.i.i.i ], [ %i.ut, %.noexc57.i.i.i ] ; 3 uses
  %i.va = icmp sgt i64 %i.uz, -1
  call void @llvm.assume(i1 %i.va)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc59.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc59.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit181.i.i.i.i
  %i.vb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2278, !noalias !2236, !nonnull !5, !noundef !5
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.uz
  store i8 %i.ib, ptr %i.vc, align 1, !noalias !2238
  %i.vd = add nuw i64 %i.uz, 1
  store i64 %i.vd, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2278, !noalias !2236
  br label %.critedge.i.i.i

bb.bg:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !2249
  store i64 %i.gg, ptr %i.ay, align 8, !noalias !2281
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i189.i.i.i.i
    i8 1, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i186.i.i.i.i
    i8 2, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i182.i.i.i.i
  ]

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i189.i.i.i.i: ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2281
  store ptr %i.ay, ptr %i.ax, align 8, !noalias !2281
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i190.i.i.i.i, align 8, !noalias !2281
  %i.ve = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @52, ptr noundef nonnull %i.ax)
          to label %.noexc60.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc60.i.i.i:                                   ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i189.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2249
  br i1 %i.ve, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i186.i.i.i.i: ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2281
  store ptr %i.ay, ptr %i.aw, align 8, !noalias !2281
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i187.i.i.i.i, align 8, !noalias !2281
  store ptr null, ptr %i.gi, align 8, !noalias !2281
  store i16 9, ptr %.sroa.439.0..sroa_idx.i188.i.i.i.i, align 8, !noalias !2281
  %i.vf = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @80, ptr noundef nonnull %i.aw)
          to label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit192.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i182.i.i.i.i: ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2281
  store ptr %i.ay, ptr %i.av, align 8, !noalias !2281
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i183.i.i.i.i, align 8, !noalias !2281
  store ptr null, ptr %i.gh, align 8, !noalias !2281
  store i16 9, ptr %.sroa.445.0..sroa_idx.i184.i.i.i.i, align 8, !noalias !2281
  %i.vg = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @81, ptr noundef nonnull %i.av)
          to label %.noexc62.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc62.i.i.i:                                   ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i182.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2249
  br i1 %i.vg, label %.loopexit.i.i, label %.critedge.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit192.i.i.i.i: ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i186.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2249
  br i1 %i.vf, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvMNtNtCsff3niNi8lqe_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2249
  store i64 %i.in, ptr %i.au, align 8, !noalias !2282
  switch i8 %i.iw, label %default.unreachable [
    i8 0, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i200.i.i.i.i
    i8 1, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i197.i.i.i.i
    i8 2, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i193.i.i.i.i
  ]

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i200.i.i.i.i: ; preds = %_RNvMNtNtCsff3niNi8lqe_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2282
  store ptr %i.au, ptr %i.at, align 8, !noalias !2282
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i201.i.i.i.i, align 8, !noalias !2282
  %i.vh = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @52, ptr noundef nonnull %i.at)
          to label %.noexc63.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc63.i.i.i:                                   ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i200.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2249
  br i1 %i.vh, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i197.i.i.i.i: ; preds = %_RNvMNtNtCsff3niNi8lqe_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2282
  store ptr %i.au, ptr %i.as, align 8, !noalias !2282
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i198.i.i.i.i, align 8, !noalias !2282
  store ptr null, ptr %i.gf, align 8, !noalias !2282
  store i16 9, ptr %.sroa.439.0..sroa_idx.i199.i.i.i.i, align 8, !noalias !2282
  %i.vi = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @80, ptr noundef nonnull %i.as)
          to label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit203.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i193.i.i.i.i: ; preds = %_RNvMNtNtCsff3niNi8lqe_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2282
  store ptr %i.au, ptr %i.ar, align 8, !noalias !2282
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i194.i.i.i.i, align 8, !noalias !2282
  store ptr null, ptr %i.ge, align 8, !noalias !2282
  store i16 9, ptr %.sroa.445.0..sroa_idx.i195.i.i.i.i, align 8, !noalias !2282
  %i.vj = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @81, ptr noundef nonnull %i.ar)
          to label %.noexc65.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc65.i.i.i:                                   ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i193.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2249
  br i1 %i.vj, label %.loopexit.i.i, label %.critedge.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit203.i.i.i.i: ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i197.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2249
  br i1 %i.vi, label %.loopexit.i.i, label %.critedge.i.i.i

bb.bh:                                            ; preds = %bb.h
  %.val5.i.i.i = load i8, ptr %i.cp, align 1, !range !2283, !noalias !2223, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  %i.vk = add nsw i8 %.val5.i.i.i, -4
  %i.vl = icmp samesign ugt i8 %.val5.i.i.i, 3
  %narrow.i67.i.i.i = select i1 %i.vl, i8 %i.vk, i8 19 ; 4 uses
  switch i8 %narrow.i67.i.i.i, label %bb.bi [
    i8 0, label %bb.bk
    i8 1, label %bb.bm
    i8 2, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit156.i.i.i.i
    i8 3, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit159.i.i.i.i
    i8 4, label %bb.bo
    i8 5, label %bb.cc
    i8 6, label %bb.cd
    i8 7, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit180.i.i.i.i
    i8 8, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit185.i.i.i.i
    i8 9, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit190.i.i.i.i
    i8 10, label %bb.bj
    i8 19, label %bb.cg
  ]

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not.i66.i.i.i, label %.loopexit.i.i, label %bb.ck

bb.bj:                                            ; preds = %bb.bh
  br i1 %.not.i66.i.i.i, label %.loopexit.i.i, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit194.i.i.i.i

bb.bk:                                            ; preds = %bb.bh
  br i1 %i.dw, label %bb.bl, label %.invoke290.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.vm = load i8, ptr %i.dx, align 1, !noalias !2285, !noundef !5
  %i.vn = zext i8 %i.vm to i32
  %i.vo = add nuw nsw i32 %i.du, %i.vn
  %i.vp = lshr i32 %i.vo, 6
  %i.vq = add nsw i32 %i.vp, -1                   ; 2 uses
  %i.vr = zext i32 %i.vq to i64                   ; 2 uses
  %i.vs = icmp ult i32 %i.vq, 12
  br i1 %i.vs, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i.i, label %.invoke290.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i.i: ; preds = %bb.bl
  %i.vt = getelementptr inbounds nuw [16 x i8], ptr @12, i64 %i.vr
  %i.vu = load ptr, ptr %i.vt, align 8, !noalias !2285, !nonnull !5, !noundef !5
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 3)
          to label %.noexc76.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc76.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i.i
  %i.vv = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2286, !noalias !2287, !noundef !5 ; 2 uses
  %i.vw = icmp sgt i64 %i.vv, -1
  call void @llvm.assume(i1 %i.vw)
  %i.vx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2286, !noalias !2287, !nonnull !5, !noundef !5
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.vv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.vy, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.vu, i64 3, i1 false), !noalias !2288
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2286, !noalias !2287
  %i.vz = add i64 %.pre.i.i.i.i.i.i.i, 3
  store i64 %i.vz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2286, !noalias !2287
  br label %.critedge.i.i.i

bb.bm:                                            ; preds = %bb.bh
  br i1 %i.dw, label %bb.bn, label %.invoke290.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.wa = load i8, ptr %i.dx, align 1, !noalias !2285, !noundef !5
  %i.wb = zext i8 %i.wa to i32
  %i.wc = add nuw nsw i32 %i.du, %i.wb
  %i.wd = lshr i32 %i.wc, 6
  %i.we = add nsw i32 %i.wd, -1                   ; 2 uses
  %i.wf = zext i32 %i.we to i64                   ; 2 uses
  %i.wg = icmp ult i32 %i.we, 12
  br i1 %i.wg, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit153.i.i.i.i, label %.invoke290.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit153.i.i.i.i: ; preds = %bb.bn
  %i.wh = getelementptr inbounds nuw [16 x i8], ptr @29, i64 %i.wf ; 2 uses
  %i.wi = load ptr, ptr %i.wh, align 8, !noalias !2285, !nonnull !5, !noundef !5
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.wk = load i64, ptr %i.wj, align 8, !noalias !2285, !noundef !5 ; 3 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %i.wk)
          to label %.noexc79.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc79.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit153.i.i.i.i
  %i.wl = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2289, !noalias !2290, !noundef !5 ; 2 uses
  %i.wm = icmp sgt i64 %i.wl, -1
  call void @llvm.assume(i1 %i.wm)
  %i.wn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2289, !noalias !2290, !nonnull !5, !noundef !5
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.wl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wo, ptr nonnull readonly align 1 %i.wi, i64 %i.wk, i1 false), !noalias !2288
  %.pre.i.i.i152.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2289, !noalias !2290
  %i.wp = add i64 %.pre.i.i.i152.i.i.i.i, %i.wk
  store i64 %i.wp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2289, !noalias !2290
  br label %.critedge.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit156.i.i.i.i: ; preds = %bb.bh
  %i.wq = load ptr, ptr %i.ds, align 8, !noalias !2285, !nonnull !5, !noundef !5
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 3)
          to label %.noexc81.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc81.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit156.i.i.i.i
  %i.wr = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2291, !noalias !2292, !noundef !5 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http4date14to_date_string:bb.a

bb.cm:                                            ; preds = %bb.ck, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2285
  %i.adc = icmp eq i8 %narrow.i67.i.i.i, 16
  %spec.select147.i.i.i.i = zext i1 %i.adc to i8
  store i8 1, ptr %i.fp, align 1, !noalias !2285
  store i8 2, ptr %i.fq, align 1, !noalias !2285
  store i8 %spec.select147.i.i.i.i, ptr %i.v, align 1, !noalias !2285
  store i8 1, ptr %i.fr, align 1, !noalias !2285
  %i.add = invoke fastcc noundef zeroext i1 @_RINvMs0_NtNtCsff3niNi8lqe_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i32 noundef 0)
          to label %.noexc107.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc107.i.i.i:                                  ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2285
  br i1 %i.add, label %.loopexit.i.i, label %.critedge.i.i.i

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  br i1 %or.cond.i122.i.i.i, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i154.i.i.i, label %.loopexit.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i154.i.i.i: ; preds = %bb.cn
  %i.ade = load ptr, ptr %i.ds, align 8, !noalias !2342, !nonnull !5, !noundef !5
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 3)
          to label %.noexc159.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc159.i.i.i:                                  ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i154.i.i.i
  %i.adf = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2343, !noalias !2344, !noundef !5 ; 2 uses
  %i.adg = icmp sgt i64 %i.adf, -1
  call void @llvm.assume(i1 %i.adg)
  %i.adh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2343, !noalias !2344, !nonnull !5, !noundef !5
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.adf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.adi, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ade, i64 3, i1 false), !noalias !2345
  %.pre.i.i.i.i157.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2343, !noalias !2344
  %i.adj = add i64 %.pre.i.i.i.i157.i.i.i, 3
  store i64 %i.adj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2343, !noalias !2344
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 2)
          to label %.noexc160.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc160.i.i.i:                                  ; preds = %.noexc159.i.i.i
  %i.adk = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2346, !noalias !2347, !noundef !5 ; 2 uses
  %i.adl = icmp sgt i64 %i.adk, -1
  call void @llvm.assume(i1 %i.adl)
  %i.adm = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2346, !noalias !2347, !nonnull !5, !noundef !5
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 %i.adk
  store i16 8236, ptr %i.adn, align 1, !noalias !2345
  %.pre.i.i.i11.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2346, !noalias !2347 ; 3 uses
  %i.ado = add i64 %.pre.i.i.i11.i.i.i.i, 2       ; 4 uses
  store i64 %i.ado, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2346, !noalias !2347
  br i1 %i.dw, label %bb.co, label %.invoke290.i.i.i

bb.co:                                            ; preds = %.noexc160.i.i.i
  %i.adp = load i8, ptr %i.dx, align 1, !noalias !2342, !noundef !5
  %i.adq = zext i8 %i.adp to i32                  ; 2 uses
  %i.adr = add nuw nsw i32 %i.dt, %i.adq
  %i.ads = lshr i32 %i.adr, 1
  %i.adt = and i32 %i.ads, 31                     ; 3 uses
  %i.adu = icmp samesign ult i32 %i.adt, 10
  %i.adv = icmp sgt i64 %i.ado, -1
  call void @llvm.assume(i1 %i.adv)
  br i1 %i.adu, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc162.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc162.i.i.i:                                  ; preds = %bb.cp
  %i.adw = trunc nuw nsw i32 %i.adt to i8         ; 2 uses
  %i.adx = udiv i8 %i.adw, 10
  %i.ady = urem i8 %i.adw, 10
  %i.adz = or disjoint i8 %i.adx, 48
  %i.aea = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2348, !noalias !2349, !nonnull !5, !noundef !5
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 %i.ado
  store i8 %i.adz, ptr %i.aeb, align 1, !noalias !2345
  %i.aec = add i64 %.pre.i.i.i11.i.i.i.i, 3       ; 2 uses
  store i64 %i.aec, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2348, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc163.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc163.i.i.i:                                  ; preds = %.noexc162.i.i.i
  %i.aed = or disjoint i8 %i.ady, 48
  %i.aee = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2350, !noalias !2349, !nonnull !5, !noundef !5
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.aec
  store i8 %i.aed, ptr %i.aef, align 1, !noalias !2345
  br label %bb.cq

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i: ; preds = %bb.co
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc164.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc164.i.i.i:                                  ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i
  %i.aeg = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2351, !noalias !2349, !nonnull !5, !noundef !5
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 %i.ado
  %i.aei = trunc nuw nsw i32 %i.adt to i8
  %i.aej = or disjoint i8 %i.aei, 48
  store i8 %i.aej, ptr %i.aeh, align 1, !noalias !2345
  br label %bb.cq

bb.cq:                                            ; preds = %.noexc164.i.i.i, %.noexc163.i.i.i
  %.sink.i.i.i.i = phi i64 [ 4, %.noexc163.i.i.i ], [ 3, %.noexc164.i.i.i ]
  %i.aek = add i64 %.sink.i.i.i.i, %.pre.i.i.i11.i.i.i.i ; 4 uses
  store i64 %i.aek, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2352, !noalias !2349
  %i.ael = icmp sgt i64 %i.aek, -1
  call void @llvm.assume(i1 %i.ael)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc165.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc165.i.i.i:                                  ; preds = %bb.cq
  %i.aem = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2353, !noalias !2349, !nonnull !5, !noundef !5
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.aek
  store i8 32, ptr %i.aen, align 1, !noalias !2345
  %i.aeo = add nuw i64 %i.aek, 1
  store i64 %i.aeo, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2353, !noalias !2349
  %i.aep = add nuw nsw i32 %i.du, %i.adq
  %i.aeq = lshr i32 %i.aep, 6
  %i.aer = add nsw i32 %i.aeq, -1                 ; 2 uses
  %i.aes = zext i32 %i.aer to i64                 ; 2 uses
  %i.aet = icmp ult i32 %i.aer, 12
  br i1 %i.aet, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit15.i.i.i.i, label %.invoke290.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit15.i.i.i.i: ; preds = %.noexc165.i.i.i
  %i.aeu = getelementptr inbounds nuw [16 x i8], ptr @12, i64 %i.aes
  %i.aev = load ptr, ptr %i.aeu, align 8, !noalias !2342, !nonnull !5, !noundef !5
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 3)
          to label %.noexc166.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc166.i.i.i:                                  ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit15.i.i.i.i
  %i.aew = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2354, !noalias !2355, !noundef !5 ; 2 uses
  %i.aex = icmp sgt i64 %i.aew, -1
  call void @llvm.assume(i1 %i.aex)
  %i.aey = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2354, !noalias !2355, !nonnull !5, !noundef !5
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 %i.aew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aez, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.aev, i64 3, i1 false), !noalias !2345
  %.pre.i.i.i14.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2354, !noalias !2355 ; 16 uses
  %i.afa = add nsw i64 %.pre.i.i.i14.i.i.i.i, 3   ; 2 uses
  store i64 %i.afa, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2354, !noalias !2355
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc167.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc167.i.i.i:                                  ; preds = %.noexc166.i.i.i
  %i.afb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2356, !noalias !2349, !nonnull !5, !noundef !5
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.afa
  store i8 32, ptr %i.afc, align 1, !noalias !2345
  %i.afd = add nsw i64 %.pre.i.i.i14.i.i.i.i, 4   ; 2 uses
  store i64 %i.afd, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2356, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc168.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc168.i.i.i:                                  ; preds = %.noexc167.i.i.i
  %i.afe = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2357, !noalias !2349, !nonnull !5, !noundef !5
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 %i.afd
  store i8 %i.ec, ptr %i.aff, align 1, !noalias !2345
  %i.afg = add i64 %.pre.i.i.i14.i.i.i.i, 5       ; 2 uses
  store i64 %i.afg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2357, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc169.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc169.i.i.i:                                  ; preds = %.noexc168.i.i.i
  %i.afh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2358, !noalias !2349, !nonnull !5, !noundef !5
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afg
  store i8 %i.ee, ptr %i.afi, align 1, !noalias !2345
  %i.afj = add nsw i64 %.pre.i.i.i14.i.i.i.i, 6   ; 2 uses
  store i64 %i.afj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2358, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc170.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc170.i.i.i:                                  ; preds = %.noexc169.i.i.i
  %i.afk = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2359, !noalias !2349, !nonnull !5, !noundef !5
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 %i.afj
  store i8 %i.ei, ptr %i.afl, align 1, !noalias !2345
  %i.afm = add i64 %.pre.i.i.i14.i.i.i.i, 7       ; 2 uses
  store i64 %i.afm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2359, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc171.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc171.i.i.i:                                  ; preds = %.noexc170.i.i.i
  %i.afn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2360, !noalias !2349, !nonnull !5, !noundef !5
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 %i.afm
  store i8 %i.ek, ptr %i.afo, align 1, !noalias !2345
  %i.afp = add nsw i64 %.pre.i.i.i14.i.i.i.i, 8   ; 2 uses
  store i64 %i.afp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2360, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc172.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc172.i.i.i:                                  ; preds = %.noexc171.i.i.i
  %i.afq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2361, !noalias !2349, !nonnull !5, !noundef !5
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 %i.afp
  store i8 32, ptr %i.afr, align 1, !noalias !2345
  %i.afs = add i64 %.pre.i.i.i14.i.i.i.i, 9       ; 3 uses
  store i64 %i.afs, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2361, !noalias !2349
  br i1 %i.eq, label %.loopexit.i.i, label %bb.cr

bb.cr:                                            ; preds = %.noexc172.i.i.i
  %i.aft = icmp sgt i64 %i.afs, -1
  call void @llvm.assume(i1 %i.aft)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc174.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc174.i.i.i:                                  ; preds = %bb.cr
  %i.afu = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2362, !noalias !2349, !nonnull !5, !noundef !5
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 %i.afs
  store i8 %i.ew, ptr %i.afv, align 1, !noalias !2345
  %i.afw = add i64 %.pre.i.i.i14.i.i.i.i, 10      ; 2 uses
  store i64 %i.afw, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2362, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc175.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc175.i.i.i:                                  ; preds = %.noexc174.i.i.i
  %i.afx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2363, !noalias !2349, !nonnull !5, !noundef !5
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 %i.afw
  store i8 %12, ptr %i.afy, align 1, !noalias !2345
  %i.afz = add nsw i64 %.pre.i.i.i14.i.i.i.i, 11  ; 2 uses
  store i64 %i.afz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2363, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc176.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc176.i.i.i:                                  ; preds = %.noexc175.i.i.i
  %i.aga = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2364, !noalias !2349, !nonnull !5, !noundef !5
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 %i.afz
  store i8 58, ptr %i.agb, align 1, !noalias !2345
  %i.agc = add nsw i64 %.pre.i.i.i14.i.i.i.i, 12  ; 2 uses
  store i64 %i.agc, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2364, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc177.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc177.i.i.i:                                  ; preds = %.noexc176.i.i.i
  %i.agd = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2365, !noalias !2349, !nonnull !5, !noundef !5
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.agc
  store i8 %i.ez, ptr %i.age, align 1, !noalias !2345
  %i.agf = add i64 %.pre.i.i.i14.i.i.i.i, 13      ; 2 uses
  store i64 %i.agf, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2365, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc178.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc178.i.i.i:                                  ; preds = %.noexc177.i.i.i
  %i.agg = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2366, !noalias !2349, !nonnull !5, !noundef !5
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 %i.agf
  store i8 %14, ptr %i.agh, align 1, !noalias !2345
  %i.agi = add nsw i64 %.pre.i.i.i14.i.i.i.i, 14  ; 2 uses
  store i64 %i.agi, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2366, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc179.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc179.i.i.i:                                  ; preds = %.noexc178.i.i.i
  %i.agj = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2367, !noalias !2349, !nonnull !5, !noundef !5
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 %i.agi
  store i8 58, ptr %i.agk, align 1, !noalias !2345
  %i.agl = add nsw i64 %.pre.i.i.i14.i.i.i.i, 15  ; 2 uses
  store i64 %i.agl, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2367, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc180.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc180.i.i.i:                                  ; preds = %.noexc179.i.i.i
  %i.agm = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2368, !noalias !2349, !nonnull !5, !noundef !5
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.agl
  store i8 %i.fo, ptr %i.agn, align 1, !noalias !2345
  %i.ago = add i64 %.pre.i.i.i14.i.i.i.i, 16      ; 2 uses
  store i64 %i.ago, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2368, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc181.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc181.i.i.i:                                  ; preds = %.noexc180.i.i.i
  %i.agp = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2369, !noalias !2349, !nonnull !5, !noundef !5
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 %i.ago
  store i8 %i.ib, ptr %i.agq, align 1, !noalias !2345
  %i.agr = add nsw i64 %.pre.i.i.i14.i.i.i.i, 17  ; 2 uses
  store i64 %i.agr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2369, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc182.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc182.i.i.i:                                  ; preds = %.noexc181.i.i.i
  %i.ags = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2370, !noalias !2349, !nonnull !5, !noundef !5
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 %i.agr
  store i8 32, ptr %i.agt, align 1, !noalias !2345
  %i.agu = add i64 %.pre.i.i.i14.i.i.i.i, 18
  store i64 %i.agu, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2370, !noalias !2349
  %i.agv = invoke fastcc noundef zeroext i1 @_RINvMs0_NtNtCsff3niNi8lqe_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) @66, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i32 noundef 0)
          to label %_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

bb.cs:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !2371)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2372
  store i32 %i.dy, ptr %i.q, align 4, !noalias !2372
  br i1 %or.cond.i122.i.i.i, label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit33.i.i.i.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i: ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2372
  store ptr %i.q, ptr %i.p, align 8, !noalias !2372
  store ptr @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !2372
  %i.agw = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @67, ptr noundef nonnull %i.p)
          to label %.noexc127.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc127.i.i.i:                                  ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2372
  br i1 %i.agw, label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.noexc127.i.i.i
  %.pre.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2373, !noalias !2374
  br label %bb.cu

bb.cu:                                            ; preds = %.noexc132.i.i.i, %bb.ct
  %i.agx = phi i64 [ %i.ahp, %.noexc132.i.i.i ], [ %.pre.i.i.i.i, %bb.ct ] ; 17 uses
  %i.agy = icmp sgt i64 %i.agx, -1
  call void @llvm.assume(i1 %i.agy)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc128.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc128.i.i.i:                                  ; preds = %bb.cu
  %i.agz = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2373, !noalias !2374, !nonnull !5, !noundef !5
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 %i.agx
  store i8 45, ptr %i.aha, align 1, !noalias !2375
  %i.ahb = add nuw i64 %i.agx, 1                  ; 3 uses
  store i64 %i.ahb, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2373, !noalias !2374
  br i1 %i.dw, label %bb.cv, label %.invoke290.i.i.i

_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit33.i.i.i.i: ; preds = %bb.cs
  %i.ahc = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2376, !noalias !2374, !noundef !5 ; 6 uses
  %i.ahd = icmp sgt i64 %i.ahc, -1
  call void @llvm.assume(i1 %i.ahd)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc129.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc129.i.i.i:                                  ; preds = %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit33.i.i.i.i
  %i.ahe = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2376, !noalias !2374, !nonnull !5, !noundef !5
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %i.ahc
  store i8 %i.ec, ptr %i.ahf, align 1, !noalias !2375
  %i.ahg = add nuw nsw i64 %i.ahc, 1              ; 2 uses
  store i64 %i.ahg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2376, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc130.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc130.i.i.i:                                  ; preds = %.noexc129.i.i.i
  %i.ahh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2377, !noalias !2374, !nonnull !5, !noundef !5
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 %i.ahg
  store i8 %i.ee, ptr %i.ahi, align 1, !noalias !2375
  %i.ahj = add nuw nsw i64 %i.ahc, 2              ; 2 uses
  store i64 %i.ahj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2377, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc131.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc131.i.i.i:                                  ; preds = %.noexc130.i.i.i
  %i.ahk = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2378, !noalias !2374, !nonnull !5, !noundef !5
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahj
  store i8 %i.ei, ptr %i.ahl, align 1, !noalias !2375
  %i.ahm = add nuw i64 %i.ahc, 3                  ; 2 uses
  store i64 %i.ahm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2378, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc132.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc132.i.i.i:                                  ; preds = %.noexc131.i.i.i
  %i.ahn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2379, !noalias !2374, !nonnull !5, !noundef !5
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 %i.ahm
  store i8 %i.ek, ptr %i.aho, align 1, !noalias !2375
  %i.ahp = add nuw i64 %i.ahc, 4                  ; 2 uses
  store i64 %i.ahp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2379, !noalias !2374
  br label %bb.cu

bb.cv:                                            ; preds = %.noexc128.i.i.i
  %i.ahq = load i8, ptr %i.dx, align 1, !noalias !2372, !noundef !5 ; 2 uses
  %i.ahr = icmp sgt i64 %i.ahb, -1
  call void @llvm.assume(i1 %i.ahr)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc133.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc133.i.i.i:                                  ; preds = %bb.cv
  %i.ahs = zext i8 %i.ahq to i32
  %i.aht = add nuw nsw i32 %i.du, %i.ahs          ; 3 uses
  %.cmp.i123.i.i.i = icmp samesign ugt i32 %i.aht, 639
  %i.ahu = zext i1 %.cmp.i123.i.i.i to i8
  %i.ahv = or disjoint i8 %i.ahu, 48
  %i.ahw = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2380, !noalias !2374, !nonnull !5, !noundef !5
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 %i.ahb
  store i8 %i.ahv, ptr %i.ahx, align 1, !noalias !2375
  %i.ahy = add nuw i64 %i.agx, 2                  ; 2 uses
  store i64 %i.ahy, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2380, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc134.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc134.i.i.i:                                  ; preds = %.noexc133.i.i.i
  %.cmp59.i.i.i.i = icmp samesign ult i32 %i.aht, 640
  %i.ahz = lshr i32 %i.aht, 6
  %i.aia = trunc nuw nsw i32 %i.ahz to i8         ; 2 uses
  %.urem.i124.i.i.i = add nsw i8 %i.aia, -10
  %i.aib = select i1 %.cmp59.i.i.i.i, i8 %i.aia, i8 %.urem.i124.i.i.i
  %i.aic = or disjoint i8 %i.aib, 48
  %i.aid = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2381, !noalias !2374, !nonnull !5, !noundef !5
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 %i.ahy
  store i8 %i.aic, ptr %i.aie, align 1, !noalias !2375
  %i.aif = add nuw nsw i64 %i.agx, 3              ; 2 uses
  store i64 %i.aif, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2381, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc135.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc135.i.i.i:                                  ; preds = %.noexc134.i.i.i
  %i.aig = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2382, !noalias !2374, !nonnull !5, !noundef !5
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 %i.aif
  store i8 45, ptr %i.aih, align 1, !noalias !2375
  %i.aii = add nuw nsw i64 %i.agx, 4              ; 2 uses
  store i64 %i.aii, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2382, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc136.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc136.i.i.i:                                  ; preds = %.noexc135.i.i.i
  %i.aij = add i8 %i.ahq, %i.el
  %i.aik = lshr i8 %i.aij, 1
  %i.ail = and i8 %i.aik, 31                      ; 2 uses
  %i.aim = udiv i8 %i.ail, 10
  %i.ain = urem i8 %i.ail, 10
  %i.aio = or disjoint i8 %i.aim, 48
  %i.aip = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2383, !noalias !2374, !nonnull !5, !noundef !5
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 %i.aii
  store i8 %i.aio, ptr %i.aiq, align 1, !noalias !2375
  %i.air = add nuw i64 %i.agx, 5                  ; 2 uses
  store i64 %i.air, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2383, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc137.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc137.i.i.i:                                  ; preds = %.noexc136.i.i.i
  %i.ais = or disjoint i8 %i.ain, 48
  %i.ait = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2384, !noalias !2374, !nonnull !5, !noundef !5
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 %i.air
  store i8 %i.ais, ptr %i.aiu, align 1, !noalias !2375
  %i.aiv = add nuw nsw i64 %i.agx, 6              ; 2 uses
  store i64 %i.aiv, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2384, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc138.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc138.i.i.i:                                  ; preds = %.noexc137.i.i.i
  %i.aiw = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2385, !noalias !2374, !nonnull !5, !noundef !5
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 %i.aiv
  store i8 84, ptr %i.aix, align 1, !noalias !2375
  %i.aiy = add nuw i64 %i.agx, 7                  ; 3 uses
  store i64 %i.aiy, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2385, !noalias !2374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2372
  store i32 %storemerge.i.i.i.i, ptr %i.o, align 4, !noalias !2372
  br i1 %i.eq, label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit38.thread.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %.noexc138.i.i.i
  %i.aiz = icmp sgt i64 %i.aiy, -1
  call void @llvm.assume(i1 %i.aiz)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc140.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc140.i.i.i:                                  ; preds = %bb.cw
  %i.aja = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2386, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 %i.aiy
  store i8 %i.ew, ptr %i.ajb, align 1, !noalias !2375
  %i.ajc = add nuw i64 %i.agx, 8                  ; 2 uses
  store i64 %i.ajc, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2386, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc141.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc141.i.i.i:                                  ; preds = %.noexc140.i.i.i
  %i.ajd = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2387, !noalias !2374, !nonnull !5, !noundef !5
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 %i.ajc
  store i8 %12, ptr %i.aje, align 1, !noalias !2375
  %i.ajf = add nuw nsw i64 %i.agx, 9              ; 2 uses
  store i64 %i.ajf, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2387, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc142.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc142.i.i.i:                                  ; preds = %.noexc141.i.i.i
  %i.ajg = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2388, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %i.ajf
  store i8 58, ptr %i.ajh, align 1, !noalias !2375
  %i.aji = add nuw nsw i64 %i.agx, 10             ; 2 uses
  store i64 %i.aji, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2388, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc143.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc143.i.i.i:                                  ; preds = %.noexc142.i.i.i
  %i.ajj = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2389, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 %i.aji
  store i8 %i.ez, ptr %i.ajk, align 1, !noalias !2375
  %i.ajl = add nuw i64 %i.agx, 11                 ; 2 uses
  store i64 %i.ajl, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2389, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc144.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc144.i.i.i:                                  ; preds = %.noexc143.i.i.i
  %i.ajm = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2390, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.ajl
  store i8 %14, ptr %i.ajn, align 1, !noalias !2375
  %i.ajo = add nuw nsw i64 %i.agx, 12             ; 2 uses
  store i64 %i.ajo, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2390, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc145.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc145.i.i.i:                                  ; preds = %.noexc144.i.i.i
  %i.ajp = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2391, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %i.ajo
  store i8 58, ptr %i.ajq, align 1, !noalias !2375
  %i.ajr = add nuw nsw i64 %i.agx, 13             ; 2 uses
  store i64 %i.ajr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2391, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc146.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc146.i.i.i:                                  ; preds = %.noexc145.i.i.i
  %i.ajs = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2392, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.ajr
  store i8 %i.fc, ptr %i.ajt, align 1, !noalias !2375
  %i.aju = add nuw i64 %i.agx, 14                 ; 2 uses
  store i64 %i.aju, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2392, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc147.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc147.i.i.i:                                  ; preds = %.noexc146.i.i.i
  %i.ajv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2393, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 %i.aju
  store i8 %16, ptr %i.ajw, align 1, !noalias !2375
  %i.ajx = add nuw i64 %i.agx, 15
  store i64 %i.ajx, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2393, !noalias !2374
  br i1 %i.fd, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.noexc151.i.i.i, %.noexc150.i.i.i, %.noexc149.i.i.i, %.noexc147.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2372
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.i, align 4, !noalias !2372
  %i.ajy = invoke fastcc noundef zeroext i1 @_RINvMs0_NtNtCsff3niNi8lqe_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i32 noundef 0)
          to label %.noexc148.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc148.i.i.i:                                  ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2372
  br i1 %i.ajy, label %.loopexit.i.i, label %.critedge.i.i.i

bb.cy:                                            ; preds = %.noexc147.i.i.i
  br i1 %i.ff, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit45.i.i.i.i, label %bb.cz

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit45.i.i.i.i: ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2372
  store i32 %i.fj, ptr %i.n, align 4, !noalias !2372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2372
  store ptr %i.n, ptr %i.m, align 8, !noalias !2372
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i.i.i.i, align 8, !noalias !2372
  %i.ajz = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @68, ptr noundef nonnull %i.m)
          to label %.noexc149.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc149.i.i.i:                                  ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit45.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2372
  br i1 %i.ajz, label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit38.thread.i.i.i.i, label %bb.cx

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.fh, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit49.i.i.i.i, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit53.i.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit49.i.i.i.i: ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2372
  store i32 %i.fi, ptr %i.l, align 4, !noalias !2372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2372
  store ptr %i.l, ptr %i.k, align 8, !noalias !2372
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx.i.i.i.i, align 8, !noalias !2372
  %i.aka = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @69, ptr noundef nonnull %i.k)
          to label %.noexc150.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc150.i.i.i:                                  ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit49.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2372
  br i1 %i.aka, label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit38.thread.i.i.i.i, label %bb.cx

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit53.i.i.i.i: ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2372
  store ptr %i.o, ptr %i.j, align 8, !noalias !2372
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i.i.i.i, align 8, !noalias !2372
  %i.akb = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @70, ptr noundef nonnull %i.j)
          to label %.noexc151.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc151.i.i.i:                                  ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit53.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2372
  br i1 %i.akb, label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit38.thread.i.i.i.i, label %bb.cx

_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit38.thread.i.i.i.i: ; preds = %.noexc151.i.i.i, %.noexc150.i.i.i, %.noexc149.i.i.i, %.noexc138.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2372
  br label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i

_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i: ; preds = %.noexc127.i.i.i, %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit38.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2372
  br label %.loopexit.i.i

bb.da:                                            ; preds = %bb.h, %bb.h
  %.sroa.02.0.i.i.i = load ptr, ptr %.sroa.03.0.i.i.i, align 8, !noalias !2223, !nonnull !5, !noundef !5
  %.sroa.3.0.i.i.i = load i64, ptr %i.ic, align 8, !noalias !2223, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %.sroa.3.0.i.i.i)
          to label %.noexc111.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc111.i.i.i:                                  ; preds = %bb.da
  %i.akc = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2394, !noalias !2395, !noundef !5 ; 3 uses
  %i.akd = icmp sgt i64 %i.akc, -1
  call void @llvm.assume(i1 %i.akd)
  %.not.i.i.i110.i.i.i = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %.not.i.i.i110.i.i.i, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i, label %bb.db

bb.db:                                            ; preds = %.noexc111.i.i.i
  %i.ake = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2394, !noalias !2395, !nonnull !5, !noundef !5
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 %i.akc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akf, ptr nonnull readonly align 1 %.sroa.02.0.i.i.i, i64 %.sroa.3.0.i.i.i, i1 false), !noalias !2227
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2394, !noalias !2395
  br label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i: ; preds = %bb.db, %.noexc111.i.i.i
  %i.akg = phi i64 [ %.pre.i.i.i.i.i.i, %bb.db ], [ %i.akc, %.noexc111.i.i.i ]
  %i.akh = add i64 %i.akg, %.sroa.3.0.i.i.i
  store i64 %i.akh, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2394, !noalias !2395
  br label %.critedge.i.i.i

bb.dc:                                            ; preds = %bb.h, %bb.h
  %i.aki = load ptr, ptr %.sroa.03.0.i.i.i, align 8, !noalias !2223, !nonnull !5, !noundef !5
  %i.akj = load i64, ptr %i.ic, align 8, !noalias !2223, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %i.akj)
          to label %.noexc114.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc114.i.i.i:                                  ; preds = %bb.dc
  %i.akk = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2396, !noalias !2397, !noundef !5 ; 3 uses
  %i.akl = icmp sgt i64 %i.akk, -1
  call void @llvm.assume(i1 %i.akl)
  %.not.i.i.i112.i.i.i = icmp eq i64 %i.akj, 0
  br i1 %.not.i.i.i112.i.i.i, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit115.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %.noexc114.i.i.i
  %i.akm = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2396, !noalias !2397, !nonnull !5, !noundef !5
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 %i.akk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akn, ptr nonnull readonly align 1 %i.aki, i64 %i.akj, i1 false), !noalias !2227
  %.pre.i.i.i113.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2396, !noalias !2397
  br label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit115.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit115.i.i.i: ; preds = %bb.dd, %.noexc114.i.i.i
  %i.ako = phi i64 [ %.pre.i.i.i113.i.i.i, %bb.dd ], [ %i.akk, %.noexc114.i.i.i ]
  %i.akp = add i64 %i.ako, %i.akj
  store i64 %i.akp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2396, !noalias !2397
  br label %.critedge.i.i.i

_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %.noexc182.i.i.i
  br i1 %i.agv, label %.loopexit.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit115.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i, %.noexc148.i.i.i, %.noexc107.i.i.i, %.noexc106.i.i.i, %.noexc105.i.i.i, %.noexc104.i.i.i, %.noexc103.i.i.i, %.noexc102.i.i.i, %.noexc101.i.i.i, %.noexc100.i.i.i, %.noexc99.i.i.i, %.noexc97.i.i.i, %.noexc95.i.i.i, %.noexc93.i.i.i, %.noexc92.i.i.i, %.split.i.i.i, %.split.thread.i.i.i, %.split.i.i.i.i, %.split123.i.i.i.i, %.loopexit.i.i.i.i, %.noexc82.i.i.i, %.noexc81.i.i.i, %.noexc79.i.i.i, %.noexc76.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit203.i.i.i.i, %.noexc65.i.i.i, %.noexc63.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit192.i.i.i.i, %.noexc62.i.i.i, %.noexc60.i.i.i, %.noexc59.i.i.i, %.noexc56.i.i.i, %.noexc53.i.i.i, %.noexc50.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i, %.noexc47.i.i.i, %.noexc45.i.i.i, %.noexc44.i.i.i, %.noexc43.i.i.i, %.noexc42.i.i.i, %.noexc38.i.i.i, %.noexc35.i.i.i, %.noexc31.i.i.i, %.noexc27.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i, %.noexc21.i.i.i, %.noexc17.i.i.i, %.noexc11.i.i.i, %.noexc8.i.i.i, %_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.thread.i.i, %.noexc8.i.i, %.noexc18.i.i, %.noexc16.i.i, %.noexc15.i.i, %.noexc14.i.i, %.noexc13.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2398)
  %i.akq = load i8, ptr %i.bd, align 8, !range !23, !alias.scope !2398, !noalias !2223, !noundef !5
  switch i8 %i.akq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i [
    i8 1, label %bb.de
    i8 3, label %bb.df
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECskeugdADtBsi_12pingora_core.exit.sink.split.i117.i.i.i: ; preds = %bb.df, %bb.de
  %.val1.sink.i118.i.i.i = phi i64 [ %.val3.i120.i.i.i, %bb.de ], [ %.val1.i116.i.i.i, %bb.df ]
  %.val.i119.i.i.i = load ptr, ptr %.sroa.03.0.i.i.i, align 8, !alias.scope !2398, !noalias !2223, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i119.i.i.i, i64 noundef range(i64 1, 0) %.val1.sink.i118.i.i.i, i64 noundef 1) #29, !noalias !2399
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i

bb.de:                                            ; preds = %.critedge.i.i.i
  %.val3.i120.i.i.i = load i64, ptr %i.ic, align 8, !alias.scope !2398, !noalias !2223, !noundef !5 ; 2 uses
  %i.akr = icmp eq i64 %.val3.i120.i.i.i, 0
  br i1 %i.akr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECskeugdADtBsi_12pingora_core.exit.sink.split.i117.i.i.i

bb.df:                                            ; preds = %.critedge.i.i.i
  %.val1.i116.i.i.i = load i64, ptr %i.ic, align 8, !alias.scope !2398, !noalias !2223, !noundef !5 ; 2 uses
  %i.aks = icmp eq i64 %.val1.i116.i.i.i, 0
  br i1 %i.aks, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECskeugdADtBsi_12pingora_core.exit.sink.split.i117.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i: ; preds = %bb.df, %bb.de, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECskeugdADtBsi_12pingora_core.exit.sink.split.i117.i.i.i, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2223
  invoke void @_RNvXs_NtNtCsff3niNi8lqe_6chrono6format8strftimeNtB4_13StrftimeItemsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bf)
          to label %.noexc4.i.i unwind label %.loopexit22.i.i, !noalias !2227

.noexc4.i.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i
  %i.akt = load i8, ptr %i.be, align 8, !range !2224, !noalias !2223, !noundef !5
  %.not.not.i.i.i = icmp eq i8 %i.akt, -1
  br i1 %.not.not.i.i.i, label %.loopexit23.i.i, label %bb.h

.loopexit22.i.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit23.i.i, %_RINvMs5_NtCsff3niNi8lqe_6chrono8datetimeINtB6_8DateTimeNtNtNtB8_6offset3utc3UtcE17format_with_itemsNtNtNtB8_6format8strftime13StrftimeItemsNtB1D_4ItemECskeugdADtBsi_12pingora_core.exit
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i, %.loopexit22.i.i, %.loopexit.split-lp.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %lpad.loopexit.i.i, %.loopexit22.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #24
          to label %.body.i unwind label %bb.dl, !noalias !2400

.loopexit.i.i:                                    ; preds = %bb.cg, %_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i, %.noexc148.i.i.i, %.noexc172.i.i.i, %bb.cn, %.noexc107.i.i.i, %.noexc106.i.i.i, %bb.ck, %.noexc105.i.i.i, %.noexc104.i.i.i, %.noexc103.i.i.i, %.noexc102.i.i.i, %.noexc101.i.i.i, %.noexc100.i.i.i, %.noexc99.i.i.i, %.noexc97.i.i.i, %.noexc95.i.i.i, %.noexc93.i.i.i, %.noexc92.i.i.i, %.split.i.i.i, %bb.bj, %bb.bi, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit203.i.i.i.i, %.noexc65.i.i.i, %.noexc63.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit192.i.i.i.i, %.noexc62.i.i.i, %.noexc60.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i, %.noexc47.i.i.i, %.noexc45.i.i.i, %.noexc8.i.i, %.noexc18.i.i, %.noexc16.i.i, %.noexc15.i.i, %.noexc14.i.i, %.noexc13.i.i, %bb.h, %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2223
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i unwind label %bb.dg, !noalias !2227

bb.dg:                                            ; preds = %.loopexit.i.i
  %i.aku = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body.i unwind label %bb.dh, !noalias !2227

bb.dh:                                            ; preds = %bb.dg
  %i.akv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !2227
  unreachable

.loopexit23.i.i:                                  ; preds = %.noexc4.i.i, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2223
  %i.akw = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2220, !nonnull !5, !noundef !5
  %i.akx = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2220, !noundef !5
  %i.aky = invoke noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akw, i64 noundef %i.akx)
end_hunk_2
