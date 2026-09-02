Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/bundled_fmtlib_format?download=true
inline.NumInlined: 2819
inline.NumDeleted: 700
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
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
  %.sroa.037.0.copyload.i.i = load i64, ptr %i.bd, align 16, !tbaa !54 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !54 ; 2 uses
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
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !54
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
  br i1 %i.d, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit
  %i.df = add nsw i32 %.0106, %.neg125            ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 0
  %i.dh = sub nuw nsw i32 2147483647, %i.df
  %i.di = icmp sgt i32 %1, %i.dh
  %or.cond.i = select i1 %i.dg, i1 %i.di, i1 false
  br i1 %or.cond.i, label %bb.m, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.m:                                             ; preds = %bb.l
  %i.dj = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull @.str.22)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.dk = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.dj) #33
  resume { ptr, i32 } %i.dk

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.l
  %i.dl = add nsw i32 %i.df, %1
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit
  %.0187 = phi i32 [ %i.dl, %_ZN3fmt3v126detail16adjust_precisionERii.exit ], [ %1, %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit ] ; 20 uses
  %.not131 = icmp sgt i32 %.0106, %.0187
  br i1 %.not131, label %bb.q, label %.thread219

bb.q:                                             ; preds = %bb.p
  %i.dm = icmp slt i32 %.0187, 1
  %i.dn = add nsw i32 %.0106, %.neg125            ; 2 uses
  br i1 %i.dm, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  store i32 %i.dn, ptr %i.a, align 4, !tbaa !101
  %i.do = icmp slt i32 %.0187, 0
  br i1 %i.do, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.dp, align 8, !tbaa !53
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !75
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.u, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !73
  tail call void %i.du(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1), !inline_history !27
  %.pre.i140 = load i64, ptr %i.dq, align 8, !tbaa !75
  %i.dv = icmp ne i64 %.pre.i140, 0
  %i.dw = zext i1 %i.dv to i64
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141: ; preds = %bb.t, %bb.u
  %i.dx = phi i64 [ 1, %bb.t ], [ %i.dw, %bb.u ]
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !53
  %i.dz = zext i1 %i.dc to i64
  %i.ea = or i64 %.0107, %i.dz
  %i.eb = icmp ugt i64 %i.ea, 5000000000000000000
  %i.ec = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  br i1 %i.eb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 49, ptr %i.ec, align 1, !tbaa !68
  br label %.thread

bb.w:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 48, ptr %i.ec, align 1, !tbaa !68
  br label %.thread

bb.x:                                             ; preds = %bb.q
  %i.ed = sub nsw i32 %i.dn, %.0187               ; 2 uses
  store i32 %i.ed, ptr %i.a, align 4, !tbaa !101
  %i.ee = zext i64 %.0107 to i128
  %i.ef = mul nuw nsw i128 %i.ee, 7922816251426433760
  %sum.shift = lshr i128 %i.ef, 96
  %i.eg = trunc nuw nsw i128 %sum.shift to i64    ; 3 uses
  %.neg126 = mul i64 %i.eg, -10000000000
  %i.eh = add i64 %.neg126, %.0107                ; 5 uses
  %i.ei = tail call i32 @llvm.umin.i32(i32 %.0187, i32 9) ; 3 uses
  %i.ej = load ptr, ptr %4, align 8, !tbaa !74    ; 6 uses
  %i.ek = and i32 %i.ei, 1
  %.not.i = icmp eq i32 %i.ek, 0
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.el = mul nuw nsw i64 %i.eg, 720575941
  %i.em = lshr i64 %i.el, 24
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %i.eo = lshr i64 %i.en, 32                      ; 2 uses
  %i.ep = trunc nuw nsw i64 %i.eo to i8
  %i.eq = add nuw nsw i8 %i.ep, 48
  store i8 %i.eq, ptr %i.ej, align 1, !tbaa !68
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.er = mul nuw nsw i64 %i.eg, 450359963
  %i.es = lshr i64 %i.er, 20
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %i.eu = lshr i64 %i.et, 32                      ; 2 uses
  %i.ev = shl nuw nsw i64 %i.eu, 1
  %i.ew = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2
  store i16 %i.ex, ptr %i.ej, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0208 = phi i64 [ %i.et, %bb.z ], [ %i.en, %bb.y ] ; 2 uses
  %.0204.in = phi i64 [ %i.eu, %bb.z ], [ %i.eo, %bb.y ]
  %.0.i = phi i32 [ 2, %bb.z ], [ 1, %bb.y ]      ; 2 uses
  %i.ey = icmp samesign ugt i32 %.0187, %.0.i
  br i1 %i.ey, label %.lr.ph.i, label %.thread268

