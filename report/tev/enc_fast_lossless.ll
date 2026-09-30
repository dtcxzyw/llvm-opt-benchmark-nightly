Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_fast_lossless?download=true
inline.NumInlined: 4106
inline.NumDeleted: 1186
loop-unroll.NumCompletelyUnrolled: 195
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 336
begin_hunk_0_@_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m:bb.a
  %i.z = select i1 %i.w, i64 0, i64 %i.y          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !123 ; 2 uses
  %i.ac = shl i64 %i.m, 8                         ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %.sroa.speculated35.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 256) ; 69 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !124 ; 2 uses
  %i.ag = shl i64 %i.n, 8                         ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 256) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %.sroa.07.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !72 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.59.0.copyload.i = load ptr, ptr %.sroa.59.0..sroa_idx.i, align 8, !tbaa !72
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.610.0.copyload.i = load ptr, ptr %.sroa.610.0..sroa_idx.i, align 8, !tbaa !72
  %i.ai = call noundef ptr %.sroa.59.0.copyload.i(ptr noundef %.sroa.07.0.copyload.i, i64 noundef %i.ac, i64 noundef %i.ag, i64 noundef %.sroa.speculated35.i, i64 noundef %.sroa.speculated.i, ptr noundef nonnull %i.d) #36, !inline_history !1714 ; 11 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1795, !nonnull !121
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !95, !range !108, !noundef !121
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1796, !nonnull !121, !align !176
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1952
  %.val31.i = load ptr, ptr %i.ap, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw [160 x i8], ptr %.val31.i, i64 %1
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !1793
  %.pre71.i = load ptr, ptr %.pre.i, align 8, !tbaa !151
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !1793, !nonnull !121, !align !176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !151 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1952
  %.val.i = load ptr, ptr %i.at, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw [160 x i8], ptr %.val.i, i64 %i.z
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.av = phi ptr [ %.pre71.i, %bb.b ], [ %i.as, %bb.c ] ; 7 uses
  %i.aw = phi ptr [ %i.aq, %bb.b ], [ %i.au, %bb.c ] ; 16 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !132, !range !108, !noundef !121
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !68  ; 2 uses
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !1794, !nonnull !121
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !95, !range !108, !noundef !121
  %i.bd = trunc nuw i8 %i.bc to i1                ; 3 uses
  br i1 %i.az, label %bb.e, label %bb.am

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !73 ; 21 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !130
  %.not.i = icmp eq i32 %i.bh, 0                  ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %.not.i.i = icmp eq i64 %i.bf, 0                ; 5 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %factor.op.mul.i.i = mul nuw nsw i64 %.sroa.speculated35.i, 3
  %i.bj = mul nuw nsw i64 %factor.op.mul.i.i, %.sroa.speculated.i
  %i.bk = add nuw nsw i64 %i.bj, 64               ; 2 uses
  br i1 %i.bd, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bl = call noalias ptr @malloc(i64 noundef %i.bk) #35
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !71 ; 2 uses
  store ptr %i.bl, ptr %i.aw, align 8, !tbaa !71
  %.not.i.i.peel.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.peel.i.i, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !72
  call void %i.bo(ptr noundef nonnull %i.bm) #36, !inline_history !1715
  br label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i

_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i
  %exitcond.peel.not.i.i = icmp eq i64 %i.bf, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i

._crit_edge.i.i:                                  ; preds = %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i, %bb.e
  br i1 %i.bd, label %.preheader.i.i, label %bb.i

.peel.next.i.i:                                   ; preds = %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i
  %.055.i.i = phi i64 [ %i.bu, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i ], [ 1, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %.055.i.i ; 3 uses
  %i.bq = call noalias ptr @malloc(i64 noundef %i.bk) #35
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !71 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !71
  %.not.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.peel.next.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !72
  call void %i.bt(ptr noundef nonnull %i.br) #36, !inline_history !1715
  br label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i

_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i:  ; preds = %bb.h, %.peel.next.i.i
  %i.bu = add nuw i64 %.055.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bu, %i.bf
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !1716

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bv = load ptr, ptr %i.aw, align 8, !tbaa !71
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 7 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 8 uses
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !68 ; 2 uses
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = load i64, ptr %i.ca, align 8, !tbaa !68
  %i.ce = or i64 %i.cd, %i.cc                     ; 2 uses
  store i64 %i.ce, ptr %i.ca, align 8, !tbaa !68
  %i.cf = add i64 %i.cb, 1
  store i64 %i.cf, ptr %i.bz, align 8, !tbaa !68
  store i64 %i.ce, ptr %i.by, align 1
  %i.cg = load i64, ptr %i.bz, align 8, !tbaa !68 ; 3 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.cg, -8
  %i.cj = and i64 %i.cg, 7                        ; 2 uses
  %i.ck = load i64, ptr %i.ca, align 8, !tbaa !68
  %i.cl = lshr i64 %i.ck, %i.ci
  %i.cm = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.cn = add i64 %i.cm, %i.ch                    ; 2 uses
  store i64 %i.cn, ptr %i.bw, align 8, !tbaa !74
  %i.co = load ptr, ptr %i.aw, align 8, !tbaa !71
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  %i.cq = shl nuw nsw i64 1, %i.cj
  %i.cr = or i64 %i.cl, %i.cq                     ; 2 uses
  store i64 %i.cr, ptr %i.ca, align 8, !tbaa !68
  %i.cs = add nuw nsw i64 %i.cj, 1
  store i64 %i.cs, ptr %i.bz, align 8, !tbaa !68
  store i64 %i.cr, ptr %i.cp, align 1
  %i.ct = load i64, ptr %i.bz, align 8, !tbaa !68 ; 3 uses
  %i.cu = lshr i64 %i.ct, 3
  %i.cv = and i64 %i.ct, -8
  %i.cw = and i64 %i.ct, 7
  %i.cx = load i64, ptr %i.ca, align 8, !tbaa !68
  %i.cy = lshr i64 %i.cx, %i.cv                   ; 2 uses
  %i.cz = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.da = add i64 %i.cz, %i.cu                    ; 2 uses
  store i64 %i.da, ptr %i.bw, align 8, !tbaa !74
  %i.db = load ptr, ptr %i.aw, align 8, !tbaa !71
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  store i64 %i.cy, ptr %i.ca, align 8, !tbaa !68
  %i.dd = add nuw nsw i64 %i.cw, 2
  store i64 %i.dd, ptr %i.bz, align 8, !tbaa !68
  store i64 %i.cy, ptr %i.dc, align 1
  %i.de = load i64, ptr %i.bz, align 8, !tbaa !68 ; 3 uses
  %i.df = lshr i64 %i.de, 3
  %i.dg = and i64 %i.de, -8
  %i.dh = and i64 %i.de, 7
  store i64 %i.dh, ptr %i.bz, align 8, !tbaa !68
  %i.di = load i64, ptr %i.ca, align 8, !tbaa !68
  %i.dj = lshr i64 %i.di, %i.dg
  store i64 %i.dj, ptr %i.ca, align 8, !tbaa !68
  %i.dk = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.dl = add i64 %i.dk, %i.df
  store i64 %i.dl, ptr %i.bw, align 8, !tbaa !74
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.i, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep.i.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep8.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep8.i.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep.i.1.i.i = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep.i.1.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep8.i.1.i.i = getelementptr inbounds nuw i8, ptr %2, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep8.i.1.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep.i.2.i.i = getelementptr inbounds nuw i8, ptr %2, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep.i.2.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep8.i.2.i.i = getelementptr inbounds nuw i8, ptr %2, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep8.i.2.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep.i.3.i.i = getelementptr inbounds nuw i8, ptr %2, i64 640
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep.i.3.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep8.i.3.i.i = getelementptr inbounds nuw i8, ptr %2, i64 704
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep8.i.3.i.i, i8 0, i64 16, i1 false), !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.dm, align 8, !tbaa !1799
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.dn, align 8, !tbaa !1799
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.do, align 8, !tbaa !1799
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 0, ptr %i.dp, align 8, !tbaa !1799
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i.i, label %.lr.ph57.i.i

_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i: ; preds = %.lr.ph57.i.i
  %i.dq = mul nuw nsw i64 %i.bf, 2688             ; 3 uses
  %i.dr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #40 ; 3 uses
  %i.ds = getelementptr inbounds nuw [2688 x i8], ptr %i.dr, i64 %i.bf
  %i.dt = add nsw i64 %i.dq, -2688
  %i.du = urem i64 %i.dt, 2688
  %i.dv = sub nuw nsw i64 %i.dq, %i.du
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dr, i8 0, i64 %i.dv, i1 false)
  %i.dw = ptrtoint ptr %i.ds to i64
  br label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i.i

_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i.i: ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i, %.preheader.i.i
  %.sroa.0.0.i = phi ptr [ %i.dr, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i ], [ null, %.preheader.i.i ] ; 9 uses
  %.sroa.9.0.i = phi i64 [ %i.dw, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i ], [ 0, %.preheader.i.i ]
  %.not157.i.i.i = icmp eq i64 %i.af, %i.ag
  br i1 %.not157.i.i.i, label %.preheader.i.i.i, label %.lr.ph153.i.i.i

