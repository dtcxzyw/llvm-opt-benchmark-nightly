Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 225
begin_hunk_0_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.r), !inline_history !5636
  %.pre.i137 = load i64, ptr %i.s, align 8, !tbaa !339
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit:  ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.t, %bb.e ], [ %.pre.i137, %bb.f ]
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !354
  %i.aa = load ptr, ptr %4, align 8, !tbaa !338
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 48, i64 %i.r, i1 false)
  %i.ab = sub nsw i32 0, %1
  br label %bb.bd

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ac = bitcast double %0 to i64                ; 2 uses
  %i.ad = and i64 %i.ac, 4503599627370495         ; 5 uses
  %i.ae = and i64 %i.ac, 9218868437227405312      ; 3 uses
  %i.af = lshr exact i64 %i.ae, 52
  %i.ag = trunc nuw nsw i64 %i.af to i32          ; 2 uses
  %.not = icmp eq i64 %i.ae, 0                    ; 3 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.ag, -1075
  %i.ai = shl nuw nsw i64 %i.ad, 1
  %i.aj = or disjoint i64 %i.ai, 9007199254740992
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true) ; 2 uses
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = add nuw nsw i64 %i.ak, 4294967286
  %i.an = sub nuw nsw i32 -1063, %i.al
  %i.ao = and i64 %i.am, 4294967295
  %i.ap = shl i64 %i.ad, %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0109 = phi i64 [ %i.aj, %bb.h ], [ %i.ap, %bb.i ]
  %.0108 = phi i32 [ %i.ah, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %i.aq = mul nsw i32 %.0108, 315653
  %i.ar = ashr i32 %i.aq, 20                      ; 2 uses
  %.neg125 = add nsw i32 %i.ar, -2                ; 4 uses
  %i.as = sub nsw i32 2, %i.ar                    ; 2 uses
  %i.at = mul nsw i32 %i.as, 1741647
  %i.au = ashr i32 %i.at, 19
  %i.av = add nsw i32 %i.au, %.0108
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %.0109, %i.aw
  %i.ay = tail call { i64, i64 } @_ZN3fmt3v126detail9dragonbox16get_cached_powerEi(i32 noundef %i.as) #30 ; 2 uses
  %i.az = extractvalue { i64, i64 } %i.ay, 0
  %i.ba = extractvalue { i64, i64 } %i.ay, 1
  %i.bb = zext i64 %i.ax to i128                  ; 2 uses
  %i.bc = zext i64 %i.ba to i128
  %i.bd = mul nuw i128 %i.bb, %i.bc               ; 2 uses
  %i.be = lshr i128 %i.bd, 64
  %i.bf = trunc nuw i128 %i.be to i64
  %i.bg = trunc i128 %i.bd to i64
  %i.bh = zext i64 %i.az to i128
  %i.bi = mul nuw i128 %i.bb, %i.bh
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = trunc nuw i128 %i.bj to i64
  %i.bl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bg, i64 %i.bk) ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 1
  %i.bn = extractvalue { i64, i1 } %i.bl, 0       ; 2 uses
  %i.bo = zext i1 %i.bm to i64
  %i.bp = add nuw i64 %i.bo, %i.bf                ; 3 uses
  %i.bq = icmp ne i64 %i.bn, 0                    ; 4 uses
  %i.br = icmp ugt i64 %i.bp, 999999999999999999  ; 2 uses
  %i.bs = mul nuw i64 %i.bp, 10
  %.0107 = select i1 %i.br, i64 %i.bp, i64 %i.bs  ; 3 uses
  %.0106 = select i1 %i.br, i32 19, i32 18        ; 5 uses
  br i1 %i.d, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bt = add nsw i32 %.neg125, %.0106            ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  %i.bv = sub nuw nsw i32 2147483647, %i.bt
  %i.bw = icmp sgt i32 %1, %i.bv
  %or.cond.i = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond.i, label %bb.l, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.l:                                             ; preds = %bb.k
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull @.str.1073)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bx) #30
  resume { ptr, i32 } %i.by

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.k
  %i.bz = add nsw i32 %i.bt, %1
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %bb.j
  %.0187 = phi i32 [ %i.bz, %_ZN3fmt3v126detail16adjust_precisionERii.exit ], [ %1, %bb.j ] ; 20 uses
  %.not131 = icmp sgt i32 %.0106, %.0187
  br i1 %.not131, label %bb.p, label %.thread219

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp slt i32 %.0187, 1
  br i1 %i.ca, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.cb = add nsw i32 %.neg125, %.0106
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !239
  %i.cc = icmp slt i32 %.0187, 0
  br i1 %i.cc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cd, align 8, !tbaa !354
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !339
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !260
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1), !inline_history !5636
  %.pre.i140 = load i64, ptr %i.ce, align 8, !tbaa !339
  %i.cj = icmp ne i64 %.pre.i140, 0
  %i.ck = zext i1 %i.cj to i64
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141: ; preds = %bb.s, %bb.t
  %i.cl = phi i64 [ 1, %bb.s ], [ %i.ck, %bb.t ]
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !354
  %i.cn = zext i1 %i.bq to i64
  %i.co = or i64 %.0107, %i.cn
  %i.cp = icmp ugt i64 %i.co, 5000000000000000000
  %i.cq = load ptr, ptr %4, align 8, !tbaa !338   ; 2 uses
  br i1 %i.cp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 49, ptr %i.cq, align 1, !tbaa !232
  br label %.thread

