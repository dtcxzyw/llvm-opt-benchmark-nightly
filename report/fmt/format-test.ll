Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/format-test?download=true
inline.NumInlined: 17970
inline.NumDeleted: 3487
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !204
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !202
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.i), !inline_history !82
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !205 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.i, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.o = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !203
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 48, ptr %i.q, align 1, !tbaa !136
  br label %bb.bd

bb.e:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %1 to i64                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !204  ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !202
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.r), !inline_history !7137
  %.pre.i137 = load i64, ptr %i.s, align 8, !tbaa !204
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit:  ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.t, %bb.e ], [ %.pre.i137, %bb.f ]
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !205
  %i.aa = load ptr, ptr %4, align 8, !tbaa !203
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 48, i64 %i.r, i1 false)
  %i.ab = sub nsw i32 0, %1
  br label %bb.bd

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
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
  %i.ay = tail call { i64, i64 } @_ZN3fmt3v126detail9dragonbox16get_cached_powerEi(i32 noundef %i.as) #36 ; 2 uses
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
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull @.str.813)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #39
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bx) #36
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
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !141
  %i.cc = icmp slt i32 %.0187, 0
  br i1 %i.cc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cd, align 8, !tbaa !205
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !204
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !202
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1), !inline_history !7137
  %.pre.i140 = load i64, ptr %i.ce, align 8, !tbaa !204
  %i.cj = icmp ne i64 %.pre.i140, 0
  %i.ck = zext i1 %i.cj to i64
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141: ; preds = %bb.s, %bb.t
  %i.cl = phi i64 [ 1, %bb.s ], [ %i.ck, %bb.t ]
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !205
  %i.cn = zext i1 %i.bq to i64
  %i.co = or i64 %.0107, %i.cn
  %i.cp = icmp ugt i64 %i.co, 5000000000000000000
  %i.cq = load ptr, ptr %4, align 8, !tbaa !203   ; 2 uses
  br i1 %i.cp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 49, ptr %i.cq, align 1, !tbaa !136
  br label %.thread

bb.v:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 48, ptr %i.cq, align 1, !tbaa !136
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.cr = sub nuw nsw i32 %.0106, %.0187
  %i.cs = add nsw i32 %i.cr, %.neg125             ; 2 uses
  store i32 %i.cs, ptr %i.a, align 4, !tbaa !141
  %i.ct = zext i64 %.0107 to i128
  %i.cu = mul nuw nsw i128 %i.ct, 7922816251426433760
  %sum.shift = lshr i128 %i.cu, 96
  %i.cv = trunc nuw nsw i128 %sum.shift to i64    ; 3 uses
  %.neg126 = mul i64 %i.cv, -10000000000
  %i.cw = add i64 %.neg126, %.0107                ; 5 uses
  %i.cx = tail call i32 @llvm.umin.i32(i32 %.0187, i32 9) ; 3 uses
  %i.cy = load ptr, ptr %4, align 8, !tbaa !203   ; 6 uses
  %6 = trunc i32 %i.cx to i1
  br i1 %6, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cz = mul nuw nsw i64 %i.cv, 720575941
  %i.da = lshr i64 %i.cz, 24
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %i.dc = lshr i64 %i.db, 32                      ; 2 uses
  %i.dd = trunc nuw nsw i64 %i.dc to i8
  %i.de = add nuw nsw i8 %i.dd, 48
  store i8 %i.de, ptr %i.cy, align 1, !tbaa !136
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.df = mul nuw nsw i64 %i.cv, 450359963
  %i.dg = lshr i64 %i.df, 20
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %i.di = lshr i64 %i.dh, 32                      ; 2 uses
  %i.dj = shl nuw nsw i64 %i.di, 1
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2
  store i16 %i.dl, ptr %i.cy, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0208 = phi i64 [ %i.db, %bb.x ], [ %i.dh, %bb.y ] ; 2 uses
  %.0204.in = phi i64 [ %i.dc, %bb.x ], [ %i.di, %bb.y ]
  %.0.i = phi i32 [ 1, %bb.x ], [ 2, %bb.y ]      ; 2 uses
  %i.dm = icmp samesign ugt i32 %.0187, %.0.i
  br i1 %i.dm, label %.lr.ph.i, label %.thread265

.lr.ph.i:                                         ; preds = %bb.z
  %i.dn = zext nneg i32 %.0.i to i64              ; 4 uses
  %i.do = zext nneg i32 %i.cx to i64              ; 3 uses
  %i.dp = and i64 %.0208, 4294967295
  %i.dq = mul nuw nsw i64 %i.dp, 100              ; 3 uses
  %i.dr = lshr i64 %i.dq, 32                      ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dn
  %i.dt = shl nuw nsw i64 %i.dr, 1
  %i.du = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2
  store i16 %i.dv, ptr %i.ds, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.dn, 2   ; 2 uses
  %i.dw = icmp samesign ult i64 %indvars.iv.next.i, %i.do
  br i1 %i.dw, label %bb.aa, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dx = and i64 %i.dq, 4294967292
  %i.dy = mul nuw nsw i64 %i.dx, 100              ; 3 uses
  %i.dz = lshr i64 %i.dy, 32                      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv.next.i
  %i.eb = shl nuw nsw i64 %i.dz, 1
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2
  store i16 %i.ed, ptr %i.ea, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.dn, 4 ; 2 uses
  %i.ee = icmp samesign ult i64 %indvars.iv.next.i.1, %i.do
  br i1 %i.ee, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ef = and i64 %i.dy, 4294967280
  %i.eg = mul nuw nsw i64 %i.ef, 100              ; 3 uses
  %i.eh = lshr i64 %i.eg, 32                      ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv.next.i.1
  %i.ej = shl nuw nsw i64 %i.eh, 1
  %i.ek = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2
  store i16 %i.el, ptr %i.ei, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.dn, 6 ; 2 uses
  %i.em = icmp samesign ult i64 %indvars.iv.next.i.2, %i.do
  br i1 %i.em, label %bb.ac, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.en = and i64 %i.eg, 4294967232
  %i.eo = mul nuw nsw i64 %i.en, 100              ; 2 uses
  %i.ep = lshr i64 %i.eo, 32                      ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv.next.i.2
  %i.er = shl nuw nsw i64 %i.ep, 1
  %i.es = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2
  store i16 %i.et, ptr %i.eq, align 1
  br label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i
  %.lcssa286 = phi i64 [ %i.dq, %.lr.ph.i ], [ %i.dy, %bb.aa ], [ %i.eg, %bb.ab ], [ %i.eo, %bb.ac ]
  %.lcssa285 = phi i64 [ %i.dr, %.lr.ph.i ], [ %i.dz, %bb.aa ], [ %i.eh, %bb.ab ], [ %i.ep, %bb.ac ] ; 2 uses
  %i.eu = icmp samesign ult i32 %.0187, 10
  br i1 %i.eu, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.ae, label %.thread265

.thread265:                                       ; preds = %bb.z, %bb.ad
  %.2210262271 = phi i64 [ %.lcssa286, %bb.ad ], [ %.0208, %bb.z ]
  %.1205264270.in = phi i64 [ %.lcssa285, %bb.ad ], [ %.0204.in, %bb.z ]
  %i.ev = trunc i64 %.2210262271 to i32           ; 2 uses
  %i.ew = sub nuw nsw i32 8, %i.cx
  %i.ex = zext nneg i32 %i.ew to i64              ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr @.str.2435, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !7142
  %i.fa = zext i16 %i.ez to i32
  %i.fb = shl nuw i32 %i.fa, 16
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr @.str.2436, i64 %i.ex
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !7142
  %i.fe = zext i16 %i.fd to i32
  %i.ff = or disjoint i32 %i.fb, %i.fe
  %.not130 = icmp ugt i32 %i.ff, %i.ev
  br i1 %.not130, label %bb.an, label %.critedge134

bb.ae:                                            ; preds = %bb.ad
  %i.fg = icmp ugt i64 %i.cw, 5000000000
  br i1 %i.fg, label %.critedge134.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = icmp eq i64 %i.cw, 5000000000
  %i.fi = trunc i64 %.lcssa285 to i1
  %i.fj = or i1 %i.bq, %i.fi
  %or.cond223 = select i1 %i.fh, i1 %i.fj, i1 false
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
  %i.fr = load ptr, ptr %4, align 8, !tbaa !203
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 9 ; 3 uses
  %7 = trunc i32 %i.fq to i1
  %i.ft = trunc nuw nsw i128 %i.fm to i64
  %i.fu = and i64 %i.ft, 4294967295               ; 2 uses
  br i1 %7, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fv = mul nuw nsw i64 %i.fu, 720575941
  %i.fw = lshr i64 %i.fv, 24
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %i.fy = lshr i64 %i.fx, 32                      ; 2 uses
  %i.fz = trunc nuw nsw i64 %i.fy to i8
  %i.ga = add nuw nsw i8 %i.fz, 48
  store i8 %i.ga, ptr %i.fs, align 1, !tbaa !136
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gb = mul nuw nsw i64 %i.fu, 450359963
  %i.gc = lshr i64 %i.gb, 20
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %i.ge = lshr i64 %i.gd, 32                      ; 2 uses
  %i.gf = shl nuw nsw i64 %i.ge, 1
  %i.gg = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2
  store i16 %i.gh, ptr %i.fs, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.3211 = phi i64 [ %i.fx, %bb.ah ], [ %i.gd, %bb.ai ] ; 2 uses
  %.2206.in = phi i64 [ %i.fy, %bb.ah ], [ %i.ge, %bb.ai ]
  %.0.i143 = phi i32 [ 1, %bb.ah ], [ 2, %bb.ai ] ; 2 uses
  %i.gi = icmp samesign ult i32 %.0.i143, %i.fq
  br i1 %i.gi, label %.lr.ph.i144, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.aj
  %i.gj = zext nneg i32 %.0.i143 to i64
  %i.gk = zext nneg i32 %i.fq to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.gm, %bb.ak ]
  %indvars.iv.i145 = phi i64 [ %i.gj, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.ak ] ; 2 uses
  %i.gl = and i64 %.4, 4294967295
  %i.gm = mul nuw nsw i64 %i.gl, 100              ; 3 uses
  %i.gn = lshr i64 %i.gm, 32                      ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv.i145
  %i.gp = shl nuw nsw i64 %i.gn, 1
  %i.gq = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gp
  %i.gr = load i16, ptr %i.gq, align 2
  store i16 %i.gr, ptr %i.go, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.gs = icmp samesign ult i64 %indvars.iv.next.i146, %i.gk
  br i1 %i.gs, label %bb.ak, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !7138

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.ak
  %i.gt = icmp samesign ult i32 %.0187, 18
  br i1 %i.gt, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.al

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.aj, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.gn, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.aj ]
  %.5214 = phi i64 [ %i.gm, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.aj ]
  %i.gu = trunc i64 %.5214 to i32                 ; 2 uses
  %i.gv = sub nuw nsw i32 17, %.0187
  %i.gw = zext nneg i32 %i.gv to i64              ; 2 uses
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr @.str.2435, i64 %i.gw
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !7142
  %i.gz = zext i16 %i.gy to i32
  %i.ha = shl nuw i32 %i.gz, 16
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr @.str.2436, i64 %i.gw
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !7142
  %i.hd = zext i16 %i.hc to i32
  %i.he = or disjoint i32 %i.ha, %i.hd
  %.not128 = icmp ugt i32 %i.he, %i.gu
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc nuw nsw i64 %.3207215.in to i32
  %i.hf = lshr i32 %i.gu, 31
  %i.hg = icmp ne i32 %i.fp, 0
  %i.hh = or i1 %i.hg, %i.bq
  %i.hi = zext i1 %i.hh to i32
  %i.hj = or i32 %i.hi, %.3207215
  %i.hk = and i32 %i.hf, %i.hj
  %i.hl = trunc nuw i32 %i.hk to i1
  br i1 %i.hl, label %.critedge134.thread, label %.critedge136

bb.al:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.hm = icmp ugt i32 %i.fp, 5
  br i1 %i.hm, label %.critedge134.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hn = icmp eq i32 %i.fp, 5
  %i.ho = trunc i64 %i.gn to i1
  %i.hp = or i1 %i.bq, %i.ho
  %or.cond225 = select i1 %i.hn, i1 %i.hp, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.an:                                            ; preds = %.thread265
  %.1205264270 = trunc nsw i64 %.1205264270.in to i32
  %i.hq = lshr i32 %i.ev, 31
  %i.hr = or i64 %i.cw, %i.bn
  %i.hs = icmp ne i64 %i.hr, 0
  %i.ht = zext i1 %i.hs to i32
  %i.hu = or i32 %.1205264270, %i.ht
  %i.hv = and i32 %i.hu, %i.hq
  %i.hw = trunc nuw i32 %i.hv to i1
  br i1 %i.hw, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.am, %bb.af, %.split217, %bb.ae, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.al
  %i.hx = load ptr, ptr %4, align 8, !tbaa !203
  %i.hy = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hx, i64 %i.hy
  %i.ia = getelementptr i8, ptr %i.hz, i64 -1     ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !136
  %i.ic = add i8 %i.ib, 1
  store i8 %i.ic, ptr %i.ia, align 1, !tbaa !136
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread265, %bb.an
  %i.id = load ptr, ptr %4, align 8, !tbaa !203
  %i.ie = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.if = getelementptr i8, ptr %i.id, i64 %i.ie
  %i.ig = getelementptr i8, ptr %i.if, i64 -1     ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !136
  %i.ii = add i8 %i.ih, 1
  store i8 %i.ii, ptr %i.ig, align 1, !tbaa !136
  %.not240 = icmp eq i32 %.0187, 1
  br i1 %.not240, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.ij = phi i64 [ %i.hy, %.critedge134.thread ], [ %i.ie, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %indvars.iv = phi i64 [ %i.ij, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ao ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ik = load ptr, ptr %4, align 8, !tbaa !203
  %i.il = and i64 %indvars.iv.next, 4294967295
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.il ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !136
  %i.io = icmp sgt i8 %i.in, 57
  br i1 %i.io, label %bb.ao, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ao, %.critedge134
  %i.ip = phi i64 [ 1, %.critedge134 ], [ %i.ij, %bb.ao ], [ %i.ij, %.lr.ph ]
  %i.iq = load ptr, ptr %4, align 8, !tbaa !203   ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !136
  %i.is = icmp sgt i8 %i.ir, 57
  br i1 %i.is, label %bb.ap, label %.critedge136

bb.ao:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.im, align 1, !tbaa !136
  %i.it = load ptr, ptr %4, align 8, !tbaa !203
  %i.iu = getelementptr i8, ptr %i.it, i64 %indvars.iv
  %i.iv = getelementptr i8, ptr %i.iu, i64 -2     ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !136
  %i.ix = add i8 %i.iw, 1
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !136
  %i.iy = trunc nuw i64 %indvars.iv to i32
  %i.iz = icmp sgt i32 %i.iy, 2
  br i1 %i.iz, label %.lr.ph, label %.critedge, !llvm.loop !7139

bb.ap:                                            ; preds = %.critedge
  store i8 49, ptr %i.iq, align 1, !tbaa !136
  br i1 %i.d, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ja = add nuw nsw i32 %.0187, 1
  %i.jb = load ptr, ptr %4, align 8, !tbaa !203
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.ip
  store i8 48, ptr %i.jc, align 1, !tbaa !136
  br label %.critedge136

bb.ar:                                            ; preds = %bb.ap
  %i.jd = add nsw i32 %i.cs, 1
  store i32 %i.jd, ptr %i.a, align 4, !tbaa !141
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.am, %bb.af, %.critedge, %bb.ar, %bb.aq, %bb.an
  %.1188 = phi i32 [ %i.ja, %bb.aq ], [ %.0187, %bb.ar ], [ %.0187, %.critedge ], [ %.0187, %bb.an ], [ 9, %bb.af ], [ 18, %bb.am ], [ %.0187, %.split217 ]
  %i.je = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !204 ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.je
  br i1 %i.jh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge136
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !202
  tail call void %i.jj(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.je), !inline_history !7137
  %.pre.i148 = load i64, ptr %i.jf, align 8, !tbaa !204
  br label %bb.at

.thread219:                                       ; preds = %bb.o
  %i.jk = add nsw i32 %.0106, -1
  %i.jl = add nsw i32 %i.jk, %.neg125
  store i32 %i.jl, ptr %i.a, align 4, !tbaa !141
  br i1 %3, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.as, %.critedge136
  %i.jm = phi i64 [ %i.jg, %.critedge136 ], [ %.pre.i148, %bb.as ]
  %i.jn = tail call noundef i64 @llvm.umin.i64(i64 %i.je, i64 %i.jm)
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.jn, ptr %i.jo, align 8, !tbaa !205
  br label %.thread

bb.au:                                            ; preds = %.thread219
  %i.jp = fptrunc double %0 to float
  %i.jq = bitcast float %i.jp to i32              ; 2 uses
  %i.jr = and i32 %i.jq, 8388607                  ; 2 uses
  %i.js = zext nneg i32 %i.jr to i128             ; 2 uses
  %i.jt = and i32 %i.jq, 2139095040               ; 3 uses
  %i.ju = icmp eq i32 %i.jt, 0                    ; 2 uses
  %i.jv = lshr exact i32 %i.jt, 23
  %i.jw = or disjoint i128 %i.js, 8388608
  %i.jx = add nsw i32 %i.jv, -150
  %storemerge.i = select i1 %i.ju, i128 %i.js, i128 %i.jw
  %.0.i150 = select i1 %i.ju, i32 -149, i32 %i.jx
  %i.jy = icmp eq i32 %i.jr, 0
  %i.jz = icmp samesign ugt i32 %i.jt, 16777215
  %i.ka = and i1 %i.jy, %i.jz
  br label %bb.aw

bb.av:                                            ; preds = %.thread219
  %i.kb = zext nneg i64 %i.ad to i128             ; 2 uses
  %i.kc = or disjoint i128 %i.kb, 4503599627370496
  %i.kd = add nsw i32 %i.ag, -1075
  %storemerge.i151 = select i1 %.not, i128 %i.kb, i128 %i.kc
  %.0.i152 = select i1 %.not, i32 -1074, i32 %i.kd
  %i.ke = icmp eq i64 %i.ad, 0
  %i.kf = icmp samesign ugt i64 %i.ae, 9007199254740991
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a

bb.ag:                                            ; preds = %bb.af, %.thread91
  %i.gj = phi i32 [ %.fr95, %bb.af ], [ %.pre, %.thread91 ] ; 2 uses
  %i.gk = phi i32 [ 0, %bb.af ], [ %.ph, %.thread91 ]
  %i.gl = phi i32 [ %spec.select93, %bb.af ], [ 2, %.thread91 ]
  %i.gm = add nuw nsw i32 %i.gl, %i.gk
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = add nsw i64 %i.gn, %i.n                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.c, ptr %10, align 8, !tbaa !253
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.g, ptr %i.gp, align 8, !tbaa !535
  %i.gq = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.b, ptr %i.gq, align 8, !tbaa !156
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.f, ptr %i.gr, align 8, !tbaa !172
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %1, ptr %i.gs, align 8, !tbaa !7155
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %i.a, ptr %i.gt, align 8, !tbaa !172
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !417
  %i.gw = zext i32 %i.gv to i64
  %i.gx = call i64 @llvm.usub.sat.i64(i64 %i.gw, i64 %i.go) ; 4 uses
  %i.gy = lshr i32 %i.gj, 3
  %i.gz = and i32 %i.gy, 7
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr @.str.2328, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !136
  %i.hd = sext i8 %i.hc to i64
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = lshr i64 %i.gx, %i.he                   ; 4 uses
  %i.hg = sub nsw i64 %i.gx, %i.hf
  %i.hh = lshr i32 %i.gj, 15
  %i.hi = and i32 %i.hh, 7
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = mul nuw nsw i64 %i.gx, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !205
  %i.hn = add i64 %i.hm, %i.go
  %i.ho = add i64 %i.hn, %i.hk                    ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !204
  %i.hr = icmp ugt i64 %i.ho, %i.hq
  br i1 %i.hr, label %bb.ah, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i75

bb.ah:                                            ; preds = %bb.ag
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !202
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ho), !inline_history !7154
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i75

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i75: ; preds = %bb.ah, %bb.ag
  %.not.i.i76 = icmp eq i64 %i.hf, 0
  br i1 %.not.i.i76, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i75
  %i.hu = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.hf, ptr noundef nonnull align 4 dereferenceable(16) %4)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i75
  %.sroa.09.0.i.i77 = phi ptr [ %i.hu, %bb.ai ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i75 ]
  %i.hv = call ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr %.sroa.09.0.i.i77) ; 2 uses
  %.not31.i.i78 = icmp eq i64 %i.gx, %i.hf
  br i1 %.not31.i.i78, label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E1_EESC_SC_SJ_mOSD_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hw = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.hv, i64 noundef %i.hg, ptr noundef nonnull align 4 dereferenceable(16) %4)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E1_EESC_SC_SJ_mOSD_.exit

_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E1_EESC_SC_SJ_mOSD_.exit: ; preds = %bb.aj, %bb.ak
  %.sroa.09.1.i.i79 = phi ptr [ %i.hw, %bb.ak ], [ %i.hv, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  br label %bb.al

bb.al:                                            ; preds = %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E1_EESC_SC_SJ_mOSD_.exit, %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit74, %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit
  %.sroa.039.0 = phi ptr [ %.sroa.09.1.i.i, %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit ], [ %i.fm, %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit74 ], [ %.sroa.09.1.i.i79, %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E1_EESC_SC_SJ_mOSD_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  ret ptr %.sroa.039.0

bb.am:                                            ; preds = %bb.aa, %bb.t
  %.pn49.pn = phi { ptr, i32 } [ %lpad.phi, %bb.t ], [ %i.fy, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  resume { ptr, i32 } %.pn49.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 8 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !568    ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !205  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !204
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !202
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !57
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !205 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !203
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !205
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !136
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !7156 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !569  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i8, ptr %i.u, align 4, !tbaa !570   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %.not.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ugt i64 %i.r, 99
  br i1 %i.w, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.x, %.lr.ph.i.i.i ], [ %i.t, %bb.e ]
  %.01819.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %i.r, %bb.e ] ; 3 uses
  %i.x = add i32 %.020.i.i.i, -2                  ; 3 uses
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  %i.aa = urem i64 %.01819.i.i.i, 100
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  store i16 %i.ad, ptr %i.z, align 1
  %i.ae = udiv i64 %.01819.i.i.i, 100             ; 2 uses
  %i.af = icmp ugt i64 %.01819.i.i.i, 9999
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !81

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.e
  %.018.lcssa.i.i.i = phi i64 [ %i.r, %bb.e ], [ %i.ae, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %i.t, %bb.e ], [ %i.x, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = icmp samesign ugt i64 %.018.lcssa.i.i.i, 9
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = add i32 %.0.lcssa.i.i.i, -2
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  %i.ak = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.al = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2
  store i16 %i.am, ptr %i.aj, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.an = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.ao = or disjoint i8 %i.an, 48
  %i.ap = add i32 %.0.lcssa.i.i.i, -1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  store i8 %i.ao, ptr %i.ar, align 1, !tbaa !136
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i: ; preds = %bb.g, %bb.f
  %i.as = sext i32 %i.t to i64
  %i.at = getelementptr inbounds i8, ptr %i.a, i64 %i.as
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.h:                                             ; preds = %bb.d
  %i.au = sext i32 %i.t to i64
  %i.av = getelementptr i8, ptr %i.a, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 1      ; 4 uses
  %i.ax = add nsw i32 %i.t, -1                    ; 2 uses
  %i.ay = icmp sgt i32 %i.t, 2
  br i1 %i.ay, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %i.az = lshr i32 %i.ax, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.h
  %.029.lcssa.i.i = phi i64 [ %i.r, %bb.h ], [ %i.bf, %.lr.ph.i.i ] ; 3 uses
  %.028.lcssa.i.i = phi ptr [ %i.aw, %bb.h ], [ %i.ba, %.lr.ph.i.i ] ; 2 uses
  %2 = trunc i32 %i.ax to i1
  br i1 %2, label %bb.i, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.046.i.i = phi i32 [ %i.bg, %.lr.ph.i.i ], [ %i.az, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02845.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %i.aw, %.lr.ph.preheader.i.i ]
  %.02944.i.i = phi i64 [ %i.bf, %.lr.ph.i.i ], [ %i.r, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.02845.i.i, i64 -2 ; 3 uses
  %i.bb = urem i64 %.02944.i.i, 100
  %i.bc = shl nuw nsw i64 %i.bb, 1
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  store i16 %i.be, ptr %i.ba, align 1
  %i.bf = udiv i64 %.02944.i.i, 100               ; 2 uses
  %i.bg = add nsw i32 %.046.i.i, -1
  %i.bh = icmp samesign ugt i32 %.046.i.i, 1
  br i1 %i.bh, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !84

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bi = urem i64 %.029.lcssa.i.i, 10
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  %i.bk = or disjoint i8 %i.bj, 48
  %i.bl = getelementptr inbounds i8, ptr %.028.lcssa.i.i, i64 -1 ; 2 uses
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !136
  %i.bm = udiv i64 %.029.lcssa.i.i, 10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i
  %.130.i.i = phi i64 [ %i.bm, %bb.i ], [ %.029.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.bl, %bb.i ], [ %.028.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.1.i.i, i64 -1
  store i8 %i.v, ptr %i.bn, align 1, !tbaa !136
  %i.bo = getelementptr inbounds i8, ptr %.1.i.i, i64 -2 ; 3 uses
  %i.bp = icmp ugt i64 %.130.i.i, 99
  br i1 %i.bp, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.j, %.lr.ph.i37.i.i
  %.020.i38.i.i = phi i32 [ %i.bq, %.lr.ph.i37.i.i ], [ 1, %bb.j ]
  %.01819.i39.i.i = phi i64 [ %i.bx, %.lr.ph.i37.i.i ], [ %.130.i.i, %bb.j ] ; 3 uses
  %i.bq = add i32 %.020.i38.i.i, -2               ; 3 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.br
  %i.bt = urem i64 %.01819.i39.i.i, 100
  %i.bu = shl nuw nsw i64 %i.bt, 1
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2
  store i16 %i.bw, ptr %i.bs, align 1
  %i.bx = udiv i64 %.01819.i39.i.i, 100           ; 2 uses
  %i.by = icmp ugt i64 %.01819.i39.i.i, 9999
  br i1 %i.by, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !81

._crit_edge.i33.i.i:                              ; preds = %.lr.ph.i37.i.i, %bb.j
  %.018.lcssa.i34.i.i = phi i64 [ %.130.i.i, %bb.j ], [ %i.bx, %.lr.ph.i37.i.i ] ; 3 uses
  %.0.lcssa.i35.i.i = phi i32 [ 1, %bb.j ], [ %i.bq, %.lr.ph.i37.i.i ] ; 2 uses
  %i.bz = icmp samesign ugt i64 %.018.lcssa.i34.i.i, 9
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i33.i.i
  %i.ca = add i32 %.0.lcssa.i35.i.i, -2
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cb
  %i.cd = shl nuw nsw i64 %.018.lcssa.i34.i.i, 1
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2
  store i16 %i.cf, ptr %i.cc, align 1
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.l:                                             ; preds = %._crit_edge.i33.i.i
  %i.cg = trunc nuw nsw i64 %.018.lcssa.i34.i.i to i8
  %i.ch = or disjoint i8 %i.cg, 48
  %i.ci = add i32 %.0.lcssa.i35.i.i, -1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cj
  store i8 %i.ch, ptr %i.ck, align 1, !tbaa !136
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit: ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i, %bb.k, %bb.l
  %.027.i.i = phi ptr [ %i.at, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i ], [ %i.aw, %bb.k ], [ %i.aw, %bb.l ]
  %i.cl = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr %1) ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !571 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.da, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.cs = load i64, ptr %i.cp, align 8, !tbaa !205 ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load i64, ptr %i.cq, align 8, !tbaa !204
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.n, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !202
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, i64 noundef %i.ct), !inline_history !85
  %.pre.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !205 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.n, %bb.m
  %.pre-phi.i.i.i = phi i64 [ %i.ct, %bb.m ], [ %.pre2.i.i.i, %bb.n ]
  %i.cx = phi i64 [ %i.cs, %bb.m ], [ %.pre.i.i.i, %bb.n ]
  %i.cy = load ptr, ptr %i.cl, align 8, !tbaa !203
  store i64 %.pre-phi.i.i.i, ptr %i.cp, align 8, !tbaa !205
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 48, ptr %i.cz, align 1, !tbaa !136
  %i.da = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.da, %i.cn
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.m, !llvm.loop !83

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !572
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !205 ; 2 uses
  %i.df = add i64 %i.de, 1                        ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !204
  %i.di = icmp ugt i64 %i.df, %i.dh
  br i1 %i.di, label %bb.o, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit11

bb.o:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !202
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, i64 noundef %i.df), !inline_history !57
  %.pre.i.i9 = load i64, ptr %i.dd, align 8, !tbaa !205 ; 2 uses
  %.pre2.i.i10 = add i64 %.pre.i.i9, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit11

_ZN3fmt3v1214basic_appenderIcEaSEc.exit11:        ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.o
  %.pre-phi.i.i8 = phi i64 [ %i.df, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %.pre2.i.i10, %bb.o ]
  %i.dl = phi i64 [ %i.de, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %.pre.i.i9, %bb.o ]
  %i.dm = load ptr, ptr %i.cl, align 8, !tbaa !203
  store i64 %.pre-phi.i.i8, ptr %i.dd, align 8, !tbaa !205
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dl
  store i8 %i.dc, ptr %i.dn, align 1, !tbaa !136
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !573
  %i.dq = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.dp, ptr nonnull %i.cl)
  ret ptr %i.dq
}