.lr.ph153.i.i.i:                                  ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not39.i.i.i.i = icmp ult i64 %i.ad, 16        ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.not.i127.i.i.i = icmp eq i64 %i.ab, %i.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.eb = shl nuw nsw i64 %.sroa.speculated35.i, 2 ; 4 uses
  %i.ec = shl nuw nsw i64 %.sroa.speculated35.i, 3
  %i.ed = shl nuw nsw i64 %.sroa.speculated35.i, 2 ; 4 uses
  %i.ee = shl nuw nsw i64 %.sroa.speculated35.i, 3
  %i.ef = shl nuw nsw i64 %.sroa.speculated35.i, 2
  %i.eg = shl nuw nsw i64 %.sroa.speculated35.i, 1
  %i.eh = shl nuw nsw i64 %.sroa.speculated35.i, 2
  %i.ei = shl nuw nsw i64 %.sroa.speculated35.i, 1
  %i.ej = shl nuw nsw i64 %.sroa.speculated35.i, 2 ; 3 uses
  %i.ek = shl nuw nsw i64 %.sroa.speculated35.i, 2 ; 3 uses
  %i.el = shl nuw nsw i64 %.sroa.speculated35.i, 2 ; 3 uses
  %i.em = mul nuw nsw i64 %.sroa.speculated35.i, 6
  %i.en = shl nuw nsw i64 %.sroa.speculated35.i, 2 ; 3 uses
  %i.eo = mul nuw nsw i64 %.sroa.speculated35.i, 6
  %min.iters.check444 = icmp ult i64 %i.bf, 4
  %min.iters.check446 = icmp ult i64 %i.bf, 16
  %i.ep = and i64 %i.bf, 12
  %n.vec448 = and i64 %i.bf, -16                  ; 4 uses
  %cmp.n480 = icmp eq i64 %i.bf, %n.vec448
  %min.epilog.iters.check485 = icmp eq i64 %i.ep, 0
  %n.vec487 = and i64 %i.bf, -4                   ; 3 uses
  %cmp.n501 = icmp eq i64 %i.bf, %n.vec487
  %i.eq = getelementptr i8, ptr %i.ai, i64 %i.eo
  %i.er = and i64 %.sroa.speculated35.i, 7        ; 2 uses
  %cmp.n441 = icmp eq i64 %i.er, 0
  %i.es = getelementptr i8, ptr %i.ai, i64 %i.em
  %i.et = and i64 %.sroa.speculated35.i, 7        ; 2 uses
  %cmp.n395 = icmp eq i64 %i.et, 0
  %i.eu = getelementptr i8, ptr %i.ai, i64 %i.ek
  %i.ev = and i64 %.sroa.speculated35.i, 15       ; 3 uses
  %cmp.n333 = icmp eq i64 %i.ev, 0
  %min.epilog.iters.check339 = icmp samesign ult i64 %i.ev, 4
  %i.ew = and i64 %.sroa.speculated35.i, 3        ; 2 uses
  %cmp.n349 = icmp eq i64 %i.ew, 0
  %i.ex = getelementptr i8, ptr %i.ai, i64 %i.ej
  %i.ey = and i64 %.sroa.speculated35.i, 15       ; 3 uses
  %cmp.n281 = icmp eq i64 %i.ey, 0
  %min.epilog.iters.check287 = icmp samesign ult i64 %i.ey, 4
  %i.ez = and i64 %.sroa.speculated35.i, 3        ; 2 uses
  %cmp.n297 = icmp eq i64 %i.ez, 0
  %i.fa = getelementptr i8, ptr %i.ai, i64 %i.ei
  %i.fb = and i64 %.sroa.speculated35.i, 7        ; 2 uses
  %cmp.n245 = icmp eq i64 %i.fb, 0
  %i.fc = getelementptr i8, ptr %i.ai, i64 %i.eg
  %i.fd = and i64 %.sroa.speculated35.i, 7        ; 2 uses
  %cmp.n207 = icmp eq i64 %i.fd, 0
  %i.fe = getelementptr i8, ptr %i.ai, i64 %i.ee
  %i.ff = and i64 %.sroa.speculated35.i, 7        ; 2 uses
  %cmp.n179 = icmp eq i64 %i.ff, 0
  %i.fg = getelementptr i8, ptr %i.ai, i64 %i.ec
  %i.fh = and i64 %.sroa.speculated35.i, 7        ; 2 uses
  %cmp.n = icmp eq i64 %i.fh, 0
  %xtraiter534 = and i64 %i.bf, 1
  %i.fi = icmp eq i64 %i.bf, 1
  %unroll_iter = and i64 %i.bf, -2
  %lcmp.mod535.not = icmp eq i64 %xtraiter534, 0
  %lcmp.mod536 = trunc i64 %i.bf to i1
  br label %bb.j

.preheader.i.i.i:                                 ; preds = %._crit_edge151.i.i.i, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i.i
  br i1 %.not.i.i, label %._crit_edge156.i.i.i, label %.lr.ph155.i.i.i

bb.j:                                             ; preds = %._crit_edge151.i.i.i, %.lr.ph153.i.i.i
  %.078152.i.i.i = phi i64 [ 0, %.lr.ph153.i.i.i ], [ %i.bal, %._crit_edge151.i.i.i ] ; 4 uses
  %i.fj = mul i64 %.078152.i.i.i, %i.ba           ; 9 uses
  %i.fk = getelementptr i8, ptr %i.ai, i64 %i.fj  ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  br i1 %.not.i.i, label %._crit_edge.thread.i.i.i, label %iter.check482

iter.check482:                                    ; preds = %bb.j
  %i.fl = and i64 %.078152.i.i.i, 1               ; 7 uses
  %i.fm = xor i64 %i.fl, 1                        ; 6 uses
  br i1 %min.iters.check444, label %vec.epilog.scalar.ph483.preheader, label %vector.main.loop.iter.check445

vector.main.loop.iter.check445:                   ; preds = %iter.check482
  br i1 %min.iters.check446, label %vec.epilog.ph486, label %vector.body449

vector.body449:                                   ; preds = %vector.main.loop.iter.check445, %vector.body449
  %index450 = phi i64 [ %index.next478, %vector.body449 ], [ 0, %vector.main.loop.iter.check445 ] ; 3 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body449 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check445 ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0.i, <4 x i64> %vec.ind ; 2 uses
  %wide.gep451 = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0.i, <4 x i64> %step.add ; 2 uses
  %wide.gep452 = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0.i, <4 x i64> %step.add.2 ; 2 uses
  %wide.gep453 = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0.i, <4 x i64> %step.add.3 ; 2 uses
  %wide.gep454 = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep, i64 %i.fl
  %wide.gep455 = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep451, i64 %i.fl
  %wide.gep456 = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep452, i64 %i.fl
  %wide.gep457 = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep453, i64 %i.fl
  %wide.gep458 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep454, i64 128 ; 2 uses
  %wide.gep459 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep455, i64 128 ; 2 uses
  %wide.gep460 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep456, i64 128 ; 2 uses
  %wide.gep461 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep457, i64 128 ; 2 uses
  %i.fn = ptrtoint <4 x ptr> %wide.gep458 to <4 x i64>
  %i.fo = ptrtoint <4 x ptr> %wide.gep459 to <4 x i64>
  %i.fp = ptrtoint <4 x ptr> %wide.gep460 to <4 x i64>
  %i.fq = ptrtoint <4 x ptr> %wide.gep461 to <4 x i64>
  %i.fr = lshr <4 x i64> %i.fn, splat (i64 2)
  %i.fs = lshr <4 x i64> %i.fo, splat (i64 2)
  %i.ft = lshr <4 x i64> %i.fp, splat (i64 2)
  %i.fu = lshr <4 x i64> %i.fq, splat (i64 2)
  %i.fv = and <4 x i64> %i.fr, splat (i64 15)
  %i.fw = and <4 x i64> %i.fs, splat (i64 15)
  %i.fx = and <4 x i64> %i.ft, splat (i64 15)
  %i.fy = and <4 x i64> %i.fu, splat (i64 15)
  %wide.gep462 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep458, <4 x i64> %i.fv
  %wide.gep463 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep459, <4 x i64> %i.fw
  %wide.gep464 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep460, <4 x i64> %i.fx
  %wide.gep465 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep461, <4 x i64> %i.fy
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index450 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 96
  store <4 x ptr> %wide.gep462, ptr %i.fz, align 16, !tbaa !101
  store <4 x ptr> %wide.gep463, ptr %i.ga, align 16, !tbaa !101
  store <4 x ptr> %wide.gep464, ptr %i.gb, align 16, !tbaa !101
  store <4 x ptr> %wide.gep465, ptr %i.gc, align 16, !tbaa !101
  %wide.gep466 = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep, i64 %i.fm
  %wide.gep467 = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep451, i64 %i.fm
  %wide.gep468 = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep452, i64 %i.fm
  %wide.gep469 = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep453, i64 %i.fm
  %wide.gep470 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep466, i64 128 ; 2 uses
  %wide.gep471 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep467, i64 128 ; 2 uses
  %wide.gep472 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep468, i64 128 ; 2 uses
  %wide.gep473 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep469, i64 128 ; 2 uses
  %i.gd = ptrtoint <4 x ptr> %wide.gep470 to <4 x i64>
  %i.ge = ptrtoint <4 x ptr> %wide.gep471 to <4 x i64>
  %i.gf = ptrtoint <4 x ptr> %wide.gep472 to <4 x i64>
  %i.gg = ptrtoint <4 x ptr> %wide.gep473 to <4 x i64>
  %i.gh = lshr <4 x i64> %i.gd, splat (i64 2)
  %i.gi = lshr <4 x i64> %i.ge, splat (i64 2)
  %i.gj = lshr <4 x i64> %i.gf, splat (i64 2)
  %i.gk = lshr <4 x i64> %i.gg, splat (i64 2)
  %i.gl = and <4 x i64> %i.gh, splat (i64 15)
  %i.gm = and <4 x i64> %i.gi, splat (i64 15)
  %i.gn = and <4 x i64> %i.gj, splat (i64 15)
  %i.go = and <4 x i64> %i.gk, splat (i64 15)
  %wide.gep474 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep470, <4 x i64> %i.gl
  %wide.gep475 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep471, <4 x i64> %i.gm
  %wide.gep476 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep472, <4 x i64> %i.gn
  %wide.gep477 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep473, <4 x i64> %i.go
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index450 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 96
  store <4 x ptr> %wide.gep474, ptr %i.gp, align 16, !tbaa !101
  store <4 x ptr> %wide.gep475, ptr %i.gq, align 16, !tbaa !101
  store <4 x ptr> %wide.gep476, ptr %i.gr, align 16, !tbaa !101
  store <4 x ptr> %wide.gep477, ptr %i.gs, align 16, !tbaa !101
  %index.next478 = add nuw i64 %index450, 16      ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.gt = icmp eq i64 %index.next478, %n.vec448
  br i1 %i.gt, label %middle.block479, label %vector.body449, !llvm.loop !1717

middle.block479:                                  ; preds = %vector.body449
  br i1 %cmp.n480, label %._crit_edge.i.i.i, label %vec.epilog.iter.check484

vec.epilog.iter.check484:                         ; preds = %middle.block479
  br i1 %min.epilog.iters.check485, label %vec.epilog.scalar.ph483.preheader, label %vec.epilog.ph486, !prof !119

vec.epilog.ph486:                                 ; preds = %vector.main.loop.iter.check445, %vec.epilog.iter.check484
  %vec.epilog.resume.val481 = phi i64 [ %n.vec448, %vec.epilog.iter.check484 ], [ 0, %vector.main.loop.iter.check445 ] ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val481, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body488

