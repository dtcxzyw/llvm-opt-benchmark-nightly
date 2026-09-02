Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryParser?download=true
inline.NumInlined: 15251
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %.0109 = phi i64 [ %i.aj, %bb.h ], [ %i.ap, %bb.i ]
  %.0108 = phi i32 [ %i.ah, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %i.aq = mul nsw i32 %.0108, 315653
  %i.ar = ashr i32 %i.aq, 20                      ; 4 uses
  %.neg125 = add nsw i32 %i.ar, -2                ; 2 uses
  %i.as = sub nsw i32 2, %i.ar                    ; 3 uses
  %i.at = mul nsw i32 %i.as, 1741647
  %i.au = ashr i32 %i.at, 19                      ; 2 uses
  %i.av = add nsw i32 %i.au, %.0108
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %.0109, %i.aw
  %i.ay = trunc nsw i32 %i.ar to i16
  %.lhs.trunc = sub nsw i16 294, %i.ay
  %i.az = udiv i16 %.lhs.trunc, 27                ; 2 uses
  %narrow = mul nuw nsw i16 %i.az, 27
  %i.ba = zext nneg i16 %narrow to i32
  %i.bb = add nsw i32 %i.ba, -292                 ; 3 uses
  %i.bc = zext nneg i16 %i.az to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.bc ; 2 uses
  %.sroa.037.0.copyload.i.i = load i64, ptr %i.bd, align 16, !tbaa !118 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !118 ; 2 uses
  %i.be = icmp eq i32 %i.as, %i.bb
  br i1 %i.be, label %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = sub nsw i32 %i.as, %i.bb                ; 2 uses
  %i.bg = mul nsw i32 %i.bb, 1741647
  %i.bh = ashr i32 %i.bg, 19
  %i.bi = add nsw i32 %i.bf, %i.bh
  %i.bj = sub nsw i32 %i.au, %i.bi                ; 2 uses
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !118
  %i.bn = zext i64 %.sroa.5.0.copyload.i.i to i128
  %i.bo = zext i64 %i.bm to i128                  ; 2 uses
  %i.bp = mul nuw i128 %i.bo, %i.bn               ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = trunc nuw i128 %i.bq to i64
  %i.bs = trunc i128 %i.bp to i64
  %i.bt = zext i64 %.sroa.037.0.copyload.i.i to i128
  %i.bu = mul nuw i128 %i.bo, %i.bt               ; 2 uses
  %i.bv = lshr i128 %i.bu, 64
  %i.bw = trunc nuw i128 %i.bv to i64
  %i.bx = trunc i128 %i.bu to i64
  %i.by = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bs, i64 %i.bw) ; 2 uses
  %i.bz = extractvalue { i64, i1 } %i.by, 1
  %i.ca = extractvalue { i64, i1 } %i.by, 0       ; 2 uses
  %i.cb = zext i1 %i.bz to i64
  %i.cc = add nuw i64 %i.cb, %i.br
  %i.cd = sub nsw i32 64, %i.bj
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = shl i64 %i.cc, %i.ce
  %i.cg = shl i64 %i.ca, %i.ce
  %i.ch = zext i32 %i.bj to i64                   ; 2 uses
  %i.ci = lshr i64 %i.ca, %i.ch
  %i.cj = or i64 %i.cf, %i.ci
  %i.ck = lshr i64 %i.bx, %i.ch
  %i.cl = or i64 %i.cg, %i.ck
  %i.cm = add i64 %i.cl, 1
  br label %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit

_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit: ; preds = %bb.j, %bb.k
  %.sroa.041.0.i.i = phi i64 [ %i.cm, %bb.k ], [ %.sroa.037.0.copyload.i.i, %bb.j ]
  %.sroa.3.0.i.i = phi i64 [ %i.cj, %bb.k ], [ %.sroa.5.0.copyload.i.i, %bb.j ]
  %i.cn = zext i64 %i.ax to i128                  ; 2 uses
  %i.co = zext i64 %.sroa.3.0.i.i to i128
  %i.cp = mul nuw i128 %i.co, %i.cn               ; 2 uses
  %i.cq = lshr i128 %i.cp, 64
  %i.cr = trunc nuw i128 %i.cq to i64
  %i.cs = trunc i128 %i.cp to i64
  %i.ct = zext i64 %.sroa.041.0.i.i to i128
  %i.cu = mul nuw i128 %i.ct, %i.cn
  %i.cv = lshr i128 %i.cu, 64
  %i.cw = trunc nuw i128 %i.cv to i64
  %i.cx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cs, i64 %i.cw) ; 2 uses
  %i.cy = extractvalue { i64, i1 } %i.cx, 1
  %i.cz = extractvalue { i64, i1 } %i.cx, 0       ; 2 uses
  %i.da = zext i1 %i.cy to i64
  %i.db = add nuw i64 %i.da, %i.cr                ; 3 uses
  %i.dc = icmp ne i64 %i.cz, 0                    ; 4 uses
  %i.dd = icmp ugt i64 %i.db, 999999999999999999  ; 2 uses
  %i.de = mul nuw i64 %i.db, 10
  %.0107 = select i1 %i.dd, i64 %i.db, i64 %i.de  ; 3 uses
  %.0106 = select i1 %i.dd, i32 19, i32 18        ; 4 uses
  br i1 %i.d, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit
  %i.df = add nsw i32 %.0106, %.neg125            ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 0
  %i.dh = sub nuw nsw i32 2147483647, %i.df
  %i.di = icmp sgt i32 %1, %i.dh
  %or.cond.i = select i1 %i.dg, i1 %i.di, i1 false
  br i1 %or.cond.i, label %bb.m, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.64)
  %i.dj = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 2659, ptr noundef %i.dj) #32
  unreachable

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.l
  %i.dk = add nsw i32 %i.df, %1
  br label %bb.n

bb.n:                                             ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit
  %.0187 = phi i32 [ %i.dk, %_ZN3fmt3v126detail16adjust_precisionERii.exit ], [ %1, %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit ] ; 20 uses
  %.not131 = icmp sgt i32 %.0106, %.0187
  br i1 %.not131, label %bb.o, label %.thread219

bb.o:                                             ; preds = %bb.n
  %i.dl = icmp slt i32 %.0187, 1
  %i.dm = add nsw i32 %.0106, %.neg125            ; 2 uses
  br i1 %i.dl, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  store i32 %i.dm, ptr %i.a, align 4, !tbaa !119
  %i.dn = icmp slt i32 %.0187, 0
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.do, align 8, !tbaa !429
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !427
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.s, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

bb.s:                                             ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !440
  tail call void %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1) #26, !inline_history !32
  %.pre.i140 = load i64, ptr %i.dp, align 8, !tbaa !427
  %i.du = icmp ne i64 %.pre.i140, 0
  %i.dv = zext i1 %i.du to i64
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141: ; preds = %bb.r, %bb.s
  %i.dw = phi i64 [ 1, %bb.r ], [ %i.dv, %bb.s ]
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !429
  %i.dy = zext i1 %i.dc to i64
  %i.dz = or i64 %.0107, %i.dy
  %i.ea = icmp ugt i64 %i.dz, 5000000000000000000
  %i.eb = load ptr, ptr %4, align 8, !tbaa !428   ; 2 uses
  br i1 %i.ea, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 49, ptr %i.eb, align 1, !tbaa !253
  br label %.thread

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 48, ptr %i.eb, align 1, !tbaa !253
  br label %.thread