declare noundef signext i8 @_ZN3fmt3v126detail18decimal_point_implIcEET_NS0_10locale_refE(ptr) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, i1 noundef zeroext %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::thousands_sep_result", align 8 ; 8 uses
  %4 = alloca %"struct.fmt::v12::detail::thousands_sep_result", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !154
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !155
  store i8 0, ptr %i.a, align 8, !tbaa !136
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !155
  store i8 0, ptr %i.d, align 8, !tbaa !136
  br i1 %2, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7159)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !7159
  invoke void @_ZN3fmt3v126detail18thousands_sep_implIcEENS1_20thousands_sep_resultIT_EENS0_10locale_refE(ptr dead_on_unwind nonnull writable sret(%"struct.fmt::v12::detail::thousands_sep_result") align 8 %3, ptr %1)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 14 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !154, !alias.scope !7159
  %i.g = load ptr, ptr %3, align 8, !tbaa !133, !noalias !7159 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !155, !noalias !7159 ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.g, ptr %4, align 8, !tbaa !133, !alias.scope !7159
  %i.n = load i64, ptr %i.h, align 8, !tbaa !136, !noalias !7159
  store i64 %i.n, ptr %i.f, align 8, !tbaa !136, !alias.scope !7159
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !155, !noalias !7159
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_:bb.a
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !202
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !55
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 6 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !7165, !nonnull !128, !align !533
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !574 ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = shl nsw i32 %i.ad, 3
  %i.af = lshr i32 539700480, %i.ae
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !205 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !204
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !202
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.aj), !inline_history !7162
  %.pre.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !205 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.aj, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.ap = phi i64 [ %i.ai, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.aq = load ptr, ptr %.sroa.09.0, align 8, !tbaa !203
  store i64 %.pre-phi.i.i.i, ptr %i.ah, align 8, !tbaa !205
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 %i.ag, ptr %i.ar, align 1, !tbaa !136
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !7166, !nonnull !128, !align !413
  %i.au = load i64, ptr %i.at, align 8, !tbaa !565
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !7167, !nonnull !128, !align !533
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !141
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !7168, !nonnull !128, !align !533
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !141
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !7169, !nonnull !128
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !136
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !7170, !nonnull !128, !align !413
  %i.bg = tail call ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcmNS1_14digit_groupingIcEEEET_S7_T1_iiT0_RKT2_(ptr %.sroa.09.0, i64 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.ba, i8 noundef signext %i.bd, ptr noundef nonnull align 8 dereferenceable(64) %i.bf) ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !7171, !nonnull !128, !align !533
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !141 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bw, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.bo = load i64, ptr %i.bl, align 8, !tbaa !205 ; 2 uses
  %i.bp = add i64 %i.bo, 1                        ; 3 uses
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !204
  %i.br = icmp ugt i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !202
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef %i.bp), !inline_history !7163
  %.pre.i.i.i.i = load i64, ptr %i.bl, align 8, !tbaa !205 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i.i = phi i64 [ %i.bp, %bb.h ], [ %.pre2.i.i.i.i, %bb.i ]
  %i.bt = phi i64 [ %i.bo, %bb.h ], [ %.pre.i.i.i.i, %bb.i ]
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !203
  store i64 %.pre-phi.i.i.i.i, ptr %i.bl, align 8, !tbaa !205
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 48, ptr %i.bv, align 1, !tbaa !136
  %i.bw = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bw, %i.bj
  br i1 %exitcond.not.i.i, label %_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit, label %bb.h, !llvm.loop !83

_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %bb.g
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit
  %i.bx = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.bg, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit
  %.sroa.09.1 = phi ptr [ %i.bx, %bb.j ], [ %i.bg, %_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcmNS1_14digit_groupingIcEEEET_S7_T1_iiT0_RKT2_(ptr %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(64) %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 8 uses
  %i.b = alloca [21 x i8], align 16               ; 8 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer.39", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !155
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %.not.i.i = icmp eq i8 %4, 0
  br i1 %.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ugt i64 %1, 99
  br i1 %i.e, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i ], [ %2, %bb.c ]
  %.01819.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %1, %bb.c ] ; 3 uses
  %i.f = add i32 %.020.i.i.i, -2                  ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = urem i64 %.01819.i.i.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 1
  %i.m = udiv i64 %.01819.i.i.i, 100              ; 2 uses
  %i.n = icmp ugt i64 %.01819.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !81

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.018.lcssa.i.i.i = phi i64 [ %1, %bb.c ], [ %i.m, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %2, %bb.c ], [ %i.f, %.lr.ph.i.i.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i.i.i, 9
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.p = add i32 %.0.lcssa.i.i.i, -2
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q
  %i.s = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i.i.i, -1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !136
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i: ; preds = %bb.e, %bb.d
  %i.aa = sext i32 %2 to i64
  %i.ab = getelementptr inbounds i8, ptr %i.b, i64 %i.aa
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.f:                                             ; preds = %bb.b
  %i.ac = sext i32 %2 to i64
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 1      ; 4 uses
  %i.af = sub nsw i32 %2, %3                      ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.ah = lshr i32 %i.af, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.f
  %.029.lcssa.i.i = phi i64 [ %1, %bb.f ], [ %i.an, %.lr.ph.i.i ] ; 3 uses
  %.028.lcssa.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.ai, %.lr.ph.i.i ] ; 2 uses
  %7 = trunc i32 %i.af to i1
  br i1 %7, label %bb.g, label %bb.h

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.046.i.i = phi i32 [ %i.ao, %.lr.ph.i.i ], [ %i.ah, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02845.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ae, %.lr.ph.preheader.i.i ]
  %.02944.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.02845.i.i, i64 -2 ; 3 uses
  %i.aj = urem i64 %.02944.i.i, 100
  %i.ak = shl nuw nsw i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2
  store i16 %i.am, ptr %i.ai, align 1
  %i.an = udiv i64 %.02944.i.i, 100               ; 2 uses
  %i.ao = add nsw i32 %.046.i.i, -1
  %i.ap = icmp samesign ugt i32 %.046.i.i, 1
  br i1 %i.ap, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !84

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aq = urem i64 %.029.lcssa.i.i, 10
  %i.ar = trunc nuw nsw i64 %i.aq to i8
  %i.as = or disjoint i8 %i.ar, 48
  %i.at = getelementptr inbounds i8, ptr %.028.lcssa.i.i, i64 -1 ; 2 uses
  store i8 %i.as, ptr %i.at, align 1, !tbaa !136
  %i.au = udiv i64 %.029.lcssa.i.i, 10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.130.i.i = phi i64 [ %i.au, %bb.g ], [ %.029.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.at, %bb.g ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %i.av = getelementptr inbounds i8, ptr %.1.i.i, i64 -1 ; 2 uses
  store i8 %4, ptr %i.av, align 1, !tbaa !136
  %i.aw = sext i32 %3 to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %i.ax ; 3 uses
  %i.az = icmp ugt i64 %.130.i.i, 99
  br i1 %i.az, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.h, %.lr.ph.i37.i.i
  %.020.i38.i.i = phi i32 [ %i.ba, %.lr.ph.i37.i.i ], [ %3, %bb.h ]
  %.01819.i39.i.i = phi i64 [ %i.bh, %.lr.ph.i37.i.i ], [ %.130.i.i, %bb.h ] ; 3 uses
  %i.ba = add i32 %.020.i38.i.i, -2               ; 3 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb
  %i.bd = urem i64 %.01819.i39.i.i, 100
  %i.be = shl nuw nsw i64 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2
  store i16 %i.bg, ptr %i.bc, align 1
  %i.bh = udiv i64 %.01819.i39.i.i, 100           ; 2 uses
  %i.bi = icmp ugt i64 %.01819.i39.i.i, 9999
  br i1 %i.bi, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !81

._crit_edge.i33.i.i:                              ; preds = %.lr.ph.i37.i.i, %bb.h
  %.018.lcssa.i34.i.i = phi i64 [ %.130.i.i, %bb.h ], [ %i.bh, %.lr.ph.i37.i.i ] ; 3 uses
  %.0.lcssa.i35.i.i = phi i32 [ %3, %bb.h ], [ %i.ba, %.lr.ph.i37.i.i ] ; 2 uses
  %i.bj = icmp samesign ugt i64 %.018.lcssa.i34.i.i, 9
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i33.i.i
  %i.bk = add i32 %.0.lcssa.i35.i.i, -2
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bl
  %i.bn = shl nuw nsw i64 %.018.lcssa.i34.i.i, 1
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2
  store i16 %i.bp, ptr %i.bm, align 1
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.j:                                             ; preds = %._crit_edge.i33.i.i
  %i.bq = trunc nuw nsw i64 %.018.lcssa.i34.i.i to i8
  %i.br = or disjoint i8 %i.bq, 48
  %i.bs = add i32 %.0.lcssa.i35.i.i, -1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !136
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit: ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i, %bb.i, %bb.j
  %.027.i.i = phi ptr [ %i.ab, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i ], [ %i.ae, %bb.i ], [ %i.ae, %bb.j ]
  %i.bv = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.b, ptr noundef %.027.i.i, ptr %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.z

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.by, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bx, align 8, !tbaa !202
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.bz, ptr %6, align 8, !tbaa !203
  store i64 500, ptr %i.bw, align 8, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %.not.i.i19 = icmp eq i8 %4, 0
  br i1 %.not.i.i19, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ca = icmp ugt i64 %1, 99
  br i1 %i.ca, label %.lr.ph.i.i.i42, label %._crit_edge.i.i.i38

.lr.ph.i.i.i42:                                   ; preds = %bb.l, %.lr.ph.i.i.i42
  %.020.i.i.i43 = phi i32 [ %i.cb, %.lr.ph.i.i.i42 ], [ %2, %bb.l ]
  %.01819.i.i.i44 = phi i64 [ %i.ci, %.lr.ph.i.i.i42 ], [ %1, %bb.l ] ; 3 uses
  %i.cb = add i32 %.020.i.i.i43, -2               ; 3 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cc
  %i.ce = urem i64 %.01819.i.i.i44, 100
  %i.cf = shl nuw nsw i64 %i.ce, 1
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2
  store i16 %i.ch, ptr %i.cd, align 1
  %i.ci = udiv i64 %.01819.i.i.i44, 100           ; 2 uses
  %i.cj = icmp ugt i64 %.01819.i.i.i44, 9999
  br i1 %i.cj, label %.lr.ph.i.i.i42, label %._crit_edge.i.i.i38, !llvm.loop !81

._crit_edge.i.i.i38:                              ; preds = %.lr.ph.i.i.i42, %bb.l
  %.018.lcssa.i.i.i39 = phi i64 [ %1, %bb.l ], [ %i.ci, %.lr.ph.i.i.i42 ] ; 3 uses
  %.0.lcssa.i.i.i40 = phi i32 [ %2, %bb.l ], [ %i.cb, %.lr.ph.i.i.i42 ] ; 2 uses
  %i.ck = icmp samesign ugt i64 %.018.lcssa.i.i.i39, 9
  br i1 %i.ck, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i38
  %i.cl = add i32 %.0.lcssa.i.i.i40, -2
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cm
  %i.co = shl nuw nsw i64 %.018.lcssa.i.i.i39, 1
  %i.cp = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2
  store i16 %i.cq, ptr %i.cn, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i41

bb.n:                                             ; preds = %._crit_edge.i.i.i38
  %i.cr = trunc nuw nsw i64 %.018.lcssa.i.i.i39 to i8
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = add i32 %.0.lcssa.i.i.i40, -1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cu
  store i8 %i.cs, ptr %i.cv, align 1, !tbaa !136
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i41

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i41: ; preds = %bb.n, %bb.m
  %i.cw = sext i32 %2 to i64
  %i.cx = getelementptr inbounds i8, ptr %i.a, i64 %i.cw
  br label %_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i

bb.o:                                             ; preds = %bb.k
  %i.cy = sext i32 %2 to i64
  %i.cz = getelementptr i8, ptr %i.a, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 1      ; 4 uses
  %i.db = sub nsw i32 %2, %3                      ; 3 uses
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %.lr.ph.preheader.i.i33, label %._crit_edge.i.i20

.lr.ph.preheader.i.i33:                           ; preds = %bb.o
  %i.dd = lshr i32 %i.db, 1
  br label %.lr.ph.i.i34

._crit_edge.i.i20:                                ; preds = %.lr.ph.i.i34, %bb.o
  %.029.lcssa.i.i21 = phi i64 [ %1, %bb.o ], [ %i.dj, %.lr.ph.i.i34 ] ; 3 uses
  %.028.lcssa.i.i22 = phi ptr [ %i.da, %bb.o ], [ %i.de, %.lr.ph.i.i34 ] ; 2 uses
  %8 = trunc i32 %i.db to i1
  br i1 %8, label %bb.p, label %bb.q

.lr.ph.i.i34:                                     ; preds = %.lr.ph.i.i34, %.lr.ph.preheader.i.i33
  %.046.i.i35 = phi i32 [ %i.dk, %.lr.ph.i.i34 ], [ %i.dd, %.lr.ph.preheader.i.i33 ] ; 2 uses
  %.02845.i.i36 = phi ptr [ %i.de, %.lr.ph.i.i34 ], [ %i.da, %.lr.ph.preheader.i.i33 ]
  %.02944.i.i37 = phi i64 [ %i.dj, %.lr.ph.i.i34 ], [ %1, %.lr.ph.preheader.i.i33 ] ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.02845.i.i36, i64 -2 ; 3 uses
  %i.df = urem i64 %.02944.i.i37, 100
  %i.dg = shl nuw nsw i64 %i.df, 1
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2
  store i16 %i.di, ptr %i.de, align 1
  %i.dj = udiv i64 %.02944.i.i37, 100             ; 2 uses
  %i.dk = add nsw i32 %.046.i.i35, -1
  %i.dl = icmp samesign ugt i32 %.046.i.i35, 1
  br i1 %i.dl, label %.lr.ph.i.i34, label %._crit_edge.i.i20, !llvm.loop !84

bb.p:                                             ; preds = %._crit_edge.i.i20
  %i.dm = urem i64 %.029.lcssa.i.i21, 10
  %i.dn = trunc nuw nsw i64 %i.dm to i8
  %i.do = or disjoint i8 %i.dn, 48
  %i.dp = getelementptr inbounds i8, ptr %.028.lcssa.i.i22, i64 -1 ; 2 uses
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !136
  %i.dq = udiv i64 %.029.lcssa.i.i21, 10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i20
  %.130.i.i24 = phi i64 [ %i.dq, %bb.p ], [ %.029.lcssa.i.i21, %._crit_edge.i.i20 ] ; 3 uses
  %.1.i.i25 = phi ptr [ %i.dp, %bb.p ], [ %.028.lcssa.i.i22, %._crit_edge.i.i20 ]
  %i.dr = getelementptr inbounds i8, ptr %.1.i.i25, i64 -1 ; 2 uses
  store i8 %4, ptr %i.dr, align 1, !tbaa !136
  %i.ds = sext i32 %3 to i64
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %i.dt ; 3 uses
  %i.dv = icmp ugt i64 %.130.i.i24, 99
  br i1 %i.dv, label %.lr.ph.i37.i.i30, label %._crit_edge.i33.i.i26

.lr.ph.i37.i.i30:                                 ; preds = %bb.q, %.lr.ph.i37.i.i30
  %.020.i38.i.i31 = phi i32 [ %i.dw, %.lr.ph.i37.i.i30 ], [ %3, %bb.q ]
  %.01819.i39.i.i32 = phi i64 [ %i.ed, %.lr.ph.i37.i.i30 ], [ %.130.i.i24, %bb.q ] ; 3 uses
  %i.dw = add i32 %.020.i38.i.i31, -2             ; 3 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dx
  %i.dz = urem i64 %.01819.i39.i.i32, 100
  %i.ea = shl nuw nsw i64 %i.dz, 1
  %i.eb = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2
  store i16 %i.ec, ptr %i.dy, align 1
  %i.ed = udiv i64 %.01819.i39.i.i32, 100         ; 2 uses
  %i.ee = icmp ugt i64 %.01819.i39.i.i32, 9999
  br i1 %i.ee, label %.lr.ph.i37.i.i30, label %._crit_edge.i33.i.i26, !llvm.loop !81

._crit_edge.i33.i.i26:                            ; preds = %.lr.ph.i37.i.i30, %bb.q
  %.018.lcssa.i34.i.i27 = phi i64 [ %.130.i.i24, %bb.q ], [ %i.ed, %.lr.ph.i37.i.i30 ] ; 3 uses
  %.0.lcssa.i35.i.i28 = phi i32 [ %3, %bb.q ], [ %i.dw, %.lr.ph.i37.i.i30 ] ; 2 uses
  %i.ef = icmp samesign ugt i64 %.018.lcssa.i34.i.i27, 9
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i33.i.i26
  %i.eg = add i32 %.0.lcssa.i35.i.i28, -2
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.eh
  %i.ej = shl nuw nsw i64 %.018.lcssa.i34.i.i27, 1
  %i.ek = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2
  store i16 %i.el, ptr %i.ei, align 1
  br label %_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i

bb.s:                                             ; preds = %._crit_edge.i33.i.i26
  %i.em = trunc nuw nsw i64 %.018.lcssa.i34.i.i27 to i8
  %i.en = or disjoint i8 %i.em, 48
  %i.eo = add i32 %.0.lcssa.i35.i.i28, -1
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ep
  store i8 %i.en, ptr %i.eq, align 1, !tbaa !136
  br label %_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i

_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i: ; preds = %bb.s, %bb.r, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i41
  %.027.i.i29 = phi ptr [ %i.cx, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i41 ], [ %i.da, %bb.r ], [ %i.da, %bb.s ]
  %i.er = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i29, ptr nonnull %6)
          to label %bb.t unwind label %bb.x       ; 0 uses

bb.t:                                             ; preds = %_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.es = load ptr, ptr %6, align 8, !tbaa !203
  %i.et = zext i32 %3 to i64
  %i.eu = invoke ptr @_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %0, ptr %i.es, i64 %i.et)
          to label %bb.u unwind label %bb.x       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ev = load ptr, ptr %6, align 8, !tbaa !203   ; 2 uses
  %i.ew = sext i32 %3 to i64
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 %i.ew
  %i.ey = load i64, ptr %i.by, align 8, !tbaa !205
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ey
  %i.fa = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef %i.ex, ptr noundef %i.ez, ptr %0)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.fb = load ptr, ptr %6, align 8, !tbaa !203   ; 2 uses
  %.not.i.i46.a = icmp eq ptr %i.fb, %i.bz
  br i1 %.not.i.i46.a, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.fb) #36
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.z

bb.x:                                             ; preds = %_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i, %bb.u, %bb.t
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %6, align 8, !tbaa !203   ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.fd, %i.bz
  br i1 %.not.i.i47, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit48, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.fd) #36
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit48

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit48: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  resume { ptr, i32 } %i.fc

bb.z:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %.sroa.018.0 = phi ptr [ %i.fa, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %i.bv, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ]
  ret ptr %.sroa.018.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7173, !nonnull !128, !align !533
  %i.b = load i32, ptr %i.a, align 4, !tbaa !574  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !205  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !204
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !202
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !57
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !205 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !203
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !205
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !136
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !205  ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !204
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !202
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s), !inline_history !57
  %.pre.i.i6 = load i64, ptr %i.q, align 8, !tbaa !205 ; 2 uses
  %.pre2.i.i7 = add i64 %.pre.i.i6, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

_ZN3fmt3v1214basic_appenderIcEaSEc.exit8:         ; preds = %bb.d, %bb.e
  %.pre-phi.i.i5 = phi i64 [ %i.s, %bb.d ], [ %.pre2.i.i7, %bb.e ]
  %i.y = phi i64 [ %i.r, %bb.d ], [ %.pre.i.i6, %bb.e ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !203
  store i64 %.pre-phi.i.i5, ptr %i.q, align 8, !tbaa !205
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1, !tbaa !136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7174, !nonnull !128
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !466, !range !127, !noundef !128
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !7175, !nonnull !128
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_2ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_:bb.a
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.au)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.026.i.i.i = phi i64 [ %i.as, %bb.f ], [ %i.ak, %bb.e ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.av, %bb.f ], [ %i.ao, %bb.e ] ; 13 uses
  %i.aw = load ptr, ptr %.sroa.09.0, align 8, !tbaa !203 ; 2 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = add i64 %.026.i.i.i, %i.ax
  %i.ba = sub i64 %i.an, %i.az
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <16 x i8>, ptr %i.bc, align 1, !tbaa !136
  %wide.load36 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !136
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %wide.load, ptr %i.be, align 1, !tbaa !136
  store <16 x i8> %wide.load36, ptr %i.bf, align 1, !tbaa !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !7180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !218

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !136
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bi, align 1, !tbaa !136
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7181

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bn, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !136
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.i.prol
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !136
  %i.bn = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !7182

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.i.prol ]
  %i.bo = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !205
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.g
  %i.bq = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.g ]
  %i.br = add i64 %i.bq, %.025.i.i.i              ; 2 uses
  store i64 %i.br, ptr %i.ag, align 8, !tbaa !205
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.af
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit, label %bb.e, !llvm.loop !12

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !136
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.i
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !136
  %i.bw = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !136
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !136
  %i.ca = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !136
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !136
  %i.ce = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !136
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !136
  %i.ci = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ci, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !7183

_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %i.cj = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %.sroa.09.1 = phi ptr [ %i.cj, %bb.h ], [ %.sroa.09.0, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: nounwind
declare { i64, i64 } @_ZN3fmt3v126detail9dragonbox16get_cached_powerEi(i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef byval(%"struct.fmt::v12::detail::basic_fp.679") align 16 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v12::detail::bigint", align 8 ; 44 uses
  %6 = alloca %"class.fmt::v12::detail::bigint", align 8 ; 35 uses
  %7 = alloca %"class.fmt::v12::detail::bigint", align 8 ; 28 uses
  %8 = alloca %"class.fmt::v12::detail::bigint", align 8 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 29 uses
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.b, align 8, !tbaa !577
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !578
  store i64 32, ptr %i.a, align 8, !tbaa !579
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 10 uses
  store i32 0, ptr %i.e, align 8, !tbaa !583
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 17 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.g, align 8, !tbaa !577
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !578
  store i64 32, ptr %i.f, align 8, !tbaa !579
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 9 uses
  store i32 0, ptr %i.j, align 8, !tbaa !583
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 16 uses
  store i64 0, ptr %i.m, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.l, align 8, !tbaa !577
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !578
  store i64 32, ptr %i.k, align 8, !tbaa !579
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 7 uses
  store i32 0, ptr %i.o, align 8, !tbaa !583
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 9 uses
  store i64 0, ptr %i.r, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.q, align 8, !tbaa !577
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store ptr %i.s, ptr %8, align 8, !tbaa !578
  store i64 32, ptr %i.p, align 8, !tbaa !579
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 5 uses
  store i32 0, ptr %i.t, align 8, !tbaa !583
  %9 = trunc i32 %1 to i1                         ; 4 uses
  %10 = select i1 %9, i32 2, i32 1                ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 16, !tbaa !7215 ; 6 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.x = load i128, ptr %0, align 16, !tbaa !7216 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.05.i.i = phi i128 [ %i.x, %bb.b ], [ %i.ab, %bb.c ] ; 2 uses
  %.0.i.i = phi i64 [ 0, %bb.b ], [ %i.z, %bb.c ] ; 4 uses
  %i.y = trunc i128 %.05.i.i to i32
  %i.z = add nuw nsw i64 %.0.i.i, 1               ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0.i.i
  store i32 %i.y, ptr %i.aa, align 4, !tbaa !141
  %i.ab = lshr i128 %.05.i.i, 32                  ; 2 uses
  %.not.i.i = icmp eq i128 %i.ab, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c, !llvm.loop !7184

bb.d:                                             ; preds = %bb.c
  %.not8.i.i = icmp samesign ult i64 %.0.i.i, 32
  br i1 %.not8.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = invoke noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef 192)
          to label %.noexc unwind label %.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %bb.e
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !584 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 49
  call void @llvm.assume(i1 %i.ae)
  %i.af = shl nuw nsw i64 %i.ad, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ac, ptr nonnull align 8 %i.d, i64 %i.af, i1 false)
  store ptr %i.ac, ptr %5, align 8, !tbaa !578
  store i64 48, ptr %i.a, align 8, !tbaa !579
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %i.ag = phi ptr [ %i.d, %bb.d ], [ %i.ac, %.noexc ] ; 3 uses
  %i.ah = phi i64 [ 32, %bb.d ], [ 48, %.noexc ]  ; 2 uses
  %i.ai = call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.ah) ; 6 uses
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !584
  %i.aj = add nuw nsw i32 %i.v, %10               ; 2 uses
  %i.ak = lshr i32 %i.aj, 5
  store i32 %i.ak, ptr %i.e, align 8, !tbaa !583
  %i.al = and i32 %i.aj, 31                       ; 4 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.an = sub nuw nsw i32 32, %i.al               ; 2 uses
  %min.iters.check1286 = icmp samesign ult i64 %.0.i.i, 7
  br i1 %min.iters.check1286, label %scalar.ph1285.preheader, label %vector.ph1287

vector.ph1287:                                    ; preds = %.lr.ph.i
  %n.vec1288 = and i64 %i.ai, 56                  ; 3 uses
  %broadcast.splatinsert1289 = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %broadcast.splat1290 = shufflevector <4 x i32> %broadcast.splatinsert1289, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1291.a = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat1292.a = shufflevector <4 x i32> %broadcast.splatinsert1291.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1293

vector.body1293:                                  ; preds = %vector.body1293, %vector.ph1287
  %index1294 = phi i64 [ 0, %vector.ph1287 ], [ %index.next1298, %vector.body1293 ] ; 2 uses
  %vector.recur1295 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1287 ], [ %i.ar, %vector.body1293 ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index1294 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load1296 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !141 ; 2 uses
  %wide.load1297 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !141 ; 2 uses
  %i.aq = lshr <4 x i32> %wide.load1296, %broadcast.splat1290 ; 2 uses
  %i.ar = lshr <4 x i32> %wide.load1297, %broadcast.splat1290 ; 3 uses
  %i.as = shufflevector <4 x i32> %vector.recur1295, <4 x i32> %i.aq, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.at = shufflevector <4 x i32> %i.aq, <4 x i32> %i.ar, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.au = shl <4 x i32> %wide.load1296, %broadcast.splat1292.a
  %i.av = shl <4 x i32> %wide.load1297, %broadcast.splat1292.a
  %i.aw = add <4 x i32> %i.au, %i.as
  %i.ax = add <4 x i32> %i.av, %i.at
  store <4 x i32> %i.aw, ptr %i.ao, align 4, !tbaa !141
  store <4 x i32> %i.ax, ptr %i.ap, align 4, !tbaa !141
  %index.next1298 = add nuw i64 %index1294, 8     ; 2 uses
  %i.ay = icmp eq i64 %index.next1298, %n.vec1288
  br i1 %i.ay, label %middle.block1299, label %vector.body1293, !llvm.loop !7185

middle.block1299:                                 ; preds = %vector.body1293
  %vector.recur.extract1300 = extractelement <4 x i32> %i.ar, i64 3 ; 2 uses
  %cmp.n1301 = icmp eq i64 %i.ai, %n.vec1288
  br i1 %cmp.n1301, label %._crit_edge.i, label %scalar.ph1285.preheader

scalar.ph1285.preheader:                          ; preds = %.lr.ph.i, %middle.block1299
  %.01418.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec1288, %middle.block1299 ]
  %.017.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract1300, %middle.block1299 ]
  br label %scalar.ph1285

._crit_edge.i:                                    ; preds = %scalar.ph1285, %middle.block1299
  %.lcssa1182 = phi i32 [ %vector.recur.extract1300, %middle.block1299 ], [ %i.bb, %scalar.ph1285 ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa1182, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.g

scalar.ph1285:                                    ; preds = %scalar.ph1285.preheader, %scalar.ph1285
  %.01418.i = phi i64 [ %i.be, %scalar.ph1285 ], [ %.01418.i.ph, %scalar.ph1285.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.bb, %scalar.ph1285 ], [ %.017.i.ph, %scalar.ph1285.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.01418.i ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !141 ; 2 uses
  %i.bb = lshr i32 %i.ba, %i.an                   ; 2 uses
  %i.bc = shl i32 %i.ba, %i.al
  %i.bd = add i32 %i.bc, %.017.i
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !141
  %i.be = add nuw nsw i64 %.01418.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %i.ai
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph1285, !llvm.loop !7186

bb.g:                                             ; preds = %._crit_edge.i
  %i.bf = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %.not563.a = icmp samesign ult i64 %i.z, %i.ah
  br i1 %.not563.a, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !577
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.bf)
          to label %.noexc116 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc116:                                        ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre678 = load ptr, ptr %5, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i: ; preds = %.noexc116, %bb.g
  %i.bh = phi ptr [ %i.ag, %bb.g ], [ %.pre678, %.noexc116 ]
  %.pre-phi.i.i = phi i64 [ %i.bf, %bb.g ], [ %.pre2.i.i, %.noexc116 ]
  %i.bi = phi i64 [ %i.ai, %bb.g ], [ %.pre.i.i, %.noexc116 ]
  store i64 %.pre-phi.i.i, ptr %i.c, align 8, !tbaa !584
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  store i32 %.lcssa1182, ptr %i.bj, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.f
  %i.bk = load ptr, ptr %7, align 8, !tbaa !578
  store i32 1, ptr %i.bk, align 4, !tbaa !141
  %i.bl = load i64, ptr %i.k, align 8, !tbaa !579 ; 2 uses
  %.not8.i.i120.not = icmp eq i64 %i.bl, 0
  br i1 %.not8.i.i120.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !577
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef 1)
          to label %.noexc122 unwind label %.loopexit.split-lp, !inline_history !7188

.noexc122:                                        ; preds = %bb.i
  %.pre.i.i.i.i121 = load i64, ptr %i.k, align 8, !tbaa !579 ; 2 uses
  %i.bn = icmp ne i64 %.pre.i.i.i.i121, 0
  %i.bo = zext i1 %i.bn to i64
  br label %bb.j

bb.j:                                             ; preds = %.noexc122, %_ZN3fmt3v126detail6bigintlSEi.exit
  %i.bp = phi i64 [ %i.bl, %_ZN3fmt3v126detail6bigintlSEi.exit ], [ %.pre.i.i.i.i121, %.noexc122 ]
  %i.bq = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit ], [ %i.bo, %.noexc122 ] ; 2 uses
  store i64 %i.bq, ptr %i.m, align 8, !tbaa !584
  %i.br = lshr i32 %i.v, 5
  store i32 %i.br, ptr %i.o, align 8, !tbaa !583
  %i.bs = and i32 %i.v, 31                        ; 3 uses
  %i.bt = icmp eq i32 %i.bs, 0
  %.not19.i123 = icmp eq i64 %i.bq, 0
  %or.cond557.a = or i1 %i.bt, %.not19.i123
  br i1 %or.cond557.a, label %_ZN3fmt3v126detail6bigintlSEi.exit135, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %bb.j
  %i.bu = load ptr, ptr %7, align 8, !tbaa !578   ; 3 uses
  %i.bv = sub nuw nsw i32 32, %i.bs
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !141 ; 2 uses
  %i.bx = lshr i32 %i.bw, %i.bv                   ; 2 uses
  %i.by = shl i32 %i.bw, %i.bs
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !141
  %.not.i129 = icmp eq i32 %i.bx, 0
  br i1 %.not.i129, label %_ZN3fmt3v126detail6bigintlSEi.exit135, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i124
  %.not564.a = icmp ugt i64 %i.bp, 1
  br i1 %.not564.a, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i130, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !577
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef 2)
          to label %.noexc134 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc134:                                        ; preds = %bb.l
  %.pre.i.i132 = load i64, ptr %i.m, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i133 = add i64 %.pre.i.i132, 1
  %.pre679 = load ptr, ptr %7, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i130

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i130: ; preds = %.noexc134, %bb.k
  %i.ca = phi ptr [ %i.bu, %bb.k ], [ %.pre679, %.noexc134 ]
  %.pre-phi.i.i131 = phi i64 [ 2, %bb.k ], [ %.pre2.i.i133, %.noexc134 ]
  %i.cb = phi i64 [ 1, %bb.k ], [ %.pre.i.i132, %.noexc134 ]
  store i64 %.pre-phi.i.i131, ptr %i.m, align 8, !tbaa !584
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  store i32 %i.bx, ptr %i.cc, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit135