vec.epilog.vector.body488:                        ; preds = %vec.epilog.vector.body488, %vec.epilog.ph486
  %index489 = phi i64 [ %vec.epilog.resume.val481, %vec.epilog.ph486 ], [ %index.next498, %vec.epilog.vector.body488 ] ; 3 uses
  %vec.ind490 = phi <4 x i64> [ %induction, %vec.epilog.ph486 ], [ %vec.ind.next499, %vec.epilog.vector.body488 ] ; 2 uses
  %wide.gep491 = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0.i, <4 x i64> %vec.ind490 ; 2 uses
  %wide.gep492 = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep491, i64 %i.fl
  %wide.gep493 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep492, i64 128 ; 2 uses
  %i.gu = ptrtoint <4 x ptr> %wide.gep493 to <4 x i64>
  %i.gv = lshr <4 x i64> %i.gu, splat (i64 2)
  %i.gw = and <4 x i64> %i.gv, splat (i64 15)
  %wide.gep494 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep493, <4 x i64> %i.gw
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index489
end_hunk_0
begin_hunk_1_@_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m:bb.a
  %i.bbx = icmp ult i32 %i.bbu, 16                ; 3 uses
  %i.bby = sub nuw nsw i32 43, %i.bbv
  %i.bbz = select i1 %i.bbx, i32 %i.bbu, i32 %i.bby
  %i.bca = select i1 %i.bbx, i32 0, i32 %i.bbw    ; 2 uses
  %.neg.i.i.i130.i.i.i = shl nsw i32 -1, %i.bca
  %i.bcb = add i32 %.neg.i.i.i130.i.i.i, %i.bbu
  %i.bcc = select i1 %i.bbx, i32 0, i32 %i.bcb
  %i.bcd = zext i32 %i.bcc to i64
  %i.bce = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 38
  %i.bcf = zext nneg i32 %i.bbz to i64            ; 2 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bce, i64 %i.bcf
  %i.bch = load i8, ptr %i.bcg, align 1, !tbaa !85 ; 2 uses
  %i.bci = zext i8 %i.bch to i32
  %i.bcj = zext nneg i8 %i.bch to i64
  %i.bck = shl i64 %i.bcd, %i.bcj
  %i.bcl = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 72
  %i.bcm = getelementptr inbounds nuw [2 x i8], ptr %i.bcl, i64 %i.bcf
  %i.bcn = load i16, ptr %i.bcm, align 2, !tbaa !104
  %i.bco = zext i16 %i.bcn to i64
  %i.bcp = or i64 %i.bck, %i.bco
  %i.bcq = load i8, ptr %.val.val.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.bcr = zext i8 %i.bcq to i32
  %i.bcs = zext nneg i8 %i.bcq to i64
  %i.bct = shl i64 %i.bcp, %i.bcs
  %i.bcu = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 19
  %i.bcv = load i8, ptr %i.bcu, align 1, !tbaa !85
  %i.bcw = zext i8 %i.bcv to i64
  %i.bcx = or i64 %i.bct, %i.bcw
  %i.bcy = add nuw nsw i32 %i.bca, %i.bci
  %i.bcz = add nuw nsw i32 %i.bcy, %i.bcr
  %i.bda = load ptr, ptr %.val.val81.i.i.i, align 8, !tbaa !71
  %i.bdb = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 16 ; 3 uses
  %i.bdc = load i64, ptr %i.bdb, align 8, !tbaa !74
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bda, i64 %i.bdc
  %i.bde = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 24 ; 4 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i, i64 32 ; 4 uses
  %i.bdg = load i64, ptr %i.bde, align 8, !tbaa !68 ; 2 uses
  %i.bdh = shl i64 %i.bcx, %i.bdg
  %i.bdi = load i64, ptr %i.bdf, align 8, !tbaa !68
  %i.bdj = or i64 %i.bdi, %i.bdh                  ; 2 uses
  store i64 %i.bdj, ptr %i.bdf, align 8, !tbaa !68
  %i.bdk = zext nneg i32 %i.bcz to i64
  %i.bdl = add i64 %i.bdg, %i.bdk
  store i64 %i.bdl, ptr %i.bde, align 8, !tbaa !68
  store i64 %i.bdj, ptr %i.bdd, align 1
  %i.bdm = load i64, ptr %i.bde, align 8, !tbaa !68 ; 3 uses
  %i.bdn = lshr i64 %i.bdm, 3
  %i.bdo = and i64 %i.bdm, -8
  %i.bdp = and i64 %i.bdm, 7
  store i64 %i.bdp, ptr %i.bde, align 8, !tbaa !68
  %i.bdq = load i64, ptr %i.bdf, align 8, !tbaa !68
  %i.bdr = lshr i64 %i.bdq, %i.bdo
  store i64 %i.bdr, ptr %i.bdf, align 8, !tbaa !68
  %i.bds = load i64, ptr %i.bdb, align 8, !tbaa !74
  %i.bdt = add i64 %i.bds, %i.bdn
  store i64 %i.bdt, ptr %i.bdb, align 8, !tbaa !74
  br label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_14MoreThan14BitsEEES3_E8FinalizeEv.exit.i.i.i

_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_14MoreThan14BitsEEES3_E8FinalizeEv.exit.i.i.i: ; preds = %bb.al, %bb.ak, %.lr.ph155.i.i.i
  %i.bdu = add nuw nsw i64 %.0154.i.i.i, 1        ; 2 uses
  %exitcond179.not.i.i.i = icmp eq i64 %i.bdu, %i.bf
  br i1 %exitcond179.not.i.i.i, label %._crit_edge156.i.i.i, label %.lr.ph155.i.i.i, !llvm.loop !1789

.lr.ph57.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph57.i.i
  %.03456.i.i = phi i64 [ %i.bhr, %.lr.ph57.i.i ], [ 0, %.preheader.i.i ] ; 5 uses
  %i.bdv = getelementptr inbounds nuw [192 x i8], ptr %2, i64 %.03456.i.i ; 35 uses
  %i.bdw = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.03456.i.i
  store ptr %i.bdv, ptr %i.bdw, align 16, !tbaa !1844
  %i.bdx = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %.03456.i.i
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdv, i64 8
  store ptr %i.bdx, ptr %i.bdy, align 8, !tbaa !1847
  %i.bdz = getelementptr inbounds nuw [440 x i8], ptr %i.bi, i64 %.03456.i.i ; 33 uses
  store ptr %i.bdz, ptr %i.bdv, align 64, !tbaa !1846
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 19
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdv, i64 64
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bdv, i64 128
  %i.bed = load i8, ptr %i.bdz, align 1, !tbaa !85
  store i8 %i.bed, ptr %i.beb, align 64, !tbaa !85
  %i.bee = load i8, ptr %i.bea, align 1, !tbaa !85
  store i8 %i.bee, ptr %i.bec, align 64, !tbaa !85
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bdz, i64 1
  %i.beg = load i8, ptr %i.bef, align 1, !tbaa !85
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bdv, i64 65
  store i8 %i.beg, ptr %i.beh, align 1, !tbaa !85
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bdz, i64 20
  %i.bej = load i8, ptr %i.bei, align 1, !tbaa !85
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bdv, i64 129
  store i8 %i.bej, ptr %i.bek, align 1, !tbaa !85
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bdz, i64 2
  %i.bem = load i8, ptr %i.bel, align 1, !tbaa !85
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bdv, i64 66
  store i8 %i.bem, ptr %i.ben, align 2, !tbaa !85
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bdz, i64 21
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !85
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bdv, i64 130
  store i8 %i.bep, ptr %i.beq, align 2, !tbaa !85
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bdz, i64 3
  %i.bes = load i8, ptr %i.ber, align 1, !tbaa !85
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bdv, i64 67
  store i8 %i.bes, ptr %i.bet, align 1, !tbaa !85
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bdz, i64 22
  %i.bev = load i8, ptr %i.beu, align 1, !tbaa !85
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bdv, i64 131
  store i8 %i.bev, ptr %i.bew, align 1, !tbaa !85
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bdz, i64 4
  %i.bey = load i8, ptr %i.bex, align 1, !tbaa !85
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bdv, i64 68
  store i8 %i.bey, ptr %i.bez, align 4, !tbaa !85
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bdz, i64 23
  %i.bfb = load i8, ptr %i.bfa, align 1, !tbaa !85
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bdv, i64 132
  store i8 %i.bfb, ptr %i.bfc, align 4, !tbaa !85
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bdz, i64 5
  %i.bfe = load i8, ptr %i.bfd, align 1, !tbaa !85
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bdv, i64 69
  store i8 %i.bfe, ptr %i.bff, align 1, !tbaa !85
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bdz, i64 24
  %i.bfh = load i8, ptr %i.bfg, align 1, !tbaa !85
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bdv, i64 133
  store i8 %i.bfh, ptr %i.bfi, align 1, !tbaa !85
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bdz, i64 6
  %i.bfk = load i8, ptr %i.bfj, align 1, !tbaa !85
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bdv, i64 70
  store i8 %i.bfk, ptr %i.bfl, align 2, !tbaa !85
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bdz, i64 25
  %i.bfn = load i8, ptr %i.bfm, align 1, !tbaa !85
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bdv, i64 134
  store i8 %i.bfn, ptr %i.bfo, align 2, !tbaa !85
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bdz, i64 7
  %i.bfq = load i8, ptr %i.bfp, align 1, !tbaa !85
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bdv, i64 71
  store i8 %i.bfq, ptr %i.bfr, align 1, !tbaa !85
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bdz, i64 26
  %i.bft = load i8, ptr %i.bfs, align 1, !tbaa !85
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bdv, i64 135
  store i8 %i.bft, ptr %i.bfu, align 1, !tbaa !85
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bdz, i64 8
  %i.bfw = load i8, ptr %i.bfv, align 1, !tbaa !85
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bdv, i64 72
  store i8 %i.bfw, ptr %i.bfx, align 8, !tbaa !85
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bdz, i64 27
  %i.bfz = load i8, ptr %i.bfy, align 1, !tbaa !85
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bdv, i64 136
  store i8 %i.bfz, ptr %i.bga, align 8, !tbaa !85
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bdz, i64 9
  %i.bgc = load i8, ptr %i.bgb, align 1, !tbaa !85
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bdv, i64 73
  store i8 %i.bgc, ptr %i.bgd, align 1, !tbaa !85
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bdz, i64 28
  %i.bgf = load i8, ptr %i.bge, align 1, !tbaa !85
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bdv, i64 137
  store i8 %i.bgf, ptr %i.bgg, align 1, !tbaa !85
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bdz, i64 10
  %i.bgi = load i8, ptr %i.bgh, align 1, !tbaa !85
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bdv, i64 74
  store i8 %i.bgi, ptr %i.bgj, align 2, !tbaa !85
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bdz, i64 29
  %i.bgl = load i8, ptr %i.bgk, align 1, !tbaa !85
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bdv, i64 138
  store i8 %i.bgl, ptr %i.bgm, align 2, !tbaa !85
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bdz, i64 11
  %i.bgo = load i8, ptr %i.bgn, align 1, !tbaa !85
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bdv, i64 75
  store i8 %i.bgo, ptr %i.bgp, align 1, !tbaa !85
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bdz, i64 30
  %i.bgr = load i8, ptr %i.bgq, align 1, !tbaa !85
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bdv, i64 139
  store i8 %i.bgr, ptr %i.bgs, align 1, !tbaa !85
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bdz, i64 12
  %i.bgu = load i8, ptr %i.bgt, align 1, !tbaa !85
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bdv, i64 76
  store i8 %i.bgu, ptr %i.bgv, align 4, !tbaa !85
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bdz, i64 31
  %i.bgx = load i8, ptr %i.bgw, align 1, !tbaa !85
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bdv, i64 140
  store i8 %i.bgx, ptr %i.bgy, align 4, !tbaa !85
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bdz, i64 13
  %i.bha = load i8, ptr %i.bgz, align 1, !tbaa !85
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bdv, i64 77
  store i8 %i.bha, ptr %i.bhb, align 1, !tbaa !85
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bdz, i64 32
  %i.bhd = load i8, ptr %i.bhc, align 1, !tbaa !85
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bdv, i64 141
  store i8 %i.bhd, ptr %i.bhe, align 1, !tbaa !85
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bdz, i64 17
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bdz, i64 36
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bdz, i64 15
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bdz, i64 34
  %i.bhj = load i8, ptr %i.bhh, align 1, !tbaa !85
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bdv, i64 78
  store i8 %i.bhj, ptr %i.bhk, align 2, !tbaa !85
  %i.bhl = load i8, ptr %i.bhi, align 1, !tbaa !85
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bdv, i64 142
  store i8 %i.bhl, ptr %i.bhm, align 2, !tbaa !85
  %i.bhn = load i8, ptr %i.bhf, align 1, !tbaa !85
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bdv, i64 79
  store i8 %i.bhn, ptr %i.bho, align 1, !tbaa !85
  %i.bhp = load i8, ptr %i.bhg, align 1, !tbaa !85
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bdv, i64 143
  store i8 %i.bhp, ptr %i.bhq, align 1, !tbaa !85
  %i.bhr = add nuw nsw i64 %.03456.i.i, 1         ; 2 uses
  %exitcond76.not.i.i = icmp eq i64 %i.bhr, %i.bf
  br i1 %exitcond76.not.i.i, label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i, label %.lr.ph57.i.i, !llvm.loop !1790