.thread268:                                       ; preds = %bb.aa
  %.1205265 = trunc i64 %.0204.in to i1
  br label %.thread269

.lr.ph.i:                                         ; preds = %bb.aa
  %i.ez = zext nneg i32 %.0.i to i64              ; 4 uses
  %i.fa = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.fb = and i64 %.0208, 4294967295
  %i.fc = mul nuw nsw i64 %i.fb, 100              ; 3 uses
  %i.fd = lshr i64 %i.fc, 32                      ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ez
  %i.ff = shl nuw nsw i64 %i.fd, 1
  %i.fg = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2
  store i16 %i.fh, ptr %i.fe, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.ez, 2   ; 2 uses
  %i.fi = icmp samesign ult i64 %indvars.iv.next.i, %i.fa
  br i1 %i.fi, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %.lr.ph.i
  %i.fj = and i64 %i.fc, 4294967292
  %i.fk = mul nuw nsw i64 %i.fj, 100              ; 3 uses
  %i.fl = lshr i64 %i.fk, 32                      ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv.next.i
  %i.fn = shl nuw nsw i64 %i.fl, 1
  %i.fo = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2
  store i16 %i.fp, ptr %i.fm, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.ez, 4 ; 2 uses
  %i.fq = icmp samesign ult i64 %indvars.iv.next.i.1, %i.fa
  br i1 %i.fq, label %bb.ac, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fr = and i64 %i.fk, 4294967280
  %i.fs = mul nuw nsw i64 %i.fr, 100              ; 3 uses
  %i.ft = lshr i64 %i.fs, 32                      ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv.next.i.1
  %i.fv = shl nuw nsw i64 %i.ft, 1
  %i.fw = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2
  store i16 %i.fx, ptr %i.fu, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.ez, 6 ; 2 uses
  %i.fy = icmp samesign ult i64 %indvars.iv.next.i.2, %i.fa
  br i1 %i.fy, label %bb.ad, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fz = and i64 %i.fs, 4294967232
  %i.ga = mul nuw nsw i64 %i.fz, 100              ; 2 uses
  %i.gb = lshr i64 %i.ga, 32                      ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv.next.i.2
  %i.gd = shl nuw nsw i64 %i.gb, 1
  %i.ge = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2
  store i16 %i.gf, ptr %i.gc, align 1
  br label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ad, %bb.ac, %bb.ab, %.lr.ph.i
  %.lcssa290 = phi i64 [ %i.fc, %.lr.ph.i ], [ %i.fk, %bb.ab ], [ %i.fs, %bb.ac ], [ %i.ga, %bb.ad ]
  %.lcssa289 = phi i64 [ %i.fd, %.lr.ph.i ], [ %i.fl, %bb.ab ], [ %i.ft, %bb.ac ], [ %i.gb, %bb.ad ]
  %.1205 = trunc i64 %.lcssa289 to i1             ; 2 uses
  %i.gg = icmp samesign ult i32 %.0187, 10
  br i1 %i.gg, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.af, label %.thread269

.thread269:                                       ; preds = %.thread268, %bb.ae
  %.2210266275 = phi i64 [ %.0208, %.thread268 ], [ %.lcssa290, %bb.ae ]
  %.1205267272 = phi i1 [ %.1205265, %.thread268 ], [ %.1205, %bb.ae ]
  %i.gh = trunc i64 %.2210266275 to i32           ; 2 uses
  %i.gi = sub nuw nsw i32 8, %i.ei
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @.str.48, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !622
  %.not130 = icmp ugt i32 %i.gl, %i.gh
  br i1 %.not130, label %bb.ao, label %.critedge134

bb.af:                                            ; preds = %bb.ae
  %i.gm = icmp ugt i64 %i.eh, 5000000000
  br i1 %i.gm, label %.critedge134.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = icmp eq i64 %i.eh, 5000000000
  %i.go = or i1 %i.dc, %.1205
  %or.cond223 = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %or.cond223, label %.critedge134.thread, label %.critedge136