_ZN3fmt3v126detail6bigintlSEi.exit135:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i130, %.lr.ph.i124, %bb.j
  br i1 %9, label %bb.m, label %_ZN3fmt3v126detail6bigintlSEi.exit155

bb.m:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit135
  %i.cd = load ptr, ptr %8, align 8, !tbaa !578
  store i32 1, ptr %i.cd, align 4, !tbaa !141
  %i.ce = load i64, ptr %i.p, align 8, !tbaa !579 ; 2 uses
  %.not8.i.i139.not = icmp eq i64 %i.ce, 0
  br i1 %.not8.i.i139.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load ptr, ptr %i.q, align 8, !tbaa !577
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef 1)
          to label %.noexc141 unwind label %.loopexit.split-lp, !inline_history !7188

.noexc141:                                        ; preds = %bb.n
  %.pre.i.i.i.i140 = load i64, ptr %i.p, align 8, !tbaa !579 ; 2 uses
  %i.cg = icmp ne i64 %.pre.i.i.i.i140, 0
  %i.ch = zext i1 %i.cg to i64
  br label %bb.o

bb.o:                                             ; preds = %.noexc141, %bb.m
  %i.ci = phi i64 [ %i.ce, %bb.m ], [ %.pre.i.i.i.i140, %.noexc141 ]
  %i.cj = phi i64 [ 1, %bb.m ], [ %i.ch, %.noexc141 ] ; 2 uses
  store i64 %i.cj, ptr %i.r, align 8, !tbaa !584
  %i.ck = add nuw nsw i32 %i.v, 1                 ; 2 uses
  %i.cl = lshr i32 %i.ck, 5
  store i32 %i.cl, ptr %i.t, align 8, !tbaa !583
  %i.cm = and i32 %i.ck, 31                       ; 3 uses
  %i.cn = icmp eq i32 %i.cm, 0
  %.not19.i143 = icmp eq i64 %i.cj, 0
  %or.cond558.a = or i1 %i.cn, %.not19.i143
  br i1 %or.cond558.a, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.o
  %i.co = load ptr, ptr %8, align 8, !tbaa !578   ; 3 uses
  %i.cp = sub nuw nsw i32 32, %i.cm
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !141 ; 2 uses
  %i.cr = lshr i32 %i.cq, %i.cp                   ; 2 uses
  %i.cs = shl i32 %i.cq, %i.cm
  store i32 %i.cs, ptr %i.co, align 4, !tbaa !141
  %.not.i149 = icmp eq i32 %i.cr, 0
  br i1 %.not.i149, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i144
  %.not565.a = icmp ugt i64 %i.ci, 1
  br i1 %.not565.a, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %i.q, align 8, !tbaa !577
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef 2)
          to label %.noexc154 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc154:                                        ; preds = %bb.q
  %.pre.i.i152 = load i64, ptr %i.r, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i153 = add i64 %.pre.i.i152, 1
  %.pre680 = load ptr, ptr %8, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150: ; preds = %.noexc154, %bb.p
  %i.cu = phi ptr [ %i.co, %bb.p ], [ %.pre680, %.noexc154 ]
  %.pre-phi.i.i151 = phi i64 [ 2, %bb.p ], [ %.pre2.i.i153, %.noexc154 ]
  %i.cv = phi i64 [ 1, %bb.p ], [ %.pre.i.i152, %.noexc154 ]
  store i64 %.pre-phi.i.i151, ptr %i.r, align 8, !tbaa !584
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  store i32 %i.cr, ptr %i.cw, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit155

.loopexit566:                                     ; preds = %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.al, %bb.e, %_ZN3fmt3v126detail6bigintlSEi.exit155, %bb.v, %_ZN3fmt3v126detail6bigintlSEi.exit253, %bb.h, %bb.i, %bb.l, %bb.n, %bb.q, %bb.t, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, %bb.z, %bb.ad, %bb.ae, %bb.ah, %bb.ao, %bb.as, %bb.at, %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail6bigintlSEi.exit155:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150, %.lr.ph.i144, %bb.o, %_ZN3fmt3v126detail6bigintlSEi.exit135
  %.079 = phi ptr [ null, %_ZN3fmt3v126detail6bigintlSEi.exit135 ], [ %8, %bb.o ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150 ], [ %8, %.lr.ph.i144 ] ; 3 uses
  %i.cx = load i32, ptr %4, align 4, !tbaa !141
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.cx)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit155
  %i.cy = load i64, ptr %i.h, align 8, !tbaa !584 ; 7 uses
  %.not19.i156 = icmp eq i64 %i.cy, 0
  %extract.t814 = trunc i128 %i.x to i32          ; 3 uses
  br i1 %.not19.i156, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.r
  %i.cz = load ptr, ptr %6, align 8, !tbaa !578   ; 3 uses
  %11 = sub nuw nsw i32 32, %10                   ; 2 uses
  %min.iters.check1305 = icmp ult i64 %i.cy, 8
  br i1 %min.iters.check1305, label %scalar.ph1304.preheader, label %vector.ph1306

vector.ph1306:                                    ; preds = %.lr.ph.i157
  %n.vec1307 = and i64 %i.cy, -8                  ; 3 uses
  %broadcast.splatinsert1308 = insertelement <4 x i32> poison, i32 %11, i64 0
  %broadcast.splat1309 = shufflevector <4 x i32> %broadcast.splatinsert1308, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1310 = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat1311 = shufflevector <4 x i32> %broadcast.splatinsert1310, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1306
  %index1313 = phi i64 [ 0, %vector.ph1306 ], [ %index.next1317, %vector.body1312 ] ; 2 uses
  %vector.recur1314 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1306 ], [ %i.dd, %vector.body1312 ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %index1313 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %wide.load1315 = load <4 x i32>, ptr %i.da, align 4, !tbaa !141 ; 2 uses
  %wide.load1316 = load <4 x i32>, ptr %i.db, align 4, !tbaa !141 ; 2 uses
  %i.dc = lshr <4 x i32> %wide.load1315, %broadcast.splat1309 ; 2 uses
  %i.dd = lshr <4 x i32> %wide.load1316, %broadcast.splat1309 ; 3 uses
  %i.de = shufflevector <4 x i32> %vector.recur1314, <4 x i32> %i.dc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.df = shufflevector <4 x i32> %i.dc, <4 x i32> %i.dd, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dg = shl <4 x i32> %wide.load1315, %broadcast.splat1311
  %i.dh = shl <4 x i32> %wide.load1316, %broadcast.splat1311
  %i.di = add <4 x i32> %i.dg, %i.de
  %i.dj = add <4 x i32> %i.dh, %i.df
  store <4 x i32> %i.di, ptr %i.da, align 4, !tbaa !141
  store <4 x i32> %i.dj, ptr %i.db, align 4, !tbaa !141
  %index.next1317 = add nuw i64 %index1313, 8     ; 2 uses
  %i.dk = icmp eq i64 %index.next1317, %n.vec1307
  br i1 %i.dk, label %middle.block1318, label %vector.body1312, !llvm.loop !7189

middle.block1318:                                 ; preds = %vector.body1312
  %vector.recur.extract1319 = extractelement <4 x i32> %i.dd, i64 3 ; 2 uses
  %cmp.n1320 = icmp eq i64 %i.cy, %n.vec1307
  br i1 %cmp.n1320, label %._crit_edge.i161, label %scalar.ph1304.preheader

scalar.ph1304.preheader:                          ; preds = %.lr.ph.i157, %middle.block1318
  %.01418.i158.ph = phi i64 [ 0, %.lr.ph.i157 ], [ %n.vec1307, %middle.block1318 ]
  %.017.i159.ph = phi i32 [ 0, %.lr.ph.i157 ], [ %vector.recur.extract1319, %middle.block1318 ]
  br label %scalar.ph1304

._crit_edge.i161:                                 ; preds = %scalar.ph1304, %middle.block1318
  %.lcssa1181 = phi i32 [ %vector.recur.extract1319, %middle.block1318 ], [ %i.dn, %scalar.ph1304 ] ; 2 uses
  %.not.i162 = icmp eq i32 %.lcssa1181, 0
  br i1 %.not.i162, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.s

scalar.ph1304:                                    ; preds = %scalar.ph1304.preheader, %scalar.ph1304
  %.01418.i158 = phi i64 [ %i.dq, %scalar.ph1304 ], [ %.01418.i158.ph, %scalar.ph1304.preheader ] ; 2 uses
  %.017.i159 = phi i32 [ %i.dn, %scalar.ph1304 ], [ %.017.i159.ph, %scalar.ph1304.preheader ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.01418.i158 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !141 ; 2 uses
  %i.dn = lshr i32 %i.dm, %11                     ; 2 uses
  %i.do = shl i32 %i.dm, %10
  %i.dp = add i32 %i.do, %.017.i159
  store i32 %i.dp, ptr %i.dl, align 4, !tbaa !141
  %i.dq = add nuw i64 %.01418.i158, 1             ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.dq, %i.cy
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %scalar.ph1304, !llvm.loop !7190

bb.s:                                             ; preds = %._crit_edge.i161
  %i.dr = add i64 %i.cy, 1                        ; 3 uses
  %i.ds = load i64, ptr %i.f, align 8, !tbaa !579
  %i.dt = icmp ugt i64 %i.dr, %i.ds
  br i1 %i.dt, label %bb.t, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

bb.t:                                             ; preds = %bb.s
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !577
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.dr)
          to label %.noexc167 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc167:                                        ; preds = %bb.t
  %.pre.i.i165 = load i64, ptr %i.h, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i166 = add i64 %.pre.i.i165, 1
  %.pre681 = load ptr, ptr %6, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163: ; preds = %.noexc167, %bb.s
  %i.dv = phi ptr [ %i.cz, %bb.s ], [ %.pre681, %.noexc167 ]
  %.pre-phi.i.i164 = phi i64 [ %i.dr, %bb.s ], [ %.pre2.i.i166, %.noexc167 ]
  %i.dw = phi i64 [ %i.cy, %bb.s ], [ %.pre.i.i165, %.noexc167 ]
  store i64 %.pre-phi.i.i164, ptr %i.h, align 8, !tbaa !584
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dw
  store i32 %.lcssa1181, ptr %i.dx, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.u:                                             ; preds = %bb.a
  %i.dy = load i32, ptr %4, align 4, !tbaa !141   ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 0
  br i1 %i.dz, label %bb.v, label %bb.ai

bb.v:                                             ; preds = %bb.u
  %i.ea = sub nsw i32 0, %i.dy
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.ea)
          to label %bb.w unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.eb = load i64, ptr %i.c, align 8, !tbaa !584 ; 7 uses
  %i.ec = load i64, ptr %i.k, align 8, !tbaa !579
  %i.ed = icmp ugt i64 %i.eb, %i.ec
  br i1 %i.ed, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.w
  %i.ee = load ptr, ptr %i.l, align 8, !tbaa !577
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.eb)
          to label %.noexc170 unwind label %.loopexit.split-lp, !inline_history !7191