_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_14MoreThan14BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i: ; preds = %bb.ai, %._crit_edge156.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

bb.am:                                            ; preds = %bb.d
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.bht = getelementptr inbounds nuw i8, ptr %i.av, i64 1888
  %i.bhu = load ptr, ptr %i.bht, align 8, !tbaa !90
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.bhw = load i64, ptr %i.bhv, align 8, !tbaa !73
  call fastcc void @_ZN4AVX212_GLOBAL__N_121WriteACSectionPaletteEPKhmmmmmbPKN12_GLOBAL__N_110PrefixCodeEPKsmRNS3_9BitWriterE(ptr noundef %i.ai, i64 noundef %.sroa.speculated35.i, i64 noundef %.sroa.speculated.i, i64 noundef %i.ba, i1 noundef zeroext %i.bd, ptr noundef nonnull %i.bhs, ptr noundef %i.bhu, i64 noundef %i.bhw, ptr noundef nonnull align 8 dereferenceable(40) %i.aw) #38
  br label %_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit

_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlmE_clEm.exit: ; preds = %_ZN4AVX212_GLOBAL__N_114WriteACSectionINS0_14MoreThan14BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i, %bb.am
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.bia = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  %i.bib = load <2 x i64>, ptr %i.bhx, align 8, !tbaa !68
  %i.bic = load <2 x i64>, ptr %i.bhy, align 8, !tbaa !68
  %i.bid = load <2 x i64>, ptr %i.bhz, align 8, !tbaa !68
  %i.bie = load <2 x i64>, ptr %i.bia, align 8, !tbaa !68
  %i.bif = add <2 x i64> %i.bib, <i64 0, i64 7>
  %i.big = add <2 x i64> %i.bif, %i.bic
  %i.bih = add <2 x i64> %i.big, %i.bid
  %i.bii = add <2 x i64> %i.bih, %i.bie           ; 2 uses
  %i.bij = extractelement <2 x i64> %i.bii, i64 1
  %i.bik = lshr i64 %i.bij, 3
  %i.bil = extractelement <2 x i64> %i.bii, i64 0
  %i.bim = add i64 %i.bil, %i.bik
  %i.bin = and i64 %i.bim, 2305843009213693951
  %i.bio = load ptr, ptr %i.h, align 8, !tbaa !1793, !nonnull !121, !align !176
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !151
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bip, i64 1976
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !70
  %i.bis = getelementptr inbounds nuw [8 x i8], ptr %i.bir, i64 %i.z
  store i64 %i.bin, ptr %i.bis, align 8, !tbaa !68
  call void %.sroa.610.0.copyload.i(ptr noundef %.sroa.07.0.copyload.i, ptr noundef %i.ai) #36, !inline_history !1714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4AVX212_GLOBAL__N_114MoreThan14Bits15EncodeChunkSimdEPjmmPKhS4_RN12_GLOBAL__N_19BitWriterE(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %5) unnamed_addr #31 align 2 {
bb.a:
  %i.a = load <16 x i8>, ptr %3, align 1, !tbaa !85
  %i.b = shufflevector <16 x i8> %i.a, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.c = load <16 x i8>, ptr %4, align 1, !tbaa !85
  %i.d = shufflevector <16 x i8> %i.c, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.e = load <8 x i32>, ptr %0, align 1, !tbaa !85 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load <8 x i32>, ptr %i.f, align 1, !tbaa !85 ; 2 uses
  %i.h = sitofp <8 x i32> %i.e to <8 x float>
  %i.i = bitcast <8 x float> %i.h to <8 x i32>
  %i.j = lshr <8 x i32> %i.i, splat (i32 23)      ; 2 uses
  %i.k = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.j, <8 x i32> splat (i32 126))
  %i.l = sitofp <8 x i32> %i.g to <8 x float>
  %i.m = bitcast <8 x float> %i.l to <8 x i32>
  %i.n = lshr <8 x i32> %i.m, splat (i32 23)      ; 2 uses
  %i.o = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.n, <8 x i32> splat (i32 126))
  %i.p = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.j, <8 x i32> splat (i32 127)) ; 2 uses
  %i.q = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.n, <8 x i32> splat (i32 127)) ; 2 uses
  %i.r = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> splat (i32 1), <8 x i32> %i.p)
  %i.s = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.e, <8 x i32> %i.r)
  %i.t = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> splat (i32 1), <8 x i32> %i.q)
  %i.u = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.g, <8 x i32> %i.t)
  %i.v = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.k, <8 x i32> %i.o)
  %i.w = bitcast <16 x i16> %i.v to <4 x i64>
  %i.x = shufflevector <4 x i64> %i.w, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.y = bitcast <4 x i64> %i.x to <16 x i16>     ; 3 uses
  %i.z = icmp sgt <16 x i16> %i.y, splat (i16 12) ; 2 uses
  %i.aa = add <16 x i16> %i.y, splat (i16 13)
  %i.ab = lshr <16 x i16> %i.aa, splat (i16 1)
  %i.ac = select <16 x i1> %i.z, <16 x i16> %i.ab, <16 x i16> %i.y
  %i.ad = bitcast <16 x i16> %i.ac to <32 x i8>
  %i.ae = or <32 x i8> %i.ad, <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1> ; 2 uses
  %i.af = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.d, <32 x i8> %i.ae) ; 2 uses
  %i.ag = bitcast <4 x i64> %i.x to <16 x i16>
  %i.ah = and <16 x i16> %i.ag, splat (i16 1)
  %i.ai = icmp eq <16 x i16> %i.ah, zeroinitializer
  %i.aj = and <16 x i1> %i.z, %i.ai
  %i.ak = bitcast <32 x i8> %i.af to <16 x i16>
  %i.al = bitcast <32 x i8> %i.af to <16 x i16>
  %i.am = or <16 x i16> %i.al, splat (i16 128)
  %i.an = select <16 x i1> %i.aj, <16 x i16> %i.am, <16 x i16> %i.ak ; 2 uses
  %i.ao = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.b, <32 x i8> %i.ae)
  %i.ap = shufflevector <16 x i16> %i.an, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.aq = bitcast <16 x i16> %i.ap to <4 x i64>
  %i.ar = shufflevector <16 x i16> %i.an, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.as = bitcast <16 x i16> %i.ar to <4 x i64>
  %i.at = shufflevector <16 x i16> %i.ap, <16 x i16> %i.ar, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.au = bitcast <16 x i16> %i.at to <4 x i64>
  %i.av = shufflevector <4 x i64> %i.aq, <4 x i64> %i.as, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aw = bitcast <32 x i8> %i.ao to <16 x i16>   ; 2 uses
  %i.ax = shufflevector <16 x i16> %i.aw, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ay = bitcast <16 x i16> %i.ax to <4 x i64>
  %i.az = shufflevector <16 x i16> %i.aw, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ba = bitcast <16 x i16> %i.az to <4 x i64>
  %i.bb = shufflevector <16 x i16> %i.ax, <16 x i16> %i.az, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bc = shufflevector <4 x i64> %i.ay, <4 x i64> %i.ba, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bd = bitcast <16 x i16> %i.bb to <8 x i32>   ; 2 uses
  %i.be = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.s, <8 x i32> %i.bd)
  %i.bf = bitcast <8 x i32> %i.be to <4 x i64>
  %i.bg = or <4 x i64> %i.au, %i.bf
  %i.bh = add nuw nsw <8 x i32> %i.p, %i.bd
  %i.bi = bitcast <8 x i32> %i.bh to <4 x i64>
  %.sroa.speculated.i.le = tail call i64 @llvm.umin.i64(i64 %1, i64 8)
  %i.bj = sub nsw i64 0, %.sroa.speculated.i.le
  %i.bk = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits326ClipToEmE5kMask, i64 32), i64 %i.bj
  %i.bl = load <4 x i64>, ptr %i.bk, align 4, !tbaa !85 ; 2 uses
  %.sroa.speculated.i19.le = tail call i64 @llvm.umin.i64(i64 %2, i64 8)
  %i.bm = sub nsw i64 0, %.sroa.speculated.i19.le
  %i.bn = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits324SkipEmE5kMask, i64 32), i64 %i.bm
  %i.bo = load <4 x i64>, ptr %i.bn, align 4, !tbaa !85 ; 2 uses
  %i.bp = and <4 x i64> %i.bl, %i.bi
  %i.bq = and <4 x i64> %i.bp, %i.bo              ; 2 uses
  %i.br = and <4 x i64> %i.bl, %i.bg
  %i.bs = and <4 x i64> %i.br, %i.bo              ; 2 uses
  %i.bt = bitcast <4 x i64> %i.bc to <8 x i32>    ; 2 uses
  %i.bu = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %i.u, <8 x i32> %i.bt)
  %i.bv = bitcast <8 x i32> %i.bu to <4 x i64>
  %i.bw = or <4 x i64> %i.av, %i.bv
  %i.bx = add nuw nsw <8 x i32> %i.q, %i.bt
  %i.by = bitcast <8 x i32> %i.bx to <4 x i64>
  %i.bz = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 8)
  %.sroa.speculated.i20.le = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 8)
  %i.ca = sub nsw i64 0, %.sroa.speculated.i20.le
  %i.cb = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits326ClipToEmE5kMask, i64 32), i64 %i.ca
  %i.cc = load <4 x i64>, ptr %i.cb, align 4, !tbaa !85 ; 2 uses
  %i.cd = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 8)
  %.sroa.speculated.i21.le = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 8)
  %i.ce = sub nsw i64 0, %.sroa.speculated.i21.le
  %i.cf = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN4AVX212_GLOBAL__N_16Bits324SkipEmE5kMask, i64 32), i64 %i.ce
  %i.cg = load <4 x i64>, ptr %i.cf, align 4, !tbaa !85 ; 2 uses
  %i.ch = and <4 x i64> %i.cc, %i.by
  %i.ci = and <4 x i64> %i.ch, %i.cg              ; 2 uses
  %i.cj = and <4 x i64> %i.cc, %i.bw
  %i.ck = and <4 x i64> %i.cj, %i.cg              ; 2 uses
  %i.cl = lshr <4 x i64> %i.bq, splat (i64 32)
  %i.cm = and <4 x i64> %i.bq, splat (i64 4294967295) ; 2 uses
  %i.cn = lshr <4 x i64> %i.bs, splat (i64 32)
  %i.co = and <4 x i64> %i.bs, splat (i64 4294967295)
  %i.cp = add nuw nsw <4 x i64> %i.cl, %i.cm      ; 4 uses
  %i.cq = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.cn, <4 x i64> %i.cm)
  %i.cr = or <4 x i64> %i.cq, %i.co               ; 4 uses
  %i.cs = lshr <4 x i64> %i.ci, splat (i64 32)
  %i.ct = and <4 x i64> %i.ci, splat (i64 4294967295) ; 2 uses
  %i.cu = lshr <4 x i64> %i.ck, splat (i64 32)
  %i.cv = and <4 x i64> %i.ck, splat (i64 4294967295)
  %i.cw = add nuw nsw <4 x i64> %i.cs, %i.ct      ; 4 uses
  %i.cx = tail call noundef <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64> %i.cu, <4 x i64> %i.ct)
  %i.cy = or <4 x i64> %i.cx, %i.cv               ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 27 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 20 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 26 uses
  %.sroa.0246.0.vec.extract = extractelement <4 x i64> %i.cr, i64 0 ; 2 uses
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !86
  %i.dd = shl i64 %.sroa.0246.0.vec.extract, %i.dc
  %i.de = load i64, ptr %i.da, align 8, !tbaa !87
  %i.df = or i64 %i.de, %i.dd                     ; 2 uses
  store i64 %i.df, ptr %i.da, align 8, !tbaa !87
  %i.dg = load ptr, ptr %5, align 8, !tbaa !71
  %i.dh = load i64, ptr %i.db, align 8, !tbaa !74
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  store i64 %i.df, ptr %i.di, align 1
  %i.dj = load i64, ptr %i.cz, align 8, !tbaa !86 ; 2 uses
  %.sroa.0247.0.vec.extract = extractelement <4 x i64> %i.cp, i64 0
  %i.dk = add i64 %.sroa.0247.0.vec.extract, %i.dj ; 4 uses
  store i64 %i.dk, ptr %i.cz, align 8, !tbaa !86
  %i.dl = icmp ugt i64 %i.dk, 63
  br i1 %i.dl, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr %i.da, align 8, !tbaa !87
  %.pre249 = load i64, ptr %i.db, align 8, !tbaa !74
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dm = sub i64 64, %i.dj                       ; 2 uses
  %i.dn = icmp ugt i64 %i.dm, 63
  %i.do = lshr i64 %.sroa.0246.0.vec.extract, %i.dm
  %spec.select = select i1 %i.dn, i64 0, i64 %i.do
  %i.dp = add i64 %i.dk, -64                      ; 2 uses
  store i64 %i.dp, ptr %i.cz, align 8, !tbaa !86
  %i.dq = load i64, ptr %i.db, align 8, !tbaa !74
  %i.dr = add i64 %i.dq, 8                        ; 2 uses
  store i64 %i.dr, ptr %i.db, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.ds = phi i64 [ %i.dr, %bb.b ], [ %.pre249, %._crit_edge ]
  %i.dt = phi i64 [ %spec.select, %bb.b ], [ %.pre, %._crit_edge ]
  %i.du = phi i64 [ %i.dp, %bb.b ], [ %i.dk, %._crit_edge ]
  %.sroa.0246.8.vec.extract = extractelement <4 x i64> %i.cr, i64 1 ; 2 uses
  %i.dv = shl i64 %.sroa.0246.8.vec.extract, %i.du
  %i.dw = or i64 %i.dt, %i.dv                     ; 2 uses