bb.v:                                             ; preds = %bb.o
  %i.ec = sub nsw i32 %i.dm, %.0187               ; 2 uses
  store i32 %i.ec, ptr %i.a, align 4, !tbaa !119
  %i.ed = zext i64 %.0107 to i128
  %i.ee = mul nuw nsw i128 %i.ed, 7922816251426433760
  %sum.shift = lshr i128 %i.ee, 96
  %i.ef = trunc nuw nsw i128 %sum.shift to i64    ; 3 uses
  %.neg126 = mul i64 %i.ef, -10000000000
  %i.eg = add i64 %.neg126, %.0107                ; 5 uses
  %i.eh = tail call i32 @llvm.umin.i32(i32 %.0187, i32 9) ; 3 uses
  %i.ei = load ptr, ptr %4, align 8, !tbaa !428   ; 6 uses
  %i.ej = and i32 %i.eh, 1
  %.not.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ek = mul nuw nsw i64 %i.ef, 720575941
  %i.el = lshr i64 %i.ek, 24
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %i.en = lshr i64 %i.em, 32                      ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i8
  %i.ep = add nuw nsw i8 %i.eo, 48
  store i8 %i.ep, ptr %i.ei, align 1, !tbaa !253
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.eq = mul nuw nsw i64 %i.ef, 450359963
  %i.er = lshr i64 %i.eq, 20
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %i.et = lshr i64 %i.es, 32                      ; 2 uses
  %i.eu = shl nuw nsw i64 %i.et, 1
  %i.ev = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2
  store i16 %i.ew, ptr %i.ei, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0208 = phi i64 [ %i.es, %bb.x ], [ %i.em, %bb.w ] ; 2 uses
  %.0204.in = phi i64 [ %i.et, %bb.x ], [ %i.en, %bb.w ]
  %.0.i = phi i32 [ 2, %bb.x ], [ 1, %bb.w ]      ; 2 uses
  %i.ex = icmp samesign ugt i32 %.0187, %.0.i
  br i1 %i.ex, label %.lr.ph.i, label %.thread268

.thread268:                                       ; preds = %bb.y
  %.1205265 = trunc i64 %.0204.in to i1
  br label %.thread269

.lr.ph.i:                                         ; preds = %bb.y
  %i.ey = zext nneg i32 %.0.i to i64              ; 4 uses
  %i.ez = zext nneg i32 %i.eh to i64              ; 3 uses
  %i.fa = and i64 %.0208, 4294967295
  %i.fb = mul nuw nsw i64 %i.fa, 100              ; 3 uses
  %i.fc = lshr i64 %i.fb, 32                      ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ey
  %i.fe = shl nuw nsw i64 %i.fc, 1
  %i.ff = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2
  store i16 %i.fg, ptr %i.fd, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.ey, 2   ; 2 uses
  %i.fh = icmp samesign ult i64 %indvars.iv.next.i, %i.ez
  br i1 %i.fh, label %bb.z, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.z:                                             ; preds = %.lr.ph.i
  %i.fi = and i64 %i.fb, 4294967292
  %i.fj = mul nuw nsw i64 %i.fi, 100              ; 3 uses
  %i.fk = lshr i64 %i.fj, 32                      ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.next.i
  %i.fm = shl nuw nsw i64 %i.fk, 1
  %i.fn = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2
  store i16 %i.fo, ptr %i.fl, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.ey, 4 ; 2 uses
  %i.fp = icmp samesign ult i64 %indvars.iv.next.i.1, %i.ez
  br i1 %i.fp, label %bb.aa, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.aa:                                            ; preds = %bb.z
  %i.fq = and i64 %i.fj, 4294967280
  %i.fr = mul nuw nsw i64 %i.fq, 100              ; 3 uses
  %i.fs = lshr i64 %i.fr, 32                      ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.next.i.1
  %i.fu = shl nuw nsw i64 %i.fs, 1
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2
  store i16 %i.fw, ptr %i.ft, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.ey, 6 ; 2 uses
  %i.fx = icmp samesign ult i64 %indvars.iv.next.i.2, %i.ez
  br i1 %i.fx, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.fy = and i64 %i.fr, 4294967232
  %i.fz = mul nuw nsw i64 %i.fy, 100              ; 2 uses
  %i.ga = lshr i64 %i.fz, 32                      ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.next.i.2
  %i.gc = shl nuw nsw i64 %i.ga, 1
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 2
  store i16 %i.ge, ptr %i.gb, align 1
  br label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ab, %bb.aa, %bb.z, %.lr.ph.i
  %.lcssa290 = phi i64 [ %i.fb, %.lr.ph.i ], [ %i.fj, %bb.z ], [ %i.fr, %bb.aa ], [ %i.fz, %bb.ab ]
  %.lcssa289 = phi i64 [ %i.fc, %.lr.ph.i ], [ %i.fk, %bb.z ], [ %i.fs, %bb.aa ], [ %i.ga, %bb.ab ]
  %.1205 = trunc i64 %.lcssa289 to i1             ; 2 uses
  %i.gf = icmp samesign ult i32 %.0187, 10
  br i1 %i.gf, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.ad, label %.thread269