.noexc170:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !579
  %i.ef = call noundef i64 @llvm.umin.i64(i64 %i.eb, i64 %.pre.i.i.i)
  store i64 %i.ef, ptr %i.m, align 8, !tbaa !584
  %i.eg = load ptr, ptr %5, align 8, !tbaa !578   ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.eb, 2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.w
  store i64 %i.eb, ptr %i.m, align 8, !tbaa !584
  %i.ei = load ptr, ptr %5, align 8, !tbaa !578   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.eb, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not6.i.i, label %.loopexit567, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %.noexc170
  %i.ek = phi ptr [ %i.eh, %.noexc170 ], [ %i.ej, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.el = phi ptr [ %i.eg, %.noexc170 ], [ %i.ei, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 6 uses
  %i.em = ptrtoaddr ptr %i.el to i64              ; 2 uses
  %i.en = load ptr, ptr %7, align 8, !tbaa !578   ; 4 uses
  %i.eo = ptrtoaddr ptr %i.ek to i64
  %i.ep = add i64 %i.eo, -4
  %i.eq = sub i64 %i.ep, %i.em                    ; 2 uses
  %i.er = lshr i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check1221 = icmp ult i64 %i.eq, 44
  %i.et = ptrtoaddr ptr %i.en to i64
  %i.eu = sub i64 %i.em, %i.et
  %diff.check = icmp ugt i64 %i.eu, -32
  %or.cond1325 = select i1 %min.iters.check1221, i1 true, i1 %diff.check
  br i1 %or.cond1325, label %.lr.ph.i.i.preheader, label %vector.ph1222

vector.ph1222:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1223 = and i64 %i.es, 9223372036854775800 ; 3 uses
  %i.ev = shl i64 %n.vec1223, 2                   ; 2 uses
  %i.ew = getelementptr i8, ptr %i.en, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.el, i64 %i.ev
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1229, %vector.body1224 ] ; 2 uses
  %i.ey = shl i64 %index1225, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %i.en, i64 %i.ey ; 2 uses
  %next.gep1226 = getelementptr i8, ptr %i.el, i64 %i.ey ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep1226, i64 16
  %wide.load1227 = load <4 x i32>, ptr %next.gep1226, align 4, !tbaa !141
  %wide.load1228 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !141
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load1227, ptr %next.gep, align 4, !tbaa !141
  store <4 x i32> %wide.load1228, ptr %i.fa, align 4, !tbaa !141
  %index.next1229 = add nuw i64 %index1225, 8     ; 2 uses
  %i.fb = icmp eq i64 %index.next1229, %n.vec1223
  br i1 %i.fb, label %middle.block1230, label %vector.body1224, !llvm.loop !7192

middle.block1230:                                 ; preds = %vector.body1224
  %cmp.n1231 = icmp eq i64 %i.es, %n.vec1223
  br i1 %cmp.n1231, label %.loopexit567, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1230
  %.08.i.i.ph = phi ptr [ %i.en, %.lr.ph.i.preheader.i ], [ %i.ew, %middle.block1230 ]
  %.057.i.i.ph = phi ptr [ %i.el, %.lr.ph.i.preheader.i ], [ %i.ex, %middle.block1230 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.fe, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.fc, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.fd = load i32, ptr %.057.i.i, align 4, !tbaa !141
  %i.fe = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.fd, ptr %.08.i.i, align 4, !tbaa !141
  %.not.i.i169 = icmp eq ptr %i.fc, %i.ek
  br i1 %.not.i.i169, label %.loopexit567, label %.lr.ph.i.i, !llvm.loop !7193

.loopexit567:                                     ; preds = %.lr.ph.i.i, %middle.block1230, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ff = phi ptr [ %i.ei, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.el, %middle.block1230 ], [ %i.el, %.lr.ph.i.i ] ; 2 uses
  %i.fg = load i32, ptr %i.e, align 8, !tbaa !583 ; 2 uses
  store i32 %i.fg, ptr %i.o, align 8, !tbaa !583
  br i1 %9, label %bb.x, label %_ZN3fmt3v126detail6bigintlSEi.exit196

bb.x:                                             ; preds = %.loopexit567
  %i.fh = load i64, ptr %i.c, align 8, !tbaa !584 ; 8 uses
  %i.fi = load i64, ptr %i.p, align 8, !tbaa !579 ; 2 uses
  %i.fj = icmp ugt i64 %i.fh, %i.fi
  br i1 %i.fj, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.x
  %i.fk = load ptr, ptr %i.q, align 8, !tbaa !577
  invoke void %i.fk(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.fh)
          to label %.noexc182 unwind label %.loopexit.split-lp, !inline_history !7191

.noexc182:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !579 ; 2 uses
  %i.fl = call noundef i64 @llvm.umin.i64(i64 %i.fh, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.fl, ptr %i.r, align 8, !tbaa !584
  %i.fm = load ptr, ptr %5, align 8, !tbaa !578   ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.fh, 2
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.idx8.i181
  br label %.lr.ph.i.preheader.i174

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.x
  store i64 %i.fh, ptr %i.r, align 8, !tbaa !584
  %.idx.i172 = shl nuw nsw i64 %i.fh, 2
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.fh, 0
  br i1 %.not6.i.i173, label %.thread, label %.lr.ph.i.preheader.i174

.thread:                                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.fg, ptr %i.t, align 8, !tbaa !583
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

.lr.ph.i.preheader.i174:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.fp = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.fi, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.fl, %.noexc182 ], [ %i.fh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.fq = phi ptr [ %i.fn, %.noexc182 ], [ %i.fo, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.fr = phi ptr [ %i.fm, %.noexc182 ], [ %i.ff, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 4 uses
  %i.fs = ptrtoaddr ptr %i.fr to i64              ; 2 uses
  %i.ft = load ptr, ptr %8, align 8, !tbaa !578   ; 7 uses
  %i.fu = ptrtoaddr ptr %i.fq to i64
  %i.fv = add i64 %i.fu, -4
  %i.fw = sub i64 %i.fv, %i.fs                    ; 2 uses
  %i.fx = lshr i64 %i.fw, 2
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %min.iters.check1237 = icmp ult i64 %i.fw, 44
  %i.fz = ptrtoaddr ptr %i.ft to i64
  %i.ga = sub i64 %i.fs, %i.fz
  %diff.check1235 = icmp ugt i64 %i.ga, -32
  %or.cond1327 = select i1 %min.iters.check1237, i1 true, i1 %diff.check1235
  br i1 %or.cond1327, label %.lr.ph.i.i175.preheader, label %vector.ph1238

vector.ph1238:                                    ; preds = %.lr.ph.i.preheader.i174
  %n.vec1239 = and i64 %i.fy, 9223372036854775800 ; 3 uses
  %i.gb = shl i64 %n.vec1239, 2                   ; 2 uses
  %i.gc = getelementptr i8, ptr %i.ft, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.fr, i64 %i.gb
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1238
  %index1241 = phi i64 [ 0, %vector.ph1238 ], [ %index.next1246, %vector.body1240 ] ; 2 uses
  %i.ge = shl i64 %index1241, 2                   ; 2 uses
  %next.gep1242 = getelementptr i8, ptr %i.ft, i64 %i.ge ; 2 uses
  %next.gep1243 = getelementptr i8, ptr %i.fr, i64 %i.ge ; 2 uses
  %i.gf = getelementptr i8, ptr %next.gep1243, i64 16
  %wide.load1244 = load <4 x i32>, ptr %next.gep1243, align 4, !tbaa !141
  %wide.load1245 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !141
  %i.gg = getelementptr i8, ptr %next.gep1242, i64 16
  store <4 x i32> %wide.load1244, ptr %next.gep1242, align 4, !tbaa !141
  store <4 x i32> %wide.load1245, ptr %i.gg, align 4, !tbaa !141
  %index.next1246 = add nuw i64 %index1241, 8     ; 2 uses
  %i.gh = icmp eq i64 %index.next1246, %n.vec1239
  br i1 %i.gh, label %middle.block1247, label %vector.body1240, !llvm.loop !7194

middle.block1247:                                 ; preds = %vector.body1240
  %cmp.n1248 = icmp eq i64 %i.fy, %n.vec1239
  br i1 %cmp.n1248, label %.loopexit1323, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %.lr.ph.i.preheader.i174, %middle.block1247
  %.08.i.i176.ph = phi ptr [ %i.ft, %.lr.ph.i.preheader.i174 ], [ %i.gc, %middle.block1247 ]
  %.057.i.i177.ph = phi ptr [ %i.fr, %.lr.ph.i.preheader.i174 ], [ %i.gd, %middle.block1247 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175
  %.08.i.i176 = phi ptr [ %i.gk, %.lr.ph.i.i175 ], [ %.08.i.i176.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %.057.i.i177 = phi ptr [ %i.gi, %.lr.ph.i.i175 ], [ %.057.i.i177.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.057.i.i177, i64 4 ; 2 uses
  %i.gj = load i32, ptr %.057.i.i177, align 4, !tbaa !141
  %i.gk = getelementptr inbounds nuw i8, ptr %.08.i.i176, i64 4
  store i32 %i.gj, ptr %.08.i.i176, align 4, !tbaa !141
  %.not.i.i178 = icmp eq ptr %i.gi, %i.fq
  br i1 %.not.i.i178, label %.loopexit1323, label %.lr.ph.i.i175, !llvm.loop !7195

.loopexit1323:                                    ; preds = %.lr.ph.i.i175, %middle.block1247
  %i.gl = load i32, ptr %i.e, align 8, !tbaa !583
  store i32 %i.gl, ptr %i.t, align 8, !tbaa !583
  %.not19.i184 = icmp eq i64 %.pr, 0
  br i1 %.not19.i184, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.loopexit1323
  %min.iters.check1252 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check1252, label %.lr.ph.i185.preheader1371, label %vector.ph1253

vector.ph1253:                                    ; preds = %.lr.ph.i185.preheader
  %n.vec1254 = and i64 %.pr, -8                   ; 3 uses
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1253
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1260, %vector.body1255 ] ; 2 uses
  %vector.recur1257 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1253 ], [ %i.gp, %vector.body1255 ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %index1256 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %wide.load1258 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !141 ; 2 uses
  %wide.load1259 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !141 ; 3 uses
  %i.go = lshr <4 x i32> %wide.load1258, splat (i32 31) ; 2 uses
  %i.gp = lshr <4 x i32> %wide.load1259, splat (i32 31) ; 3 uses
  %i.gq = shufflevector <4 x i32> %vector.recur1257, <4 x i32> %i.go, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gr = shufflevector <4 x i32> %i.go, <4 x i32> %i.gp, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gs = shl <4 x i32> %wide.load1258, splat (i32 1)
  %i.gt = shl <4 x i32> %wide.load1259, splat (i32 1)
  %i.gu = or disjoint <4 x i32> %i.gs, %i.gq
  %i.gv = or disjoint <4 x i32> %i.gt, %i.gr
  store <4 x i32> %i.gu, ptr %i.gm, align 4, !tbaa !141
  store <4 x i32> %i.gv, ptr %i.gn, align 4, !tbaa !141
  %index.next1260 = add nuw i64 %index1256, 8     ; 2 uses
  %i.gw = icmp eq i64 %index.next1260, %n.vec1254
  br i1 %i.gw, label %middle.block1261, label %vector.body1255, !llvm.loop !7196

middle.block1261:                                 ; preds = %vector.body1255
  %vector.recur.extract1262 = extractelement <4 x i32> %i.gp, i64 3 ; 2 uses
  %i.gx = extractelement <4 x i32> %wide.load1259, i64 3
  %cmp.n1263 = icmp eq i64 %.pr, %n.vec1254
  br i1 %cmp.n1263, label %._crit_edge.i189, label %.lr.ph.i185.preheader1371

.lr.ph.i185.preheader1371:                        ; preds = %.lr.ph.i185.preheader, %middle.block1261
  %.01418.i186.ph = phi i64 [ 0, %.lr.ph.i185.preheader ], [ %n.vec1254, %middle.block1261 ]
  %.017.i187.ph = phi i32 [ 0, %.lr.ph.i185.preheader ], [ %vector.recur.extract1262, %middle.block1261 ]
  br label %.lr.ph.i185

._crit_edge.i189:                                 ; preds = %.lr.ph.i185, %middle.block1261
  %.lcssa1188 = phi i32 [ %i.gx, %middle.block1261 ], [ %i.gz, %.lr.ph.i185 ]
  %.lcssa1187 = phi i32 [ %vector.recur.extract1262, %middle.block1261 ], [ %i.ha, %.lr.ph.i185 ]
  %.not.i190 = icmp sgt i32 %.lcssa1188, -1
  br i1 %.not.i190, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.y

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader1371, %.lr.ph.i185
  %.01418.i186 = phi i64 [ %i.hd, %.lr.ph.i185 ], [ %.01418.i186.ph, %.lr.ph.i185.preheader1371 ] ; 2 uses
  %.017.i187 = phi i32 [ %i.ha, %.lr.ph.i185 ], [ %.017.i187.ph, %.lr.ph.i185.preheader1371 ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.01418.i186 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !141 ; 3 uses
  %i.ha = lshr i32 %i.gz, 31                      ; 2 uses
  %i.hb = shl i32 %i.gz, 1
  %i.hc = or disjoint i32 %i.hb, %.017.i187
  store i32 %i.hc, ptr %i.gy, align 4, !tbaa !141
  %i.hd = add nuw i64 %.01418.i186, 1             ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %i.hd, %.pr
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !7197

bb.y:                                             ; preds = %._crit_edge.i189
  %i.he = add i64 %.pr, 1                         ; 3 uses
  %i.hf = icmp ugt i64 %i.he, %i.fp
  br i1 %i.hf, label %bb.z, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

bb.z:                                             ; preds = %bb.y
  %i.hg = load ptr, ptr %i.q, align 8, !tbaa !577
  invoke void %i.hg(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.he)
          to label %.noexc195 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc195:                                        ; preds = %bb.z
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre675 = load ptr, ptr %8, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.y
  %i.hh = phi ptr [ %i.ft, %bb.y ], [ %.pre675, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.he, %bb.y ], [ %.pre2.i.i194, %.noexc195 ]
  %i.hi = phi i64 [ %.pr, %bb.y ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !584
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hi
  store i32 %.lcssa1187, ptr %i.hj, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

_ZN3fmt3v126detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit1323, %.thread, %.loopexit567
  %.1 = phi ptr [ null, %.loopexit567 ], [ %8, %.thread ], [ %8, %.loopexit1323 ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.hk = load i128, ptr %0, align 16, !tbaa !7216 ; 3 uses
  %i.hl = and i128 %i.hk, 18446744073709551615
  %i.hm = load i64, ptr %i.c, align 8, !tbaa !584 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.hm, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196
  %i.hn = load ptr, ptr %5, align 8, !tbaa !578   ; 3 uses
  %i.ho = lshr i128 %i.hk, 32
  %i.hp = and i128 %i.ho, 79228162514264337589248983040
  br label %bb.aa

.preheader.i.i:                                   ; preds = %bb.aa
  %.not20.i.i = icmp eq i128 %i.ia, 0
  br i1 %.not20.i.i, label %.lr.ph.i202, label %.lr.ph22.i.i

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i197
  %.019.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.ic, %bb.aa ] ; 2 uses
  %.01718.i.i = phi i128 [ 0, %.lr.ph.i.i197 ], [ %i.ia, %bb.aa ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %.019.i.i ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !141
  %i.hs = zext i32 %i.hr to i128                  ; 2 uses
  %i.ht = mul nuw nsw i128 %i.hl, %i.hs
  %i.hu = and i128 %.01718.i.i, 4294967295
  %i.hv = add nuw nsw i128 %i.ht, %i.hu           ; 2 uses
  %i.hw = mul nuw i128 %i.hp, %i.hs
  %i.hx = lshr i128 %i.hv, 32
  %i.hy = lshr i128 %.01718.i.i, 32
  %i.hz = add nuw i128 %i.hw, %i.hy
  %i.ia = add nuw i128 %i.hz, %i.hx               ; 3 uses
  %i.ib = trunc i128 %i.hv to i32
  store i32 %i.ib, ptr %i.hq, align 4, !tbaa !141
  %i.ic = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ic, %i.hm
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.aa, !llvm.loop !7198

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.id = phi ptr [ %i.ik, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.hn, %.preheader.i.i ]
  %i.ie = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.hm, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.in, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.ia, %.preheader.i.i ] ; 2 uses
  %i.if = trunc i128 %.121.i.i to i32
  %i.ig = add i64 %i.ie, 1                        ; 3 uses
  %i.ih = load i64, ptr %i.a, align 8, !tbaa !579
  %i.ii = icmp ugt i64 %i.ig, %i.ih
  br i1 %i.ii, label %bb.ab, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.ab:                                            ; preds = %.lr.ph22.i.i
  %i.ij = load ptr, ptr %i.b, align 8, !tbaa !577
  invoke void %i.ij(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.ig)
          to label %.noexc200 unwind label %.loopexit566, !inline_history !7199

.noexc200:                                        ; preds = %bb.ab
  %.pre.i.i.i199 = load i64, ptr %i.c, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i199, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc200, %.lr.ph22.i.i
  %i.ik = phi ptr [ %i.id, %.lr.ph22.i.i ], [ %.pre.i, %.noexc200 ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.ig, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc200 ] ; 4 uses
  %i.il = phi i64 [ %i.ie, %.lr.ph22.i.i ], [ %.pre.i.i.i199, %.noexc200 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !584
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.il
  store i32 %i.if, ptr %i.im, align 4, !tbaa !141
  %i.in = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i198 = icmp eq i128 %i.in, 0
  br i1 %.not.i.i198, label %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !7200

_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %.not19.i201 = icmp eq i64 %.pre-phi.i.i.i, 0
  br i1 %.not19.i201, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %12 = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.hm, %.preheader.i.i ] ; 6 uses
  %13 = phi ptr [ %i.ik, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.hn, %.preheader.i.i ] ; 3 uses
  %14 = sub nuw nsw i32 32, %10                   ; 2 uses
  %min.iters.check1267 = icmp ult i64 %12, 8
  br i1 %min.iters.check1267, label %scalar.ph1266.preheader, label %vector.ph1268

vector.ph1268:                                    ; preds = %.lr.ph.i202
  %n.vec1269 = and i64 %12, -8                    ; 3 uses
  %broadcast.splatinsert1270 = insertelement <4 x i32> poison, i32 %14, i64 0
  %broadcast.splat1271 = shufflevector <4 x i32> %broadcast.splatinsert1270, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1272 = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat1273 = shufflevector <4 x i32> %broadcast.splatinsert1272, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1268
  %index1275 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1279, %vector.body1274 ] ; 2 uses
  %vector.recur1276 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1268 ], [ %i.ir, %vector.body1274 ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %index1275 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %wide.load1277 = load <4 x i32>, ptr %i.io, align 4, !tbaa !141 ; 2 uses
  %wide.load1278 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !141 ; 2 uses
  %i.iq = lshr <4 x i32> %wide.load1277, %broadcast.splat1271 ; 2 uses
  %i.ir = lshr <4 x i32> %wide.load1278, %broadcast.splat1271 ; 3 uses
  %i.is = shufflevector <4 x i32> %vector.recur1276, <4 x i32> %i.iq, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.it = shufflevector <4 x i32> %i.iq, <4 x i32> %i.ir, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.iu = shl <4 x i32> %wide.load1277, %broadcast.splat1273
  %i.iv = shl <4 x i32> %wide.load1278, %broadcast.splat1273
  %i.iw = add <4 x i32> %i.iu, %i.is
  %i.ix = add <4 x i32> %i.iv, %i.it
  store <4 x i32> %i.iw, ptr %i.io, align 4, !tbaa !141
  store <4 x i32> %i.ix, ptr %i.ip, align 4, !tbaa !141
  %index.next1279 = add nuw i64 %index1275, 8     ; 2 uses
  %i.iy = icmp eq i64 %index.next1279, %n.vec1269
  br i1 %i.iy, label %middle.block1280, label %vector.body1274, !llvm.loop !7201

middle.block1280:                                 ; preds = %vector.body1274
  %vector.recur.extract1281 = extractelement <4 x i32> %i.ir, i64 3 ; 2 uses
  %cmp.n1282 = icmp eq i64 %12, %n.vec1269
  br i1 %cmp.n1282, label %._crit_edge.i206, label %scalar.ph1266.preheader

scalar.ph1266.preheader:                          ; preds = %.lr.ph.i202, %middle.block1280
  %.01418.i203.ph = phi i64 [ 0, %.lr.ph.i202 ], [ %n.vec1269, %middle.block1280 ]
  %.017.i204.ph = phi i32 [ 0, %.lr.ph.i202 ], [ %vector.recur.extract1281, %middle.block1280 ]
  br label %scalar.ph1266

._crit_edge.i206:                                 ; preds = %scalar.ph1266, %middle.block1280
  %.lcssa1184 = phi i32 [ %vector.recur.extract1281, %middle.block1280 ], [ %i.jb, %scalar.ph1266 ] ; 2 uses
  %.not.i207 = icmp eq i32 %.lcssa1184, 0
  br i1 %.not.i207, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %bb.ac

scalar.ph1266:                                    ; preds = %scalar.ph1266.preheader, %scalar.ph1266
  %.01418.i203 = phi i64 [ %i.je, %scalar.ph1266 ], [ %.01418.i203.ph, %scalar.ph1266.preheader ] ; 2 uses
  %.017.i204 = phi i32 [ %i.jb, %scalar.ph1266 ], [ %.017.i204.ph, %scalar.ph1266.preheader ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %.01418.i203 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !141 ; 2 uses
  %i.jb = lshr i32 %i.ja, %14                     ; 2 uses
  %i.jc = shl i32 %i.ja, %10
  %i.jd = add i32 %i.jc, %.017.i204
  store i32 %i.jd, ptr %i.iz, align 4, !tbaa !141
  %i.je = add nuw i64 %.01418.i203, 1             ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %i.je, %12
  br i1 %exitcond.not.i205, label %._crit_edge.i206, label %scalar.ph1266, !llvm.loop !7202

bb.ac:                                            ; preds = %._crit_edge.i206
  %i.jf = add i64 %12, 1                          ; 3 uses
  %i.jg = load i64, ptr %i.a, align 8, !tbaa !579
  %i.jh = icmp ugt i64 %i.jf, %i.jg
  br i1 %i.jh, label %bb.ad, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

bb.ad:                                            ; preds = %bb.ac
  %i.ji = load ptr, ptr %i.b, align 8, !tbaa !577
  invoke void %i.ji(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.jf)
          to label %.noexc212 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc212:                                        ; preds = %bb.ad
  %.pre.i.i210 = load i64, ptr %i.c, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i211 = add i64 %.pre.i.i210, 1
  %.pre676 = load ptr, ptr %5, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208: ; preds = %.noexc212, %bb.ac
  %i.jj = phi ptr [ %13, %bb.ac ], [ %.pre676, %.noexc212 ]
  %.pre-phi.i.i209 = phi i64 [ %i.jf, %bb.ac ], [ %.pre2.i.i211, %.noexc212 ]
  %i.jk = phi i64 [ %12, %bb.ac ], [ %.pre.i.i210, %.noexc212 ]
  store i64 %.pre-phi.i.i209, ptr %i.c, align 8, !tbaa !584
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jk
  store i32 %.lcssa1184, ptr %i.jl, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit213

_ZN3fmt3v126detail6bigintlSEi.exit213:            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208, %._crit_edge.i206, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.jm = load ptr, ptr %6, align 8, !tbaa !578
  store i32 1, ptr %i.jm, align 4, !tbaa !141
  %i.jn = load i64, ptr %i.f, align 8, !tbaa !579 ; 2 uses
  %.not8.i.i217.not = icmp eq i64 %i.jn, 0
  br i1 %.not8.i.i217.not, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.jo = load ptr, ptr %i.g, align 8, !tbaa !577
  invoke void %i.jo(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 1)
          to label %.noexc219 unwind label %.loopexit.split-lp, !inline_history !7188

.noexc219:                                        ; preds = %bb.ae
  %.pre.i.i.i.i218 = load i64, ptr %i.f, align 8, !tbaa !579 ; 2 uses
  %i.jp = icmp ne i64 %.pre.i.i.i.i218, 0
  %i.jq = zext i1 %i.jp to i64
  br label %bb.af

bb.af:                                            ; preds = %.noexc219, %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.jr = phi i64 [ %i.jn, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %.pre.i.i.i.i218, %.noexc219 ]
  %i.js = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %i.jq, %.noexc219 ] ; 2 uses
  store i64 %i.js, ptr %i.h, align 8, !tbaa !584
  %i.jt = load i32, ptr %i.u, align 16, !tbaa !7215
  %i.ju = sub nsw i32 %10, %i.jt                  ; 2 uses
  %i.jv = sdiv i32 %i.ju, 32
  store i32 %i.jv, ptr %i.j, align 8, !tbaa !583
  %i.jw = srem i32 %i.ju, 32                      ; 3 uses
  %i.jx = icmp eq i32 %i.jw, 0
  %.not19.i221 = icmp eq i64 %i.js, 0
  %or.cond559 = or i1 %.not19.i221, %i.jx
  %extract.t816 = trunc i128 %i.hk to i32         ; 3 uses
  br i1 %or.cond559, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.af
  %i.jy = load ptr, ptr %6, align 8, !tbaa !578   ; 3 uses
  %i.jz = sub nsw i32 32, %i.jw
  %i.ka = load i32, ptr %i.jy, align 4, !tbaa !141 ; 2 uses
  %i.kb = lshr i32 %i.ka, %i.jz                   ; 2 uses
  %i.kc = shl i32 %i.ka, %i.jw
  store i32 %i.kc, ptr %i.jy, align 4, !tbaa !141
  %.not.i227 = icmp eq i32 %i.kb, 0
  br i1 %.not.i227, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i222
  %.not562 = icmp ugt i64 %i.jr, 1
  br i1 %.not562, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kd = load ptr, ptr %i.g, align 8, !tbaa !577
  invoke void %i.kd(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 2)
          to label %.noexc232 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc232:                                        ; preds = %bb.ah
  %.pre.i.i230 = load i64, ptr %i.h, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i231 = add i64 %.pre.i.i230, 1
  %.pre677 = load ptr, ptr %6, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228: ; preds = %.noexc232, %bb.ag
  %i.ke = phi ptr [ %i.jy, %bb.ag ], [ %.pre677, %.noexc232 ]
  %.pre-phi.i.i229 = phi i64 [ 2, %bb.ag ], [ %.pre2.i.i231, %.noexc232 ]
  %i.kf = phi i64 [ 1, %bb.ag ], [ %.pre.i.i230, %.noexc232 ]
  store i64 %.pre-phi.i.i229, ptr %i.h, align 8, !tbaa !584
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.kf
  store i32 %i.kb, ptr %i.kg, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.ai:                                            ; preds = %bb.u
  %i.kh = load i128, ptr %0, align 16, !tbaa !7216 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.05.i.i234 = phi i128 [ %i.kh, %bb.ai ], [ %i.kl, %bb.aj ] ; 2 uses
  %.0.i.i235 = phi i64 [ 0, %bb.ai ], [ %i.kj, %bb.aj ] ; 7 uses
  %i.ki = trunc i128 %.05.i.i234 to i32
  %i.kj = add nuw nsw i64 %.0.i.i235, 1           ; 4 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0.i.i235
  store i32 %i.ki, ptr %i.kk, align 4, !tbaa !141
  %i.kl = lshr i128 %.05.i.i234, 32               ; 2 uses
  %.not.i.i236 = icmp eq i128 %i.kl, 0
  br i1 %.not.i.i236, label %bb.ak, label %bb.aj, !llvm.loop !7184

bb.ak:                                            ; preds = %bb.aj
  %.not8.i.i237 = icmp samesign ult i64 %.0.i.i235, 32
  br i1 %.not8.i.i237, label %.lr.ph.i242, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.km = invoke noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef 192)
          to label %bb.am unwind label %.loopexit.split-lp ; 3 uses

bb.am:                                            ; preds = %bb.al
  %i.kn = load i64, ptr %i.c, align 8, !tbaa !584 ; 2 uses
  %i.ko = icmp ult i64 %i.kn, 49
  call void @llvm.assume(i1 %i.ko)
  %i.kp = shl nuw nsw i64 %i.kn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.km, ptr nonnull align 8 %i.d, i64 %i.kp, i1 false)
  store ptr %i.km, ptr %5, align 8, !tbaa !578
  store i64 48, ptr %i.a, align 8, !tbaa !579
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %bb.ak, %bb.am
  %i.kq = phi ptr [ %i.km, %bb.am ], [ %i.d, %bb.ak ] ; 3 uses
  %i.kr = phi i64 [ 48, %bb.am ], [ 32, %bb.ak ]
  store i64 %i.kj, ptr %i.c, align 8, !tbaa !584
  store i32 0, ptr %i.e, align 8, !tbaa !583
  %15 = sub nuw nsw i32 32, %10                   ; 2 uses
  %i.ks = add nuw i64 %.0.i.i235, 1               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i235, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i242
  %n.vec = and i64 %i.ks, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %15, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.kw, %vector.body ]
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %index ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.kt, align 4, !tbaa !141 ; 2 uses
  %wide.load1200 = load <4 x i32>, ptr %i.ku, align 4, !tbaa !141 ; 2 uses
  %i.kv = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.kw = lshr <4 x i32> %wide.load1200, %broadcast.splat ; 3 uses
  %i.kx = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.kv, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ky = shufflevector <4 x i32> %i.kv, <4 x i32> %i.kw, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.kz = shl <4 x i32> %wide.load, %broadcast.splat1199
  %i.la = shl <4 x i32> %wide.load1200, %broadcast.splat1199
  %i.lb = add <4 x i32> %i.kz, %i.kx
  %i.lc = add <4 x i32> %i.la, %i.ky
  store <4 x i32> %i.lb, ptr %i.kt, align 4, !tbaa !141
  store <4 x i32> %i.lc, ptr %i.ku, align 4, !tbaa !141
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ld = icmp eq i64 %index.next, %n.vec
  br i1 %i.ld, label %middle.block, label %vector.body, !llvm.loop !7203

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.kw, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.ks, %n.vec
  br i1 %cmp.n, label %._crit_edge.i246, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i242, %middle.block
  %.01418.i243.ph = phi i64 [ 0, %.lr.ph.i242 ], [ %n.vec, %middle.block ]
  %.017.i244.ph = phi i32 [ 0, %.lr.ph.i242 ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i246:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa1190 = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.lg, %scalar.ph ] ; 2 uses
  %.not.i247 = icmp eq i32 %.lcssa1190, 0
  br i1 %.not.i247, label %_ZN3fmt3v126detail6bigintlSEi.exit253, label %bb.an

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i243 = phi i64 [ %i.lj, %scalar.ph ], [ %.01418.i243.ph, %scalar.ph.preheader ] ; 3 uses
  %.017.i244 = phi i32 [ %i.lg, %scalar.ph ], [ %.017.i244.ph, %scalar.ph.preheader ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %.01418.i243 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !141 ; 2 uses
  %i.lg = lshr i32 %i.lf, %15                     ; 2 uses
  %i.lh = shl i32 %i.lf, %10
  %i.li = add i32 %i.lh, %.017.i244
  store i32 %i.li, ptr %i.le, align 4, !tbaa !141
  %i.lj = add nuw nsw i64 %.01418.i243, 1
  %exitcond.not.i245 = icmp eq i64 %.01418.i243, %.0.i.i235
  br i1 %exitcond.not.i245, label %._crit_edge.i246, label %scalar.ph, !llvm.loop !7204

bb.an:                                            ; preds = %._crit_edge.i246
  %i.lk = add nuw i64 %.0.i.i235, 2               ; 2 uses
  %.not561 = icmp samesign ult i64 %i.kj, %i.kr
  br i1 %.not561, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ll = load ptr, ptr %i.b, align 8, !tbaa !577
  invoke void %i.ll(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.lk)
          to label %.noexc252 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc252:                                        ; preds = %bb.ao
  %.pre.i.i250 = load i64, ptr %i.c, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i251 = add i64 %.pre.i.i250, 1
  %.pre = load ptr, ptr %5, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248: ; preds = %.noexc252, %bb.an
  %i.lm = phi ptr [ %i.kq, %bb.an ], [ %.pre, %.noexc252 ]
  %.pre-phi.i.i249 = phi i64 [ %i.lk, %bb.an ], [ %.pre2.i.i251, %.noexc252 ]
  %i.ln = phi i64 [ %i.kj, %bb.an ], [ %.pre.i.i250, %.noexc252 ]
  store i64 %.pre-phi.i.i249, ptr %i.c, align 8, !tbaa !584
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.ln
  store i32 %.lcssa1190, ptr %i.lo, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit253

_ZN3fmt3v126detail6bigintlSEi.exit253:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248, %._crit_edge.i246
  %i.lp = load i32, ptr %4, align 4, !tbaa !141
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.lp)
          to label %bb.ap unwind label %.loopexit.split-lp

bb.ap:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit253
  %i.lq = sub nsw i32 %10, %i.v                   ; 2 uses
  %i.lr = lshr i32 %i.lq, 5
  %i.ls = load i32, ptr %i.j, align 8, !tbaa !583
  %i.lt = add nsw i32 %i.ls, %i.lr
  store i32 %i.lt, ptr %i.j, align 8, !tbaa !583
  %i.lu = and i32 %i.lq, 31                       ; 4 uses
  %i.lv = icmp eq i32 %i.lu, 0
  br i1 %i.lv, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lw = load i64, ptr %i.h, align 8, !tbaa !584 ; 7 uses
  %.not19.i254 = icmp eq i64 %i.lw, 0
  br i1 %.not19.i254, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %bb.aq
  %i.lx = load ptr, ptr %6, align 8, !tbaa !578   ; 3 uses
  %i.ly = sub nuw nsw i32 32, %i.lu               ; 2 uses
  %min.iters.check1202 = icmp ult i64 %i.lw, 8
  br i1 %min.iters.check1202, label %scalar.ph1201.preheader, label %vector.ph1203

vector.ph1203:                                    ; preds = %.lr.ph.i255
  %n.vec1204 = and i64 %i.lw, -8                  ; 3 uses
  %broadcast.splatinsert1205 = insertelement <4 x i32> poison, i32 %i.ly, i64 0
  %broadcast.splat1206 = shufflevector <4 x i32> %broadcast.splatinsert1205, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1207 = insertelement <4 x i32> poison, i32 %i.lu, i64 0
  %broadcast.splat1208 = shufflevector <4 x i32> %broadcast.splatinsert1207, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1203
  %index1210 = phi i64 [ 0, %vector.ph1203 ], [ %index.next1214, %vector.body1209 ] ; 2 uses
  %vector.recur1211 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1203 ], [ %i.mc, %vector.body1209 ]
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %index1210 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16 ; 2 uses
  %wide.load1212 = load <4 x i32>, ptr %i.lz, align 4, !tbaa !141 ; 2 uses
  %wide.load1213 = load <4 x i32>, ptr %i.ma, align 4, !tbaa !141 ; 2 uses
  %i.mb = lshr <4 x i32> %wide.load1212, %broadcast.splat1206 ; 2 uses
  %i.mc = lshr <4 x i32> %wide.load1213, %broadcast.splat1206 ; 3 uses
  %i.md = shufflevector <4 x i32> %vector.recur1211, <4 x i32> %i.mb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.me = shufflevector <4 x i32> %i.mb, <4 x i32> %i.mc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.mf = shl <4 x i32> %wide.load1212, %broadcast.splat1208
  %i.mg = shl <4 x i32> %wide.load1213, %broadcast.splat1208
  %i.mh = add <4 x i32> %i.mf, %i.md
  %i.mi = add <4 x i32> %i.mg, %i.me
  store <4 x i32> %i.mh, ptr %i.lz, align 4, !tbaa !141
  store <4 x i32> %i.mi, ptr %i.ma, align 4, !tbaa !141
  %index.next1214 = add nuw i64 %index1210, 8     ; 2 uses
  %i.mj = icmp eq i64 %index.next1214, %n.vec1204
  br i1 %i.mj, label %middle.block1215, label %vector.body1209, !llvm.loop !7205

middle.block1215:                                 ; preds = %vector.body1209
  %vector.recur.extract1216 = extractelement <4 x i32> %i.mc, i64 3 ; 2 uses
  %cmp.n1217 = icmp eq i64 %i.lw, %n.vec1204
  br i1 %cmp.n1217, label %._crit_edge.i259, label %scalar.ph1201.preheader

scalar.ph1201.preheader:                          ; preds = %.lr.ph.i255, %middle.block1215
  %.01418.i256.ph = phi i64 [ 0, %.lr.ph.i255 ], [ %n.vec1204, %middle.block1215 ]
  %.017.i257.ph = phi i32 [ 0, %.lr.ph.i255 ], [ %vector.recur.extract1216, %middle.block1215 ]
  br label %scalar.ph1201

._crit_edge.i259:                                 ; preds = %scalar.ph1201, %middle.block1215
  %.lcssa1189 = phi i32 [ %vector.recur.extract1216, %middle.block1215 ], [ %i.mm, %scalar.ph1201 ] ; 2 uses
  %.not.i260 = icmp eq i32 %.lcssa1189, 0
  br i1 %.not.i260, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %bb.ar

scalar.ph1201:                                    ; preds = %scalar.ph1201.preheader, %scalar.ph1201
  %.01418.i256 = phi i64 [ %i.mp, %scalar.ph1201 ], [ %.01418.i256.ph, %scalar.ph1201.preheader ] ; 2 uses
  %.017.i257 = phi i32 [ %i.mm, %scalar.ph1201 ], [ %.017.i257.ph, %scalar.ph1201.preheader ]
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %.01418.i256 ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !141 ; 2 uses
  %i.mm = lshr i32 %i.ml, %i.ly                   ; 2 uses
  %i.mn = shl i32 %i.ml, %i.lu
  %i.mo = add i32 %i.mn, %.017.i257
  store i32 %i.mo, ptr %i.mk, align 4, !tbaa !141
  %i.mp = add nuw i64 %.01418.i256, 1             ; 2 uses
  %exitcond.not.i258 = icmp eq i64 %i.mp, %i.lw
  br i1 %exitcond.not.i258, label %._crit_edge.i259, label %scalar.ph1201, !llvm.loop !7206

bb.ar:                                            ; preds = %._crit_edge.i259
  %i.mq = add i64 %i.lw, 1                        ; 3 uses
  %i.mr = load i64, ptr %i.f, align 8, !tbaa !579
  %i.ms = icmp ugt i64 %i.mq, %i.mr
  br i1 %i.ms, label %bb.as, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261

bb.as:                                            ; preds = %bb.ar
  %i.mt = load ptr, ptr %i.g, align 8, !tbaa !577
  invoke void %i.mt(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.mq)
          to label %.noexc265 unwind label %.loopexit.split-lp, !inline_history !7187

.noexc265:                                        ; preds = %bb.as
  %.pre.i.i263 = load i64, ptr %i.h, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i264 = add i64 %.pre.i.i263, 1
  %.pre673 = load ptr, ptr %6, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261: ; preds = %.noexc265, %bb.ar
  %i.mu = phi ptr [ %i.lx, %bb.ar ], [ %.pre673, %.noexc265 ]
  %.pre-phi.i.i262 = phi i64 [ %i.mq, %bb.ar ], [ %.pre2.i.i264, %.noexc265 ]
  %i.mv = phi i64 [ %i.lw, %bb.ar ], [ %.pre.i.i263, %.noexc265 ]
  store i64 %.pre-phi.i.i262, ptr %i.h, align 8, !tbaa !584
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.mv
  store i32 %.lcssa1189, ptr %i.mw, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit266

_ZN3fmt3v126detail6bigintlSEi.exit266:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261, %._crit_edge.i259, %bb.aq, %bb.ap
  %i.mx = load ptr, ptr %7, align 8, !tbaa !578
  store i32 1, ptr %i.mx, align 4, !tbaa !141
  %i.my = load i64, ptr %i.k, align 8, !tbaa !579
  %.not8.i.i270.not = icmp eq i64 %i.my, 0
  br i1 %.not8.i.i270.not, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit266
  %i.mz = load ptr, ptr %i.l, align 8, !tbaa !577
  invoke void %i.mz(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef 1)
          to label %.noexc272 unwind label %.loopexit.split-lp, !inline_history !7188

.noexc272:                                        ; preds = %bb.at
  %.pre.i.i.i.i271 = load i64, ptr %i.k, align 8, !tbaa !579
  %i.na = icmp ne i64 %.pre.i.i.i.i271, 0
  %i.nb = zext i1 %i.na to i64
  br label %bb.au

bb.au:                                            ; preds = %.noexc272, %_ZN3fmt3v126detail6bigintlSEi.exit266
  %i.nc = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit266 ], [ %i.nb, %.noexc272 ]
  store i64 %i.nc, ptr %i.m, align 8, !tbaa !584
  store i32 0, ptr %i.o, align 8, !tbaa !583
  %extract.t812 = trunc i128 %i.kh to i32         ; 2 uses
  br i1 %9, label %bb.av, label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.av:                                            ; preds = %bb.au
  %i.nd = load ptr, ptr %8, align 8, !tbaa !578
  store i32 2, ptr %i.nd, align 4, !tbaa !141
  %i.ne = load i64, ptr %i.p, align 8, !tbaa !579
  %.not8.i.i277.not = icmp eq i64 %i.ne, 0
  br i1 %.not8.i.i277.not, label %bb.aw, label %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit

bb.aw:                                            ; preds = %bb.av
  %i.nf = load ptr, ptr %i.q, align 8, !tbaa !577
  invoke void %i.nf(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef 1)
          to label %.noexc279 unwind label %.loopexit.split-lp, !inline_history !7207

.noexc279:                                        ; preds = %bb.aw
  %.pre.i.i.i.i278 = load i64, ptr %i.p, align 8, !tbaa !579
  %i.ng = icmp ne i64 %.pre.i.i.i.i278, 0
  %i.nh = zext i1 %i.ng to i64
  br label %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit

_ZN3fmt3v126detail6bigintaSIyEEvT_.exit:          ; preds = %bb.av, %.noexc279
  %i.ni = phi i64 [ 1, %bb.av ], [ %i.nh, %.noexc279 ]
  store i64 %i.ni, ptr %i.r, align 8, !tbaa !584
  store i32 0, ptr %i.t, align 8, !tbaa !583
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

_ZN3fmt3v126detail6bigintlSEi.exit168:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228, %.lr.ph.i222, %bb.af, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163, %._crit_edge.i161, %bb.r, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit, %bb.au
  %.off0 = phi i32 [ %extract.t812, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %extract.t814, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163 ], [ %extract.t812, %bb.au ], [ %extract.t814, %bb.r ], [ %extract.t814, %._crit_edge.i161 ], [ %extract.t816, %bb.af ], [ %extract.t816, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228 ], [ %extract.t816, %.lr.ph.i222 ]
  %.2 = phi ptr [ %8, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %.079, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163 ], [ null, %bb.au ], [ %.079, %bb.r ], [ %.079, %._crit_edge.i161 ], [ %.1, %bb.af ], [ %.1, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228 ], [ %.1, %.lr.ph.i222 ] ; 16 uses
  %i.nj = and i32 %.off0, 1                       ; 2 uses
  %i.nk = xor i32 %i.nj, 1                        ; 2 uses
  %.not97.a = icmp eq ptr %.2, null               ; 7 uses
  %spec.store.select = select i1 %.not97.a, ptr %7, ptr %.2 ; 2 uses
  %i.nl = icmp slt i32 %2, 0                      ; 2 uses
  %i.nm = and i32 %1, 2
  %.not98.a = icmp eq i32 %i.nm, 0
  br i1 %.not98.a, label %bb.bx, label %bb.ax

bb.ax:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit168
  %i.nn = load i64, ptr %i.c, align 8, !tbaa !584 ; 8 uses
  %i.no = trunc i64 %i.nn to i32
  %i.np = load i32, ptr %i.e, align 8, !tbaa !583 ; 3 uses
  %i.nq = add nsw i32 %i.np, %i.no                ; 2 uses
  %.2.sroa.gep = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %spec.store.select.sroa.sel = select i1 %.not97.a, ptr %i.m, ptr %.2.sroa.gep
  %i.nr = load i64, ptr %spec.store.select.sroa.sel, align 8, !tbaa !584
  %i.ns = trunc i64 %i.nr to i32
  %.2.sroa.gep497 = getelementptr inbounds nuw i8, ptr %.2, i64 168
  %spec.store.select.sroa.sel498 = select i1 %.not97.a, ptr %i.o, ptr %.2.sroa.gep497
  %i.nt = load i32, ptr %spec.store.select.sroa.sel498, align 8, !tbaa !583 ; 3 uses
  %i.nu = add nsw i32 %i.nt, %i.ns                ; 2 uses
  %i.nv = call noundef i32 @llvm.smax.i32(i32 %i.nq, i32 %i.nu) ; 2 uses
  %i.nw = load i64, ptr %i.h, align 8, !tbaa !584 ; 2 uses
  %i.nx = trunc i64 %i.nw to i32
  %i.ny = load i32, ptr %i.j, align 8, !tbaa !583 ; 3 uses
  %i.nz = add nsw i32 %i.ny, %i.nx                ; 3 uses
  %i.oa = add nsw i32 %i.nv, 1
  %i.ob = icmp slt i32 %i.oa, %i.nz
  br i1 %i.ob, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.oc = icmp sgt i32 %i.nv, %i.nz
  br i1 %i.oc, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.od = call noundef i32 @llvm.smin.i32(i32 %i.np, i32 %i.nt)
  %i.oe = call noundef i32 @llvm.smin.i32(i32 %i.od, i32 %i.ny) ; 2 uses
  %.not.not.not53.i = icmp sgt i32 %i.nz, %i.oe
  br i1 %.not.not.not53.i, label %.lr.ph.i280, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit

.lr.ph.i280:                                      ; preds = %bb.az
  %i.of = load ptr, ptr %5, align 8
  %i.og = load ptr, ptr %spec.store.select, align 8
  %i.oh = load ptr, ptr %6, align 8
  %i.oi = sext i32 %i.ny to i64                   ; 3 uses
  %sext.i = shl i64 %i.nw, 32
  %i.oj = ashr exact i64 %sext.i, 32
  %i.ok = add nsw i64 %i.oj, %i.oi
  %i.ol = sext i32 %i.nu to i64
  %i.om = sext i32 %i.nt to i64                   ; 2 uses
  %i.on = sext i32 %i.nq to i64
  %i.oo = sext i32 %i.np to i64                   ; 2 uses
  %i.op = sext i32 %i.oe to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bf, %.lr.ph.i280
  %indvars.iv.i = phi i64 [ %i.ok, %.lr.ph.i280 ], [ %indvars.iv.next.i, %bb.bf ] ; 6 uses
  %.03254.i = phi i64 [ 0, %.lr.ph.i280 ], [ %i.pm, %bb.bf ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 5 uses
  %.not.i.i281 = icmp sgt i64 %indvars.iv.i, %i.oo
  %i.oq = icmp sle i64 %indvars.iv.i, %i.on
  %or.cond.i = and i1 %.not.i.i281, %i.oq
  br i1 %or.cond.i, label %bb.bb, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.or = sub nsw i64 %indvars.iv.next.i, %i.oo
  %i.os = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !141
  %i.ou = zext i32 %i.ot to i64
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i:    ; preds = %bb.bb, %bb.ba
  %i.ov = phi i64 [ %i.ou, %bb.bb ], [ 0, %bb.ba ]
  %.not.i43.i = icmp sgt i64 %indvars.iv.i, %i.om
  %i.ow = icmp sle i64 %indvars.iv.i, %i.ol
  %or.cond50.i = and i1 %.not.i43.i, %i.ow
  br i1 %or.cond50.i, label %bb.bc, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i

bb.bc:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i
  %i.ox = sub nsw i64 %indvars.iv.next.i, %i.om
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.og, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !141
  %i.pa = zext i32 %i.oz to i64
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i:  ; preds = %bb.bc, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i
  %i.pb = phi i64 [ %i.pa, %bb.bc ], [ 0, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i ]
  %i.pc = add nuw nsw i64 %i.pb, %i.ov            ; 3 uses
  %.not.i45.i = icmp sgt i64 %indvars.iv.i, %i.oi
  br i1 %.not.i45.i, label %bb.bd, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i

bb.bd:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i
  %i.pd = sub nsw i64 %indvars.iv.next.i, %i.oi
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.oh, i64 %i.pd
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !141
  %i.pg = zext i32 %i.pf to i64
  %i.ph = or disjoint i64 %.03254.i, %i.pg
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i:  ; preds = %bb.bd, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i
  %i.pi = phi i64 [ %i.ph, %bb.bd ], [ %.03254.i, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i ] ; 3 uses
  %i.pj = icmp ugt i64 %i.pc, %i.pi
  br i1 %i.pj, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.be

bb.be:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i
  %i.pk = sub nuw nsw i64 %i.pi, %i.pc            ; 2 uses
  %i.pl = icmp ugt i64 %i.pk, 1
  br i1 %i.pl, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pm = shl nuw nsw i64 %i.pk, 32
  %.not.not.not.i = icmp sgt i64 %indvars.iv.next.i, %i.op
  br i1 %.not.not.not.i, label %bb.ba, label %.thread.loopexit.i, !llvm.loop !7208

.thread.loopexit.i:                               ; preds = %bb.bf
  %i.pn = icmp ne i64 %i.pi, %i.pc
  %i.po = sext i1 %i.pn to i32
  br label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit: ; preds = %bb.be, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i, %.thread.loopexit.i, %bb.az, %bb.ay, %bb.ax
  %.4.i = phi i32 [ 1, %bb.ay ], [ -1, %bb.ax ], [ 0, %bb.az ], [ %i.po, %.thread.loopexit.i ], [ 1, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i ], [ -1, %bb.be ]
  %i.pp = add nsw i32 %.4.i, %i.nk
  %i.pq = icmp slt i32 %i.pp, 1
  br i1 %i.pq, label %bb.bg, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318

bb.bg:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.pr = load i32, ptr %4, align 4, !tbaa !141
  %i.ps = add nsw i32 %i.pr, -1
  store i32 %i.ps, ptr %4, align 4, !tbaa !141
  %.not14.i.i = icmp eq i64 %i.nn, 0
  br i1 %.not14.i.i, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i282

.lr.ph.i.i282:                                    ; preds = %bb.bg
  %i.pt = load ptr, ptr %5, align 8, !tbaa !578   ; 4 uses
  %i.pu = icmp eq i64 %i.nn, 1
  br i1 %i.pu, label %.epil.preheader, label %.lr.ph.i.i282.new

.lr.ph.i.i282.new:                                ; preds = %.lr.ph.i.i282
  %unroll_iter = and i64 %i.nn, -2
  br label %bb.bh

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.bh
  %16 = trunc i64 %i.nn to i1
  br i1 %16, label %.epil.preheader, label %._crit_edge.i.i

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i282
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i282 ], [ %i.qs, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i282 ], [ %i.qr, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod1381 = trunc i64 %i.nn to i1
  call void @llvm.assume(i1 %lcmp.mod1381)
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %.013.i.i.epil.init ; 2 uses
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !141
  %i.px = zext i32 %i.pw to i64
  %i.py = mul nuw nsw i64 %i.px, 10
  %i.pz = add nuw nsw i64 %i.py, %.01112.i.i.epil.init ; 2 uses
  %i.qa = trunc i64 %i.pz to i32
  store i32 %i.qa, ptr %i.pv, align 4, !tbaa !141
  %i.qb = lshr i64 %i.pz, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa1357 = phi i64 [ %i.qr, %._crit_edge.i.i.unr-lcssa ], [ %i.qb, %.epil.preheader ] ; 2 uses
  %i.qc = trunc nuw nsw i64 %.lcssa1357 to i32
  %.not.i.i284 = icmp eq i64 %.lcssa1357, 0
  br i1 %.not.i.i284, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %bb.bi

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i.i282.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %i.qs, %bb.bh ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %i.qr, %bb.bh ]
  %niter = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %niter.next.1, %bb.bh ]
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %.013.i.i ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !141
  %i.qf = zext i32 %i.qe to i64
  %i.qg = mul nuw nsw i64 %i.qf, 10
  %i.qh = add nuw nsw i64 %i.qg, %.01112.i.i      ; 2 uses
  %i.qi = trunc i64 %i.qh to i32
  store i32 %i.qi, ptr %i.qd, align 4, !tbaa !141
  %i.qj = lshr i64 %i.qh, 32
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %.013.i.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 4 ; 2 uses
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !141
  %i.qn = zext i32 %i.qm to i64
  %i.qo = mul nuw nsw i64 %i.qn, 10
  %i.qp = add nuw nsw i64 %i.qo, %i.qj            ; 2 uses
  %i.qq = trunc i64 %i.qp to i32
  store i32 %i.qq, ptr %i.ql, align 4, !tbaa !141
  %i.qr = lshr i64 %i.qp, 32                      ; 3 uses
  %i.qs = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.bh, !llvm.loop !87

bb.bi:                                            ; preds = %._crit_edge.i.i
  %i.qt = add i64 %i.nn, 1                        ; 3 uses
  %i.qu = load i64, ptr %i.a, align 8, !tbaa !579
  %i.qv = icmp ugt i64 %i.qt, %i.qu
  br i1 %i.qv, label %bb.bj, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i285

bb.bj:                                            ; preds = %bb.bi
  %i.qw = load ptr, ptr %i.b, align 8, !tbaa !577
  invoke void %i.qw(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.qt)
          to label %.noexc290 unwind label %bb.bs, !inline_history !7209

.noexc290:                                        ; preds = %bb.bj
  %.pre.i.i.i287 = load i64, ptr %i.c, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i.i288 = add i64 %.pre.i.i.i287, 1
  %.pre.i289 = load ptr, ptr %5, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i285

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i285: ; preds = %.noexc290, %bb.bi
  %i.qx = phi ptr [ %i.pt, %bb.bi ], [ %.pre.i289, %.noexc290 ]
  %.pre-phi.i.i.i286 = phi i64 [ %i.qt, %bb.bi ], [ %.pre2.i.i.i288, %.noexc290 ]
  %i.qy = phi i64 [ %i.nn, %bb.bi ], [ %.pre.i.i.i287, %.noexc290 ]
  store i64 %.pre-phi.i.i.i286, ptr %i.c, align 8, !tbaa !584
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.qy
  store i32 %i.qc, ptr %i.qz, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i285, %._crit_edge.i.i, %bb.bg
  br i1 %i.nl, label %bb.bk, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318

bb.bk:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %i.ra = load i64, ptr %i.m, align 8, !tbaa !584 ; 7 uses
  %.not14.i.i291 = icmp eq i64 %i.ra, 0
  br i1 %.not14.i.i291, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304, label %.lr.ph.i.i292

.lr.ph.i.i292:                                    ; preds = %bb.bk
  %i.rb = load ptr, ptr %7, align 8, !tbaa !578   ; 4 uses
  %i.rc = icmp eq i64 %i.ra, 1
  br i1 %i.rc, label %.epil.preheader1382, label %.lr.ph.i.i292.new

.lr.ph.i.i292.new:                                ; preds = %.lr.ph.i.i292
  %unroll_iter1387 = and i64 %i.ra, -2
  br label %bb.bl

._crit_edge.i.i296.unr-lcssa:                     ; preds = %bb.bl
  %17 = trunc i64 %i.ra to i1
  br i1 %17, label %.epil.preheader1382, label %._crit_edge.i.i296

.epil.preheader1382:                              ; preds = %._crit_edge.i.i296.unr-lcssa, %.lr.ph.i.i292
  %.013.i.i293.epil.init = phi i64 [ 0, %.lr.ph.i.i292 ], [ %i.sa, %._crit_edge.i.i296.unr-lcssa ]
  %.01112.i.i294.epil.init = phi i64 [ 0, %.lr.ph.i.i292 ], [ %i.rz, %._crit_edge.i.i296.unr-lcssa ]
  %lcmp.mod1386 = trunc i64 %i.ra to i1
  call void @llvm.assume(i1 %lcmp.mod1386)
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %.013.i.i293.epil.init ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !141
  %i.rf = zext i32 %i.re to i64
  %i.rg = mul nuw nsw i64 %i.rf, 10
  %i.rh = add nuw nsw i64 %i.rg, %.01112.i.i294.epil.init ; 2 uses
  %i.ri = trunc i64 %i.rh to i32
  store i32 %i.ri, ptr %i.rd, align 4, !tbaa !141
  %i.rj = lshr i64 %i.rh, 32
  br label %._crit_edge.i.i296

._crit_edge.i.i296:                               ; preds = %._crit_edge.i.i296.unr-lcssa, %.epil.preheader1382
  %.lcssa1356 = phi i64 [ %i.rz, %._crit_edge.i.i296.unr-lcssa ], [ %i.rj, %.epil.preheader1382 ] ; 2 uses
  %i.rk = trunc nuw nsw i64 %.lcssa1356 to i32
  %.not.i.i297 = icmp eq i64 %.lcssa1356, 0
  br i1 %.not.i.i297, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304, label %bb.bm

bb.bl:                                            ; preds = %bb.bl, %.lr.ph.i.i292.new
  %.013.i.i293 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %i.sa, %bb.bl ] ; 3 uses
  %.01112.i.i294 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %i.rz, %bb.bl ]
  %niter1388 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %niter1388.next.1, %bb.bl ]
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %.013.i.i293 ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !141
  %i.rn = zext i32 %i.rm to i64
  %i.ro = mul nuw nsw i64 %i.rn, 10
  %i.rp = add nuw nsw i64 %i.ro, %.01112.i.i294   ; 2 uses
  %i.rq = trunc i64 %i.rp to i32
  store i32 %i.rq, ptr %i.rl, align 4, !tbaa !141
  %i.rr = lshr i64 %i.rp, 32
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %.013.i.i293
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 4 ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !141
  %i.rv = zext i32 %i.ru to i64
  %i.rw = mul nuw nsw i64 %i.rv, 10
  %i.rx = add nuw nsw i64 %i.rw, %i.rr            ; 2 uses
  %i.ry = trunc i64 %i.rx to i32
  store i32 %i.ry, ptr %i.rt, align 4, !tbaa !141
  %i.rz = lshr i64 %i.rx, 32                      ; 3 uses
  %i.sa = add nuw i64 %.013.i.i293, 2             ; 2 uses
  %niter1388.next.1 = add nuw i64 %niter1388, 2   ; 2 uses
  %niter1388.ncmp.1 = icmp eq i64 %niter1388.next.1, %unroll_iter1387
  br i1 %niter1388.ncmp.1, label %._crit_edge.i.i296.unr-lcssa, label %bb.bl, !llvm.loop !87