end_hunk_1
begin_hunk_2_@_ZZN22default_implementation12_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENUlS8_mE_8__invokeES8_m:bb.a
  %i.z = select i1 %i.w, i64 0, i64 %i.y          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !123 ; 2 uses
  %i.ac = shl i64 %i.m, 8                         ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 9 uses
  %.sroa.speculated35.i.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 256) ; 51 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !124 ; 2 uses
  %i.ag = shl i64 %i.n, 8                         ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 256) ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %.sroa.07.0.copyload.i.i = load ptr, ptr %i.j, align 8, !tbaa !72 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.59.0.copyload.i.i = load ptr, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !tbaa !72
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.610.0.copyload.i.i = load ptr, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !tbaa !72
  %i.ai = call noundef ptr %.sroa.59.0.copyload.i.i(ptr noundef %.sroa.07.0.copyload.i.i, i64 noundef %i.ac, i64 noundef %i.ag, i64 noundef %.sroa.speculated35.i.i, i64 noundef %.sroa.speculated.i.i, ptr noundef nonnull %i.d) #36, !inline_history !2125 ; 31 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2194, !nonnull !121
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !95, !range !108, !noundef !121
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2195, !nonnull !121, !align !176
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1952
  %.val31.i.i = load ptr, ptr %i.ap, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw [160 x i8], ptr %.val31.i.i, i64 %1
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !2192
  %.pre57.i.i = load ptr, ptr %.pre.i.i, align 8, !tbaa !151
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !2192, !nonnull !121, !align !176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !151 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1952
  %.val.i.i = load ptr, ptr %i.at, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw [160 x i8], ptr %.val.i.i, i64 %i.z
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.av = phi ptr [ %.pre57.i.i, %bb.b ], [ %i.as, %bb.c ] ; 7 uses
  %i.aw = phi ptr [ %i.aq, %bb.b ], [ %i.au, %bb.c ] ; 16 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !132, !range !108, !noundef !121
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !68  ; 18 uses
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !2193, !nonnull !121
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !95, !range !108, !noundef !121
  %i.bd = trunc nuw i8 %i.bc to i1                ; 3 uses
  br i1 %i.az, label %bb.e, label %bb.an

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !73 ; 17 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !130
  %.not.i.i = icmp eq i32 %i.bh, 0                ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %.not.i.i.i = icmp eq i64 %i.bf, 0              ; 5 uses
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %factor.op.mul.i.i.i = mul nuw nsw i64 %.sroa.speculated35.i.i, 3
  %i.bj = mul nuw nsw i64 %factor.op.mul.i.i.i, %.sroa.speculated.i.i
  %i.bk = add nuw nsw i64 %i.bj, 64               ; 2 uses
  br i1 %i.bd, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bl = call noalias ptr @malloc(i64 noundef %i.bk) #35
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !71 ; 2 uses
  store ptr %i.bl, ptr %i.aw, align 8, !tbaa !71
  %.not.i.i.peel.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.peel.i.i.i, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !72
  call void %i.bo(ptr noundef nonnull %i.bm) #36, !inline_history !2126
  br label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i

_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i
  %exitcond.peel.not.i.i.i = icmp eq i64 %i.bf, 1
  br i1 %exitcond.peel.not.i.i.i, label %._crit_edge.i.i.i, label %.peel.next.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i.i, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i, %bb.e
  br i1 %i.bd, label %.preheader.i.i.i, label %bb.i

.peel.next.i.i.i:                                 ; preds = %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i.i
  %.048.i.i.i = phi i64 [ %i.bu, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i.i ], [ 1, %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.peel.i.i.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %.048.i.i.i ; 3 uses
  %i.bq = call noalias ptr @malloc(i64 noundef %i.bk) #35
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !71 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !71
  %.not.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.peel.next.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !72
  call void %i.bt(ptr noundef nonnull %i.br) #36, !inline_history !2126
  br label %_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i.i

_ZN12_GLOBAL__N_19BitWriter8AllocateEm.exit.i.i.i: ; preds = %bb.h, %.peel.next.i.i.i
  %i.bu = add nuw i64 %.048.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bu, %i.bf
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.peel.next.i.i.i, !llvm.loop !2127

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load ptr, ptr %i.aw, align 8, !tbaa !71
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 7 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 8 uses
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !68 ; 2 uses
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = load i64, ptr %i.ca, align 8, !tbaa !68
  %i.ce = or i64 %i.cd, %i.cc                     ; 2 uses
  store i64 %i.ce, ptr %i.ca, align 8, !tbaa !68
  %i.cf = add i64 %i.cb, 1
  store i64 %i.cf, ptr %i.bz, align 8, !tbaa !68
  store i64 %i.ce, ptr %i.by, align 1
  %i.cg = load i64, ptr %i.bz, align 8, !tbaa !68 ; 3 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.cg, -8
  %i.cj = and i64 %i.cg, 7                        ; 2 uses
  %i.ck = load i64, ptr %i.ca, align 8, !tbaa !68
  %i.cl = lshr i64 %i.ck, %i.ci
  %i.cm = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.cn = add i64 %i.cm, %i.ch                    ; 2 uses
  store i64 %i.cn, ptr %i.bw, align 8, !tbaa !74
  %i.co = load ptr, ptr %i.aw, align 8, !tbaa !71
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  %i.cq = shl nuw nsw i64 1, %i.cj
  %i.cr = or i64 %i.cl, %i.cq                     ; 2 uses
  store i64 %i.cr, ptr %i.ca, align 8, !tbaa !68
  %i.cs = add nuw nsw i64 %i.cj, 1
  store i64 %i.cs, ptr %i.bz, align 8, !tbaa !68
  store i64 %i.cr, ptr %i.cp, align 1
  %i.ct = load i64, ptr %i.bz, align 8, !tbaa !68 ; 3 uses
  %i.cu = lshr i64 %i.ct, 3
  %i.cv = and i64 %i.ct, -8
  %i.cw = and i64 %i.ct, 7
  %i.cx = load i64, ptr %i.ca, align 8, !tbaa !68
  %i.cy = lshr i64 %i.cx, %i.cv                   ; 2 uses
  %i.cz = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.da = add i64 %i.cz, %i.cu                    ; 2 uses
  store i64 %i.da, ptr %i.bw, align 8, !tbaa !74
  %i.db = load ptr, ptr %i.aw, align 8, !tbaa !71
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  store i64 %i.cy, ptr %i.ca, align 8, !tbaa !68
  %i.dd = add nuw nsw i64 %i.cw, 2
  store i64 %i.dd, ptr %i.bz, align 8, !tbaa !68
  store i64 %i.cy, ptr %i.dc, align 1
  %i.de = load i64, ptr %i.bz, align 8, !tbaa !68 ; 3 uses
  %i.df = lshr i64 %i.de, 3
  %i.dg = and i64 %i.de, -8
  %i.dh = and i64 %i.de, 7
  store i64 %i.dh, ptr %i.bz, align 8, !tbaa !68
  %i.di = load i64, ptr %i.ca, align 8, !tbaa !68
  %i.dj = lshr i64 %i.di, %i.dg
  store i64 %i.dj, ptr %i.ca, align 8, !tbaa !68
  %i.dk = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.dl = add i64 %i.dk, %i.df
  store i64 %i.dl, ptr %i.bw, align 8, !tbaa !74
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.i, %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep.i.i.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep8.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep8.i.i.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep.i.1.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep.i.1.i.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep8.i.1.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep8.i.1.i.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep.i.2.i.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep8.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep8.i.2.i.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep.i.3.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 640
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep.i.3.i.i.i, i8 0, i64 16, i1 false), !tbaa !85
  %scevgep8.i.3.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 704
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep8.i.3.i.i.i, i8 0, i64 16, i1 false), !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.dm, align 8, !tbaa !2198
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.dn, align 8, !tbaa !2198
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.do, align 8, !tbaa !2198
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 0, ptr %i.dp, align 8, !tbaa !2198
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i.i.i, label %.lr.ph50.i.i.i