bb.v:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 48, ptr %i.cq, align 1, !tbaa !232
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.cr = sub nuw nsw i32 %.0106, %.0187
  %i.cs = add nsw i32 %i.cr, %.neg125             ; 2 uses
  store i32 %i.cs, ptr %i.a, align 4, !tbaa !239
  %i.ct = zext i64 %.0107 to i128
  %i.cu = mul nuw nsw i128 %i.ct, 7922816251426433760
  %sum.shift = lshr i128 %i.cu, 96
  %i.cv = trunc nuw nsw i128 %sum.shift to i64    ; 3 uses
  %.neg126 = mul i64 %i.cv, -10000000000
  %i.cw = add i64 %.neg126, %.0107                ; 5 uses
  %i.cx = tail call i32 @llvm.umin.i32(i32 %.0187, i32 9) ; 3 uses
  %i.cy = load ptr, ptr %4, align 8, !tbaa !338   ; 6 uses
  %i.cz = and i32 %i.cx, 1
  %.not.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = mul nuw nsw i64 %i.cv, 720575941
  %i.db = lshr i64 %i.da, 24
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %i.dd = lshr i64 %i.dc, 32                      ; 2 uses
  %i.de = trunc nuw nsw i64 %i.dd to i8
  %i.df = add nuw nsw i8 %i.de, 48
  store i8 %i.df, ptr %i.cy, align 1, !tbaa !232
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dg = mul nuw nsw i64 %i.cv, 450359963
  %i.dh = lshr i64 %i.dg, 20
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = lshr i64 %i.di, 32                      ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dj, 1
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2
  store i16 %i.dm, ptr %i.cy, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0208 = phi i64 [ %i.di, %bb.y ], [ %i.dc, %bb.x ] ; 2 uses
  %.0204.in = phi i64 [ %i.dj, %bb.y ], [ %i.dd, %bb.x ]
  %.0.i = phi i32 [ 2, %bb.y ], [ 1, %bb.x ]      ; 2 uses
  %i.dn = icmp samesign ugt i32 %.0187, %.0.i
  br i1 %i.dn, label %.lr.ph.i, label %.thread265