bb.bm:                                            ; preds = %._crit_edge.i.i296
  %i.sb = add i64 %i.ra, 1                        ; 3 uses
  %i.sc = load i64, ptr %i.k, align 8, !tbaa !579
  %i.sd = icmp ugt i64 %i.sb, %i.sc
  br i1 %i.sd, label %bb.bn, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i298

bb.bn:                                            ; preds = %bb.bm
  %i.se = load ptr, ptr %i.l, align 8, !tbaa !577
  invoke void %i.se(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.sb)
          to label %.noexc303 unwind label %bb.bs, !inline_history !7209

.noexc303:                                        ; preds = %bb.bn
  %.pre.i.i.i300 = load i64, ptr %i.m, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i.i301 = add i64 %.pre.i.i.i300, 1
  %.pre.i302 = load ptr, ptr %7, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i298

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i298: ; preds = %.noexc303, %bb.bm
  %i.sf = phi ptr [ %i.rb, %bb.bm ], [ %.pre.i302, %.noexc303 ]
  %.pre-phi.i.i.i299 = phi i64 [ %i.sb, %bb.bm ], [ %.pre2.i.i.i301, %.noexc303 ]
  %i.sg = phi i64 [ %i.ra, %bb.bm ], [ %.pre.i.i.i300, %.noexc303 ]
  store i64 %.pre-phi.i.i.i299, ptr %i.m, align 8, !tbaa !584
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.sg
  store i32 %i.rk, ptr %i.sh, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i298, %._crit_edge.i.i296, %bb.bk
  br i1 %.not97.a, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318, label %bb.bo

bb.bo:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304
  %i.si = load i64, ptr %.2.sroa.gep, align 8, !tbaa !584 ; 7 uses
  %.not14.i.i305 = icmp eq i64 %i.si, 0
  br i1 %.not14.i.i305, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318, label %.lr.ph.i.i306

.lr.ph.i.i306:                                    ; preds = %bb.bo
  %i.sj = load ptr, ptr %.2, align 8, !tbaa !578  ; 4 uses
  %i.sk = icmp eq i64 %i.si, 1
  br i1 %i.sk, label %.epil.preheader1389, label %.lr.ph.i.i306.new

.lr.ph.i.i306.new:                                ; preds = %.lr.ph.i.i306
  %unroll_iter1394 = and i64 %i.si, -2
  br label %bb.bp

._crit_edge.i.i310.unr-lcssa:                     ; preds = %bb.bp
  %18 = trunc i64 %i.si to i1
  br i1 %18, label %.epil.preheader1389, label %._crit_edge.i.i310

.epil.preheader1389:                              ; preds = %._crit_edge.i.i310.unr-lcssa, %.lr.ph.i.i306
  %.013.i.i307.epil.init = phi i64 [ 0, %.lr.ph.i.i306 ], [ %i.ti, %._crit_edge.i.i310.unr-lcssa ]
  %.01112.i.i308.epil.init = phi i64 [ 0, %.lr.ph.i.i306 ], [ %i.th, %._crit_edge.i.i310.unr-lcssa ]
  %lcmp.mod1393 = trunc i64 %i.si to i1
  call void @llvm.assume(i1 %lcmp.mod1393)
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %.013.i.i307.epil.init ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !141
  %i.sn = zext i32 %i.sm to i64
  %i.so = mul nuw nsw i64 %i.sn, 10
  %i.sp = add nuw nsw i64 %i.so, %.01112.i.i308.epil.init ; 2 uses
  %i.sq = trunc i64 %i.sp to i32
  store i32 %i.sq, ptr %i.sl, align 4, !tbaa !141
  %i.sr = lshr i64 %i.sp, 32
  br label %._crit_edge.i.i310

._crit_edge.i.i310:                               ; preds = %._crit_edge.i.i310.unr-lcssa, %.epil.preheader1389
  %.lcssa1355 = phi i64 [ %i.th, %._crit_edge.i.i310.unr-lcssa ], [ %i.sr, %.epil.preheader1389 ] ; 2 uses
  %i.ss = trunc nuw nsw i64 %.lcssa1355 to i32
  %.not.i.i311 = icmp eq i64 %.lcssa1355, 0
  br i1 %.not.i.i311, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318, label %bb.bq

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.i.i306.new
  %.013.i.i307 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %i.ti, %bb.bp ] ; 3 uses
  %.01112.i.i308 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %i.th, %bb.bp ]
  %niter1395 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %niter1395.next.1, %bb.bp ]
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %.013.i.i307 ; 2 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !141
  %i.sv = zext i32 %i.su to i64
  %i.sw = mul nuw nsw i64 %i.sv, 10
  %i.sx = add nuw nsw i64 %i.sw, %.01112.i.i308   ; 2 uses
  %i.sy = trunc i64 %i.sx to i32
  store i32 %i.sy, ptr %i.st, align 4, !tbaa !141
  %i.sz = lshr i64 %i.sx, 32
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %.013.i.i307
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 4 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !141
  %i.td = zext i32 %i.tc to i64
  %i.te = mul nuw nsw i64 %i.td, 10
  %i.tf = add nuw nsw i64 %i.te, %i.sz            ; 2 uses
  %i.tg = trunc i64 %i.tf to i32
  store i32 %i.tg, ptr %i.tb, align 4, !tbaa !141
  %i.th = lshr i64 %i.tf, 32                      ; 3 uses
  %i.ti = add nuw i64 %.013.i.i307, 2             ; 2 uses
  %niter1395.next.1 = add nuw i64 %niter1395, 2   ; 2 uses
  %niter1395.ncmp.1 = icmp eq i64 %niter1395.next.1, %unroll_iter1394
  br i1 %niter1395.ncmp.1, label %._crit_edge.i.i310.unr-lcssa, label %bb.bp, !llvm.loop !87

bb.bq:                                            ; preds = %._crit_edge.i.i310
  %i.tj = add i64 %i.si, 1                        ; 3 uses
  %.2.sroa.gep503 = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.tk = load i64, ptr %.2.sroa.gep503, align 8, !tbaa !579
  %i.tl = icmp ugt i64 %i.tj, %i.tk
  br i1 %i.tl, label %bb.br, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i312

bb.br:                                            ; preds = %bb.bq
  %.2.sroa.gep506 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.tm = load ptr, ptr %.2.sroa.gep506, align 8, !tbaa !577
  invoke void %i.tm(ptr noundef nonnull align 8 dereferenceable(172) %.2, i64 noundef %i.tj)
          to label %.noexc317 unwind label %bb.bs, !inline_history !7209

.noexc317:                                        ; preds = %bb.br
  %.pre.i.i.i314 = load i64, ptr %.2.sroa.gep, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i.i315 = add i64 %.pre.i.i.i314, 1
  %.pre.i316 = load ptr, ptr %.2, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i312

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i312: ; preds = %.noexc317, %bb.bq
  %i.tn = phi ptr [ %i.sj, %bb.bq ], [ %.pre.i316, %.noexc317 ]
  %.pre-phi.i.i.i313 = phi i64 [ %i.tj, %bb.bq ], [ %.pre2.i.i.i315, %.noexc317 ]
  %i.to = phi i64 [ %i.si, %bb.bq ], [ %.pre.i.i.i314, %.noexc317 ]
  store i64 %.pre-phi.i.i.i313, ptr %.2.sroa.gep, align 8, !tbaa !584
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.to
  store i32 %i.ss, ptr %i.tp, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318

bb.bs:                                            ; preds = %bb.ea, %bb.bv, %bb.br, %bb.bn, %bb.bj
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i312, %._crit_edge.i.i310, %bb.bo, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304, %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.tr = and i32 %1, 4
  %.not99 = icmp eq i32 %i.tr, 0
  br i1 %.not99, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318
  %i.ts = load i32, ptr %4, align 4, !tbaa !141   ; 3 uses
  %i.tt = icmp sgt i32 %i.ts, -1
  %i.tu = sub nsw i32 2147483646, %i.ts
  %i.tv = icmp sgt i32 %2, %i.tu
  %or.cond.i320 = select i1 %i.tt, i1 %i.tv, i1 false
  br i1 %or.cond.i320, label %bb.bu, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.bu:                                            ; preds = %bb.bt
  %i.tw = call ptr @__cxa_allocate_exception(i64 16) #36 ; 4 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.tw, ptr noundef nonnull @.str.813)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1212format_errorE, i64 16), ptr %i.tw, align 8, !tbaa !105
  invoke void @__cxa_throw(ptr nonnull %i.tw, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #39
          to label %.noexc321 unwind label %bb.bs

.noexc321:                                        ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.tx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.tw) #36
  br label %.body

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.bt
  %i.ty = add i32 %2, 1
  %i.tz = add i32 %i.ty, %i.ts
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318, %_ZN3fmt3v126detail6bigintlSEi.exit168
  %.0538 = phi i32 [ %2, %_ZN3fmt3v126detail6bigintlSEi.exit168 ], [ %2, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318 ], [ %i.tz, %_ZN3fmt3v126detail16adjust_precisionERii.exit ] ; 5 uses
  br i1 %i.nl, label %bb.by, label %bb.dk

bb.by:                                            ; preds = %bb.bx
  %i.ua = load ptr, ptr %3, align 8, !tbaa !203   ; 3 uses
  %.2.sroa.gep509 = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %spec.store.select.sroa.sel510 = select i1 %.not97.a, ptr %i.m, ptr %.2.sroa.gep509
  %.2.sroa.gep512 = getelementptr inbounds nuw i8, ptr %.2, i64 168
  %spec.store.select.sroa.sel513 = select i1 %.not97.a, ptr %i.o, ptr %.2.sroa.gep512
  %i.ub = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ud = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.2.sroa.gep518 = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %.2.sroa.gep521 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.by
  %indvars.iv669 = phi i64 [ 0, %bb.by ], [ %indvars.iv.next670, %.backedge.backedge ] ; 7 uses
  %i.ue = invoke noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.bz unwind label %19        ; 3 uses

bb.bz:                                            ; preds = %.backedge
  %i.uf = load i64, ptr %i.c, align 8, !tbaa !584 ; 2 uses
  %i.ug = trunc i64 %i.uf to i32                  ; 2 uses
  %i.uh = load i32, ptr %i.e, align 8, !tbaa !583 ; 3 uses
  %i.ui = add nsw i32 %i.uh, %i.ug                ; 4 uses
  %i.uj = load i64, ptr %i.m, align 8, !tbaa !584 ; 2 uses
  %i.uk = trunc i64 %i.uj to i32                  ; 2 uses
  %i.ul = load i32, ptr %i.o, align 8, !tbaa !583
  %i.um = add nsw i32 %i.ul, %i.uk                ; 2 uses
  %.not.i322 = icmp eq i32 %i.ui, %i.um
  br i1 %.not.i322, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.un = icmp sgt i32 %i.ui, %i.um
  %i.uo = select i1 %i.un, i32 1, i32 -1
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.cb:                                            ; preds = %bb.bz
  %i.up = sub nsw i32 %i.ug, %i.uk
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.up, i32 0)
  %i.uq = load ptr, ptr %5, align 8
  %i.ur = load ptr, ptr %7, align 8
  %sext.i323 = shl i64 %i.uf, 32
  %i.us = ashr exact i64 %sext.i323, 32           ; 3 uses
  %i.ut = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.uj, 32
  %i.uu = ashr exact i64 %sext55.i, 32            ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.us, i64 %i.ut) ; 2 uses
  %.not35.not.i1192 = icmp sgt i64 %i.us, %i.ut
  br i1 %.not35.not.i1192, label %.lr.ph1196, label %._crit_edge1197

bb.cc:                                            ; preds = %.lr.ph1196
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i325, %i.ut
  br i1 %.not35.not.i, label %.lr.ph1196, label %._crit_edge1197, !llvm.loop !88

.lr.ph1196:                                       ; preds = %bb.cb, %bb.cc
  %indvars.iv.i3241194 = phi i64 [ %indvars.iv.next.i325, %bb.cc ], [ %i.us, %bb.cb ]
  %indvars.iv45.i1193 = phi i64 [ %indvars.iv.next46.i, %bb.cc ], [ %i.uu, %bb.cb ]
  %indvars.iv.next.i325 = add nsw i64 %indvars.iv.i3241194, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i1193, -1 ; 3 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %indvars.iv.next.i325
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !141 ; 2 uses
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %indvars.iv.next46.i
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !141 ; 2 uses
  %.not37.i = icmp eq i32 %i.uw, %i.uy
  br i1 %.not37.i, label %bb.cc, label %.loopexit.i, !llvm.loop !88

._crit_edge1197:                                  ; preds = %bb.cc, %bb.cb
  %indvars.iv45.i.lcssa = phi i64 [ %i.uu, %bb.cb ], [ %indvars.iv.next46.i, %bb.cc ] ; 2 uses
  %.not36.i = icmp eq i64 %smin, %indvars.iv45.i.lcssa
  br i1 %.not36.i, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge1197
  %i.uz = icmp sgt i64 %smin, %indvars.iv45.i.lcssa
  %i.va = select i1 %i.uz, i32 1, i32 -1
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

.loopexit.i:                                      ; preds = %.lr.ph1196
  %i.vb = icmp ugt i32 %i.uw, %i.uy
  %i.vc = select i1 %i.vb, i32 1, i32 -1
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit: ; preds = %bb.ca, %._crit_edge1197, %bb.cd, %.loopexit.i
  %.3.i = phi i32 [ %i.uo, %bb.ca ], [ 0, %._crit_edge1197 ], [ %i.va, %bb.cd ], [ %i.vc, %.loopexit.i ]
  %i.vd = icmp sge i32 %.3.i, %i.nk               ; 3 uses
  %i.ve = load i64, ptr %spec.store.select.sroa.sel510, align 8, !tbaa !584
  %i.vf = trunc i64 %i.ve to i32
  %i.vg = load i32, ptr %spec.store.select.sroa.sel513, align 8, !tbaa !583 ; 3 uses
  %i.vh = add nsw i32 %i.vg, %i.vf                ; 2 uses
  %i.vi = call noundef i32 @llvm.smax.i32(i32 %i.ui, i32 %i.vh) ; 2 uses
  %i.vj = load i64, ptr %i.h, align 8, !tbaa !584 ; 2 uses
  %i.vk = trunc i64 %i.vj to i32
  %i.vl = load i32, ptr %i.j, align 8, !tbaa !583 ; 3 uses
  %i.vm = add nsw i32 %i.vl, %i.vk                ; 3 uses
  %i.vn = add nsw i32 %i.vi, 1
  %i.vo = icmp slt i32 %i.vn, %i.vm
  br i1 %i.vo, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit343, label %bb.ce

bb.ce:                                            ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit
  %i.vp = icmp sgt i32 %i.vi, %i.vm
  br i1 %i.vp, label %.thread831, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.vq = call noundef i32 @llvm.smin.i32(i32 %i.uh, i32 %i.vg)
  %i.vr = call noundef i32 @llvm.smin.i32(i32 %i.vq, i32 %i.vl) ; 2 uses
  %.not.not.not53.i326 = icmp sgt i32 %i.vm, %i.vr
  br i1 %.not.not.not53.i326, label %.lr.ph.i328, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit343

.lr.ph.i328:                                      ; preds = %bb.cf
  %i.vs = load ptr, ptr %5, align 8
  %i.vt = load ptr, ptr %spec.store.select, align 8
  %i.vu = load ptr, ptr %6, align 8
  %i.vv = sext i32 %i.vl to i64                   ; 3 uses
  %sext.i329 = shl i64 %i.vj, 32
  %i.vw = ashr exact i64 %sext.i329, 32
  %i.vx = add nsw i64 %i.vw, %i.vv
  %i.vy = sext i32 %i.vh to i64
  %i.vz = sext i32 %i.vg to i64                   ; 2 uses
  %i.wa = sext i32 %i.ui to i64
  %i.wb = sext i32 %i.uh to i64                   ; 2 uses
  %i.wc = sext i32 %i.vr to i64
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cl, %.lr.ph.i328
  %indvars.iv.i330 = phi i64 [ %i.vx, %.lr.ph.i328 ], [ %indvars.iv.next.i332, %bb.cl ] ; 6 uses
  %.03254.i331 = phi i64 [ 0, %.lr.ph.i328 ], [ %i.wz, %bb.cl ] ; 2 uses
  %indvars.iv.next.i332 = add nsw i64 %indvars.iv.i330, -1 ; 5 uses
  %.not.i.i333 = icmp sgt i64 %indvars.iv.i330, %i.wb
  %i.wd = icmp sle i64 %indvars.iv.i330, %i.wa
  %or.cond.i334 = and i1 %.not.i.i333, %i.wd
  br i1 %or.cond.i334, label %bb.ch, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i335

bb.ch:                                            ; preds = %bb.cg
  %i.we = sub nsw i64 %indvars.iv.next.i332, %i.wb
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.vs, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !141
  %i.wh = zext i32 %i.wg to i64
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i335

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i335: ; preds = %bb.ch, %bb.cg
  %i.wi = phi i64 [ %i.wh, %bb.ch ], [ 0, %bb.cg ]
  %.not.i43.i336 = icmp sgt i64 %indvars.iv.i330, %i.vz
  %i.wj = icmp sle i64 %indvars.iv.i330, %i.vy
  %or.cond50.i337 = and i1 %.not.i43.i336, %i.wj
  br i1 %or.cond50.i337, label %bb.ci, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i338

bb.ci:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i335
  %i.wk = sub nsw i64 %indvars.iv.next.i332, %i.vz
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.vt, i64 %i.wk
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !141
  %i.wn = zext i32 %i.wm to i64
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i338

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i338: ; preds = %bb.ci, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i335
  %i.wo = phi i64 [ %i.wn, %bb.ci ], [ 0, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i335 ]
  %i.wp = add nuw nsw i64 %i.wo, %i.wi            ; 3 uses
  %.not.i45.i339 = icmp sgt i64 %indvars.iv.i330, %i.vv
  br i1 %.not.i45.i339, label %bb.cj, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i340

bb.cj:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i338
  %i.wq = sub nsw i64 %indvars.iv.next.i332, %i.vv
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.vu, i64 %i.wq
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !141
  %i.wt = zext i32 %i.ws to i64
  %i.wu = or disjoint i64 %.03254.i331, %i.wt
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i340

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i340: ; preds = %bb.cj, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i338
  %i.wv = phi i64 [ %i.wu, %bb.cj ], [ %.03254.i331, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i338 ] ; 3 uses
  %i.ww = icmp ugt i64 %i.wp, %i.wv
  br i1 %i.ww, label %.thread831, label %bb.ck

bb.ck:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i340
  %i.wx = sub nuw nsw i64 %i.wv, %i.wp            ; 2 uses
  %i.wy = icmp ugt i64 %i.wx, 1
  br i1 %i.wy, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit343, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.wz = shl nuw nsw i64 %i.wx, 32
  %.not.not.not.i341 = icmp sgt i64 %indvars.iv.next.i332, %i.wc
  br i1 %.not.not.not.i341, label %bb.cg, label %.thread.loopexit.i342, !llvm.loop !7208

.thread.loopexit.i342:                            ; preds = %bb.cl
  %i.xa = icmp ne i64 %i.wv, %i.wp
  %i.xb = sext i1 %i.xa to i32
  br label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit343

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit343: ; preds = %bb.ck, %.thread.loopexit.i342, %bb.cf, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit
  %.4.i327 = phi i32 [ %i.xb, %.thread.loopexit.i342 ], [ -1, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit ], [ 0, %bb.cf ], [ -1, %bb.ck ]
  %i.xc = icmp slt i32 %.4.i327, %i.nj            ; 2 uses
  %i.xd = trunc i32 %i.ue to i8                   ; 3 uses
  %i.xe = add i8 %i.xd, 48
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ua, i64 %indvars.iv669
  store i8 %i.xe, ptr %i.xf, align 1, !tbaa !136
  %or.cond.not = select i1 %i.vd, i1 %i.xc, i1 false
  br i1 %or.cond.not, label %bb.cz, label %bb.cm

bb.cm:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit343
  br i1 %i.vd, label %.thread543.sink.split, label %bb.cp

.thread831:                                       ; preds = %bb.ce, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i340
  %i.xg = trunc i32 %i.ue to i8                   ; 3 uses
  %i.xh = add i8 %i.xg, 48
  %indvars.iv.next670825 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.ua, i64 %indvars.iv669
  store i8 %i.xh, ptr %i.xi, align 1, !tbaa !136
  br i1 %i.vd, label %.thread543.sink.split, label %.thread840

19:                                               ; preds = %.backedge
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cn:                                            ; preds = %bb.dc, %bb.df, %bb.dj
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.co:                                            ; preds = %bb.cy
  %i.xk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cp:                                            ; preds = %bb.cm
  br i1 %i.xc, label %.thread543, label %.thread840

.thread840:                                       ; preds = %.thread831, %bb.cp
  %indvars.iv.next670828838843 = phi i64 [ %indvars.iv.next670, %bb.cp ], [ %indvars.iv.next670825, %.thread831 ] ; 6 uses
  %i.xl = phi i8 [ %i.xd, %bb.cp ], [ %i.xg, %.thread831 ] ; 3 uses
  %i.xm = load i64, ptr %i.c, align 8, !tbaa !584
  %i.xn = trunc i64 %i.xm to i32
  %i.xo = load i32, ptr %i.e, align 8, !tbaa !583 ; 3 uses
  %i.xp = add nsw i32 %i.xo, %i.xn                ; 3 uses
  %i.xq = load i64, ptr %i.h, align 8, !tbaa !584 ; 2 uses
  %i.xr = trunc i64 %i.xq to i32
  %i.xs = load i32, ptr %i.j, align 8, !tbaa !583 ; 3 uses
  %i.xt = add nsw i32 %i.xs, %i.xr                ; 3 uses
  %i.xu = add nsw i32 %i.xp, 1
  %i.xv = icmp slt i32 %i.xu, %i.xt
  br i1 %i.xv, label %.thread543, label %bb.cq