_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i.i: ; preds = %.lr.ph50.i.i.i
  %i.dq = mul nuw nsw i64 %i.bf, 2688             ; 3 uses
  %i.dr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #40 ; 3 uses
  %i.ds = getelementptr inbounds nuw [2688 x i8], ptr %i.dr, i64 %i.bf
  %i.dt = add nsw i64 %i.dq, -2688
  %i.du = urem i64 %i.dt, 2688
  %i.dv = sub nuw nsw i64 %i.dq, %i.du
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dr, i8 0, i64 %i.dv, i1 false)
  %i.dw = ptrtoint ptr %i.ds to i64
  br label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i.i.i

_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i.i, %.preheader.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.dr, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i.i ], [ null, %.preheader.i.i.i ] ; 6 uses
  %.sroa.9.0.i.i = phi i64 [ %i.dw, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i.i ], [ 0, %.preheader.i.i.i ]
  %.not136.i.i.i.i = icmp eq i64 %i.af, %i.ag
  br i1 %.not136.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph132.i.i.i.i

.lr.ph132.i.i.i.i:                                ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not.i99.i.i.i.i = icmp eq i64 %i.ab, %i.ac    ; 9 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.eb = shl nuw nsw i64 %.sroa.speculated35.i.i, 2 ; 4 uses
  %i.ec = add nsw i64 %.sroa.speculated.i.i, -1
  %i.ed = mul i64 %i.ba, %i.ec
  %i.ee = shl nuw nsw i64 %.sroa.speculated35.i.i, 3
  %i.ef = getelementptr i8, ptr %i.ai, i64 %i.ed
  %scevgep45 = getelementptr i8, ptr %i.ef, i64 %i.ee ; 4 uses
  %i.eg = shl nuw nsw i64 %.sroa.speculated35.i.i, 2 ; 4 uses
  %i.eh = add nsw i64 %.sroa.speculated.i.i, -1
  %i.ei = mul i64 %i.ba, %i.eh
  %i.ej = shl nuw nsw i64 %.sroa.speculated35.i.i, 3
  %i.ek = getelementptr i8, ptr %i.ai, i64 %i.ei
  %scevgep89 = getelementptr i8, ptr %i.ek, i64 %i.ej ; 4 uses
  %i.el = shl nuw nsw i64 %.sroa.speculated35.i.i, 2
  %i.em = add nsw i64 %.sroa.speculated.i.i, -1
  %i.en = mul i64 %i.ba, %i.em
  %i.eo = shl nuw nsw i64 %.sroa.speculated35.i.i, 1
  %i.ep = getelementptr i8, ptr %i.ai, i64 %i.en
  %scevgep145 = getelementptr i8, ptr %i.ep, i64 %i.eo
  %i.eq = shl nuw nsw i64 %.sroa.speculated35.i.i, 2
  %i.er = add nsw i64 %.sroa.speculated.i.i, -1
  %i.es = mul i64 %i.ba, %i.er
  %i.et = shl nuw nsw i64 %.sroa.speculated35.i.i, 1
  %i.eu = getelementptr i8, ptr %i.ai, i64 %i.es
  %scevgep163 = getelementptr i8, ptr %i.eu, i64 %i.et
  %i.ev = shl nuw nsw i64 %.sroa.speculated35.i.i, 2 ; 3 uses
  %i.ew = add nsw i64 %.sroa.speculated.i.i, -1
  %i.ex = mul i64 %i.ba, %i.ew
  %i.ey = getelementptr i8, ptr %i.ai, i64 %i.ex
  %scevgep183 = getelementptr i8, ptr %i.ey, i64 %i.ev ; 2 uses
  %i.ez = shl nuw nsw i64 %.sroa.speculated35.i.i, 2 ; 3 uses
  %i.fa = add nsw i64 %.sroa.speculated.i.i, -1
  %i.fb = mul i64 %i.ba, %i.fa
  %i.fc = getelementptr i8, ptr %i.ai, i64 %i.fb
  %scevgep211 = getelementptr i8, ptr %i.fc, i64 %i.ez ; 2 uses
  %i.fd = shl nuw nsw i64 %.sroa.speculated35.i.i, 2 ; 3 uses
  %i.fe = add nsw i64 %.sroa.speculated.i.i, -1
  %i.ff = mul i64 %i.ba, %i.fe
  %i.fg = mul nuw nsw i64 %.sroa.speculated35.i.i, 6
  %i.fh = getelementptr i8, ptr %i.ai, i64 %i.ff
  %scevgep242 = getelementptr i8, ptr %i.fh, i64 %i.fg ; 3 uses
  %i.fi = shl nuw nsw i64 %.sroa.speculated35.i.i, 2 ; 3 uses
  %i.fj = add nsw i64 %.sroa.speculated.i.i, -1
  %i.fk = mul i64 %i.ba, %i.fj
  %i.fl = mul nuw nsw i64 %.sroa.speculated35.i.i, 6
  %i.fm = getelementptr i8, ptr %i.ai, i64 %i.fk
  %scevgep283 = getelementptr i8, ptr %i.fm, i64 %i.fl ; 3 uses
  %min.iters.check321 = icmp ult i64 %i.bf, 4
  %n.vec323 = and i64 %i.bf, -4                   ; 3 uses
  %cmp.n341 = icmp eq i64 %i.bf, %n.vec323
  %min.iters.check311 = icmp ult i64 %i.ad, 8
  %stride.check294 = icmp slt i64 %i.ba, 0
  %n.vec313 = and i64 %.sroa.speculated35.i.i, 508 ; 3 uses
  %cmp.n318 = icmp eq i64 %.sroa.speculated35.i.i, %n.vec313
  %min.iters.check270 = icmp ult i64 %i.ad, 12
  %stride.check253 = icmp slt i64 %i.ba, 0
  %n.vec272 = and i64 %.sroa.speculated35.i.i, 508 ; 3 uses
  %cmp.n277 = icmp eq i64 %.sroa.speculated35.i.i, %n.vec272
  %min.iters.check226 = icmp ult i64 %i.ad, 8
  %stride.check218 = icmp slt i64 %i.ba, 0
  %n.vec228 = and i64 %.sroa.speculated35.i.i, 508 ; 3 uses
  %cmp.n236 = icmp eq i64 %.sroa.speculated35.i.i, %n.vec228
  %xtraiter = and i64 %.sroa.speculated35.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check198 = icmp ult i64 %i.ad, 12
  %stride.check190 = icmp slt i64 %i.ba, 0
  %n.vec200 = and i64 %.sroa.speculated35.i.i, 508 ; 3 uses
  %cmp.n206 = icmp eq i64 %.sroa.speculated35.i.i, %n.vec200
  %xtraiter359 = and i64 %.sroa.speculated35.i.i, 1
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  %min.iters.check169 = icmp ult i64 %i.ad, 8
  %stride.check167 = icmp slt i64 %i.ba, 0
  %n.vec171 = and i64 %.sroa.speculated35.i.i, 504 ; 3 uses
  %cmp.n178 = icmp eq i64 %.sroa.speculated35.i.i, %n.vec171
  %xtraiter361 = and i64 %.sroa.speculated35.i.i, 1
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  %min.iters.check151 = icmp ult i64 %i.ad, 8
  %stride.check149 = icmp slt i64 %i.ba, 0
  %n.vec153 = and i64 %.sroa.speculated35.i.i, 504 ; 3 uses
  %cmp.n159 = icmp eq i64 %.sroa.speculated35.i.i, %n.vec153
  %xtraiter363 = and i64 %.sroa.speculated35.i.i, 3 ; 2 uses
  %lcmp.mod364.not = icmp eq i64 %xtraiter363, 0
  %min.iters.check134 = icmp ult i64 %i.ad, 12
  %stride.check104 = icmp slt i64 %i.ba, 0
  %n.vec136 = and i64 %.sroa.speculated35.i.i, 508 ; 3 uses
  %cmp.n141 = icmp eq i64 %.sroa.speculated35.i.i, %n.vec136
  %min.iters.check = icmp ult i64 %i.ad, 16
  %stride.check = icmp slt i64 %i.ba, 0
  %n.vec = and i64 %.sroa.speculated35.i.i, 508   ; 3 uses
  %cmp.n = icmp eq i64 %.sroa.speculated35.i.i, %n.vec
  %xtraiter365 = and i64 %i.bf, 1
  %i.fn = icmp eq i64 %i.bf, 1
  %unroll_iter = and i64 %i.bf, -2
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  %lcmp.mod367 = trunc i64 %i.bf to i1
  br label %bb.j

.preheader.i.i.i.i:                               ; preds = %._crit_edge130.i.i.i.i, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i.i.i
  br i1 %.not.i.i.i, label %._crit_edge135.i.i.i.i, label %.lr.ph134.i.i.i.i

bb.j:                                             ; preds = %._crit_edge130.i.i.i.i, %.lr.ph132.i.i.i.i
  %.078131.i.i.i.i = phi i64 [ 0, %.lr.ph132.i.i.i.i ], [ %i.alv, %._crit_edge130.i.i.i.i ] ; 4 uses
  %i.fo = mul i64 %.078131.i.i.i.i, %i.ba
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.fo ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  br i1 %.not.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j
  %i.fq = and i64 %.078131.i.i.i.i, 1             ; 4 uses
  %i.fr = xor i64 %i.fq, 1                        ; 3 uses
  br i1 %min.iters.check321, label %scalar.ph320.preheader, label %vector.body324