.lr.ph.i:                                         ; preds = %bb.z
  %i.do = zext nneg i32 %.0.i to i64              ; 4 uses
  %i.dp = zext nneg i32 %i.cx to i64              ; 3 uses
  %i.dq = and i64 %.0208, 4294967295
  %i.dr = mul nuw nsw i64 %i.dq, 100              ; 3 uses
  %i.ds = lshr i64 %i.dr, 32                      ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.do
  %i.du = shl nuw nsw i64 %i.ds, 1
  %i.dv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2
  store i16 %i.dw, ptr %i.dt, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.do, 2   ; 2 uses
  %i.dx = icmp samesign ult i64 %indvars.iv.next.i, %i.dp
  br i1 %i.dx, label %bb.aa, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dy = and i64 %i.dr, 4294967292
  %i.dz = mul nuw nsw i64 %i.dy, 100              ; 3 uses
  %i.ea = lshr i64 %i.dz, 32                      ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv.next.i
  %i.ec = shl nuw nsw i64 %i.ea, 1
  %i.ed = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2
  store i16 %i.ee, ptr %i.eb, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.do, 4 ; 2 uses
  %i.ef = icmp samesign ult i64 %indvars.iv.next.i.1, %i.dp
  br i1 %i.ef, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.eg = and i64 %i.dz, 4294967280
  %i.eh = mul nuw nsw i64 %i.eg, 100              ; 3 uses
  %i.ei = lshr i64 %i.eh, 32                      ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv.next.i.1
  %i.ek = shl nuw nsw i64 %i.ei, 1
  %i.el = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2
  store i16 %i.em, ptr %i.ej, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.do, 6 ; 2 uses
  %i.en = icmp samesign ult i64 %indvars.iv.next.i.2, %i.dp
  br i1 %i.en, label %bb.ac, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.eo = and i64 %i.eh, 4294967232
  %i.ep = mul nuw nsw i64 %i.eo, 100              ; 2 uses
  %i.eq = lshr i64 %i.ep, 32                      ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv.next.i.2
  %i.es = shl nuw nsw i64 %i.eq, 1
  %i.et = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2
  store i16 %i.eu, ptr %i.er, align 1
  br label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i
  %.lcssa286 = phi i64 [ %i.dr, %.lr.ph.i ], [ %i.dz, %bb.aa ], [ %i.eh, %bb.ab ], [ %i.ep, %bb.ac ]
  %.lcssa285 = phi i64 [ %i.ds, %.lr.ph.i ], [ %i.ea, %bb.aa ], [ %i.ei, %bb.ab ], [ %i.eq, %bb.ac ] ; 2 uses
  %i.ev = icmp samesign ult i32 %.0187, 10
  br i1 %i.ev, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.ae, label %.thread265

.thread265:                                       ; preds = %bb.z, %bb.ad
  %.2210262271 = phi i64 [ %.lcssa286, %bb.ad ], [ %.0208, %bb.z ]
  %.1205264270.in = phi i64 [ %.lcssa285, %bb.ad ], [ %.0204.in, %bb.z ]
  %i.ew = trunc i64 %.2210262271 to i32           ; 2 uses
  %i.ex = sub nuw nsw i32 8, %i.cx
  %i.ey = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr @.str.1275, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !5641
  %i.fb = zext i16 %i.fa to i32
  %i.fc = shl nuw i32 %i.fb, 16
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr @.str.1276, i64 %i.ey
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !5641
  %i.ff = zext i16 %i.fe to i32
  %i.fg = or disjoint i32 %i.fc, %i.ff
  %.not130 = icmp ugt i32 %i.fg, %i.ew
  br i1 %.not130, label %bb.an, label %.critedge134

bb.ae:                                            ; preds = %bb.ad
  %i.fh = icmp ugt i64 %i.cw, 5000000000
  br i1 %i.fh, label %.critedge134.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fi = icmp eq i64 %i.cw, 5000000000
  %6 = trunc i64 %.lcssa285 to i1
  %i.fj = or i1 %i.bq, %6
  %or.cond223 = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %or.cond223, label %.critedge134.thread, label %.critedge136