.thread269:                                       ; preds = %.thread268, %bb.ac
  %.2210266275 = phi i64 [ %.0208, %.thread268 ], [ %.lcssa290, %bb.ac ]
  %.1205267272 = phi i1 [ %.1205265, %.thread268 ], [ %.1205, %bb.ac ]
  %i.gg = trunc i64 %.2210266275 to i32           ; 2 uses
  %i.gh = sub nuw nsw i32 8, %i.eh
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr @.str.84, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !1430
  %.not130 = icmp ugt i32 %i.gk, %i.gg
  br i1 %.not130, label %bb.am, label %.critedge134

bb.ad:                                            ; preds = %bb.ac
  %i.gl = icmp ugt i64 %i.eg, 5000000000
  br i1 %i.gl, label %.critedge134.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gm = icmp eq i64 %i.eg, 5000000000
  %i.gn = or i1 %i.dc, %.1205
  %or.cond223 = select i1 %i.gm, i1 %i.gn, i1 false
  br i1 %or.cond223, label %.critedge134.thread, label %.critedge136

bb.af:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %i.go = zext i64 %i.eg to i128
  %i.gp = mul nuw nsw i128 %i.go, 1844674407370955162
  %i.gq = lshr i128 %i.gp, 64                     ; 2 uses
  %i.gr = trunc i128 %i.gq to i32
  %i.gs = trunc i64 %i.eg to i32
  %.neg127 = mul i32 %i.gr, -10
  %i.gt = add i32 %.neg127, %i.gs                 ; 3 uses
  %i.gu = add nsw i32 %.0187, -9                  ; 3 uses
  %i.gv = load ptr, ptr %4, align 8, !tbaa !428
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 9 ; 3 uses
  %i.gx = and i32 %i.gu, 1
  %.not.i142 = icmp eq i32 %i.gx, 0
  %i.gy = trunc nuw nsw i128 %i.gq to i64
  %i.gz = and i64 %i.gy, 4294967295               ; 2 uses
  br i1 %.not.i142, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ha = mul nuw nsw i64 %i.gz, 720575941
  %i.hb = lshr i64 %i.ha, 24
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %i.hd = lshr i64 %i.hc, 32                      ; 2 uses
  %i.he = trunc nuw nsw i64 %i.hd to i8
  %i.hf = add nuw nsw i8 %i.he, 48
  store i8 %i.hf, ptr %i.gw, align 1, !tbaa !253
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.hg = mul nuw nsw i64 %i.gz, 450359963
  %i.hh = lshr i64 %i.hg, 20
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 2 uses
  %i.hj = lshr i64 %i.hi, 32                      ; 2 uses
  %i.hk = shl nuw nsw i64 %i.hj, 1
  %i.hl = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2
  store i16 %i.hm, ptr %i.gw, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.3211 = phi i64 [ %i.hi, %bb.ah ], [ %i.hc, %bb.ag ] ; 2 uses
  %.2206.in = phi i64 [ %i.hj, %bb.ah ], [ %i.hd, %bb.ag ]
  %.0.i143 = phi i32 [ 2, %bb.ah ], [ 1, %bb.ag ] ; 2 uses
  %i.hn = icmp samesign ult i32 %.0.i143, %i.gu
  br i1 %i.hn, label %.lr.ph.i144, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.ai
  %i.ho = zext nneg i32 %.0.i143 to i64
  %i.hp = zext nneg i32 %i.gu to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.hr, %bb.aj ]
  %indvars.iv.i145 = phi i64 [ %i.ho, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.aj ] ; 2 uses
  %i.hq = and i64 %.4, 4294967295
  %i.hr = mul nuw nsw i64 %i.hq, 100              ; 3 uses
  %i.hs = lshr i64 %i.hr, 32                      ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.i145
  %i.hu = shl nuw nsw i64 %i.hs, 1
  %i.hv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.hu
  %i.hw = load i16, ptr %i.hv, align 2
  store i16 %i.hw, ptr %i.ht, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.hx = icmp samesign ult i64 %indvars.iv.next.i146, %i.hp
  br i1 %i.hx, label %bb.aj, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !1426

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.aj
  %i.hy = icmp samesign ult i32 %.0187, 18
  br i1 %i.hy, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.ak

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.ai, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.hs, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.ai ]
  %.5214 = phi i64 [ %i.hr, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.ai ]
  %i.hz = trunc i64 %.5214 to i32                 ; 2 uses
  %i.ia = sub nuw nsw i32 17, %.0187
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr @.str.84, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !1430
  %.not128 = icmp ugt i32 %i.id, %i.hz
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc i64 %.3207215.in to i1
  %i.ie = icmp ne i32 %i.gt, 0
  %i.if = or i1 %i.ie, %.3207215
  %7 = or i1 %i.dc, %i.if
  %8 = icmp slt i32 %i.hz, 0
  %9 = and i1 %8, %7
  br i1 %9, label %.critedge134.thread, label %.critedge136