bb.ah:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %i.gp = zext i64 %i.eh to i128
  %i.gq = mul nuw nsw i128 %i.gp, 1844674407370955162
  %i.gr = lshr i128 %i.gq, 64                     ; 2 uses
  %i.gs = trunc i128 %i.gr to i32
  %i.gt = trunc i64 %i.eh to i32
  %.neg127 = mul i32 %i.gs, -10
  %i.gu = add i32 %.neg127, %i.gt                 ; 3 uses
  %i.gv = add nsw i32 %.0187, -9                  ; 3 uses
  %i.gw = load ptr, ptr %4, align 8, !tbaa !74
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 9 ; 3 uses
  %i.gy = and i32 %i.gv, 1
  %.not.i142 = icmp eq i32 %i.gy, 0
  %i.gz = trunc nuw nsw i128 %i.gr to i64
  %i.ha = and i64 %i.gz, 4294967295               ; 2 uses
  br i1 %.not.i142, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hb = mul nuw nsw i64 %i.ha, 720575941
  %i.hc = lshr i64 %i.hb, 24
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %i.he = lshr i64 %i.hd, 32                      ; 2 uses
  %i.hf = trunc nuw nsw i64 %i.he to i8
  %i.hg = add nuw nsw i8 %i.hf, 48
  store i8 %i.hg, ptr %i.gx, align 1, !tbaa !68
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.hh = mul nuw nsw i64 %i.ha, 450359963
  %i.hi = lshr i64 %i.hh, 20
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %i.hk = lshr i64 %i.hj, 32                      ; 2 uses
  %i.hl = shl nuw nsw i64 %i.hk, 1
  %i.hm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.hl
  %i.hn = load i16, ptr %i.hm, align 2
  store i16 %i.hn, ptr %i.gx, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.3211 = phi i64 [ %i.hj, %bb.aj ], [ %i.hd, %bb.ai ] ; 2 uses
  %.2206.in = phi i64 [ %i.hk, %bb.aj ], [ %i.he, %bb.ai ]
  %.0.i143 = phi i32 [ 2, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %i.ho = icmp samesign ult i32 %.0.i143, %i.gv
  br i1 %i.ho, label %.lr.ph.i144, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.ak
  %i.hp = zext nneg i32 %.0.i143 to i64
  %i.hq = zext nneg i32 %i.gv to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.hs, %bb.al ]
  %indvars.iv.i145 = phi i64 [ %i.hp, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.al ] ; 2 uses
  %i.hr = and i64 %.4, 4294967295
  %i.hs = mul nuw nsw i64 %i.hr, 100              ; 3 uses
  %i.ht = lshr i64 %i.hs, 32                      ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv.i145
  %i.hv = shl nuw nsw i64 %i.ht, 1
  %i.hw = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.hv
  %i.hx = load i16, ptr %i.hw, align 2
  store i16 %i.hx, ptr %i.hu, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.hy = icmp samesign ult i64 %indvars.iv.next.i146, %i.hq
  br i1 %i.hy, label %bb.al, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !618

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.al
  %i.hz = icmp samesign ult i32 %.0187, 18
  br i1 %i.hz, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.am

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.ak, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.ht, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.ak ]
  %.5214 = phi i64 [ %i.hs, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.ak ]
  %i.ia = trunc i64 %.5214 to i32                 ; 2 uses
  %i.ib = sub nuw nsw i32 17, %.0187
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr @.str.48, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !622
  %.not128 = icmp ugt i32 %i.ie, %i.ia
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc i64 %.3207215.in to i1
  %i.if = icmp ne i32 %i.gu, 0
  %i.ig = or i1 %i.if, %.3207215
  %6 = or i1 %i.dc, %i.ig
  %7 = icmp slt i32 %i.ia, 0
  %8 = and i1 %7, %6
  br i1 %8, label %.critedge134.thread, label %.critedge136