bb.ag:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %i.fk = zext i64 %i.cw to i128
  %i.fl = mul nuw nsw i128 %i.fk, 1844674407370955162
  %i.fm = lshr i128 %i.fl, 64                     ; 2 uses
  %i.fn = trunc i128 %i.fm to i32
  %i.fo = trunc i64 %i.cw to i32
  %.neg127 = mul i32 %i.fn, -10
  %i.fp = add i32 %.neg127, %i.fo                 ; 3 uses
  %i.fq = add nsw i32 %.0187, -9                  ; 3 uses
  %i.fr = load ptr, ptr %4, align 8, !tbaa !338
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 9 ; 3 uses
  %i.ft = and i32 %i.fq, 1
  %.not.i142 = icmp eq i32 %i.ft, 0
  %i.fu = trunc nuw nsw i128 %i.fm to i64
  %i.fv = and i64 %i.fu, 4294967295               ; 2 uses
  br i1 %.not.i142, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fw = mul nuw nsw i64 %i.fv, 720575941
  %i.fx = lshr i64 %i.fw, 24
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %i.fz = lshr i64 %i.fy, 32                      ; 2 uses
  %i.ga = trunc nuw nsw i64 %i.fz to i8
  %i.gb = add nuw nsw i8 %i.ga, 48
  store i8 %i.gb, ptr %i.fs, align 1, !tbaa !232
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gc = mul nuw nsw i64 %i.fv, 450359963
  %i.gd = lshr i64 %i.gc, 20
  %i.ge = add nuw nsw i64 %i.gd, 1                ; 2 uses
  %i.gf = lshr i64 %i.ge, 32                      ; 2 uses
  %i.gg = shl nuw nsw i64 %i.gf, 1
  %i.gh = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2
  store i16 %i.gi, ptr %i.fs, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.3211 = phi i64 [ %i.ge, %bb.ai ], [ %i.fy, %bb.ah ] ; 2 uses
  %.2206.in = phi i64 [ %i.gf, %bb.ai ], [ %i.fz, %bb.ah ]
  %.0.i143 = phi i32 [ 2, %bb.ai ], [ 1, %bb.ah ] ; 2 uses
  %i.gj = icmp samesign ult i32 %.0.i143, %i.fq
  br i1 %i.gj, label %.lr.ph.i144, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.aj
  %i.gk = zext nneg i32 %.0.i143 to i64
  %i.gl = zext nneg i32 %i.fq to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.gn, %bb.ak ]
  %indvars.iv.i145 = phi i64 [ %i.gk, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.ak ] ; 2 uses
  %i.gm = and i64 %.4, 4294967295
  %i.gn = mul nuw nsw i64 %i.gm, 100              ; 3 uses
  %i.go = lshr i64 %i.gn, 32                      ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv.i145
  %i.gq = shl nuw nsw i64 %i.go, 1
  %i.gr = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gq
  %i.gs = load i16, ptr %i.gr, align 2
  store i16 %i.gs, ptr %i.gp, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.gt = icmp samesign ult i64 %indvars.iv.next.i146, %i.gl
  br i1 %i.gt, label %bb.ak, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !5637

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.ak
  %i.gu = icmp samesign ult i32 %.0187, 18
  br i1 %i.gu, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.al

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.aj, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.go, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.aj ]
  %.5214 = phi i64 [ %i.gn, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.aj ]
  %i.gv = trunc i64 %.5214 to i32                 ; 2 uses
  %i.gw = sub nuw nsw i32 17, %.0187
  %i.gx = zext nneg i32 %i.gw to i64              ; 2 uses
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr @.str.1275, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !5641
  %i.ha = zext i16 %i.gz to i32
  %i.hb = shl nuw i32 %i.ha, 16
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr @.str.1276, i64 %i.gx
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !5641
  %i.he = zext i16 %i.hd to i32
  %i.hf = or disjoint i32 %i.hb, %i.he
  %.not128 = icmp ugt i32 %i.hf, %i.gv
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc nuw nsw i64 %.3207215.in to i32
  %7 = lshr i32 %i.gv, 31
  %i.hg = icmp ne i32 %i.fp, 0
  %i.hh = or i1 %i.hg, %i.bq
  %8 = zext i1 %i.hh to i32
  %9 = or i32 %8, %.3207215
  %10 = and i32 %7, %9
  %11 = trunc nuw i32 %10 to i1
  br i1 %11, label %.critedge134.thread, label %.critedge136