bb.ak:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.ig = icmp ugt i32 %i.gt, 5
  br i1 %i.ig, label %.critedge134.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ih = icmp eq i32 %i.gt, 5
  %i.ii = trunc i64 %i.hs to i1
  %i.ij = or i1 %i.dc, %i.ii
  %or.cond225 = select i1 %i.ih, i1 %i.ij, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.am:                                            ; preds = %.thread269
  %i.ik = or i64 %i.eg, %i.cz
  %i.il = icmp ne i64 %i.ik, 0
  %10 = or i1 %i.il, %.1205267272
  %11 = icmp slt i32 %i.gg, 0
  %12 = and i1 %10, %11
  br i1 %12, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.al, %bb.ae, %.split217, %bb.ad, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.ak
  %i.im = load ptr, ptr %4, align 8, !tbaa !428
  %i.in = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.io = getelementptr i8, ptr %i.im, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.io, i64 -1     ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !253
  %i.ir = add i8 %i.iq, 1
  store i8 %i.ir, ptr %i.ip, align 1, !tbaa !253
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread269, %bb.am
  %i.is = load ptr, ptr %4, align 8, !tbaa !428
  %i.it = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.iu = getelementptr i8, ptr %i.is, i64 %i.it
  %i.iv = getelementptr i8, ptr %i.iu, i64 -1     ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !253
  %i.ix = add i8 %i.iw, 1
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !253
  %.not242 = icmp eq i32 %.0187, 1
  br i1 %.not242, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.iy = phi i64 [ %i.in, %.critedge134.thread ], [ %i.it, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.an
  %indvars.iv = phi i64 [ %i.iy, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.an ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.iz = load ptr, ptr %4, align 8, !tbaa !428
  %i.ja = and i64 %indvars.iv.next, 4294967295
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ja ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !253
  %i.jd = icmp sgt i8 %i.jc, 57
  br i1 %i.jd, label %bb.an, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.an, %.critedge134
  %i.je = phi i64 [ 1, %.critedge134 ], [ %i.iy, %bb.an ], [ %i.iy, %.lr.ph ]
  %i.jf = load ptr, ptr %4, align 8, !tbaa !428   ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !253
  %i.jh = icmp sgt i8 %i.jg, 57
  br i1 %i.jh, label %bb.ao, label %.critedge136

bb.an:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.jb, align 1, !tbaa !253
  %i.ji = load ptr, ptr %4, align 8, !tbaa !428
  %i.jj = getelementptr i8, ptr %i.ji, i64 %indvars.iv
  %i.jk = getelementptr i8, ptr %i.jj, i64 -2     ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !253
  %i.jm = add i8 %i.jl, 1
  store i8 %i.jm, ptr %i.jk, align 1, !tbaa !253
  %i.jn = trunc nuw i64 %indvars.iv to i32
  %i.jo = icmp sgt i32 %i.jn, 2
  br i1 %i.jo, label %.lr.ph, label %.critedge, !llvm.loop !1427

bb.ao:                                            ; preds = %.critedge
  store i8 49, ptr %i.jf, align 1, !tbaa !253
  br i1 %i.d, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jp = add nuw nsw i32 %.0187, 1
  %i.jq = load ptr, ptr %4, align 8, !tbaa !428
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.je
  store i8 48, ptr %i.jr, align 1, !tbaa !253
  br label %.critedge136

bb.aq:                                            ; preds = %bb.ao
  %i.js = add nsw i32 %i.ec, 1
  store i32 %i.js, ptr %i.a, align 4, !tbaa !119
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.al, %bb.ae, %.critedge, %bb.aq, %bb.ap, %bb.am
  %.1188 = phi i32 [ %i.jp, %bb.ap ], [ %.0187, %bb.aq ], [ %.0187, %.critedge ], [ %.0187, %bb.am ], [ 9, %bb.ae ], [ 18, %bb.al ], [ %.0187, %.split217 ]
  %i.jt = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !427 ; 2 uses
  %i.jw = icmp ult i64 %i.jv, %i.jt
  br i1 %i.jw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.critedge136
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !440
  tail call void %i.jy(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.jt) #26, !inline_history !32
  %.pre.i148 = load i64, ptr %i.ju, align 8, !tbaa !427
  br label %bb.as

.thread219:                                       ; preds = %bb.n
  %i.jz = add nsw i32 %i.ar, -3
  %i.ka = add nsw i32 %i.jz, %.0106
  store i32 %i.ka, ptr %i.a, align 4, !tbaa !119
  br i1 %3, label %bb.at, label %bb.au

bb.as:                                            ; preds = %bb.ar, %.critedge136
  %i.kb = phi i64 [ %i.jv, %.critedge136 ], [ %.pre.i148, %bb.ar ]
  %i.kc = tail call noundef i64 @llvm.umin.i64(i64 %i.jt, i64 %i.kb)
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !429
  br label %.thread

bb.at:                                            ; preds = %.thread219
  %i.ke = fptrunc double %0 to float
  %i.kf = bitcast float %i.ke to i32              ; 2 uses
  %i.kg = and i32 %i.kf, 8388607                  ; 2 uses
  %i.kh = zext nneg i32 %i.kg to i128             ; 2 uses
  %i.ki = and i32 %i.kf, 2139095040               ; 3 uses
  %i.kj = icmp eq i32 %i.ki, 0                    ; 2 uses
  %i.kk = lshr exact i32 %i.ki, 23
  %i.kl = or disjoint i128 %i.kh, 8388608
  %i.km = add nsw i32 %i.kk, -150
  %storemerge.i = select i1 %i.kj, i128 %i.kh, i128 %i.kl
  %.0.i150 = select i1 %i.kj, i32 -149, i32 %i.km
  %i.kn = icmp eq i32 %i.kg, 0
  %i.ko = icmp samesign ugt i32 %i.ki, 16777215
  %i.kp = and i1 %i.kn, %i.ko
  br label %bb.av

bb.au:                                            ; preds = %.thread219
  %i.kq = zext nneg i64 %i.ad to i128             ; 2 uses
  %i.kr = or disjoint i128 %i.kq, 4503599627370496
  %i.ks = add nsw i32 %i.ag, -1075
  %storemerge.i151 = select i1 %.not, i128 %i.kq, i128 %i.kr
  %.0.i152 = select i1 %.not, i32 -1074, i32 %i.ks
  %i.kt = icmp eq i64 %i.ad, 0
  %i.ku = icmp samesign ugt i64 %i.ae, 9007199254740991
  %i.kv = and i1 %i.kt, %i.ku
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sroa.0.0 = phi i128 [ %storemerge.i, %bb.at ], [ %storemerge.i151, %bb.au ]
  %.sroa.6.0 = phi i32 [ %.0.i150, %bb.at ], [ %.0.i152, %bb.au ]
  %i.kw = phi i1 [ %i.kp, %bb.at ], [ %i.kv, %bb.au ]
  %spec.select = zext i1 %i.kw to i32             ; 2 uses
  %i.kx = or disjoint i32 %spec.select, 4
  %.1111 = select i1 %i.d, i32 %i.kx, i32 %spec.select
  %i.ky = tail call i32 @llvm.umin.i32(i32 %.0187, i32 767)
  store i128 %.sroa.0.0, ptr %6, align 16, !tbaa !517
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !119
  call void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v12::detail::basic_fp") align 16 %6, i32 noundef %.1111, i32 noundef %i.ky, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.as, %bb.q, %bb.u, %bb.t, %bb.av
  br i1 %i.d, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %.thread
  %i.kz = load i32, ptr %2, align 4, !tbaa !442
  %i.la = and i32 %i.kz, 8192
  %.not227 = icmp eq i32 %i.la, 0
  br i1 %.not227, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.lb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !429 ; 2 uses
  %.not132237 = icmp eq i64 %i.lc, 0
  br i1 %.not132237, label %.critedge3.thread, label %.lr.ph239

.lr.ph239:                                        ; preds = %bb.ax
  %.promoted = load i32, ptr %i.a, align 4
  %i.ld = load ptr, ptr %4, align 8, !tbaa !428
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph239, %bb.az
  %.0238 = phi i64 [ %i.lc, %.lr.ph239 ], [ %i.lf, %bb.az ] ; 5 uses
  %i.le = phi i32 [ %.promoted, %.lr.ph239 ], [ %i.lj, %bb.az ]
  %i.lf = add i64 %.0238, -1                      ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !253
  %i.li = icmp eq i8 %i.lh, 48
  br i1 %i.li, label %bb.az, label %.critedge3

bb.az:                                            ; preds = %bb.ay
  %i.lj = add nsw i32 %i.le, 1                    ; 2 uses
  store i32 %i.lj, ptr %i.a, align 4, !tbaa !119
  %.not132 = icmp eq i64 %i.lf, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.ay, !llvm.loop !1428

.critedge3.thread:                                ; preds = %bb.az, %bb.ax
  %i.lk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.ay
  %i.lm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !427 ; 2 uses
  %i.lo = icmp ugt i64 %.0238, %i.ln
  br i1 %i.lo, label %bb.ba, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

bb.ba:                                            ; preds = %.critedge3
  %i.lp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !440
  call void %i.lq(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0238) #26, !inline_history !32
  %.pre.i153 = load i64, ptr %i.lm, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154: ; preds = %.critedge3.thread, %.critedge3, %bb.ba
  %.0.lcssa278 = phi i64 [ %.0238, %.critedge3 ], [ %.0238, %bb.ba ], [ 0, %.critedge3.thread ]
  %i.lr = phi i64 [ %i.ln, %.critedge3 ], [ %.pre.i153, %bb.ba ], [ %i.ll, %.critedge3.thread ]
  %i.ls = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa278, i64 %i.lr)
  store i64 %i.ls, ptr %i.lb, align 8, !tbaa !429
  br label %bb.bb
end_hunk_0