vector.body324:                                   ; preds = %.lr.ph.i.i.i.i, %vector.body324
  %index325 = phi i64 [ %index.next339, %vector.body324 ], [ 0, %.lr.ph.i.i.i.i ] ; 3 uses
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body324 ], [ <i64 0, i64 1>, %.lr.ph.i.i.i.i ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0.i.i, <2 x i64> %vec.ind ; 2 uses
  %wide.gep326 = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0.i.i, <2 x i64> %step.add ; 2 uses
  %wide.gep327 = getelementptr inbounds nuw [1344 x i8], <2 x ptr> %wide.gep, i64 %i.fq
  %wide.gep328 = getelementptr inbounds nuw [1344 x i8], <2 x ptr> %wide.gep326, i64 %i.fq
  %wide.gep329 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep327, i64 128 ; 2 uses
  %wide.gep330 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep328, i64 128 ; 2 uses
  %i.fs = ptrtoint <2 x ptr> %wide.gep329 to <2 x i64>
  %i.ft = ptrtoint <2 x ptr> %wide.gep330 to <2 x i64>
  %i.fu = lshr <2 x i64> %i.fs, splat (i64 2)
  %i.fv = lshr <2 x i64> %i.ft, splat (i64 2)
  %i.fw = and <2 x i64> %i.fu, splat (i64 15)
  %i.fx = and <2 x i64> %i.fv, splat (i64 15)
  %wide.gep331 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.gep329, <2 x i64> %i.fw
  %wide.gep332 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.gep330, <2 x i64> %i.fx
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index325 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store <2 x ptr> %wide.gep331, ptr %i.fy, align 16, !tbaa !101
  store <2 x ptr> %wide.gep332, ptr %i.fz, align 16, !tbaa !101
  %wide.gep333 = getelementptr inbounds nuw [1344 x i8], <2 x ptr> %wide.gep, i64 %i.fr
  %wide.gep334 = getelementptr inbounds nuw [1344 x i8], <2 x ptr> %wide.gep326, i64 %i.fr
  %wide.gep335 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep333, i64 128 ; 2 uses
  %wide.gep336 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep334, i64 128 ; 2 uses
  %i.ga = ptrtoint <2 x ptr> %wide.gep335 to <2 x i64>
  %i.gb = ptrtoint <2 x ptr> %wide.gep336 to <2 x i64>
  %i.gc = lshr <2 x i64> %i.ga, splat (i64 2)
  %i.gd = lshr <2 x i64> %i.gb, splat (i64 2)
  %i.ge = and <2 x i64> %i.gc, splat (i64 15)
  %i.gf = and <2 x i64> %i.gd, splat (i64 15)
  %wide.gep337 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.gep335, <2 x i64> %i.ge
  %wide.gep338 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.gep336, <2 x i64> %i.gf
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index325 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <2 x ptr> %wide.gep337, ptr %i.gg, align 16, !tbaa !101
  store <2 x ptr> %wide.gep338, ptr %i.gh, align 16, !tbaa !101
  %index.next339 = add nuw i64 %index325, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.gi = icmp eq i64 %index.next339, %n.vec323
  br i1 %i.gi, label %middle.block340, label %vector.body324, !llvm.loop !2128

middle.block340:                                  ; preds = %vector.body324
  br i1 %cmp.n341, label %._crit_edge.i.i.i.i, label %scalar.ph320.preheader

scalar.ph320.preheader:                           ; preds = %.lr.ph.i.i.i.i, %middle.block340
  %.077125.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec323, %middle.block340 ]
  br label %scalar.ph320

._crit_edge.i.i.i.i:                              ; preds = %scalar.ph320, %middle.block340
  %.pre.i.i.i = load ptr, ptr %i.b, align 16, !tbaa !101 ; 41 uses
  switch i64 %i.bf, label %._crit_edge.i.._crit_edge.thread.i_crit_edge.i.i.i [
    i64 1, label %bb.k
    i64 2, label %bb.n
    i64 3, label %bb.q
  ]

._crit_edge.i.._crit_edge.thread.i_crit_edge.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pre64.i.i.i = load ptr, ptr %i.dx, align 8, !tbaa !101
  %.pre65.i.i.i = load ptr, ptr %i.dy, align 16, !tbaa !101
  %.pre66.i.i.i = load ptr, ptr %i.dz, align 8, !tbaa !101
  br label %._crit_edge.thread.i.i.i.i

scalar.ph320:                                     ; preds = %scalar.ph320.preheader, %scalar.ph320
  %.077125.i.i.i.i = phi i64 [ %i.gy, %scalar.ph320 ], [ %.077125.i.i.i.i.ph, %scalar.ph320.preheader ] ; 4 uses
  %i.gj = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0.i.i, i64 %.077125.i.i.i.i ; 2 uses
  %i.gk = getelementptr inbounds nuw [1344 x i8], ptr %i.gj, i64 %i.fq
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 128 ; 2 uses
  %i.gm = ptrtoint ptr %i.gl to i64
end_hunk_2
begin_hunk_3_@_ZZN22default_implementation12_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENUlS8_mE_8__invokeES8_m:bb.a
  %i.anh = icmp ult i32 %i.ane, 16                ; 3 uses
  %i.ani = sub nuw nsw i32 43, %i.anf
  %i.anj = select i1 %i.anh, i32 %i.ane, i32 %i.ani
  %i.ank = select i1 %i.anh, i32 0, i32 %i.ang    ; 2 uses
  %.neg.i.i.i116.i.i.i.i = shl nsw i32 -1, %i.ank
  %i.anl = add i32 %.neg.i.i.i116.i.i.i.i, %i.ane
  %i.anm = select i1 %i.anh, i32 0, i32 %i.anl
  %i.ann = zext i32 %i.anm to i64
  %i.ano = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i, i64 38
  %i.anp = zext nneg i32 %i.anj to i64            ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.anp
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !85 ; 2 uses
  %i.ans = zext i8 %i.anr to i32
  %i.ant = zext nneg i8 %i.anr to i64
  %i.anu = shl i64 %i.ann, %i.ant
  %i.anv = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i, i64 72
  %i.anw = getelementptr inbounds nuw [2 x i8], ptr %i.anv, i64 %i.anp
  %i.anx = load i16, ptr %i.anw, align 2, !tbaa !104
  %i.any = zext i16 %i.anx to i64
  %i.anz = or i64 %i.anu, %i.any
  %i.aoa = load i8, ptr %.val.val.i.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.aob = zext i8 %i.aoa to i32
  %i.aoc = zext nneg i8 %i.aoa to i64
  %i.aod = shl i64 %i.anz, %i.aoc
  %i.aoe = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i, i64 19
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !85
  %i.aog = zext i8 %i.aof to i64
  %i.aoh = or i64 %i.aod, %i.aog
  %i.aoi = add nuw nsw i32 %i.ank, %i.ans
  %i.aoj = add nuw nsw i32 %i.aoi, %i.aob
  %i.aok = load ptr, ptr %.val.val81.i.i.i.i, align 8, !tbaa !71
  %i.aol = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i.i, i64 16 ; 3 uses
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !74
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aok, i64 %i.aom
  %i.aoo = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i.i, i64 24 ; 4 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %.val.val81.i.i.i.i, i64 32 ; 4 uses
  %i.aoq = load i64, ptr %i.aoo, align 8, !tbaa !68 ; 2 uses
  %i.aor = shl i64 %i.aoh, %i.aoq
  %i.aos = load i64, ptr %i.aop, align 8, !tbaa !68
  %i.aot = or i64 %i.aos, %i.aor                  ; 2 uses
  store i64 %i.aot, ptr %i.aop, align 8, !tbaa !68
  %i.aou = zext nneg i32 %i.aoj to i64
  %i.aov = add i64 %i.aoq, %i.aou
  store i64 %i.aov, ptr %i.aoo, align 8, !tbaa !68
  store i64 %i.aot, ptr %i.aon, align 1
  %i.aow = load i64, ptr %i.aoo, align 8, !tbaa !68 ; 3 uses
  %i.aox = lshr i64 %i.aow, 3
  %i.aoy = and i64 %i.aow, -8
  %i.aoz = and i64 %i.aow, 7
  store i64 %i.aoz, ptr %i.aoo, align 8, !tbaa !68
  %i.apa = load i64, ptr %i.aop, align 8, !tbaa !68
  %i.apb = lshr i64 %i.apa, %i.aoy
  store i64 %i.apb, ptr %i.aop, align 8, !tbaa !68
  %i.apc = load i64, ptr %i.aol, align 8, !tbaa !74
  %i.apd = add i64 %i.apc, %i.aox
  store i64 %i.apd, ptr %i.aol, align 8, !tbaa !74
  br label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_14MoreThan14BitsEEES3_E8FinalizeEv.exit.i.i.i.i

_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_14MoreThan14BitsEEES3_E8FinalizeEv.exit.i.i.i.i: ; preds = %bb.am, %bb.al, %.lr.ph134.i.i.i.i
  %i.ape = add nuw nsw i64 %.0133.i.i.i.i, 1      ; 2 uses
  %exitcond151.not.i.i.i.i = icmp eq i64 %i.ape, %i.bf
  br i1 %exitcond151.not.i.i.i.i, label %._crit_edge135.i.i.i.i, label %.lr.ph134.i.i.i.i, !llvm.loop !2188