bb.cq:                                            ; preds = %.thread840
  %i.xw = icmp sgt i32 %i.xp, %i.xt
  br i1 %i.xw, label %.thread543.sink.split, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.xx = call noundef i32 @llvm.smin.i32(i32 %i.xo, i32 %i.xs) ; 2 uses
  %.not.not.not53.i344 = icmp sgt i32 %i.xt, %i.xx
  br i1 %.not.not.not53.i344, label %.lr.ph.i346, label %bb.cx

.lr.ph.i346:                                      ; preds = %bb.cr
  %i.xy = load ptr, ptr %5, align 8
  %i.xz = load ptr, ptr %6, align 8
  %i.ya = sext i32 %i.xs to i64                   ; 3 uses
  %sext.i347 = shl i64 %i.xq, 32
  %i.yb = ashr exact i64 %sext.i347, 32
  %i.yc = add nsw i64 %i.yb, %i.ya
  %i.yd = sext i32 %i.xp to i64
  %i.ye = sext i32 %i.xo to i64                   ; 2 uses
  %i.yf = sext i32 %i.xx to i64
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cw, %.lr.ph.i346
  %indvars.iv.i348 = phi i64 [ %i.yc, %.lr.ph.i346 ], [ %indvars.iv.next.i350, %bb.cw ] ; 4 uses
  %.03254.i349 = phi i64 [ 0, %.lr.ph.i346 ], [ %i.yw, %bb.cw ] ; 2 uses
  %indvars.iv.next.i350 = add nsw i64 %indvars.iv.i348, -1 ; 4 uses
  %.not.i.i351 = icmp sgt i64 %indvars.iv.i348, %i.ye
  %i.yg = icmp sle i64 %indvars.iv.i348, %i.yd
  %or.cond.i352 = and i1 %.not.i.i351, %i.yg
  br i1 %or.cond.i352, label %bb.ct, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i356

bb.ct:                                            ; preds = %bb.cs
  %i.yh = sub nsw i64 %indvars.iv.next.i350, %i.ye
  %i.yi = getelementptr inbounds [4 x i8], ptr %i.xy, i64 %i.yh
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !141
  %i.yk = zext i32 %i.yj to i64
  %i.yl = shl nuw nsw i64 %i.yk, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i356

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i356: ; preds = %bb.cs, %bb.ct
  %i.ym = phi i64 [ %i.yl, %bb.ct ], [ 0, %bb.cs ] ; 3 uses
  %.not.i45.i357 = icmp sgt i64 %indvars.iv.i348, %i.ya
  br i1 %.not.i45.i357, label %bb.cu, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i358

bb.cu:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i356
  %i.yn = sub nsw i64 %indvars.iv.next.i350, %i.ya
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.xz, i64 %i.yn
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !141
  %i.yq = zext i32 %i.yp to i64
  %i.yr = or disjoint i64 %.03254.i349, %i.yq
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i358

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i358: ; preds = %bb.cu, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i356
  %i.ys = phi i64 [ %i.yr, %bb.cu ], [ %.03254.i349, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i356 ] ; 3 uses
  %i.yt = icmp ugt i64 %i.ym, %i.ys
  br i1 %i.yt, label %.thread543.sink.split, label %bb.cv

bb.cv:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i358
  %i.yu = sub nuw nsw i64 %i.ys, %i.ym            ; 2 uses
  %i.yv = icmp ugt i64 %i.yu, 1
  br i1 %i.yv, label %.thread543, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.yw = shl nuw nsw i64 %i.yu, 32
  %.not.not.not.i359 = icmp sgt i64 %indvars.iv.next.i350, %i.yf
  br i1 %.not.not.not.i359, label %bb.cs, label %.thread.loopexit.i360, !llvm.loop !7208

.thread.loopexit.i360:                            ; preds = %bb.cw
  %.not565 = icmp eq i64 %i.ys, %i.ym
  br label %bb.cx

bb.cx:                                            ; preds = %.thread.loopexit.i360, %bb.cr
  %.4.i345.ph = phi i1 [ %.not565, %.thread.loopexit.i360 ], [ true, %bb.cr ]
  %21 = trunc i32 %i.ue to i1
  %or.cond = and i1 %.4.i345.ph, %21
  br i1 %or.cond, label %.thread543.sink.split, label %.thread543

.thread543.sink.split:                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i358, %bb.cx, %bb.cq, %bb.cm, %.thread831
  %.sink890 = phi i8 [ %i.xd, %bb.cm ], [ %i.xg, %.thread831 ], [ %i.xl, %bb.cx ], [ %i.xl, %bb.cq ], [ %i.xl, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i358 ]
  %indvars.iv.next670828837.ph = phi i64 [ %indvars.iv.next670, %bb.cm ], [ %indvars.iv.next670825, %.thread831 ], [ %indvars.iv.next670828838843, %bb.cx ], [ %indvars.iv.next670828838843, %bb.cq ], [ %indvars.iv.next670828838843, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i358 ]
  %i.yx = getelementptr i8, ptr %i.ua, i64 %indvars.iv669
  %i.yy = add i8 %.sink890, 49
  store i8 %i.yy, ptr %i.yx, align 1, !tbaa !136
  br label %.thread543

.thread543:                                       ; preds = %bb.cv, %.thread543.sink.split, %.thread840, %bb.cp, %bb.cx
  %indvars.iv.next670828837 = phi i64 [ %indvars.iv.next670828838843, %.thread840 ], [ %indvars.iv.next670, %bb.cp ], [ %indvars.iv.next670828837.ph, %.thread543.sink.split ], [ %indvars.iv.next670828838843, %bb.cx ], [ %indvars.iv.next670828838843, %bb.cv ] ; 2 uses
  %i.yz = load i64, ptr %i.ub, align 8, !tbaa !204 ; 2 uses
  %.not818 = icmp ugt i64 %i.yz, %indvars.iv669
  br i1 %.not818, label %.split, label %bb.cy

bb.cy:                                            ; preds = %.thread543
  %i.za = load ptr, ptr %i.uc, align 8, !tbaa !202
  invoke void %i.za(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %indvars.iv.next670828837)
          to label %.noexc363 unwind label %bb.co, !inline_history !7210

.noexc363:                                        ; preds = %bb.cy
  %.pre.i362 = load i64, ptr %i.ub, align 8, !tbaa !204
  br label %.split

.split:                                           ; preds = %.noexc363, %.thread543
  %i.zb = phi i64 [ %i.yz, %.thread543 ], [ %.pre.i362, %.noexc363 ]
  %i.zc = call noundef i64 @llvm.umin.i64(i64 %indvars.iv.next670828837, i64 %i.zb)
  store i64 %i.zc, ptr %i.ud, align 8, !tbaa !205
  %i.zd = load i32, ptr %4, align 4, !tbaa !141
  %i.ze = trunc nuw nsw i64 %indvars.iv669 to i32
  %i.zf = sub nsw i32 %i.zd, %i.ze
  store i32 %i.zf, ptr %4, align 4, !tbaa !141
  br label %.loopexit

bb.cz:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit343
  %i.zg = load i64, ptr %i.c, align 8, !tbaa !584 ; 7 uses
  %.not14.i.i364 = icmp eq i64 %i.zg, 0
  br i1 %.not14.i.i364, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit377, label %.lr.ph.i.i365

.lr.ph.i.i365:                                    ; preds = %bb.cz
  %i.zh = load ptr, ptr %5, align 8, !tbaa !578   ; 4 uses
  %i.zi = icmp eq i64 %i.zg, 1
  br i1 %i.zi, label %.epil.preheader1410, label %.lr.ph.i.i365.new

.lr.ph.i.i365.new:                                ; preds = %.lr.ph.i.i365
  %unroll_iter1415 = and i64 %i.zg, -2
  br label %bb.da

._crit_edge.i.i369.unr-lcssa:                     ; preds = %bb.da
  %22 = trunc i64 %i.zg to i1
  br i1 %22, label %.epil.preheader1410, label %._crit_edge.i.i369

.epil.preheader1410:                              ; preds = %._crit_edge.i.i369.unr-lcssa, %.lr.ph.i.i365
  %.013.i.i366.epil.init = phi i64 [ 0, %.lr.ph.i.i365 ], [ %i.aag, %._crit_edge.i.i369.unr-lcssa ]
  %.01112.i.i367.epil.init = phi i64 [ 0, %.lr.ph.i.i365 ], [ %i.aaf, %._crit_edge.i.i369.unr-lcssa ]
  %lcmp.mod1414 = trunc i64 %i.zg to i1
  call void @llvm.assume(i1 %lcmp.mod1414)
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %.013.i.i366.epil.init ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !141
  %i.zl = zext i32 %i.zk to i64
  %i.zm = mul nuw nsw i64 %i.zl, 10
  %i.zn = add nuw nsw i64 %i.zm, %.01112.i.i367.epil.init ; 2 uses
  %i.zo = trunc i64 %i.zn to i32
  store i32 %i.zo, ptr %i.zj, align 4, !tbaa !141
  %i.zp = lshr i64 %i.zn, 32
  br label %._crit_edge.i.i369

._crit_edge.i.i369:                               ; preds = %._crit_edge.i.i369.unr-lcssa, %.epil.preheader1410
  %.lcssa1344 = phi i64 [ %i.aaf, %._crit_edge.i.i369.unr-lcssa ], [ %i.zp, %.epil.preheader1410 ] ; 2 uses
  %i.zq = trunc nuw nsw i64 %.lcssa1344 to i32
  %.not.i.i370 = icmp eq i64 %.lcssa1344, 0
  br i1 %.not.i.i370, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit377, label %bb.db

bb.da:                                            ; preds = %bb.da, %.lr.ph.i.i365.new
  %.013.i.i366 = phi i64 [ 0, %.lr.ph.i.i365.new ], [ %i.aag, %bb.da ] ; 3 uses
  %.01112.i.i367 = phi i64 [ 0, %.lr.ph.i.i365.new ], [ %i.aaf, %bb.da ]
  %niter1416 = phi i64 [ 0, %.lr.ph.i.i365.new ], [ %niter1416.next.1, %bb.da ]
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %.013.i.i366 ; 2 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !141
  %i.zt = zext i32 %i.zs to i64
  %i.zu = mul nuw nsw i64 %i.zt, 10
  %i.zv = add nuw nsw i64 %i.zu, %.01112.i.i367   ; 2 uses
  %i.zw = trunc i64 %i.zv to i32
  store i32 %i.zw, ptr %i.zr, align 4, !tbaa !141
  %i.zx = lshr i64 %i.zv, 32
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %.013.i.i366
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 4 ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !141
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = mul nuw nsw i64 %i.aab, 10
  %i.aad = add nuw nsw i64 %i.aac, %i.zx          ; 2 uses
  %i.aae = trunc i64 %i.aad to i32
  store i32 %i.aae, ptr %i.zz, align 4, !tbaa !141
  %i.aaf = lshr i64 %i.aad, 32                    ; 3 uses
  %i.aag = add nuw i64 %.013.i.i366, 2            ; 2 uses
  %niter1416.next.1 = add nuw i64 %niter1416, 2   ; 2 uses
  %niter1416.ncmp.1 = icmp eq i64 %niter1416.next.1, %unroll_iter1415
  br i1 %niter1416.ncmp.1, label %._crit_edge.i.i369.unr-lcssa, label %bb.da, !llvm.loop !87

bb.db:                                            ; preds = %._crit_edge.i.i369
  %i.aah = add i64 %i.zg, 1                       ; 3 uses
  %i.aai = load i64, ptr %i.a, align 8, !tbaa !579
  %i.aaj = icmp ugt i64 %i.aah, %i.aai
  br i1 %i.aaj, label %bb.dc, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i371

bb.dc:                                            ; preds = %bb.db
  %i.aak = load ptr, ptr %i.b, align 8, !tbaa !577
  invoke void %i.aak(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.aah)
          to label %.noexc376 unwind label %bb.cn, !inline_history !7209

.noexc376:                                        ; preds = %bb.dc
  %.pre.i.i.i373 = load i64, ptr %i.c, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i.i374 = add i64 %.pre.i.i.i373, 1
  %.pre.i375 = load ptr, ptr %5, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i371

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i371: ; preds = %.noexc376, %bb.db
  %i.aal = phi ptr [ %i.zh, %bb.db ], [ %.pre.i375, %.noexc376 ]
  %.pre-phi.i.i.i372 = phi i64 [ %i.aah, %bb.db ], [ %.pre2.i.i.i374, %.noexc376 ]
  %i.aam = phi i64 [ %i.zg, %bb.db ], [ %.pre.i.i.i373, %.noexc376 ]
  store i64 %.pre-phi.i.i.i372, ptr %i.c, align 8, !tbaa !584
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %i.aam
  store i32 %i.zq, ptr %i.aan, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit377

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit377:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i371, %._crit_edge.i.i369, %bb.cz
  %i.aao = load i64, ptr %i.m, align 8, !tbaa !584 ; 7 uses
  %.not14.i.i378 = icmp eq i64 %i.aao, 0
  br i1 %.not14.i.i378, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit391, label %.lr.ph.i.i379

.lr.ph.i.i379:                                    ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit377
  %i.aap = load ptr, ptr %7, align 8, !tbaa !578  ; 4 uses
  %i.aaq = icmp eq i64 %i.aao, 1
  br i1 %i.aaq, label %.epil.preheader1417, label %.lr.ph.i.i379.new

.lr.ph.i.i379.new:                                ; preds = %.lr.ph.i.i379
  %unroll_iter1422 = and i64 %i.aao, -2
  br label %bb.dd

._crit_edge.i.i383.unr-lcssa:                     ; preds = %bb.dd
  %23 = trunc i64 %i.aao to i1
  br i1 %23, label %.epil.preheader1417, label %._crit_edge.i.i383

.epil.preheader1417:                              ; preds = %._crit_edge.i.i383.unr-lcssa, %.lr.ph.i.i379
  %.013.i.i380.epil.init = phi i64 [ 0, %.lr.ph.i.i379 ], [ %i.abo, %._crit_edge.i.i383.unr-lcssa ]
  %.01112.i.i381.epil.init = phi i64 [ 0, %.lr.ph.i.i379 ], [ %i.abn, %._crit_edge.i.i383.unr-lcssa ]
  %lcmp.mod1421 = trunc i64 %i.aao to i1
  call void @llvm.assume(i1 %lcmp.mod1421)
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %.013.i.i380.epil.init ; 2 uses
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !141
  %i.aat = zext i32 %i.aas to i64
  %i.aau = mul nuw nsw i64 %i.aat, 10
  %i.aav = add nuw nsw i64 %i.aau, %.01112.i.i381.epil.init ; 2 uses
  %i.aaw = trunc i64 %i.aav to i32
  store i32 %i.aaw, ptr %i.aar, align 4, !tbaa !141
  %i.aax = lshr i64 %i.aav, 32
  br label %._crit_edge.i.i383

._crit_edge.i.i383:                               ; preds = %._crit_edge.i.i383.unr-lcssa, %.epil.preheader1417
  %.lcssa1345 = phi i64 [ %i.abn, %._crit_edge.i.i383.unr-lcssa ], [ %i.aax, %.epil.preheader1417 ] ; 2 uses
  %i.aay = trunc nuw nsw i64 %.lcssa1345 to i32
  %.not.i.i384 = icmp eq i64 %.lcssa1345, 0
  br i1 %.not.i.i384, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit391, label %bb.de

bb.dd:                                            ; preds = %bb.dd, %.lr.ph.i.i379.new
  %.013.i.i380 = phi i64 [ 0, %.lr.ph.i.i379.new ], [ %i.abo, %bb.dd ] ; 3 uses
  %.01112.i.i381 = phi i64 [ 0, %.lr.ph.i.i379.new ], [ %i.abn, %bb.dd ]
  %niter1423 = phi i64 [ 0, %.lr.ph.i.i379.new ], [ %niter1423.next.1, %bb.dd ]
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %.013.i.i380 ; 2 uses
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !141
  %i.abb = zext i32 %i.aba to i64
  %i.abc = mul nuw nsw i64 %i.abb, 10
  %i.abd = add nuw nsw i64 %i.abc, %.01112.i.i381 ; 2 uses
  %i.abe = trunc i64 %i.abd to i32
  store i32 %i.abe, ptr %i.aaz, align 4, !tbaa !141
  %i.abf = lshr i64 %i.abd, 32
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %.013.i.i380
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 4 ; 2 uses
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !141
  %i.abj = zext i32 %i.abi to i64
  %i.abk = mul nuw nsw i64 %i.abj, 10
  %i.abl = add nuw nsw i64 %i.abk, %i.abf         ; 2 uses
  %i.abm = trunc i64 %i.abl to i32
  store i32 %i.abm, ptr %i.abh, align 4, !tbaa !141
  %i.abn = lshr i64 %i.abl, 32                    ; 3 uses
  %i.abo = add nuw i64 %.013.i.i380, 2            ; 2 uses
  %niter1423.next.1 = add nuw i64 %niter1423, 2   ; 2 uses
  %niter1423.ncmp.1 = icmp eq i64 %niter1423.next.1, %unroll_iter1422
  br i1 %niter1423.ncmp.1, label %._crit_edge.i.i383.unr-lcssa, label %bb.dd, !llvm.loop !87

bb.de:                                            ; preds = %._crit_edge.i.i383
  %i.abp = add i64 %i.aao, 1                      ; 3 uses
  %i.abq = load i64, ptr %i.k, align 8, !tbaa !579
  %i.abr = icmp ugt i64 %i.abp, %i.abq
  br i1 %i.abr, label %bb.df, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i385

bb.df:                                            ; preds = %bb.de
  %i.abs = load ptr, ptr %i.l, align 8, !tbaa !577
  invoke void %i.abs(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.abp)
          to label %.noexc390 unwind label %bb.cn, !inline_history !7209

.noexc390:                                        ; preds = %bb.df
  %.pre.i.i.i387 = load i64, ptr %i.m, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i.i388 = add i64 %.pre.i.i.i387, 1
  %.pre.i389 = load ptr, ptr %7, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i385

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i385: ; preds = %.noexc390, %bb.de
  %i.abt = phi ptr [ %i.aap, %bb.de ], [ %.pre.i389, %.noexc390 ]
  %.pre-phi.i.i.i386 = phi i64 [ %i.abp, %bb.de ], [ %.pre2.i.i.i388, %.noexc390 ]
  %i.abu = phi i64 [ %i.aao, %bb.de ], [ %.pre.i.i.i387, %.noexc390 ]
  store i64 %.pre-phi.i.i.i386, ptr %i.m, align 8, !tbaa !584
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.abu
  store i32 %i.aay, ptr %i.abv, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit391

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit391:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i385, %._crit_edge.i.i383, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit377
  br i1 %.not97.a, label %.backedge.backedge, label %bb.dg

.backedge.backedge:                               ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit391, %bb.dg, %._crit_edge.i.i397, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i399
  br label %.backedge, !llvm.loop !7211

bb.dg:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit391
  %i.abw = load i64, ptr %.2.sroa.gep509, align 8, !tbaa !584 ; 7 uses
  %.not14.i.i392 = icmp eq i64 %i.abw, 0
  br i1 %.not14.i.i392, label %.backedge.backedge, label %.lr.ph.i.i393

.lr.ph.i.i393:                                    ; preds = %bb.dg
  %i.abx = load ptr, ptr %.2, align 8, !tbaa !578 ; 4 uses
  %i.aby = icmp eq i64 %i.abw, 1
  br i1 %i.aby, label %.epil.preheader1424, label %.lr.ph.i.i393.new

.lr.ph.i.i393.new:                                ; preds = %.lr.ph.i.i393
  %unroll_iter1429 = and i64 %i.abw, -2
  br label %bb.dh

._crit_edge.i.i397.unr-lcssa:                     ; preds = %bb.dh
  %24 = trunc i64 %i.abw to i1
  br i1 %24, label %.epil.preheader1424, label %._crit_edge.i.i397

.epil.preheader1424:                              ; preds = %._crit_edge.i.i397.unr-lcssa, %.lr.ph.i.i393
  %.013.i.i394.epil.init = phi i64 [ 0, %.lr.ph.i.i393 ], [ %i.acw, %._crit_edge.i.i397.unr-lcssa ]
  %.01112.i.i395.epil.init = phi i64 [ 0, %.lr.ph.i.i393 ], [ %i.acv, %._crit_edge.i.i397.unr-lcssa ]
  %lcmp.mod1428 = trunc i64 %i.abw to i1
  call void @llvm.assume(i1 %lcmp.mod1428)
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.abx, i64 %.013.i.i394.epil.init ; 2 uses
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !141
  %i.acb = zext i32 %i.aca to i64
  %i.acc = mul nuw nsw i64 %i.acb, 10
  %i.acd = add nuw nsw i64 %i.acc, %.01112.i.i395.epil.init ; 2 uses
  %i.ace = trunc i64 %i.acd to i32
  store i32 %i.ace, ptr %i.abz, align 4, !tbaa !141
  %i.acf = lshr i64 %i.acd, 32
  br label %._crit_edge.i.i397

._crit_edge.i.i397:                               ; preds = %._crit_edge.i.i397.unr-lcssa, %.epil.preheader1424
  %.lcssa1346 = phi i64 [ %i.acv, %._crit_edge.i.i397.unr-lcssa ], [ %i.acf, %.epil.preheader1424 ] ; 2 uses
  %i.acg = trunc nuw nsw i64 %.lcssa1346 to i32
  %.not.i.i398 = icmp eq i64 %.lcssa1346, 0
  br i1 %.not.i.i398, label %.backedge.backedge, label %bb.di

bb.dh:                                            ; preds = %bb.dh, %.lr.ph.i.i393.new
  %.013.i.i394 = phi i64 [ 0, %.lr.ph.i.i393.new ], [ %i.acw, %bb.dh ] ; 3 uses
  %.01112.i.i395 = phi i64 [ 0, %.lr.ph.i.i393.new ], [ %i.acv, %bb.dh ]
  %niter1430 = phi i64 [ 0, %.lr.ph.i.i393.new ], [ %niter1430.next.1, %bb.dh ]
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.abx, i64 %.013.i.i394 ; 2 uses
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !141
  %i.acj = zext i32 %i.aci to i64
  %i.ack = mul nuw nsw i64 %i.acj, 10
  %i.acl = add nuw nsw i64 %i.ack, %.01112.i.i395 ; 2 uses
  %i.acm = trunc i64 %i.acl to i32
  store i32 %i.acm, ptr %i.ach, align 4, !tbaa !141
  %i.acn = lshr i64 %i.acl, 32
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.abx, i64 %.013.i.i394
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 4 ; 2 uses
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !141
  %i.acr = zext i32 %i.acq to i64
  %i.acs = mul nuw nsw i64 %i.acr, 10
  %i.act = add nuw nsw i64 %i.acs, %i.acn         ; 2 uses
  %i.acu = trunc i64 %i.act to i32
  store i32 %i.acu, ptr %i.acp, align 4, !tbaa !141
  %i.acv = lshr i64 %i.act, 32                    ; 3 uses
  %i.acw = add nuw i64 %.013.i.i394, 2            ; 2 uses
  %niter1430.next.1 = add nuw i64 %niter1430, 2   ; 2 uses
  %niter1430.ncmp.1 = icmp eq i64 %niter1430.next.1, %unroll_iter1429
  br i1 %niter1430.ncmp.1, label %._crit_edge.i.i397.unr-lcssa, label %bb.dh, !llvm.loop !87

bb.di:                                            ; preds = %._crit_edge.i.i397
  %i.acx = add i64 %i.abw, 1                      ; 3 uses
  %i.acy = load i64, ptr %.2.sroa.gep518, align 8, !tbaa !579
  %i.acz = icmp ugt i64 %i.acx, %i.acy
  br i1 %i.acz, label %bb.dj, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i399

bb.dj:                                            ; preds = %bb.di
  %i.ada = load ptr, ptr %.2.sroa.gep521, align 8, !tbaa !577
  invoke void %i.ada(ptr noundef nonnull align 8 dereferenceable(172) %.2, i64 noundef %i.acx)
          to label %.noexc404 unwind label %bb.cn, !inline_history !7209

.noexc404:                                        ; preds = %bb.dj
  %.pre.i.i.i401 = load i64, ptr %.2.sroa.gep509, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i.i402 = add i64 %.pre.i.i.i401, 1
  %.pre.i403 = load ptr, ptr %.2, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i399

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i399: ; preds = %.noexc404, %bb.di
  %i.adb = phi ptr [ %i.abx, %bb.di ], [ %.pre.i403, %.noexc404 ]
  %.pre-phi.i.i.i400 = phi i64 [ %i.acx, %bb.di ], [ %.pre2.i.i.i402, %.noexc404 ]
  %i.adc = phi i64 [ %i.abw, %bb.di ], [ %.pre.i.i.i401, %.noexc404 ]
  store i64 %.pre-phi.i.i.i400, ptr %.2.sroa.gep509, align 8, !tbaa !584
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.adb, i64 %i.adc
  store i32 %i.acg, ptr %i.add, align 4, !tbaa !141
  br label %.backedge.backedge

bb.dk:                                            ; preds = %bb.bx
  %i.ade = add i32 %.0538, -1                     ; 4 uses
  %i.adf = load i32, ptr %4, align 4, !tbaa !141
  %i.adg = sub nsw i32 %i.adf, %i.ade
  store i32 %i.adg, ptr %4, align 4, !tbaa !141
  %i.adh = icmp slt i32 %.0538, 1
  br i1 %i.adh, label %bb.dl, label %bb.dz

bb.dl:                                            ; preds = %bb.dk
  %i.adi = icmp eq i32 %.0538, 0
  br i1 %i.adi, label %bb.dm, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit437

bb.dm:                                            ; preds = %bb.dl
  %i.adj = load i64, ptr %i.h, align 8, !tbaa !584 ; 8 uses
  %.not14.i.i406 = icmp eq i64 %i.adj, 0
  br i1 %.not14.i.i406, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit419, label %.lr.ph.i.i407

.lr.ph.i.i407:                                    ; preds = %bb.dm
  %i.adk = load ptr, ptr %6, align 8, !tbaa !578  ; 4 uses
  %i.adl = icmp eq i64 %i.adj, 1
  br i1 %i.adl, label %.epil.preheader1403, label %.lr.ph.i.i407.new

.lr.ph.i.i407.new:                                ; preds = %.lr.ph.i.i407
  %unroll_iter1408 = and i64 %i.adj, -2
  br label %bb.dn

._crit_edge.i.i411.unr-lcssa:                     ; preds = %bb.dn
  %25 = trunc i64 %i.adj to i1
  br i1 %25, label %.epil.preheader1403, label %._crit_edge.i.i411

.epil.preheader1403:                              ; preds = %._crit_edge.i.i411.unr-lcssa, %.lr.ph.i.i407
  %.013.i.i408.epil.init = phi i64 [ 0, %.lr.ph.i.i407 ], [ %i.aej, %._crit_edge.i.i411.unr-lcssa ]
  %.01112.i.i409.epil.init = phi i64 [ 0, %.lr.ph.i.i407 ], [ %i.aei, %._crit_edge.i.i411.unr-lcssa ]
  %lcmp.mod1407 = trunc i64 %i.adj to i1
  call void @llvm.assume(i1 %lcmp.mod1407)
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %.013.i.i408.epil.init ; 2 uses
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !141
  %i.ado = zext i32 %i.adn to i64
  %i.adp = mul nuw nsw i64 %i.ado, 10
  %i.adq = add nuw nsw i64 %i.adp, %.01112.i.i409.epil.init ; 2 uses
  %i.adr = trunc i64 %i.adq to i32
  store i32 %i.adr, ptr %i.adm, align 4, !tbaa !141
  %i.ads = lshr i64 %i.adq, 32
  br label %._crit_edge.i.i411

._crit_edge.i.i411:                               ; preds = %._crit_edge.i.i411.unr-lcssa, %.epil.preheader1403
  %.lcssa1347 = phi i64 [ %i.aei, %._crit_edge.i.i411.unr-lcssa ], [ %i.ads, %.epil.preheader1403 ] ; 2 uses
  %i.adt = trunc nuw nsw i64 %.lcssa1347 to i32
  %.not.i.i412 = icmp eq i64 %.lcssa1347, 0
  br i1 %.not.i.i412, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit419, label %bb.do

bb.dn:                                            ; preds = %bb.dn, %.lr.ph.i.i407.new
  %.013.i.i408 = phi i64 [ 0, %.lr.ph.i.i407.new ], [ %i.aej, %bb.dn ] ; 3 uses
  %.01112.i.i409 = phi i64 [ 0, %.lr.ph.i.i407.new ], [ %i.aei, %bb.dn ]
  %niter1409 = phi i64 [ 0, %.lr.ph.i.i407.new ], [ %niter1409.next.1, %bb.dn ]
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %.013.i.i408 ; 2 uses
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !141
  %i.adw = zext i32 %i.adv to i64
  %i.adx = mul nuw nsw i64 %i.adw, 10
  %i.ady = add nuw nsw i64 %i.adx, %.01112.i.i409 ; 2 uses
  %i.adz = trunc i64 %i.ady to i32
  store i32 %i.adz, ptr %i.adu, align 4, !tbaa !141
  %i.aea = lshr i64 %i.ady, 32
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %.013.i.i408
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 4 ; 2 uses
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !141
  %i.aee = zext i32 %i.aed to i64
  %i.aef = mul nuw nsw i64 %i.aee, 10
  %i.aeg = add nuw nsw i64 %i.aef, %i.aea         ; 2 uses
  %i.aeh = trunc i64 %i.aeg to i32
  store i32 %i.aeh, ptr %i.aec, align 4, !tbaa !141
  %i.aei = lshr i64 %i.aeg, 32                    ; 3 uses
  %i.aej = add nuw i64 %.013.i.i408, 2            ; 2 uses
  %niter1409.next.1 = add nuw i64 %niter1409, 2   ; 2 uses
  %niter1409.ncmp.1 = icmp eq i64 %niter1409.next.1, %unroll_iter1408
  br i1 %niter1409.ncmp.1, label %._crit_edge.i.i411.unr-lcssa, label %bb.dn, !llvm.loop !87

bb.do:                                            ; preds = %._crit_edge.i.i411
  %i.aek = add i64 %i.adj, 1                      ; 3 uses
  %i.ael = load i64, ptr %i.f, align 8, !tbaa !579
  %i.aem = icmp ugt i64 %i.aek, %i.ael
  br i1 %i.aem, label %bb.dp, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i413

bb.dp:                                            ; preds = %bb.do
  %i.aen = load ptr, ptr %i.g, align 8, !tbaa !577
  invoke void %i.aen(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.aek)
          to label %.noexc418 unwind label %bb.dw, !inline_history !7209