bb.al:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.hi = icmp ugt i32 %i.fp, 5
  br i1 %i.hi, label %.critedge134.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hj = icmp eq i32 %i.fp, 5
  %i.hk = trunc i64 %i.go to i1
  %i.hl = or i1 %i.bq, %i.hk
  %or.cond225 = select i1 %i.hj, i1 %i.hl, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.an:                                            ; preds = %.thread265
  %.1205264270 = trunc nsw i64 %.1205264270.in to i32
  %12 = lshr i32 %i.ew, 31
  %i.hm = or i64 %i.cw, %i.bn
  %i.hn = icmp ne i64 %i.hm, 0
  %13 = zext i1 %i.hn to i32
  %14 = or i32 %.1205264270, %13
  %15 = and i32 %14, %12
  %16 = trunc nuw i32 %15 to i1
  br i1 %16, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.am, %bb.af, %.split217, %bb.ae, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.al
  %i.ho = load ptr, ptr %4, align 8, !tbaa !338
  %i.hp = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.hq = getelementptr i8, ptr %i.ho, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 -1     ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !232
  %i.ht = add i8 %i.hs, 1
  store i8 %i.ht, ptr %i.hr, align 1, !tbaa !232
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread265, %bb.an
  %i.hu = load ptr, ptr %4, align 8, !tbaa !338
  %i.hv = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hu, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hw, i64 -1     ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !232
  %i.hz = add i8 %i.hy, 1
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !232
  %.not240 = icmp eq i32 %.0187, 1
  br i1 %.not240, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.ia = phi i64 [ %i.hp, %.critedge134.thread ], [ %i.hv, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %indvars.iv = phi i64 [ %i.ia, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ao ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ib = load ptr, ptr %4, align 8, !tbaa !338
  %i.ic = and i64 %indvars.iv.next, 4294967295
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ic ; 2 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !232
  %i.if = icmp sgt i8 %i.ie, 57
  br i1 %i.if, label %bb.ao, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ao, %.critedge134
  %i.ig = phi i64 [ 1, %.critedge134 ], [ %i.ia, %bb.ao ], [ %i.ia, %.lr.ph ]
  %i.ih = load ptr, ptr %4, align 8, !tbaa !338   ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !232
  %i.ij = icmp sgt i8 %i.ii, 57
  br i1 %i.ij, label %bb.ap, label %.critedge136

bb.ao:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.id, align 1, !tbaa !232
  %i.ik = load ptr, ptr %4, align 8, !tbaa !338
  %i.il = getelementptr i8, ptr %i.ik, i64 %indvars.iv
  %i.im = getelementptr i8, ptr %i.il, i64 -2     ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !232
  %i.io = add i8 %i.in, 1
  store i8 %i.io, ptr %i.im, align 1, !tbaa !232
  %i.ip = trunc nuw i64 %indvars.iv to i32
  %i.iq = icmp sgt i32 %i.ip, 2
  br i1 %i.iq, label %.lr.ph, label %.critedge, !llvm.loop !5638

bb.ap:                                            ; preds = %.critedge
  store i8 49, ptr %i.ih, align 1, !tbaa !232
  br i1 %i.d, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ir = add nuw nsw i32 %.0187, 1
  %i.is = load ptr, ptr %4, align 8, !tbaa !338
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ig
  store i8 48, ptr %i.it, align 1, !tbaa !232
  br label %.critedge136

bb.ar:                                            ; preds = %bb.ap
  %i.iu = add nsw i32 %i.cs, 1
  store i32 %i.iu, ptr %i.a, align 4, !tbaa !239
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.am, %bb.af, %.critedge, %bb.ar, %bb.aq, %bb.an
  %.1188 = phi i32 [ %i.ir, %bb.aq ], [ %.0187, %bb.ar ], [ %.0187, %.critedge ], [ %.0187, %bb.an ], [ 9, %bb.af ], [ 18, %bb.am ], [ %.0187, %.split217 ]
  %i.iv = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !339 ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %i.iv
  br i1 %i.iy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge136
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !260
  tail call void %i.ja(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.iv), !inline_history !5636
  %.pre.i148 = load i64, ptr %i.iw, align 8, !tbaa !339
  br label %bb.at

.thread219:                                       ; preds = %bb.o
  %i.jb = add nsw i32 %.0106, -1
  %i.jc = add nsw i32 %i.jb, %.neg125
  store i32 %i.jc, ptr %i.a, align 4, !tbaa !239
  br i1 %3, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.as, %.critedge136
  %i.jd = phi i64 [ %i.ix, %.critedge136 ], [ %.pre.i148, %bb.as ]
  %i.je = tail call noundef i64 @llvm.umin.i64(i64 %i.iv, i64 %i.jd)
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.je, ptr %i.jf, align 8, !tbaa !354
  br label %.thread

bb.au:                                            ; preds = %.thread219
  %i.jg = fptrunc double %0 to float
  %i.jh = bitcast float %i.jg to i32              ; 2 uses
  %i.ji = and i32 %i.jh, 8388607                  ; 2 uses
  %i.jj = zext nneg i32 %i.ji to i128             ; 2 uses
  %i.jk = and i32 %i.jh, 2139095040               ; 3 uses
  %i.jl = icmp eq i32 %i.jk, 0                    ; 2 uses
  %i.jm = lshr exact i32 %i.jk, 23
  %i.jn = or disjoint i128 %i.jj, 8388608
  %i.jo = add nsw i32 %i.jm, -150
  %storemerge.i = select i1 %i.jl, i128 %i.jj, i128 %i.jn
  %.0.i150 = select i1 %i.jl, i32 -149, i32 %i.jo
  %i.jp = icmp eq i32 %i.ji, 0
  %i.jq = icmp samesign ugt i32 %i.jk, 16777215
  %i.jr = and i1 %i.jp, %i.jq
  br label %bb.aw

bb.av:                                            ; preds = %.thread219
  %i.js = zext nneg i64 %i.ad to i128             ; 2 uses
  %i.jt = or disjoint i128 %i.js, 4503599627370496
  %i.ju = add nsw i32 %i.ag, -1075
  %storemerge.i151 = select i1 %.not, i128 %i.js, i128 %i.jt
  %.0.i152 = select i1 %.not, i32 -1074, i32 %i.ju
  %i.jv = icmp eq i64 %i.ad, 0
  %i.jw = icmp samesign ugt i64 %i.ae, 9007199254740991
  %i.jx = and i1 %i.jv, %i.jw
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.0.0 = phi i128 [ %storemerge.i, %bb.au ], [ %storemerge.i151, %bb.av ]
  %.sroa.6.0 = phi i32 [ %.0.i150, %bb.au ], [ %.0.i152, %bb.av ]
  %i.jy = phi i1 [ %i.jr, %bb.au ], [ %i.jx, %bb.av ]
  %spec.select = zext i1 %i.jy to i32             ; 2 uses
  %i.jz = or disjoint i32 %spec.select, 4
  %.1111 = select i1 %i.d, i32 %i.jz, i32 %spec.select
  %i.ka = tail call i32 @llvm.umin.i32(i32 %.0187, i32 767)
  store i128 %.sroa.0.0, ptr %5, align 16, !tbaa !5642
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !239
  call void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v12::detail::basic_fp.320") align 16 %5, i32 noundef %.1111, i32 noundef %i.ka, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.at, %bb.r, %bb.v, %bb.u, %bb.aw
  br i1 %i.d, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %.thread
  %i.kb = load i32, ptr %2, align 4, !tbaa !317
  %i.kc = and i32 %i.kb, 8192
  %.not227 = icmp eq i32 %i.kc, 0
  br i1 %.not227, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !354 ; 2 uses
  %.not132235 = icmp eq i64 %i.ke, 0
  br i1 %.not132235, label %.critedge3.thread, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.ay
  %.promoted = load i32, ptr %i.a, align 4
  %i.kf = load ptr, ptr %4, align 8, !tbaa !338
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph237, %bb.ba
  %.0236 = phi i64 [ %i.ke, %.lr.ph237 ], [ %i.kh, %bb.ba ] ; 5 uses
  %i.kg = phi i32 [ %.promoted, %.lr.ph237 ], [ %i.kl, %bb.ba ]
  %i.kh = add i64 %.0236, -1                      ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !232
  %i.kk = icmp eq i8 %i.kj, 48
  br i1 %i.kk, label %bb.ba, label %.critedge3

bb.ba:                                            ; preds = %bb.az
  %i.kl = add nsw i32 %i.kg, 1                    ; 2 uses
  store i32 %i.kl, ptr %i.a, align 4, !tbaa !239
  %.not132 = icmp eq i64 %i.kh, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.az, !llvm.loop !5639

.critedge3.thread:                                ; preds = %bb.ba, %bb.ay
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !339
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.az
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !339 ; 2 uses
  %i.kq = icmp ugt i64 %.0236, %i.kp
  br i1 %i.kq, label %bb.bb, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

bb.bb:                                            ; preds = %.critedge3
  %i.kr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !260
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0236), !inline_history !5636
  %.pre.i153 = load i64, ptr %i.ko, align 8, !tbaa !339
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154: ; preds = %.critedge3.thread, %.critedge3, %bb.bb
  %.0.lcssa274 = phi i64 [ %.0236, %.critedge3 ], [ %.0236, %bb.bb ], [ 0, %.critedge3.thread ]
  %i.kt = phi i64 [ %i.kp, %.critedge3 ], [ %.pre.i153, %bb.bb ], [ %i.kn, %.critedge3.thread ]
  %i.ku = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa274, i64 %i.kt)
  store i64 %i.ku, ptr %i.kd, align 8, !tbaa !354
  br label %bb.bc
end_hunk_0