.lr.ph50.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph50.i.i.i
  %.03449.i.i.i = phi i64 [ %i.atb, %.lr.ph50.i.i.i ], [ 0, %.preheader.i.i.i ] ; 5 uses
  %i.apf = getelementptr inbounds nuw [192 x i8], ptr %2, i64 %.03449.i.i.i ; 35 uses
  %i.apg = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.03449.i.i.i
  store ptr %i.apf, ptr %i.apg, align 16, !tbaa !2239
  %i.aph = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %.03449.i.i.i
  %i.api = getelementptr inbounds nuw i8, ptr %i.apf, i64 8
  store ptr %i.aph, ptr %i.api, align 8, !tbaa !2242
  %i.apj = getelementptr inbounds nuw [440 x i8], ptr %i.bi, i64 %.03449.i.i.i ; 33 uses
  store ptr %i.apj, ptr %i.apf, align 64, !tbaa !2241
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 19
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apf, i64 64
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apf, i64 128
  %i.apn = load i8, ptr %i.apj, align 1, !tbaa !85
  store i8 %i.apn, ptr %i.apl, align 64, !tbaa !85
  %i.apo = load i8, ptr %i.apk, align 1, !tbaa !85
  store i8 %i.apo, ptr %i.apm, align 64, !tbaa !85
  %i.app = getelementptr inbounds nuw i8, ptr %i.apj, i64 1
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !85
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apf, i64 65
  store i8 %i.apq, ptr %i.apr, align 1, !tbaa !85
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apj, i64 20
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !85
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apf, i64 129
  store i8 %i.apt, ptr %i.apu, align 1, !tbaa !85
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apj, i64 2
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !85
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apf, i64 66
  store i8 %i.apw, ptr %i.apx, align 2, !tbaa !85
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apj, i64 21
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !85
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apf, i64 130
  store i8 %i.apz, ptr %i.aqa, align 2, !tbaa !85
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apj, i64 3
  %i.aqc = load i8, ptr %i.aqb, align 1, !tbaa !85
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apf, i64 67
  store i8 %i.aqc, ptr %i.aqd, align 1, !tbaa !85
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apj, i64 22
  %i.aqf = load i8, ptr %i.aqe, align 1, !tbaa !85
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.apf, i64 131
  store i8 %i.aqf, ptr %i.aqg, align 1, !tbaa !85
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.apj, i64 4
  %i.aqi = load i8, ptr %i.aqh, align 1, !tbaa !85
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.apf, i64 68
  store i8 %i.aqi, ptr %i.aqj, align 4, !tbaa !85
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.apj, i64 23
  %i.aql = load i8, ptr %i.aqk, align 1, !tbaa !85
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.apf, i64 132
  store i8 %i.aql, ptr %i.aqm, align 4, !tbaa !85
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.apj, i64 5
  %i.aqo = load i8, ptr %i.aqn, align 1, !tbaa !85
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.apf, i64 69
  store i8 %i.aqo, ptr %i.aqp, align 1, !tbaa !85
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.apj, i64 24
  %i.aqr = load i8, ptr %i.aqq, align 1, !tbaa !85
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.apf, i64 133
  store i8 %i.aqr, ptr %i.aqs, align 1, !tbaa !85
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.apj, i64 6
  %i.aqu = load i8, ptr %i.aqt, align 1, !tbaa !85
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.apf, i64 70
  store i8 %i.aqu, ptr %i.aqv, align 2, !tbaa !85
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.apj, i64 25
  %i.aqx = load i8, ptr %i.aqw, align 1, !tbaa !85
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.apf, i64 134
  store i8 %i.aqx, ptr %i.aqy, align 2, !tbaa !85
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.apj, i64 7
  %i.ara = load i8, ptr %i.aqz, align 1, !tbaa !85
  %i.arb = getelementptr inbounds nuw i8, ptr %i.apf, i64 71
  store i8 %i.ara, ptr %i.arb, align 1, !tbaa !85
  %i.arc = getelementptr inbounds nuw i8, ptr %i.apj, i64 26
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !85
  %i.are = getelementptr inbounds nuw i8, ptr %i.apf, i64 135
  store i8 %i.ard, ptr %i.are, align 1, !tbaa !85
  %i.arf = getelementptr inbounds nuw i8, ptr %i.apj, i64 8
  %i.arg = load i8, ptr %i.arf, align 1, !tbaa !85
  %i.arh = getelementptr inbounds nuw i8, ptr %i.apf, i64 72
  store i8 %i.arg, ptr %i.arh, align 8, !tbaa !85
  %i.ari = getelementptr inbounds nuw i8, ptr %i.apj, i64 27
  %i.arj = load i8, ptr %i.ari, align 1, !tbaa !85
  %i.ark = getelementptr inbounds nuw i8, ptr %i.apf, i64 136
  store i8 %i.arj, ptr %i.ark, align 8, !tbaa !85
  %i.arl = getelementptr inbounds nuw i8, ptr %i.apj, i64 9
  %i.arm = load i8, ptr %i.arl, align 1, !tbaa !85
  %i.arn = getelementptr inbounds nuw i8, ptr %i.apf, i64 73
  store i8 %i.arm, ptr %i.arn, align 1, !tbaa !85
  %i.aro = getelementptr inbounds nuw i8, ptr %i.apj, i64 28
  %i.arp = load i8, ptr %i.aro, align 1, !tbaa !85
  %i.arq = getelementptr inbounds nuw i8, ptr %i.apf, i64 137
  store i8 %i.arp, ptr %i.arq, align 1, !tbaa !85
  %i.arr = getelementptr inbounds nuw i8, ptr %i.apj, i64 10
  %i.ars = load i8, ptr %i.arr, align 1, !tbaa !85
  %i.art = getelementptr inbounds nuw i8, ptr %i.apf, i64 74
  store i8 %i.ars, ptr %i.art, align 2, !tbaa !85
  %i.aru = getelementptr inbounds nuw i8, ptr %i.apj, i64 29
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !85
  %i.arw = getelementptr inbounds nuw i8, ptr %i.apf, i64 138
  store i8 %i.arv, ptr %i.arw, align 2, !tbaa !85
  %i.arx = getelementptr inbounds nuw i8, ptr %i.apj, i64 11
  %i.ary = load i8, ptr %i.arx, align 1, !tbaa !85
  %i.arz = getelementptr inbounds nuw i8, ptr %i.apf, i64 75
  store i8 %i.ary, ptr %i.arz, align 1, !tbaa !85
  %i.asa = getelementptr inbounds nuw i8, ptr %i.apj, i64 30
  %i.asb = load i8, ptr %i.asa, align 1, !tbaa !85
  %i.asc = getelementptr inbounds nuw i8, ptr %i.apf, i64 139
  store i8 %i.asb, ptr %i.asc, align 1, !tbaa !85
  %i.asd = getelementptr inbounds nuw i8, ptr %i.apj, i64 12
  %i.ase = load i8, ptr %i.asd, align 1, !tbaa !85
  %i.asf = getelementptr inbounds nuw i8, ptr %i.apf, i64 76
  store i8 %i.ase, ptr %i.asf, align 4, !tbaa !85
  %i.asg = getelementptr inbounds nuw i8, ptr %i.apj, i64 31
  %i.ash = load i8, ptr %i.asg, align 1, !tbaa !85
  %i.asi = getelementptr inbounds nuw i8, ptr %i.apf, i64 140
  store i8 %i.ash, ptr %i.asi, align 4, !tbaa !85
  %i.asj = getelementptr inbounds nuw i8, ptr %i.apj, i64 13
  %i.ask = load i8, ptr %i.asj, align 1, !tbaa !85
  %i.asl = getelementptr inbounds nuw i8, ptr %i.apf, i64 77
  store i8 %i.ask, ptr %i.asl, align 1, !tbaa !85
  %i.asm = getelementptr inbounds nuw i8, ptr %i.apj, i64 32
  %i.asn = load i8, ptr %i.asm, align 1, !tbaa !85
  %i.aso = getelementptr inbounds nuw i8, ptr %i.apf, i64 141
  store i8 %i.asn, ptr %i.aso, align 1, !tbaa !85
  %i.asp = getelementptr inbounds nuw i8, ptr %i.apj, i64 17
  %i.asq = getelementptr inbounds nuw i8, ptr %i.apj, i64 36
  %i.asr = getelementptr inbounds nuw i8, ptr %i.apj, i64 15
  %i.ass = getelementptr inbounds nuw i8, ptr %i.apj, i64 34
  %i.ast = load i8, ptr %i.asr, align 1, !tbaa !85
  %i.asu = getelementptr inbounds nuw i8, ptr %i.apf, i64 78
  store i8 %i.ast, ptr %i.asu, align 2, !tbaa !85
  %i.asv = load i8, ptr %i.ass, align 1, !tbaa !85
  %i.asw = getelementptr inbounds nuw i8, ptr %i.apf, i64 142
  store i8 %i.asv, ptr %i.asw, align 2, !tbaa !85
  %i.asx = load i8, ptr %i.asp, align 1, !tbaa !85
  %i.asy = getelementptr inbounds nuw i8, ptr %i.apf, i64 79
  store i8 %i.asx, ptr %i.asy, align 1, !tbaa !85
  %i.asz = load i8, ptr %i.asq, align 1, !tbaa !85
  %i.ata = getelementptr inbounds nuw i8, ptr %i.apf, i64 143
  store i8 %i.asz, ptr %i.ata, align 1, !tbaa !85
  %i.atb = add nuw nsw i64 %.03449.i.i.i, 1       ; 2 uses
  %exitcond63.not.i.i.i = icmp eq i64 %i.atb, %i.bf
  br i1 %exitcond63.not.i.i.i, label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.i.i, label %.lr.ph50.i.i.i, !llvm.loop !2189

_ZN22default_implementation12_GLOBAL__N_114WriteACSectionINS0_14MoreThan14BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i.i: ; preds = %bb.aj, %._crit_edge135.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m.exit

bb.an:                                            ; preds = %bb.d
  %i.atc = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.atd = getelementptr inbounds nuw i8, ptr %i.av, i64 1888
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !90
  %i.atf = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.atg = load i64, ptr %i.atf, align 8, !tbaa !73
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_121WriteACSectionPaletteEPKhmmmmmbPKN12_GLOBAL__N_110PrefixCodeEPKsmRNS3_9BitWriterE(ptr noundef %i.ai, i64 noundef %.sroa.speculated35.i.i, i64 noundef %.sroa.speculated.i.i, i64 noundef %i.ba, i1 noundef zeroext %i.bd, ptr noundef nonnull %i.atc, ptr noundef %i.ate, i64 noundef %i.atg, ptr noundef nonnull align 8 dereferenceable(40) %i.aw) #38
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m.exit

_ZZN22default_implementation12_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m.exit: ; preds = %_ZN22default_implementation12_GLOBAL__N_114WriteACSectionINS0_14MoreThan14BitsEEEvPKhmmmmmbT_mbPKN12_GLOBAL__N_110PrefixCodeERNSt3__15arrayINS6_9BitWriterELm4EEE.exit.i.i, %bb.an
  %i.ath = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ati = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.atj = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.atk = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  %i.atl = load <2 x i64>, ptr %i.ath, align 8, !tbaa !68
  %i.atm = load <2 x i64>, ptr %i.ati, align 8, !tbaa !68
  %i.atn = load <2 x i64>, ptr %i.atj, align 8, !tbaa !68
  %i.ato = load <2 x i64>, ptr %i.atk, align 8, !tbaa !68
  %i.atp = add <2 x i64> %i.atl, <i64 0, i64 7>
  %i.atq = add <2 x i64> %i.atp, %i.atm
  %i.atr = add <2 x i64> %i.atq, %i.atn
  %i.ats = add <2 x i64> %i.atr, %i.ato           ; 2 uses
  %i.att = extractelement <2 x i64> %i.ats, i64 1
  %i.atu = lshr i64 %i.att, 3
  %i.atv = extractelement <2 x i64> %i.ats, i64 0
  %i.atw = add i64 %i.atv, %i.atu
  %i.atx = and i64 %i.atw, 2305843009213693951
  %i.aty = load ptr, ptr %i.h, align 8, !tbaa !2192, !nonnull !121, !align !176
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !151
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 1976
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !70
  %i.auc = getelementptr inbounds nuw [8 x i8], ptr %i.aub, i64 %i.z
  store i64 %i.atx, ptr %i.auc, align 8, !tbaa !68
  call void %.sroa.610.0.copyload.i.i(ptr noundef %.sroa.07.0.copyload.i.i, ptr noundef %i.ai) #36, !inline_history !2125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.umax.v4i64(<4 x i64>, <4 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v32i64(<32 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umin.v2i64(<2 x i64>, <2 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.bswap.v16i16(<16 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <48 x i16> @llvm.bswap.v48i16(<48 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <12 x i16> @llvm.bswap.v12i16(<12 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i16> @llvm.bswap.v32i16(<32 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x i16> @llvm.bswap.v64i16(<64 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <24 x i16> @llvm.bswap.v24i16(<24 x i16>) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #3 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #15 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #16 = { noreturn "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #27 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #32 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #36 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #37 = { nounwind }
attributes #38 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #39 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #40 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #41 = { noreturn "no-builtin-fread" "no-builtin-fwrite" }
attributes #42 = { nounwind memory(none) }
attributes #43 = { noreturn nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!33, !34, !35}
!llvm.ident = !{!36}
!llvm.errno.tbaa = !{!41}

!0 = distinct !{null, null}
!1 = distinct !{!1, !84}
!2 = distinct !{!2, !84}
!3 = distinct !{!3, !84}
!4 = distinct !{!4, !84}
!5 = distinct !{!5, !84}
!6 = distinct !{!6, !84}
!7 = distinct !{!7, !84}
!8 = distinct !{!8, !84}
!9 = distinct !{!9, !84}
!10 = distinct !{!10, !84}
!11 = distinct !{!11, !84}
!12 = distinct !{!12, !84}
!13 = distinct !{!13, !84}
!14 = distinct !{!14, !84}
!15 = distinct !{!15, !84}
!16 = distinct !{!16, !84}
!17 = distinct !{!17, !84}
!18 = distinct !{!18, !84}
!19 = distinct !{!19, !84}
!20 = distinct !{!20, !84}
!21 = distinct !{!21, !84}
!22 = distinct !{!22, !84}
!23 = distinct !{!23, !84}
!24 = distinct !{!24, !84}
!25 = distinct !{!25, !84}
!26 = distinct !{!26, !84}
end_hunk_3