.noexc418:                                        ; preds = %bb.dp
  %.pre.i.i.i415 = load i64, ptr %i.h, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i.i416 = add i64 %.pre.i.i.i415, 1
  %.pre.i417 = load ptr, ptr %6, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i413

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i413: ; preds = %.noexc418, %bb.do
  %i.aeo = phi ptr [ %i.adk, %bb.do ], [ %.pre.i417, %.noexc418 ]
  %.pre-phi.i.i.i414 = phi i64 [ %i.aek, %bb.do ], [ %.pre2.i.i.i416, %.noexc418 ] ; 2 uses
  %i.aep = phi i64 [ %i.adj, %bb.do ], [ %.pre.i.i.i415, %.noexc418 ]
  store i64 %.pre-phi.i.i.i414, ptr %i.h, align 8, !tbaa !584
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %i.aep
  store i32 %i.adt, ptr %i.aeq, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit419

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit419:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i413, %._crit_edge.i.i411, %bb.dm
  %i.aer = phi i64 [ %.pre-phi.i.i.i414, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i413 ], [ %i.adj, %._crit_edge.i.i411 ], [ 0, %bb.dm ] ; 2 uses
  %i.aes = load i64, ptr %i.c, align 8, !tbaa !584
  %i.aet = trunc i64 %i.aes to i32
  %i.aeu = load i32, ptr %i.e, align 8, !tbaa !583 ; 3 uses
  %i.aev = add nsw i32 %i.aeu, %i.aet             ; 3 uses
  %i.aew = trunc i64 %i.aer to i32
  %i.aex = load i32, ptr %i.j, align 8, !tbaa !583 ; 3 uses
  %i.aey = add nsw i32 %i.aex, %i.aew             ; 3 uses
  %i.aez = add nsw i32 %i.aev, 1
  %i.afa = icmp slt i32 %i.aez, %i.aey
  br i1 %i.afa, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit437, label %bb.dq

bb.dq:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit419
  %i.afb = icmp sgt i32 %i.aev, %i.aey
  br i1 %i.afb, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit437, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.afc = call noundef i32 @llvm.smin.i32(i32 %i.aeu, i32 %i.aex) ; 2 uses
  %.not.not.not53.i420 = icmp sgt i32 %i.aey, %i.afc
  br i1 %.not.not.not53.i420, label %.lr.ph.i422, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit437

.lr.ph.i422:                                      ; preds = %bb.dr
  %i.afd = load ptr, ptr %5, align 8
  %i.afe = load ptr, ptr %6, align 8
  %i.aff = sext i32 %i.aex to i64                 ; 3 uses
  %sext.i423 = shl i64 %i.aer, 32
  %i.afg = ashr exact i64 %sext.i423, 32
  %i.afh = add nsw i64 %i.afg, %i.aff
  %i.afi = sext i32 %i.aev to i64
  %i.afj = sext i32 %i.aeu to i64                 ; 2 uses
  %i.afk = sext i32 %i.afc to i64
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dv, %.lr.ph.i422
  %indvars.iv.i424 = phi i64 [ %i.afh, %.lr.ph.i422 ], [ %indvars.iv.next.i426, %bb.dv ] ; 4 uses
  %.03254.i425 = phi i64 [ 0, %.lr.ph.i422 ], [ %i.agb, %bb.dv ] ; 2 uses
  %indvars.iv.next.i426 = add nsw i64 %indvars.iv.i424, -1 ; 4 uses
  %.not.i.i427 = icmp sgt i64 %indvars.iv.i424, %i.afj
  %i.afl = icmp sle i64 %indvars.iv.i424, %i.afi
  %or.cond.i428 = and i1 %.not.i.i427, %i.afl
  br i1 %or.cond.i428, label %bb.dt, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i432

bb.dt:                                            ; preds = %bb.ds
  %i.afm = sub nsw i64 %indvars.iv.next.i426, %i.afj
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.afd, i64 %i.afm
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !141
  %i.afp = zext i32 %i.afo to i64
  %i.afq = shl nuw nsw i64 %i.afp, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i432

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i432: ; preds = %bb.ds, %bb.dt
  %i.afr = phi i64 [ %i.afq, %bb.dt ], [ 0, %bb.ds ] ; 2 uses
  %.not.i45.i433 = icmp sgt i64 %indvars.iv.i424, %i.aff
  br i1 %.not.i45.i433, label %bb.du, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i434

bb.du:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i432
  %i.afs = sub nsw i64 %indvars.iv.next.i426, %i.aff
  %i.aft = getelementptr inbounds [4 x i8], ptr %i.afe, i64 %i.afs
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !141
  %i.afv = zext i32 %i.afu to i64
  %i.afw = or disjoint i64 %.03254.i425, %i.afv
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i434

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i434: ; preds = %bb.du, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i432
  %i.afx = phi i64 [ %i.afw, %bb.du ], [ %.03254.i425, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i432 ] ; 2 uses
  %i.afy = icmp ugt i64 %i.afr, %i.afx
  br i1 %i.afy, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit437, label %bb.dv

bb.dv:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i434
  %i.afz = sub nuw nsw i64 %i.afx, %i.afr         ; 2 uses
  %i.aga = icmp ult i64 %i.afz, 2
  %i.agb = shl nuw nsw i64 %i.afz, 32
  %.not.not.not.i435 = icmp sgt i64 %indvars.iv.next.i426, %i.afk
  %or.cond560 = select i1 %i.aga, i1 %.not.not.not.i435, i1 false
  br i1 %or.cond560, label %bb.ds, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit437, !llvm.loop !7208

bb.dw:                                            ; preds = %bb.dx, %bb.dp
  %i.agc = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit437: ; preds = %bb.dv, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i434, %bb.dr, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit419, %bb.dq, %bb.dl
  %.0537 = phi i8 [ 48, %bb.dl ], [ 48, %bb.dr ], [ 49, %bb.dq ], [ 48, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit419 ], [ 49, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i434 ], [ 48, %bb.dv ]
  %i.agd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.age = load i64, ptr %i.agd, align 8, !tbaa !205 ; 2 uses
  %i.agf = add i64 %i.age, 1                      ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.agh = load i64, ptr %i.agg, align 8, !tbaa !204
  %i.agi = icmp ugt i64 %i.agf, %i.agh
  br i1 %i.agi, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit437
  %i.agj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !202
  invoke void %i.agk(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.agf)
          to label %.noexc439 unwind label %bb.dw, !inline_history !7

.noexc439:                                        ; preds = %bb.dx
  %.pre.i438 = load i64, ptr %i.agd, align 8, !tbaa !205 ; 2 uses
  %.pre2.i = add i64 %.pre.i438, 1
  br label %bb.dy

bb.dy:                                            ; preds = %.noexc439, %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit437
  %.pre-phi.i = phi i64 [ %i.agf, %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit437 ], [ %.pre2.i, %.noexc439 ]
  %i.agl = phi i64 [ %i.age, %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit437 ], [ %.pre.i438, %.noexc439 ]
  %i.agm = load ptr, ptr %3, align 8, !tbaa !203
  store i64 %.pre-phi.i, ptr %i.agd, align 8, !tbaa !205
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.agl
  store i8 %.0537, ptr %i.agn, align 1, !tbaa !136
  br label %.loopexit

bb.dz:                                            ; preds = %bb.dk
  %i.ago = zext nneg i32 %.0538 to i64            ; 4 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !204 ; 2 uses
  %i.agr = icmp ult i64 %i.agq, %i.ago
  br i1 %i.agr, label %bb.ea, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit442

bb.ea:                                            ; preds = %bb.dz
  %i.ags = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !202
  invoke void %i.agt(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ago)
          to label %.noexc441 unwind label %bb.bs, !inline_history !7210

.noexc441:                                        ; preds = %bb.ea
  %.pre.i440 = load i64, ptr %i.agp, align 8, !tbaa !204
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit442

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit442: ; preds = %bb.dz, %.noexc441
  %i.agu = phi i64 [ %i.agq, %bb.dz ], [ %.pre.i440, %.noexc441 ]
  %i.agv = call noundef i64 @llvm.umin.i64(i64 %i.ago, i64 %i.agu)
  %i.agw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.agv, ptr %i.agw, align 8, !tbaa !205
  %.not619 = icmp eq i32 %.0538, 1                ; 2 uses
  br i1 %.not619, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit442
  %wide.trip.count = zext nneg i32 %i.ade to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit442
  %i.agx = invoke noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.eg unwind label %bb.eq     ; 6 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456 ] ; 2 uses
  %i.agy = invoke noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.eb unwind label %bb.ef

bb.eb:                                            ; preds = %.lr.ph
  %i.agz = trunc i32 %i.agy to i8
  %i.aha = add i8 %i.agz, 48
  %i.ahb = load ptr, ptr %3, align 8, !tbaa !203
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %indvars.iv
  store i8 %i.aha, ptr %i.ahc, align 1, !tbaa !136
  %i.ahd = load i64, ptr %i.c, align 8, !tbaa !584 ; 7 uses
  %.not14.i.i443 = icmp eq i64 %i.ahd, 0
  br i1 %.not14.i.i443, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456, label %.lr.ph.i.i444

.lr.ph.i.i444:                                    ; preds = %bb.eb
  %i.ahe = load ptr, ptr %5, align 8, !tbaa !578  ; 4 uses
  %i.ahf = icmp eq i64 %i.ahd, 1
  br i1 %i.ahf, label %.epil.preheader1396, label %.lr.ph.i.i444.new

.lr.ph.i.i444.new:                                ; preds = %.lr.ph.i.i444
  %unroll_iter1401 = and i64 %i.ahd, -2
  br label %bb.ec

._crit_edge.i.i448.unr-lcssa:                     ; preds = %bb.ec
  %26 = trunc i64 %i.ahd to i1
  br i1 %26, label %.epil.preheader1396, label %._crit_edge.i.i448

.epil.preheader1396:                              ; preds = %._crit_edge.i.i448.unr-lcssa, %.lr.ph.i.i444
  %.013.i.i445.epil.init = phi i64 [ 0, %.lr.ph.i.i444 ], [ %i.aid, %._crit_edge.i.i448.unr-lcssa ]
  %.01112.i.i446.epil.init = phi i64 [ 0, %.lr.ph.i.i444 ], [ %i.aic, %._crit_edge.i.i448.unr-lcssa ]
  %lcmp.mod1400 = trunc i64 %i.ahd to i1
  call void @llvm.assume(i1 %lcmp.mod1400)
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %.013.i.i445.epil.init ; 2 uses
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !141
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = mul nuw nsw i64 %i.ahi, 10
  %i.ahk = add nuw nsw i64 %i.ahj, %.01112.i.i446.epil.init ; 2 uses
  %i.ahl = trunc i64 %i.ahk to i32
  store i32 %i.ahl, ptr %i.ahg, align 4, !tbaa !141
  %i.ahm = lshr i64 %i.ahk, 32
  br label %._crit_edge.i.i448

._crit_edge.i.i448:                               ; preds = %._crit_edge.i.i448.unr-lcssa, %.epil.preheader1396
  %.lcssa1354 = phi i64 [ %i.aic, %._crit_edge.i.i448.unr-lcssa ], [ %i.ahm, %.epil.preheader1396 ] ; 2 uses
  %i.ahn = trunc nuw nsw i64 %.lcssa1354 to i32
  %.not.i.i449 = icmp eq i64 %.lcssa1354, 0
  br i1 %.not.i.i449, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456, label %bb.ed

bb.ec:                                            ; preds = %bb.ec, %.lr.ph.i.i444.new
  %.013.i.i445 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %i.aid, %bb.ec ] ; 3 uses
  %.01112.i.i446 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %i.aic, %bb.ec ]
  %niter1402 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %niter1402.next.1, %bb.ec ]
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %.013.i.i445 ; 2 uses
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !141
  %i.ahq = zext i32 %i.ahp to i64
  %i.ahr = mul nuw nsw i64 %i.ahq, 10
  %i.ahs = add nuw nsw i64 %i.ahr, %.01112.i.i446 ; 2 uses
  %i.aht = trunc i64 %i.ahs to i32
  store i32 %i.aht, ptr %i.aho, align 4, !tbaa !141
  %i.ahu = lshr i64 %i.ahs, 32
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %.013.i.i445
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 4 ; 2 uses
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !141
  %i.ahy = zext i32 %i.ahx to i64
  %i.ahz = mul nuw nsw i64 %i.ahy, 10
  %i.aia = add nuw nsw i64 %i.ahz, %i.ahu         ; 2 uses
  %i.aib = trunc i64 %i.aia to i32
  store i32 %i.aib, ptr %i.ahw, align 4, !tbaa !141
  %i.aic = lshr i64 %i.aia, 32                    ; 3 uses
  %i.aid = add nuw i64 %.013.i.i445, 2            ; 2 uses
  %niter1402.next.1 = add nuw i64 %niter1402, 2   ; 2 uses
  %niter1402.ncmp.1 = icmp eq i64 %niter1402.next.1, %unroll_iter1401
  br i1 %niter1402.ncmp.1, label %._crit_edge.i.i448.unr-lcssa, label %bb.ec, !llvm.loop !87

bb.ed:                                            ; preds = %._crit_edge.i.i448
  %i.aie = add i64 %i.ahd, 1                      ; 3 uses
  %i.aif = load i64, ptr %i.a, align 8, !tbaa !579
  %i.aig = icmp ugt i64 %i.aie, %i.aif
  br i1 %i.aig, label %bb.ee, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450

bb.ee:                                            ; preds = %bb.ed
  %i.aih = load ptr, ptr %i.b, align 8, !tbaa !577
  invoke void %i.aih(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.aie)
          to label %.noexc455 unwind label %bb.ef, !inline_history !7209

.noexc455:                                        ; preds = %bb.ee
  %.pre.i.i.i452 = load i64, ptr %i.c, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i.i453 = add i64 %.pre.i.i.i452, 1
  %.pre.i454 = load ptr, ptr %5, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450: ; preds = %.noexc455, %bb.ed
  %i.aii = phi ptr [ %i.ahe, %bb.ed ], [ %.pre.i454, %.noexc455 ]
  %.pre-phi.i.i.i451 = phi i64 [ %i.aie, %bb.ed ], [ %.pre2.i.i.i453, %.noexc455 ]
  %i.aij = phi i64 [ %i.ahd, %bb.ed ], [ %.pre.i.i.i452, %.noexc455 ]
  store i64 %.pre-phi.i.i.i451, ptr %i.c, align 8, !tbaa !584
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aij
  store i32 %i.ahn, ptr %i.aik, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450, %._crit_edge.i.i448, %bb.eb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7212

bb.ef:                                            ; preds = %bb.ee, %.lr.ph
  %i.ail = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.eg:                                            ; preds = %._crit_edge
  %i.aim = load i64, ptr %i.c, align 8, !tbaa !584
  %i.ain = trunc i64 %i.aim to i32
  %i.aio = load i32, ptr %i.e, align 8, !tbaa !583 ; 3 uses
  %i.aip = add nsw i32 %i.aio, %i.ain             ; 3 uses
  %i.aiq = load i64, ptr %i.h, align 8, !tbaa !584 ; 2 uses
  %i.air = trunc i64 %i.aiq to i32
  %i.ais = load i32, ptr %i.j, align 8, !tbaa !583 ; 3 uses
  %i.ait = add nsw i32 %i.ais, %i.air             ; 3 uses
  %i.aiu = add nsw i32 %i.aip, 1
  %i.aiv = icmp slt i32 %i.aiu, %i.ait
  br i1 %i.aiv, label %.thread552, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aiw = icmp sgt i32 %i.aip, %i.ait
  br i1 %i.aiw, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.aix = call noundef i32 @llvm.smin.i32(i32 %i.aio, i32 %i.ais) ; 2 uses
  %.not.not.not53.i457 = icmp sgt i32 %i.ait, %i.aix
  br i1 %.not.not.not53.i457, label %.lr.ph.i459, label %bb.eo

.lr.ph.i459:                                      ; preds = %bb.ei
  %i.aiy = load ptr, ptr %5, align 8
  %i.aiz = load ptr, ptr %6, align 8
  %i.aja = sext i32 %i.ais to i64                 ; 3 uses
  %sext.i460 = shl i64 %i.aiq, 32
  %i.ajb = ashr exact i64 %sext.i460, 32
  %i.ajc = add nsw i64 %i.ajb, %i.aja
  %i.ajd = sext i32 %i.aip to i64
  %i.aje = sext i32 %i.aio to i64                 ; 2 uses
  %i.ajf = sext i32 %i.aix to i64
  br label %bb.ej

bb.ej:                                            ; preds = %bb.en, %.lr.ph.i459
  %indvars.iv.i461 = phi i64 [ %i.ajc, %.lr.ph.i459 ], [ %indvars.iv.next.i463, %bb.en ] ; 4 uses
  %.03254.i462 = phi i64 [ 0, %.lr.ph.i459 ], [ %i.ajw, %bb.en ] ; 2 uses
  %indvars.iv.next.i463 = add nsw i64 %indvars.iv.i461, -1 ; 4 uses
  %.not.i.i464 = icmp sgt i64 %indvars.iv.i461, %i.aje
  %i.ajg = icmp sle i64 %indvars.iv.i461, %i.ajd
  %or.cond.i465 = and i1 %.not.i.i464, %i.ajg
  br i1 %or.cond.i465, label %bb.ek, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469

bb.ek:                                            ; preds = %bb.ej
  %i.ajh = sub nsw i64 %indvars.iv.next.i463, %i.aje
  %i.aji = getelementptr inbounds [4 x i8], ptr %i.aiy, i64 %i.ajh
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !141
  %i.ajk = zext i32 %i.ajj to i64
  %i.ajl = shl nuw nsw i64 %i.ajk, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469: ; preds = %bb.ej, %bb.ek
  %i.ajm = phi i64 [ %i.ajl, %bb.ek ], [ 0, %bb.ej ] ; 3 uses
  %.not.i45.i470 = icmp sgt i64 %indvars.iv.i461, %i.aja
  br i1 %.not.i45.i470, label %bb.el, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471

bb.el:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469
  %i.ajn = sub nsw i64 %indvars.iv.next.i463, %i.aja
  %i.ajo = getelementptr inbounds [4 x i8], ptr %i.aiz, i64 %i.ajn
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !141
  %i.ajq = zext i32 %i.ajp to i64
  %i.ajr = or disjoint i64 %.03254.i462, %i.ajq
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471: ; preds = %bb.el, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469
  %i.ajs = phi i64 [ %i.ajr, %bb.el ], [ %.03254.i462, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469 ] ; 3 uses
  %i.ajt = icmp ugt i64 %i.ajm, %i.ajs
  br i1 %i.ajt, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474, label %bb.em

bb.em:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471
  %i.aju = sub nuw nsw i64 %i.ajs, %i.ajm         ; 2 uses
  %i.ajv = icmp ugt i64 %i.aju, 1
  br i1 %i.ajv, label %.thread552, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ajw = shl nuw nsw i64 %i.aju, 32
  %.not.not.not.i472 = icmp sgt i64 %indvars.iv.next.i463, %i.ajf
  br i1 %.not.not.not.i472, label %bb.ej, label %.thread.loopexit.i473, !llvm.loop !7208

.thread.loopexit.i473:                            ; preds = %bb.en
  %.not564 = icmp eq i64 %i.ajs, %i.ajm
  br label %bb.eo

bb.eo:                                            ; preds = %.thread.loopexit.i473, %bb.ei
  %.4.i458.ph = phi i1 [ %.not564, %.thread.loopexit.i473 ], [ true, %bb.ei ]
  %27 = trunc i32 %i.agx to i1
  %or.cond114 = and i1 %.4.i458.ph, %27
  br i1 %or.cond114, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474, label %.thread552

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474: ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471, %bb.eh, %bb.eo
  %i.ajx = icmp eq i32 %i.agx, 9
  br i1 %i.ajx, label %bb.ep, label %bb.ey

bb.ep:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474
  %i.ajy = load ptr, ptr %3, align 8, !tbaa !203
  %i.ajz = sext i32 %i.ade to i64
  %i.aka = getelementptr inbounds i8, ptr %i.ajy, i64 %i.ajz
  store i8 58, ptr %i.aka, align 1, !tbaa !136
  br i1 %.not619, label %.critedge, label %.lr.ph617

.lr.ph617:                                        ; preds = %bb.ep, %bb.er
  %indvars.iv666 = phi i64 [ %indvars.iv.next667, %bb.er ], [ %i.ago, %bb.ep ] ; 3 uses
  %indvars.iv.next667 = add nsw i64 %indvars.iv666, -1 ; 2 uses
  %i.akb = load ptr, ptr %3, align 8, !tbaa !203
  %i.akc = and i64 %indvars.iv.next667, 4294967295
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.akc ; 2 uses
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !136
  %i.akf = icmp eq i8 %i.ake, 58
  br i1 %i.akf, label %bb.er, label %.critedge

.critedge:                                        ; preds = %.lr.ph617, %bb.er, %bb.ep
  %i.akg = load ptr, ptr %3, align 8, !tbaa !203  ; 2 uses
  %i.akh = load i8, ptr %i.akg, align 1, !tbaa !136
  %i.aki = icmp eq i8 %i.akh, 58
  br i1 %i.aki, label %bb.es, label %.loopexit

bb.eq:                                            ; preds = %._crit_edge
  %i.akj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.er:                                            ; preds = %.lr.ph617
  store i8 48, ptr %i.akd, align 1, !tbaa !136
  %i.akk = load ptr, ptr %3, align 8, !tbaa !203
  %i.akl = getelementptr i8, ptr %i.akk, i64 %indvars.iv666
  %i.akm = getelementptr i8, ptr %i.akl, i64 -2   ; 2 uses
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !136
  %i.ako = add i8 %i.akn, 1
  store i8 %i.ako, ptr %i.akm, align 1, !tbaa !136
  %i.akp = trunc nuw i64 %indvars.iv666 to i32
  %i.akq = icmp sgt i32 %i.akp, 2
  br i1 %i.akq, label %.lr.ph617, label %.critedge, !llvm.loop !7213

bb.es:                                            ; preds = %.critedge
  store i8 49, ptr %i.akg, align 1, !tbaa !136
  %i.akr = and i32 %1, 4
  %.not101 = icmp eq i32 %i.akr, 0
  br i1 %.not101, label %bb.ex, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aks = load i64, ptr %i.agw, align 8, !tbaa !205 ; 2 uses
  %i.akt = add i64 %i.aks, 1                      ; 3 uses
  %i.aku = load i64, ptr %i.agp, align 8, !tbaa !204
  %i.akv = icmp ugt i64 %i.akt, %i.aku
  br i1 %i.akv, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.akw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !202
  invoke void %i.akx(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.akt)
          to label %.noexc478 unwind label %bb.ew, !inline_history !7

.noexc478:                                        ; preds = %bb.eu
  %.pre.i476 = load i64, ptr %i.agw, align 8, !tbaa !205 ; 2 uses
  %.pre2.i477 = add i64 %.pre.i476, 1
  br label %bb.ev

bb.ev:                                            ; preds = %.noexc478, %bb.et
  %.pre-phi.i475 = phi i64 [ %i.akt, %bb.et ], [ %.pre2.i477, %.noexc478 ]
  %i.aky = phi i64 [ %i.aks, %bb.et ], [ %.pre.i476, %.noexc478 ]
  %i.akz = load ptr, ptr %3, align 8, !tbaa !203
  store i64 %.pre-phi.i475, ptr %i.agw, align 8, !tbaa !205
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 %i.aky
  store i8 48, ptr %i.ala, align 1, !tbaa !136
  br label %.loopexit

bb.ew:                                            ; preds = %bb.eu
  %i.alb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ex:                                            ; preds = %bb.es
  %i.alc = load i32, ptr %4, align 4, !tbaa !141
  %i.ald = add nsw i32 %i.alc, 1
  store i32 %i.ald, ptr %4, align 4, !tbaa !141
  br label %.loopexit

bb.ey:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474
  %i.ale = add nsw i32 %i.agx, 1
  br label %.thread552

.thread552:                                       ; preds = %bb.em, %bb.eg, %bb.eo, %bb.ey
  %.076 = phi i32 [ %i.ale, %bb.ey ], [ %i.agx, %bb.eo ], [ %i.agx, %bb.eg ], [ %i.agx, %bb.em ]
  %i.alf = trunc i32 %.076 to i8
  %i.alg = add i8 %i.alf, 48
  %i.alh = load ptr, ptr %3, align 8, !tbaa !203
  %i.ali = sext i32 %i.ade to i64
  %i.alj = getelementptr inbounds i8, ptr %i.alh, i64 %i.ali
  store i8 %i.alg, ptr %i.alj, align 1, !tbaa !136
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.thread552, %bb.ev, %bb.ex, %.critedge, %bb.dy
  %i.alk = load ptr, ptr %8, align 8, !tbaa !578  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.alk, %i.s
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail6bigintD2Ev.exit, label %bb.ez

bb.ez:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.alk) #36
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit

_ZN3fmt3v126detail6bigintD2Ev.exit:               ; preds = %.loopexit, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.all = load ptr, ptr %7, align 8, !tbaa !578  ; 2 uses
  %.not.i.i.i480 = icmp eq ptr %i.all, %i.n
  br i1 %.not.i.i.i480, label %_ZN3fmt3v126detail6bigintD2Ev.exit481, label %bb.fa

bb.fa:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit
  call void @free(ptr noundef %i.all) #36
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit481

_ZN3fmt3v126detail6bigintD2Ev.exit481:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.alm = load ptr, ptr %6, align 8, !tbaa !578  ; 2 uses
  %.not.i.i.i482 = icmp eq ptr %i.alm, %i.i
  br i1 %.not.i.i.i482, label %_ZN3fmt3v126detail6bigintD2Ev.exit483, label %bb.fb

bb.fb:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit481
  call void @free(ptr noundef %i.alm) #36
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit483

_ZN3fmt3v126detail6bigintD2Ev.exit483:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit481, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.aln = load ptr, ptr %5, align 8, !tbaa !578  ; 2 uses
  %.not.i.i.i484 = icmp eq ptr %i.aln, %i.d
  br i1 %.not.i.i.i484, label %_ZN3fmt3v126detail6bigintD2Ev.exit485, label %bb.fc

bb.fc:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit483
  call void @free(ptr noundef %i.aln) #36
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit485

_ZN3fmt3v126detail6bigintD2Ev.exit485:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit483, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret void

.body:                                            ; preds = %bb.cn, %bb.co, %.loopexit566, %.loopexit.split-lp, %bb.bs, %bb.bw, %bb.dw, %bb.ef, %19, %bb.ew, %bb.eq
  %.pn104.pn.pn.pn = phi { ptr, i32 } [ %i.alb, %bb.ew ], [ %i.tq, %bb.bs ], [ %i.agc, %bb.dw ], [ %i.ail, %bb.ef ], [ %i.tx, %bb.bw ], [ %20, %19 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.akj, %bb.eq ], [ %lpad.loopexit, %.loopexit566 ], [ %i.xj, %bb.cn ], [ %i.xk, %bb.co ]
  %i.alo = load ptr, ptr %8, align 8, !tbaa !578  ; 2 uses
  %.not.i.i.i486 = icmp eq ptr %i.alo, %i.s
  br i1 %.not.i.i.i486, label %_ZN3fmt3v126detail6bigintD2Ev.exit487, label %bb.fd

bb.fd:                                            ; preds = %.body
  call void @free(ptr noundef %i.alo) #36
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit487

_ZN3fmt3v126detail6bigintD2Ev.exit487:            ; preds = %bb.fd, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.alp = load ptr, ptr %7, align 8, !tbaa !578  ; 2 uses
  %.not.i.i.i488 = icmp eq ptr %i.alp, %i.n
  br i1 %.not.i.i.i488, label %_ZN3fmt3v126detail6bigintD2Ev.exit489, label %bb.fe

bb.fe:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit487
  call void @free(ptr noundef %i.alp) #36
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit489

_ZN3fmt3v126detail6bigintD2Ev.exit489:            ; preds = %bb.fe, %_ZN3fmt3v126detail6bigintD2Ev.exit487
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.alq = load ptr, ptr %6, align 8, !tbaa !578  ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %i.alq, %i.i
  br i1 %.not.i.i.i490, label %_ZN3fmt3v126detail6bigintD2Ev.exit491, label %bb.ff

bb.ff:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit489
  call void @free(ptr noundef %i.alq) #36
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit491

_ZN3fmt3v126detail6bigintD2Ev.exit491:            ; preds = %bb.ff, %_ZN3fmt3v126detail6bigintD2Ev.exit489
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.alr = load ptr, ptr %5, align 8, !tbaa !578  ; 2 uses
  %.not.i.i.i492 = icmp eq ptr %i.alr, %i.d
  br i1 %.not.i.i.i492, label %_ZN3fmt3v126detail6bigintD2Ev.exit493, label %bb.fg

bb.fg:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit491
  call void @free(ptr noundef %i.alr) #36
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit493

