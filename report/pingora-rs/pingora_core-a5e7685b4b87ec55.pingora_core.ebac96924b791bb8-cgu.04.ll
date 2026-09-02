Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.04?download=true
inline.NumInlined: 817
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http4date14to_date_string:bb.a
  %i.bg = alloca [24 x i8], align 8               ; 147 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 8 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [24 x i8], align 8               ; 8 uses
  %i.bl = alloca [12 x i8], align 4               ; 4 uses
  %i.bm = alloca [12 x i8], align 4               ; 6 uses
  %i.bn = alloca [88 x i8], align 8               ; 20 uses
  %i.bo = alloca [12 x i8], align 4               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %i.bp = sdiv i64 %1, 86400
  %i.bq = srem i64 %1, 86400                      ; 4 uses
  %.lobit.i.i = ashr i64 %i.bq, 63
  %.sroa.0.0.i.i = add nsw i64 %.lobit.i.i, %i.bp ; 2 uses
  %i.br = icmp slt i64 %i.bq, 0
  %i.bs = add nsw i64 %i.bq, 86400
  %spec.select.i.i = select i1 %i.br, i64 %i.bs, i64 %i.bq
  %i.bt = add nsw i64 %.sroa.0.0.i.i, -2146764485
  %or.cond.i = icmp ult i64 %i.bt, -4294967296
  br i1 %or.cond.i, label %bb.dq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bu = trunc i64 %.sroa.0.0.i.i to i32
  %i.bv = add i32 %i.bu, 719163
  %i.bw = tail call noundef i32 @_RNvMNtNtCsff3niNi8lqe_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.bv), !noalias !2200 ; 2 uses
  %.not.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i, label %bb.dq, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bx = trunc nuw nsw i64 %spec.select.i.i to i32
  store i32 %i.bw, ptr %i.bo, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.bx, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !2203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !2203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bl, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.bo, i64 12, i1 false), !noalias !2204
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  call void @_RNvMNtNtCsff3niNi8lqe_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.bm, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.bl, i32 noundef 0), !noalias !2203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !2203
  %i.bz = load i32, ptr %i.bm, align 4, !range !2205, !noalias !2203, !noundef !5 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
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
  %common.resume.op = phi { ptr, i32 } [ %i.aly, %bb.dt ], [ %i.ch, %bb.d ], [ %eh.lpad-body.i, %.body ]
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
  %i.dk = and i32 %i.dj, 511                      ; 8 uses
  %i.dl = and i32 %i.bz, 7
  %i.dm = add nuw nsw i32 %i.dk, %i.dl
  %.lhs.trunc9.i.i.i.i = trunc nuw nsw i32 %i.dm to i16
  %i.dn = urem i16 %.lhs.trunc9.i.i.i.i, 7        ; 7 uses
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
  %2 = zext i1 %i.en to i8
  %i.es = udiv i32 %i.cb, 60
  %i.et = urem i32 %i.es, 60                      ; 2 uses
  %i.eu = udiv i8 %i.ep, 10                       ; 2 uses
  %i.ev = or disjoint i8 %i.eu, 48                ; 2 uses
  %i.ew = trunc nuw nsw i32 %i.et to i8           ; 2 uses
  %i.ex = udiv i8 %i.ew, 10
  %i.ey = or disjoint i8 %i.ex, 48                ; 3 uses
  %i.ez = trunc nuw nsw i32 %i.er to i8
  %3 = add nuw nsw i8 %2, %i.ez                   ; 2 uses
  %i.fa = udiv i8 %3, 10
  %i.fb = or disjoint i8 %i.fa, 48
  %i.fc = icmp eq i32 %storemerge.i.i.i.i, 0
  %i.fd = urem i32 %storemerge.i.i.i.i, 1000000
  %i.fe = icmp eq i32 %i.fd, 0
  %i.ff = urem i32 %storemerge.i.i.i.i, 1000
  %i.fg = icmp eq i32 %i.ff, 0
  %.sroa.429.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fh = udiv i32 %storemerge.i.i.i.i, 1000
  %.sroa.425.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fi = udiv i32 %storemerge.i.i.i.i, 1000000
  %.sroa.421.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fj = udiv i32 %i.cd, 1000000000
  %i.fk = add nuw nsw i32 %i.fj, %i.er            ; 2 uses
  %i.fl = trunc nuw nsw i32 %i.fk to i8           ; 2 uses
  %i.fm = udiv i8 %i.fl, 10
  %i.fn = or disjoint i8 %i.fm, 48                ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.fv = add nsw i32 %i.dy, -1
  %i.fw = icmp slt i32 %i.dy, 1                   ; 2 uses
  %i.fx = sub nsw i32 1, %i.dy
  %i.fy = udiv i32 %i.fx, 400
  %i.fz = add nuw nsw i32 %i.fy, 1                ; 2 uses
  %i.ga = mul nuw nsw i32 %i.fz, 400
  %.neg.i.i.i.i = mul nsw i32 %i.fz, -146097
  %i.gb = zext i32 %i.cb to i64
  %i.gc = add nuw nsw i32 %i.dk, -719163
  %.sroa.426.0..sroa_idx.i194.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.445.0..sroa_idx.i195.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.430.0..sroa_idx.i198.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.439.0..sroa_idx.i199.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.434.0..sroa_idx.i201.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.gf = zext nneg i32 %i.cr to i64
  %.sroa.426.0..sroa_idx.i183.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.445.0..sroa_idx.i184.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.430.0..sroa_idx.i187.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.439.0..sroa_idx.i188.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.434.0..sroa_idx.i190.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.gi = icmp samesign ult i32 %i.fk, 10
  %i.gj = icmp samesign ult i32 %i.et, 10
  %i.gk = urem i32 %i.em, 12                      ; 2 uses
  %i.gl = icmp eq i32 %i.gk, 0
  %i.gm = trunc nuw nsw i32 %i.gk to i8
  %i.gn = select i1 %i.gl, i8 12, i8 %i.gm        ; 4 uses
  %.cmp9.i.i.i.i = icmp samesign ugt i8 %i.gn, 9
  %i.go = icmp samesign ult i8 %i.gn, 10          ; 2 uses
  %i.gp = select i1 %.cmp9.i.i.i.i, i8 49, i8 48
  %.urem10.i.i.i.i = add nsw i8 %i.gn, -10
  %i.gq = select i1 %i.go, i8 %i.gn, i8 %.urem10.i.i.i.i
  %i.gr = or disjoint i8 %i.gq, 48
  %i.gs = icmp ult i8 %i.ep, 10
  %i.gt = add nuw nsw i8 %i.eu, 48
  %i.gu = zext nneg i32 %i.dk to i64
  %.sroa.426.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.445.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.430.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.439.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.434.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %switch.idx.cast.i.i.i.i = trunc nuw nsw i16 %i.dn to i8
  %switch.offset.i.i.i.i = add nuw nsw i8 %switch.idx.cast.i.i.i.i, 49
  %i.gx = trunc i32 %i.bz to i8
  %i.gy = and i8 %i.gx, 15                        ; 4 uses
  %i.gz = trunc nuw nsw i32 %i.dk to i16          ; 2 uses
  %i.ha = add nuw nsw i16 %i.gz, 6
  %.lhs.trunc1.i142.i.i.i.i = sub nuw nsw i16 %i.ha, %i.dn ; 2 uses
  %i.hb = udiv i16 %.lhs.trunc1.i142.i.i.i.i, 7
  %i.hc = trunc nuw nsw i16 %i.hb to i8           ; 2 uses
  %i.hd = udiv i8 %i.hc, 10
  %i.he = icmp samesign ult i16 %.lhs.trunc1.i142.i.i.i.i, 70
  %i.hf = add nuw nsw i8 %i.hd, 48
  %4 = add nuw nsw i16 %i.dn, 7
  %.pn.i.i.i.i.i = select i1 %i.do, i16 %4, i16 %i.dn
  %5 = add nuw nsw i16 %i.gz, 12
  %.lhs.trunc1.i.i.i.i.i = sub nsw i16 %5, %.pn.i.i.i.i.i
  %i.hg = sdiv i16 %.lhs.trunc1.i.i.i.i.i, 7      ; 2 uses
  %i.hh = trunc nsw i16 %i.hg to i8               ; 2 uses
  %i.hi = udiv i8 %i.hh, 10
  %i.hj = icmp samesign ult i16 %i.hg, 10
  %i.hk = add nuw nsw i8 %i.hi, 48
  %i.hl = srem i32 %i.dy, 100                     ; 4 uses
  %i.hm = icmp slt i32 %i.hl, 0
  %i.hn = add nsw i32 %i.hl, 100
  %spec.select.i.i.i.i.i = select i1 %i.hm, i32 %i.hn, i32 %i.hl ; 2 uses
  %i.ho = trunc nsw i32 %spec.select.i.i.i.i.i to i8 ; 2 uses
  %i.hp = udiv i8 %i.ho, 10
  %i.hq = icmp samesign ult i32 %spec.select.i.i.i.i.i, 10
  %i.hr = add nuw nsw i8 %i.hp, 48
  %i.hs = sdiv i32 %i.dy, 100
  %.lobit.i.i.i.i.i = ashr i32 %i.hl, 31
  %.sroa.0.0.i.i.i.i.i = add nsw i32 %.lobit.i.i.i.i.i, %i.hs
  %i.ht = trunc i32 %.sroa.0.0.i.i.i.i.i to i8    ; 3 uses
  %i.hu = udiv i8 %i.ht, 10
  %i.hv = icmp ult i8 %i.ht, 10
  %i.hw = add nuw nsw i8 %i.hu, 48
  %i.hx = insertelement <8 x i8> poison, i8 %i.ep, i64 0
  %i.hy = insertelement <8 x i8> %i.hx, i8 %i.ew, i64 1
  %i.hz = insertelement <8 x i8> %i.hy, i8 %3, i64 2
  %i.ia = insertelement <8 x i8> %i.hz, i8 %i.fl, i64 3
  %i.ib = insertelement <8 x i8> %i.ia, i8 %i.hc, i64 4
  %i.ic = insertelement <8 x i8> %i.ib, i8 %i.hh, i64 5
  %i.id = insertelement <8 x i8> %i.ic, i8 %i.ho, i64 6
  %i.ie = insertelement <8 x i8> %i.id, i8 %i.ht, i64 7
  %i.if = urem <8 x i8> %i.ie, splat (i8 10)      ; 5 uses
  %i.ig = extractelement <8 x i8> %i.if, i64 0
  %i.ih = or disjoint i8 %i.ig, 48                ; 3 uses
  %i.ii = extractelement <8 x i8> %i.if, i64 1
  %i.ij = or disjoint i8 %i.ii, 48                ; 3 uses
  %i.ik = extractelement <8 x i8> %i.if, i64 2
  %i.il = or disjoint i8 %i.ik, 48
  %i.im = extractelement <8 x i8> %i.if, i64 3
  %i.in = or disjoint i8 %i.im, 48                ; 2 uses
  %i.io = shufflevector <8 x i8> %i.if, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ip = or disjoint <4 x i8> %i.io, splat (i8 48) ; 4 uses
  %.sroa.03.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 4 uses
  %spec.select.i.i.i = select i1 %i.fw, i32 %.neg.i.i.i.i, i32 0
  %i.ir = select i1 %i.fw, i32 %i.ga, i32 0
  %spec.select244.i.i.i = add nsw i32 %i.fv, %i.ir ; 2 uses
  %i.is = sdiv i32 %spec.select244.i.i.i, 100     ; 2 uses
  %i.it = mul nsw i32 %spec.select244.i.i.i, 1461
  %i.iu = ashr i32 %i.it, 2
  %i.iv = ashr i32 %i.is, 2
  %i.iw = add i32 %i.gc, %spec.select.i.i.i
  %i.ix = sub i32 %i.iw, %i.is
  %i.iy = add i32 %i.ix, %i.iu
  %narrow.i.i.i.i = add i32 %i.iy, %i.iv
  %i.iz = sext i32 %narrow.i.i.i.i to i64
  %i.ja = mul nsw i64 %i.iz, 86400
  %i.jb = add nsw i64 %i.ja, %i.gb
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.445.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.jg = insertelement <2 x ptr> poison, ptr %.146.i.i.i.i, i64 0
  %i.jh = insertelement <2 x ptr> %i.jg, ptr %i.de, i64 1
  %i.ji = extractelement <4 x i8> %i.ip, i64 0
  %i.jj = extractelement <4 x i8> %i.ip, i64 1
  %i.jk = extractelement <4 x i8> %i.ip, i64 2
  %i.jl = extractelement <4 x i8> %i.ip, i64 3
  %i.jm = shl nuw nsw i16 %i.dn, 3
  %switch.shiftamt = zext nneg i16 %i.jm to i56
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

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i: ; preds = %.invoke275.i.i.i
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
  %i.jn = load i8, ptr %i.bd, align 8, !range !23, !noalias !2223, !noundef !5
  switch i8 %i.jn, label %default.unreachable [
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
  %i.jo = load i8, ptr %i.fu, align 2, !range !11, !noalias !2223, !noundef !5 ; 18 uses
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
  %i.jp = phi i32 [ %i.md, %.noexc12.i.i.i ], [ %i.dy, %bb.i ] ; 4 uses
  %i.jq = add nsw i32 %i.jp, -1000
  %or.cond.i.i.i = icmp ult i32 %i.jq, 9000
  br i1 %or.cond.i.i.i, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i2.i.i.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i: ; preds = %.invoke.i.i.i
  %i.jr = sext i32 %i.jp to i64
  %spec.select.i.i7.i.i = icmp ugt i32 %i.jp, 9999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2220
  store i64 %i.jr, ptr %i.h, align 8, !noalias !2230
  br i1 %spec.select.i.i7.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i
  switch i8 %i.jo, label %default.unreachable [
    i8 0, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i
    i8 1, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i
    i8 2, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i
  ]

bb.k:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i
  switch i8 %i.jo, label %default.unreachable [
    i8 0, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit60.i.i.i
    i8 1, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit64.i.i.i
    i8 2, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit68.i.i.i
  ]

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2230
  store ptr %i.h, ptr %i.d, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.js = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @52, ptr noundef nonnull %i.d)
          to label %.noexc13.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc13.i.i:                                     ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.js, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2230
  store ptr %i.h, ptr %i.c, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i.i.i, align 8, !noalias !2230
  store ptr null, ptr %i.jd, align 8, !noalias !2230
  store i16 4, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.jt = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @80, ptr noundef nonnull %i.c)
          to label %.noexc14.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc14.i.i:                                     ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.jt, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2230
  store ptr %i.h, ptr %i.b, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !noalias !2230
  store ptr null, ptr %i.jc, align 8, !noalias !2230
  store i16 4, ptr %.sroa.445.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.ju = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @81, ptr noundef nonnull %i.b)
          to label %.noexc15.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc15.i.i:                                     ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.ju, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit60.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2230
  store ptr %i.h, ptr %i.g, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.jv = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @82, ptr noundef nonnull %i.g)
end_hunk_0