bb.am:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.ih = icmp ugt i32 %i.gu, 5
  br i1 %i.ih, label %.critedge134.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ii = icmp eq i32 %i.gu, 5
  %i.ij = trunc i64 %i.ht to i1
  %i.ik = or i1 %i.dc, %i.ij
  %or.cond225 = select i1 %i.ii, i1 %i.ik, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.ao:                                            ; preds = %.thread269
  %i.il = or i64 %i.eh, %i.cz
  %i.im = icmp ne i64 %i.il, 0
  %9 = or i1 %i.im, %.1205267272
  %10 = icmp slt i32 %i.gh, 0
  %11 = and i1 %9, %10
  br i1 %11, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.an, %bb.ag, %.split217, %bb.af, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.am
  %i.in = load ptr, ptr %4, align 8, !tbaa !74
  %i.io = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.ip = getelementptr i8, ptr %i.in, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 -1     ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !68
  %i.is = add i8 %i.ir, 1
  store i8 %i.is, ptr %i.iq, align 1, !tbaa !68
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread269, %bb.ao
  %i.it = load ptr, ptr %4, align 8, !tbaa !74
  %i.iu = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.iv = getelementptr i8, ptr %i.it, i64 %i.iu
  %i.iw = getelementptr i8, ptr %i.iv, i64 -1     ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !68
  %i.iy = add i8 %i.ix, 1
  store i8 %i.iy, ptr %i.iw, align 1, !tbaa !68
  %.not242 = icmp eq i32 %.0187, 1
  br i1 %.not242, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.iz = phi i64 [ %i.io, %.critedge134.thread ], [ %i.iu, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ap
  %indvars.iv = phi i64 [ %i.iz, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ap ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ja = load ptr, ptr %4, align 8, !tbaa !74
  %i.jb = and i64 %indvars.iv.next, 4294967295
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !68
  %i.je = icmp sgt i8 %i.jd, 57
  br i1 %i.je, label %bb.ap, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ap, %.critedge134
  %i.jf = phi i64 [ 1, %.critedge134 ], [ %i.iz, %bb.ap ], [ %i.iz, %.lr.ph ]
  %i.jg = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !68
  %i.ji = icmp sgt i8 %i.jh, 57
  br i1 %i.ji, label %bb.aq, label %.critedge136

bb.ap:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.jc, align 1, !tbaa !68
  %i.jj = load ptr, ptr %4, align 8, !tbaa !74
  %i.jk = getelementptr i8, ptr %i.jj, i64 %indvars.iv
  %i.jl = getelementptr i8, ptr %i.jk, i64 -2     ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !68
  %i.jn = add i8 %i.jm, 1
  store i8 %i.jn, ptr %i.jl, align 1, !tbaa !68
  %i.jo = trunc nuw i64 %indvars.iv to i32
  %i.jp = icmp sgt i32 %i.jo, 2
  br i1 %i.jp, label %.lr.ph, label %.critedge, !llvm.loop !619

bb.aq:                                            ; preds = %.critedge
  store i8 49, ptr %i.jg, align 1, !tbaa !68
  br i1 %i.d, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jq = add nuw nsw i32 %.0187, 1
  %i.jr = load ptr, ptr %4, align 8, !tbaa !74
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jf
  store i8 48, ptr %i.js, align 1, !tbaa !68
  br label %.critedge136

bb.as:                                            ; preds = %bb.aq
  %i.jt = add nsw i32 %i.ed, 1
  store i32 %i.jt, ptr %i.a, align 4, !tbaa !101
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.an, %bb.ag, %.critedge, %bb.as, %bb.ar, %bb.ao
  %.1188 = phi i32 [ %i.jq, %bb.ar ], [ %.0187, %bb.as ], [ %.0187, %.critedge ], [ %.0187, %bb.ao ], [ 9, %bb.ag ], [ 18, %bb.an ], [ %.0187, %.split217 ]
  %i.ju = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !75 ; 2 uses
  %i.jx = icmp ult i64 %i.jw, %i.ju
  br i1 %i.jx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.critedge136
  %i.jy = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !73
  tail call void %i.jz(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ju), !inline_history !27
  %.pre.i148 = load i64, ptr %i.jv, align 8, !tbaa !75
  br label %bb.au

.thread219:                                       ; preds = %bb.p
  %i.ka = add nsw i32 %i.ar, -3
  %i.kb = add nsw i32 %i.ka, %.0106
  store i32 %i.kb, ptr %i.a, align 4, !tbaa !101
  br i1 %3, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.at, %.critedge136
  %i.kc = phi i64 [ %i.jw, %.critedge136 ], [ %.pre.i148, %bb.at ]
  %i.kd = tail call noundef i64 @llvm.umin.i64(i64 %i.ju, i64 %i.kc)
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.kd, ptr %i.ke, align 8, !tbaa !53
  br label %.thread

bb.av:                                            ; preds = %.thread219
  %i.kf = fptrunc double %0 to float
  %i.kg = bitcast float %i.kf to i32              ; 2 uses
  %i.kh = and i32 %i.kg, 8388607                  ; 2 uses
  %i.ki = zext nneg i32 %i.kh to i128             ; 2 uses
  %i.kj = and i32 %i.kg, 2139095040               ; 3 uses
  %i.kk = icmp eq i32 %i.kj, 0                    ; 2 uses
  %i.kl = lshr exact i32 %i.kj, 23
  %i.km = or disjoint i128 %i.ki, 8388608
  %i.kn = add nsw i32 %i.kl, -150
  %storemerge.i = select i1 %i.kk, i128 %i.ki, i128 %i.km
  %.0.i150 = select i1 %i.kk, i32 -149, i32 %i.kn
  %i.ko = icmp eq i32 %i.kh, 0
  %i.kp = icmp samesign ugt i32 %i.kj, 16777215
  %i.kq = and i1 %i.ko, %i.kp
  br label %bb.ax

bb.aw:                                            ; preds = %.thread219
  %i.kr = zext nneg i64 %i.ad to i128             ; 2 uses
  %i.ks = or disjoint i128 %i.kr, 4503599627370496
  %i.kt = add nsw i32 %i.ag, -1075
  %storemerge.i151 = select i1 %.not, i128 %i.kr, i128 %i.ks
  %.0.i152 = select i1 %.not, i32 -1074, i32 %i.kt
  %i.ku = icmp eq i64 %i.ad, 0
  %i.kv = icmp samesign ugt i64 %i.ae, 9007199254740991
  %i.kw = and i1 %i.ku, %i.kv
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sroa.0.0 = phi i128 [ %storemerge.i, %bb.av ], [ %storemerge.i151, %bb.aw ]
  %.sroa.6.0 = phi i32 [ %.0.i150, %bb.av ], [ %.0.i152, %bb.aw ]
  %i.kx = phi i1 [ %i.kq, %bb.av ], [ %i.kw, %bb.aw ]
  %spec.select = zext i1 %i.kx to i32             ; 2 uses
  %i.ky = or disjoint i32 %spec.select, 4
  %.1111 = select i1 %i.d, i32 %i.ky, i32 %spec.select
  %i.kz = tail call i32 @llvm.umin.i32(i32 %.0187, i32 767)
  store i128 %.sroa.0.0, ptr %5, align 16, !tbaa !206
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !101
  call void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v12::detail::basic_fp") align 16 %5, i32 noundef %.1111, i32 noundef %i.kz, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.au, %bb.s, %bb.w, %bb.v, %bb.ax
  br i1 %i.d, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %.thread
  %i.la = load i32, ptr %2, align 4, !tbaa !120
  %i.lb = and i32 %i.la, 8192
  %.not227 = icmp eq i32 %i.lb, 0
  br i1 %.not227, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.lc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !53 ; 2 uses
  %.not132237 = icmp eq i64 %i.ld, 0
  br i1 %.not132237, label %.critedge3.thread, label %.lr.ph239

.lr.ph239:                                        ; preds = %bb.az
  %.promoted = load i32, ptr %i.a, align 4
  %i.le = load ptr, ptr %4, align 8, !tbaa !74
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph239, %bb.bb
  %.0238 = phi i64 [ %i.ld, %.lr.ph239 ], [ %i.lg, %bb.bb ] ; 5 uses
  %i.lf = phi i32 [ %.promoted, %.lr.ph239 ], [ %i.lk, %bb.bb ]
  %i.lg = add i64 %.0238, -1                      ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !68
  %i.lj = icmp eq i8 %i.li, 48
  br i1 %i.lj, label %bb.bb, label %.critedge3

bb.bb:                                            ; preds = %bb.ba
  %i.lk = add nsw i32 %i.lf, 1                    ; 2 uses
  store i32 %i.lk, ptr %i.a, align 4, !tbaa !101
  %.not132 = icmp eq i64 %i.lg, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.ba, !llvm.loop !620

.critedge3.thread:                                ; preds = %bb.bb, %bb.az
  %i.ll = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !75
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.ba
  %i.ln = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !75 ; 2 uses
  %i.lp = icmp ugt i64 %.0238, %i.lo
  br i1 %i.lp, label %bb.bc, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

bb.bc:                                            ; preds = %.critedge3
  %i.lq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !73
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0238), !inline_history !27
  %.pre.i153 = load i64, ptr %i.ln, align 8, !tbaa !75
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154: ; preds = %.critedge3.thread, %.critedge3, %bb.bc
  %.0.lcssa278 = phi i64 [ %.0238, %.critedge3 ], [ %.0238, %bb.bc ], [ 0, %.critedge3.thread ]
  %i.ls = phi i64 [ %i.lo, %.critedge3 ], [ %.pre.i153, %bb.bc ], [ %i.lm, %.critedge3.thread ]
  %i.lt = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa278, i64 %i.ls)
  store i64 %i.lt, ptr %i.lc, align 8, !tbaa !53
  br label %bb.bd
end_hunk_0