_ZN3fmt3v126detail6bigintD2Ev.exit493:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit491, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  resume { ptr, i32 } %.pn104.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #31

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1212format_errorE, i64 16), ptr %0, align 8, !tbaa !105
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1212format_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !578
  store i32 1, ptr %i.b, align 4, !tbaa !141
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !579
  %.not8.i.i.not = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.not, label %bb.c, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !577
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !inline_history !7217
  %.pre.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !579
  %i.g = icmp ne i64 %.pre.i.i.i.i, 0
  %i.h = zext i1 %i.g to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit:          ; preds = %bb.b, %bb.c
  %i.i = phi i64 [ 1, %bb.b ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !584
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.k, align 8, !tbaa !583
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.m = lshr exact i32 -2147483648, %i.l
  %i.n = load ptr, ptr %0, align 8, !tbaa !578
  store i32 5, ptr %i.n, align 4, !tbaa !141
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !579
  %.not8.i.i14.not = icmp eq i64 %i.p, 0
  br i1 %.not8.i.i14.not, label %bb.e, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !577
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !inline_history !7217
  %.pre.i.i.i.i15 = load i64, ptr %i.o, align 8, !tbaa !579
  %i.s = icmp ne i64 %.pre.i.i.i.i15, 0
  %i.t = zext i1 %i.s to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16:        ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ 1, %bb.d ], [ %i.t, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !584
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !583
  %.019 = ashr i32 %i.m, 1                        ; 2 uses
  %.not20 = icmp eq i32 %.019, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %.021 = phi i32 [ %.019, %.lr.ph ], [ %.0, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit ] ; 2 uses
  tail call void @_ZN3fmt3v126detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0)
  %i.y = and i32 %.021, %1
  %.not10 = icmp eq i32 %i.y, 0
  br i1 %.not10, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.v, align 8, !tbaa !584  ; 7 uses
  %.not14.i.i = icmp eq i64 %i.z, 0
  br i1 %.not14.i.i, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !tbaa !578   ; 4 uses
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.z, -2
  br label %bb.h

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.h
  %2 = trunc i64 %i.z to i1
  br i1 %2, label %.epil.preheader, label %._crit_edge.i.i

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ay, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod41 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i.epil.init ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !141
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 5
  %i.ag = add nuw nsw i64 %i.af, %.01112.i.i.epil.init ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !141
  %i.ai = lshr i64 %i.ag, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa39 = phi i64 [ %i.ay, %._crit_edge.i.i.unr-lcssa ], [ %i.ai, %.epil.preheader ] ; 2 uses
  %i.aj = trunc nuw nsw i64 %.lcssa39 to i32
  %.not.i.i17 = icmp eq i64 %.lcssa39, 0
  br i1 %.not.i.i17, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.az, %bb.h ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ay, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !141
  %i.am = zext i32 %i.al to i64
  %i.an = mul nuw nsw i64 %i.am, 5
  %i.ao = add nuw nsw i64 %i.an, %.01112.i.i      ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !141
  %i.aq = lshr i64 %i.ao, 32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !141
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw nsw i64 %i.au, 5
  %i.aw = add nuw nsw i64 %i.av, %i.aq            ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !141
  %i.ay = lshr i64 %i.aw, 32                      ; 3 uses
  %i.az = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.h, !llvm.loop !87

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ba = add i64 %i.z, 1                         ; 3 uses
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !579
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !577
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ba), !inline_history !7218
  %.pre.i.i.i = load i64, ptr %i.v, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.aa, %bb.i ], [ %.pre.i, %bb.j ]
  %.pre-phi.i.i.i = phi i64 [ %i.ba, %bb.i ], [ %.pre2.i.i.i, %bb.j ]
  %i.bf = phi i64 [ %i.z, %bb.i ], [ %.pre.i.i.i, %bb.j ]
  store i64 %.pre-phi.i.i.i, ptr %i.v, align 8, !tbaa !584
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  store i32 %i.aj, ptr %i.bg, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i, %._crit_edge.i.i, %bb.g, %bb.f
  %.0 = ashr i32 %.021, 1                         ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !7219

._crit_edge.loopexit:                             ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !583
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16
  %i.bh = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16 ]
  %i.bi = sdiv i32 %1, 32
  %i.bj = add nsw i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.w, align 8, !tbaa !583
  %i.bk = srem i32 %1, 32                         ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !584 ; 7 uses
  %.not19.i = icmp eq i64 %i.bm, 0
  br i1 %.not19.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bn = load ptr, ptr %0, align 8, !tbaa !578   ; 3 uses
  %i.bo = sub nsw i32 32, %i.bk                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bm, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert34 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat35 = shufflevector <4 x i32> %broadcast.splatinsert34, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !141 ; 2 uses
  %wide.load36 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !141 ; 2 uses
  %i.br = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.bs = lshr <4 x i32> %wide.load36, %broadcast.splat ; 3 uses
  %i.bt = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.br, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bu = shufflevector <4 x i32> %i.br, <4 x i32> %i.bs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bv = shl <4 x i32> %wide.load, %broadcast.splat35
  %i.bw = shl <4 x i32> %wide.load36, %broadcast.splat35
  %i.bx = add <4 x i32> %i.bv, %i.bt
  %i.by = add <4 x i32> %i.bw, %i.bu
  store <4 x i32> %i.bx, ptr %i.bp, align 4, !tbaa !141
  store <4 x i32> %i.by, ptr %i.bq, align 4, !tbaa !141
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !7220

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.bs, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01418.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.017.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.cc, %scalar.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i = phi i64 [ %i.cf, %scalar.ph ], [ %.01418.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.cc, %scalar.ph ], [ %.017.i.ph, %scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.01418.i ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !141 ; 2 uses
  %i.cc = lshr i32 %i.cb, %i.bo                   ; 2 uses
  %i.cd = shl i32 %i.cb, %i.bk
  %i.ce = add i32 %i.cd, %.017.i
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !141
  %i.cf = add nuw i64 %.01418.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !7221

bb.l:                                             ; preds = %._crit_edge.i
  %i.cg = add i64 %i.bm, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.o, align 8, !tbaa !579
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !577
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cg), !inline_history !7222
  %.pre.i.i = load i64, ptr %i.v, align 8, !tbaa !584 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !578
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i: ; preds = %bb.m, %bb.l
  %i.cl = phi ptr [ %i.bn, %bb.l ], [ %.pre23, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %i.cg, %bb.l ], [ %.pre2.i.i, %bb.m ]
  %i.cm = phi i64 [ %i.bm, %bb.l ], [ %.pre.i.i, %bb.m ]
  store i64 %.pre-phi.i.i, ptr %i.v, align 8, !tbaa !584
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %.lcssa, ptr %i.cn, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.k, %._crit_edge, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(172) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !584  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !583  ; 4 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !584  ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !583  ; 3 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail6bigint13divmod_assignERKS2_:bb.a
  %sext.i = shl i64 %i.b, 32
  %i.q = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.r = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.h, 32
  %i.s = ashr exact i64 %sext55.i, 32             ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.r)
  %.not35.not.i91 = icmp sgt i64 %i.q, %i.r
  br i1 %.not35.not.i91, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i, %i.r
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !88

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.q, %bb.c ]
  %indvars.iv45.i92 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i93, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i92, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !141  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next46.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !141  ; 2 uses
  %.not37.i = icmp eq i32 %i.u, %i.w
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %indvars.iv45.i.lcssa = phi i64 [ %i.s, %bb.c ], [ %indvars.iv.next46.i, %bb.d ]
  %or.cond.not = icmp slt i64 %smin, %indvars.iv45.i.lcssa
  br i1 %or.cond.not, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %select.unfold

.loopexit.i:                                      ; preds = %.lr.ph
  %i.x = icmp ugt i32 %i.u, %i.w
  br i1 %i.x, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

select.unfold:                                    ; preds = %.loopexit.i, %bb.b, %._crit_edge
  %i.y = sub nsw i32 %i.e, %i.k                   ; 4 uses
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.aa = add nsw i32 %i.y, %i.c
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !579 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.f, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !577
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ab), !inline_history !7223
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !579
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.f, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ai = tail call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ah) ; 2 uses
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !584
  %i.aj = icmp sgt i32 %i.c, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !578 ; 13 uses
  br i1 %i.aj, label %.lr.ph.i, label %.lr.ph.preheader.i.i

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ak = add nsw i32 %i.c, -1                    ; 2 uses
  %i.al = add i32 %i.y, %i.ak
  %i.am = sext i32 %i.al to i64                   ; 5 uses
  %i.an = zext i32 %i.ak to i64                   ; 5 uses
  %i.ao = and i64 %i.b, 2147483647                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ao, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ap = sub nsw i64 %i.an, %i.am
  %i.aq = shl nsw i64 %i.ap, 2
  %i.ar = add nsw i64 %i.aq, -1
  %diff.check = icmp ult i64 %i.ar, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  %i.as = sub nsw i64 %i.an, %n.vec
  %i.at = sub nsw i64 %i.am, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = sub i64 %i.an, %index
  %i.av = sub i64 %i.am, %index
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !141
  %wide.load106 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !141
  %i.az = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -12
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -28
  store <4 x i32> %wide.load, ptr %i.ba, align 4, !tbaa !141
  store <4 x i32> %wide.load106, ptr %i.bb, align 4, !tbaa !141
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !7224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i ], [ %i.as, %middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i ], [ %i.at, %middle.block ] ; 2 uses
  %i.bd = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %scalar.ph.prol ], [ %indvars.iv18.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %scalar.ph.prol ], [ %indvars.iv.i11.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !141
  %i.bg = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !141
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !7225

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %scalar.ph.prol ]
  %i.bh = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bh, label %.lr.ph.preheader.i.i, label %scalar.ph

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bi = xor i32 %i.k, -1
  %i.bj = add i32 %i.e, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.bl, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.pre.i, i8 0, i64 %i.bm, i1 false), !tbaa !141
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !583
  %i.bo = sub nsw i32 %i.bn, %i.y                 ; 2 uses
  store i32 %i.bo, ptr %i.d, align 8, !tbaa !583
  %.pre.pre = load i64, ptr %i.g, align 8, !tbaa !584
  br label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %scalar.ph ], [ %indvars.iv18.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !141
  %i.br = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !141
  %i.bs = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !141
  %i.bv = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !141
  %i.bx = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !141
  %i.ca = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !141
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !141
  %i.ce = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cf = getelementptr i8, ptr %i.ce, i64 -12
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !141
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %.lr.ph.preheader.i.i, label %scalar.ph, !llvm.loop !7226

_ZN3fmt3v126detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %.lr.ph.preheader.i.i
  %.pre = phi i64 [ %i.h, %select.unfold ], [ %.pre.pre, %.lr.ph.preheader.i.i ]
  %i.cg = phi i32 [ %i.e, %select.unfold ], [ %i.bo, %.lr.ph.preheader.i.i ]
  %i.ch = phi i64 [ %i.b, %select.unfold ], [ %i.ai, %.lr.ph.preheader.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31: ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit
  %i.ck = phi i32 [ %i.cg, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ex, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.cl = phi i64 [ %.pre, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ez, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 5 uses
  %i.cm = phi i64 [ %i.ch, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.eu, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ev, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.cn = trunc i64 %i.cm to i32
  %.not21.i = icmp eq i64 %i.cl, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31
  %i.co = load i32, ptr %i.j, align 8, !tbaa !583
  %i.cp = sub i32 %i.co, %i.ck
  %i.cq = load ptr, ptr %1, align 8, !tbaa !578   ; 3 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !578   ; 4 uses
  %i.cs = sext i32 %i.cp to i64                   ; 2 uses
  %i.ct = icmp eq i64 %i.cl, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.cl, -2
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %2 = trunc i64 %i.cl to i1
  br i1 %2, label %.epil.preheader, label %._crit_edge.i

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.cs, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.ea, %._crit_edge.i.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dz, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod125 = trunc i64 %i.cl to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i.epil.init
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !141
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !141
  %i.cy = zext i32 %i.cx to i64
  %i.cz = zext i32 %i.cv to i64
  %i.da = add nuw nsw i64 %.01822.i.epil.init, %i.cz
  %i.db = sub nsw i64 %i.cy, %i.da                ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  store i32 %i.dc, ptr %i.cw, align 4, !tbaa !141
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.dx, %._crit_edge.i.unr-lcssa ], [ %i.db, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.dd = icmp sgt i64 %.lcssa, -1
  br i1 %i.dd, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.cs, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.024.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.ea, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dz, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !141
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !141
  %i.di = zext i32 %i.dh to i64
  %i.dj = zext i32 %i.df to i64
  %i.dk = add nuw nsw i64 %.01822.i, %i.dj
  %i.dl = sub nsw i64 %i.di, %i.dk                ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.dg, align 4, !tbaa !141
  %i.dn = lshr i64 %i.dl, 63
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !141
  %i.dr = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv.i15
  %i.ds = getelementptr i8, ptr %i.dr, i64 4      ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !141
  %i.du = zext i32 %i.dt to i64
  %i.dv = zext i32 %i.dq to i64
  %i.dw = add nuw nsw i64 %i.dn, %i.dv
  %i.dx = sub nsw i64 %i.du, %i.dw                ; 3 uses
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !141
  %i.dz = lshr i64 %i.dx, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
  %i.ea = add nuw i64 %.024.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !7227

bb.h:                                             ; preds = %._crit_edge.i
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.next.i16.lcssa ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !141
  %i.ed = add i32 %i.ec, -1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !141
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.h, %._crit_edge.i, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31
  %i.ee = load ptr, ptr %0, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.cn, i32 1) ; 2 uses
  %i.ef = trunc i64 %i.cm to i32                  ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %.lr.ph95, label %.critedge.i.i

.lr.ph95:                                         ; preds = %._crit_edge.thread.i
  %i.eh = and i64 %i.cm, 2147483647
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ei = trunc nuw i64 %i.el to i32              ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.j, label %.critedge.i.i, !llvm.loop !89

bb.j:                                             ; preds = %.lr.ph95, %bb.i
  %i.ek = phi i32 [ %i.ef, %.lr.ph95 ], [ %i.ei, %bb.i ]
  %indvars.iv.i14.i94 = phi i64 [ %i.eh, %.lr.ph95 ], [ %i.el, %bb.i ]
  %i.el = add nsw i64 %indvars.iv.i14.i94, -1     ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !141
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.i, label %..critedge.i.i_crit_edge, !llvm.loop !89

..critedge.i.i_crit_edge:                         ; preds = %bb.j
  br label %.critedge.i.i, !llvm.loop !89

.critedge.i.i:                                    ; preds = %bb.i, %..critedge.i.i_crit_edge, %._crit_edge.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %._crit_edge.thread.i ], [ %i.ek, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.i ]
  %i.ep = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.eq = load i64, ptr %i.ci, align 8, !tbaa !579 ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  br i1 %i.er, label %bb.k, label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

bb.k:                                             ; preds = %.critedge.i.i
  %i.es = load ptr, ptr %i.cj, align 8, !tbaa !577
  tail call void %i.es(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ep), !inline_history !7228
  %.pre.i.i.i.i = load i64, ptr %i.ci, align 8, !tbaa !579
  br label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.k
  %i.et = phi i64 [ %i.eq, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.k ]
  %i.eu = tail call noundef i64 @llvm.umin.i64(i64 %i.ep, i64 %i.et) ; 4 uses
  store i64 %i.eu, ptr %i.a, align 8, !tbaa !584
  %i.ev = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.ew = trunc nuw i64 %i.eu to i32              ; 2 uses
  %i.ex = load i32, ptr %i.d, align 8, !tbaa !583 ; 2 uses
  %i.ey = add nsw i32 %i.ex, %i.ew                ; 2 uses
  %i.ez = load i64, ptr %i.g, align 8, !tbaa !584 ; 3 uses
  %i.fa = trunc i64 %i.ez to i32                  ; 2 uses
  %i.fb = load i32, ptr %i.j, align 8, !tbaa !583
  %i.fc = add nsw i32 %i.fb, %i.fa                ; 2 uses
  %.not.i18 = icmp eq i32 %i.ey, %i.fc
  br i1 %.not.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fd = icmp sgt i32 %i.ey, %i.fc
  br i1 %i.fd, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.m:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fe = sub nsw i32 %i.ew, %i.fa
  %spec.store.select.i20 = tail call i32 @llvm.smax.i32(i32 %i.fe, i32 0)
  %i.ff = load ptr, ptr %0, align 8
  %i.fg = load ptr, ptr %1, align 8
  %sext.i21 = shl nuw i64 %i.eu, 32
  %i.fh = ashr exact i64 %sext.i21, 32            ; 3 uses
  %i.fi = zext nneg i32 %spec.store.select.i20 to i64 ; 3 uses
  %sext55.i22 = shl i64 %i.ez, 32
  %i.fj = ashr exact i64 %sext55.i22, 32          ; 2 uses
  %smin59 = tail call i64 @llvm.smin.i64(i64 %i.fh, i64 %i.fi)
  %.not35.not.i2599 = icmp sgt i64 %i.fh, %i.fi
  br i1 %.not35.not.i2599, label %.lr.ph103, label %._crit_edge104

bb.n:                                             ; preds = %.lr.ph103
  %.not35.not.i25 = icmp sgt i64 %indvars.iv.next.i27, %i.fi
  br i1 %.not35.not.i25, label %.lr.ph103, label %._crit_edge104, !llvm.loop !88

.lr.ph103:                                        ; preds = %bb.m, %bb.n
  %indvars.iv.i24101 = phi i64 [ %indvars.iv.next.i27, %bb.n ], [ %i.fh, %bb.m ]
  %indvars.iv45.i23100 = phi i64 [ %indvars.iv.next46.i28, %bb.n ], [ %i.fj, %bb.m ]
  %indvars.iv.next.i27 = add nsw i64 %indvars.iv.i24101, -1 ; 3 uses
  %indvars.iv.next46.i28 = add nsw i64 %indvars.iv45.i23100, -1 ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.next.i27
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !141 ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %indvars.iv.next46.i28
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !141 ; 2 uses
  %.not37.i29 = icmp eq i32 %i.fl, %i.fn
  br i1 %.not37.i29, label %bb.n, label %.loopexit.i30, !llvm.loop !88

._crit_edge104:                                   ; preds = %bb.n, %bb.m
  %indvars.iv45.i23.lcssa = phi i64 [ %i.fj, %bb.m ], [ %indvars.iv.next46.i28, %bb.n ]
  %or.cond.not49 = icmp slt i64 %smin59, %indvars.iv45.i23.lcssa
  br i1 %or.cond.not49, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge

.loopexit.i30:                                    ; preds = %.lr.ph103
  %i.fo = icmp ugt i32 %i.fl, %i.fn
  br i1 %i.fo, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge: ; preds = %.loopexit.i30, %bb.l, %._crit_edge104
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31, !llvm.loop !7229

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge104, %.loopexit.i30, %bb.l, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.ev, %bb.l ], [ %i.ev, %.loopexit.i30 ], [ %i.ev, %._crit_edge104 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !579  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !578    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !584  ; 2 uses
  %i.m = icmp ule i64 %i.l, %.0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl i64 %i.l, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.h, i64 %i.n, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !578
  store i64 %.0, ptr %i.a, align 8, !tbaa !579
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.o
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.h) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::basic_memory_buffer.681", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !584  ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = shl i32 %i.c, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(161) %1, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.f, align 8, !tbaa !577
  %i.g = load ptr, ptr %0, align 8, !tbaa !578    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !579  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !578
  store i64 %i.i, ptr %i.e, align 8, !tbaa !579
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !141
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %1, align 8, !tbaa !578
  store i64 %i.i, ptr %i.e, align 8, !tbaa !579
  store ptr %i.j, ptr %0, align 8, !tbaa !578
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i

_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c, %bb.b
  %i.m = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader ], [ %i.g, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %i.n = phi i64 [ %i.i, %.lr.ph.i.i.i.preheader ], [ 0, %bb.c ], [ %i.i, %bb.b ]
  %i.o = icmp ugt i64 %i.b, %i.i
  br i1 %i.o, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i
  %i.p = lshr i64 %i.i, 1
  %i.q = add i64 %i.p, %i.i                       ; 3 uses
  %i.r = icmp ugt i64 %i.b, %i.q
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %i.q, 4611686018427387903
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = call noundef i64 @llvm.umax.i64(i64 %i.b, i64 4611686018427387903)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i64 [ %i.q, %bb.e ], [ %i.t, %bb.f ], [ %i.b, %bb.d ] ; 4 uses
  %i.u = shl i64 %.0.i, 2
  %i.v = invoke noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef %i.u)
          to label %.noexc112 unwind label %bb.i  ; 2 uses

.noexc112:                                        ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !584  ; 2 uses
  %i.y = icmp ule i64 %i.x, %.0.i
  call void @llvm.assume(i1 %i.y)
  %i.z = shl i64 %i.x, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.v, ptr align 4 %i.m, i64 %i.z, i1 false)
  store ptr %i.v, ptr %1, align 8, !tbaa !578
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !579
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %i.m, %i.aa
  br i1 %.not.i, label %.noexc.i, label %bb.h

bb.h:                                             ; preds = %.noexc112
  call void @free(ptr noundef %i.m) #36
  %.pre.i.i.i.i.pre = load i64, ptr %i.e, align 8, !tbaa !579
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.h, %.noexc112
  %.pre.i.i.i.i = phi i64 [ %.pre.i.i.i.i.pre, %bb.h ], [ %.0.i, %.noexc112 ]
  %.pre = load i64, ptr %i.h, align 8, !tbaa !579
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #40
  unreachable

bb.j:                                             ; preds = %.noexc.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i
  %i.ad = phi i64 [ %i.n, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i ], [ %.pre, %.noexc.i ] ; 2 uses
  %i.ae = phi i64 [ %i.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i ], [ %.pre.i.i.i.i, %.noexc.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.ae)
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !584
  %i.ah = zext i32 %i.d to i64                    ; 3 uses
  %i.ai = icmp ult i64 %i.ad, %i.ah
  br i1 %i.ai, label %bb.k, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !577
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(161) %0, i64 noundef %i.ah)
          to label %.noexc unwind label %bb.l, !inline_history !7230

.noexc:                                           ; preds = %bb.k
  %.pre.i.i42 = load i64, ptr %i.h, align 8, !tbaa !579
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit: ; preds = %bb.j, %.noexc
  %i.al = phi i64 [ %i.ad, %bb.j ], [ %.pre.i.i42, %.noexc ] ; 3 uses
  %i.am = call noundef i64 @llvm.umin.i64(i64 %i.ah, i64 %i.al) ; 4 uses
  store i64 %i.am, ptr %i.a, align 8, !tbaa !584
  %i.an = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.an, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.ao = load ptr, ptr %1, align 8, !tbaa !578   ; 6 uses
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.m
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.m ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %.03750 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.bi, %bb.m ] ; 2 uses
  %i.ap = icmp eq i64 %indvars.iv, 0
  br i1 %i.ap, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.n

.preheader.loopexit:                              ; preds = %bb.m
  %.pre93.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bi, %.preheader.loopexit ]
  %i.aq = icmp sgt i32 %i.d, %i.c
  br i1 %i.aq, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.ar = load ptr, ptr %1, align 8               ; 6 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.as = ashr exact i64 %sext, 32                ; 4 uses
  %sext109 = add i64 %sext, -4294967296
  %i.at = ashr exact i64 %sext109, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.at, %i.as
  %i.au = add i32 %i.c, -2
  %indvars.iv82.prol = add nsw i64 %i.as, -1      ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv82.prol
  br label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.unr-lcssa:                                       ; preds = %bb.n
  %2 = trunc i64 %indvars.iv71 to i1
  br i1 %2, label %.epil.preheader, label %bb.m

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader46
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next65.1, %.unr-lcssa ]
  %indvars.iv62.epil.init = phi i64 [ %indvars.iv, %.preheader46 ], [ %indvars.iv.next63.1, %.unr-lcssa ]
  %.147.epil.init = phi i128 [ %.03750, %.preheader46 ], [ %i.cc, %.unr-lcssa ]
  %lcmp.mod148 = trunc i64 %indvars.iv71 to i1
  call void @llvm.assume(i1 %lcmp.mod148)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv64.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !141
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv62.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !141
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul nuw i64 %i.bc, %i.az
  %i.be = zext i64 %i.bd to i128
  %i.bf = add i128 %.147.epil.init, %i.be
  br label %bb.m

bb.m:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa145 = phi i128 [ %i.cc, %.unr-lcssa ], [ %i.bf, %.epil.preheader ] ; 2 uses
  %i.bg = trunc i128 %.lcssa145 to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !141
  %i.bi = lshr i128 %.lcssa145, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader.loopexit, label %.preheader46, !llvm.loop !7231

bb.n:                                             ; preds = %bb.n, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.n ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.n ] ; 3 uses
  %.147 = phi i128 [ %.03750, %.preheader46.new ], [ %i.cc, %bb.n ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.n ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv64
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !141
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv62
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !141
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw i64 %i.bo, %i.bl
  %i.bq = zext i64 %i.bp to i128
  %i.br = add i128 %.147, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !141
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv62
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !141
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw i64 %i.bz, %i.bv
  %i.cb = zext i64 %i.ca to i128
  %i.cc = add i128 %i.br, %i.cb                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.n, !llvm.loop !7232

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %0, align 8
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.cd = phi ptr [ %.pre92, %._crit_edge59.loopexit ], [ %.pre93, %.preheader ]
  %i.ce = trunc nuw i64 %i.am to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.ce, i32 1) ; 2 uses
  %i.cf = trunc nuw i64 %i.am to i32              ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %.lr.ph140, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph140
  %i.ch = trunc nuw i64 %i.ck to i32              ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %.lr.ph140, label %.critedge.i, !llvm.loop !89

.lr.ph140:                                        ; preds = %._crit_edge59, %bb.o
  %i.cj = phi i32 [ %i.ch, %bb.o ], [ %i.cf, %._crit_edge59 ]
  %indvars.iv.i139 = phi i64 [ %i.ck, %bb.o ], [ %i.am, %._crit_edge59 ]
  %i.ck = add nsw i64 %indvars.iv.i139, -1        ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !141
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.o, label %..critedge.i_crit_edge, !llvm.loop !89

..critedge.i_crit_edge:                           ; preds = %.lr.ph140
  br label %.critedge.i, !llvm.loop !89

.critedge.i:                                      ; preds = %bb.o, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.cj, %..critedge.i_crit_edge ], [ %smin.i, %bb.o ]
  %i.co = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cp = icmp ult i64 %i.al, %i.co
  br i1 %i.cp, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.critedge.i
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !577
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.co)
          to label %.noexc43 unwind label %bb.t, !inline_history !7233

.noexc43:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !579
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ %i.as, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.dg, %._crit_edge ] ; 3 uses
  %i.cs = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.cs, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.ct = sext i32 %indvars.iv78 to i64           ; 3 uses
  %i.cu = sub i32 %indvar, %i.c
  %lcmp.mod150.not = trunc i32 %i.cu to i1
  br i1 %lcmp.mod150.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nsw i64 %i.ct, 1
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ct
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !141
  %i.cx = zext i32 %i.cw to i64
  %i.cy = load i32, ptr %i.av, align 4, !tbaa !141
  %i.cz = zext i32 %i.cy to i64
  %i.da = mul nuw i64 %i.cz, %i.cx
  %i.db = zext i64 %i.da to i128
  %i.dc = add nsw i128 %.256, %i.db               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa144.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.dc, %.lr.ph.prol ]
  %indvars.iv82.in.unr = phi i64 [ %i.as, %.lr.ph.preheader ], [ %indvars.iv82.prol, %.lr.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %i.ct, %.lr.ph.preheader ], [ %indvars.iv.next81.prol, %.lr.ph.prol ]
  %.352.unr = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.dc, %.lr.ph.prol ]
  %i.dd = icmp eq i32 %i.au, %indvar
  br i1 %i.dd, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.q
  %.3.lcssa = phi i128 [ %.256, %bb.q ], [ %.lcssa144.unr, %.lr.ph.prol.loopexit ], [ %i.ea, %.lr.ph ] ; 2 uses
  %i.de = trunc i128 %.3.lcssa to i32
  %i.df = getelementptr inbounds [4 x i8], ptr %.pre93, i64 %indvars.iv88
  store i32 %i.de, ptr %i.df, align 4, !tbaa !141
  %i.dg = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59.loopexit, label %bb.q, !llvm.loop !7234

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82.1, %.lr.ph ], [ %indvars.iv82.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %.lr.ph ], [ %indvars.iv80.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.352 = phi i128 [ %i.ea, %.lr.ph ], [ %.352.unr, %.lr.ph.prol.loopexit ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv80
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !141
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv82.in
  %i.dl = getelementptr i8, ptr %i.dk, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !141
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw i64 %i.dn, %i.dj
  %i.dp = zext i64 %i.do to i128
  %i.dq = add i128 %.352, %i.dp
  %indvars.iv82.1 = add nsw i64 %indvars.iv82.in, -2 ; 2 uses
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv80
  %i.ds = getelementptr i8, ptr %i.dr, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !141
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv82.1
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.dx = zext i32 %i.dw to i64
  %i.dy = mul nuw i64 %i.dx, %i.du
  %i.dz = zext i64 %i.dy to i128
  %i.ea = add i128 %i.dq, %i.dz                   ; 2 uses
  %lftr.wideiv117.1 = trunc i64 %indvars.iv.next81.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv117.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !7235

bb.r:                                             ; preds = %.noexc43, %.critedge.i
  %i.eb = phi i64 [ %i.al, %.critedge.i ], [ %.pre.i.i.i, %.noexc43 ]
  %i.ec = call noundef i64 @llvm.umin.i64(i64 %i.co, i64 %i.eb)
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !584
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !583
  %i.ef = shl nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !583
  %i.eg = load ptr, ptr %1, align 8, !tbaa !578   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.eg) #36
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.t:                                             ; preds = %bb.p
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ei, %bb.t ], [ %i.aw, %bb.l ]
  %i.ej = load ptr, ptr %1, align 8, !tbaa !578   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i.i44, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.ej) #36
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %6 = alloca %class.anon.685, align 8            ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !345    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZN3fmt3v126detail18decimal_point_implIcEET_NS0_10locale_refE(ptr %5)
  %.pre = load i32, ptr %2, align 4, !tbaa !345
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.e = phi i8 [ %i.c, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !561  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !562
  %i.j = add nsw i32 %i.i, %i.g                   ; 3 uses
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  %i.l = trunc i32 %i.d to i8
  %i.m = and i8 %i.l, 7
  switch i8 %i.m, label %bb.d [
    i8 2, label %bb.e
    i8 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !347  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %. = select i1 %i.p, i32 %i.o, i32 %4
  %i.q = icmp sgt i32 %i.j, -4
  %i.r = icmp sle i32 %i.j, %.
  %i.s = and i1 %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.t = ptrtoint ptr %5 to i64
  %i.u = tail call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.g, i8 noundef signext %i.e, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.t)
  br label %bb.q

bb.f:                                             ; preds = %bb.c, %bb.d
  %.not51 = icmp ne i32 %3, 0
  %i.v = zext i1 %.not51 to i32
  %i.w = add nsw i32 %i.g, %i.v
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = and i32 %i.d, 8192
  %.not53 = icmp eq i32 %i.y, 0
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !347
  %i.ab = sub nsw i32 %i.aa, %i.g
  %i.ac = tail call noundef i32 @llvm.smax.i32(i32 %i.ab, i32 0) ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = add nsw i64 %i.ad, %i.x
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = icmp eq i32 %i.g, 1
  %spec.select = select i1 %i.af, i8 0, i8 %i.e
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.049 = phi i32 [ %i.ac, %bb.g ], [ 0, %bb.h ]
  %.048 = phi i64 [ %i.ae, %bb.g ], [ %i.x, %bb.h ]
  %.0 = phi i8 [ %i.e, %bb.g ], [ %spec.select, %bb.h ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.ag = zext i1 %.not52 to i64
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.k, i1 true) ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, 100
  %i.aj = icmp samesign ugt i32 %i.ah, 999
  %i.ak = select i1 %i.aj, i64 6, i64 5
  %.0.i = select i1 %i.ai, i64 4, i64 %i.ak
  %i.al = add nsw i64 %.048, %.0.i
  %i.am = add nsw i64 %i.al, %i.ag                ; 3 uses
  %i.an = and i32 %i.d, 4096
  %.not54 = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not54, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i32 %3, ptr %6, align 8, !tbaa !586
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !7237
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.g, ptr %i.aq, align 8, !tbaa !587
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 %.0, ptr %i.ar, align 4, !tbaa !588
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %.049, ptr %i.as, align 8, !tbaa !589
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 36
end_hunk_4
