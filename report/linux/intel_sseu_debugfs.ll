inline.NumInlined: 26
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@intel_sseu_status:bb.a
  br i1 %.not58, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cu = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 144
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call i32 %i.cw(ptr noundef %i.cu, i32 1278052, i1 noundef zeroext true) #8, !inline_history !15 ; 2 uses
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = and i8 %i.cy, 7                         ; 2 uses
  store i8 %i.cz, ptr %i.r, align 8
  %.not.i40 = icmp eq i8 %i.cz, 0
  br i1 %.not.i40, label %cherryview_sseu_device_status.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = load i8, ptr %i.ag, align 2
  store i8 %i.da, ptr %i.ae, align 2
  %i.db = and i32 %i.cx, 7
  %i.dc = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.db, i32 -1) #11, !srcloc !16
  %i.dd = add i32 %i.dc, 1
  %i.de = sext i32 %i.dd to i64
  br label %fls.exit38.i

fls.exit38.i:                                     ; preds = %bb.j, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %bb.j ] ; 4 uses
  %i.df = icmp slt i64 %indvars.iv.i, %i.de
  br i1 %i.df, label %bb.k, label %bb.l

bb.k:                                             ; preds = %fls.exit38.i
  %i.dg = getelementptr i8, ptr %i.ah, i64 %indvars.iv.i
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = getelementptr i8, ptr %i.ac, i64 %indvars.iv.i
  store i8 %i.dh, ptr %i.di, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %fls.exit38.i, !llvm.loop !17

bb.l:                                             ; preds = %fls.exit38.i
  %i.dj = load i8, ptr %i.ae, align 2
  %i.dk = zext i8 %i.dj to i32
  %i.dl = tail call i32 @intel_sseu_subslice_total(ptr noundef nonnull %i.r) #8
  %i.dm = mul i32 %i.dl, %i.dk
  %i.dn = trunc i32 %i.dm to i16
  store i16 %i.dn, ptr %i.ad, align 8
  br label %fls.exit.i

fls.exit.i:                                       ; preds = %bb.l, %bb.m
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.do = load i8, ptr %i.r, align 8
  %i.dp = zext i8 %i.do to i32
  %i.dq = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.dp, i32 -1) #11, !srcloc !16
  %i.dr = add i32 %i.dq, 1
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv40.i, %i.ds
  br i1 %i.dt, label %bb.m, label %cherryview_sseu_device_status.exit

bb.m:                                             ; preds = %fls.exit.i
  %i.du = getelementptr i8, ptr %i.ai, i64 %indvars.iv40.i
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = zext i8 %i.dv to i32
  %i.dx = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.dy = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.dw, i64 %i.dx) #11, !srcloc !19 ; 2 uses
  %i.dz = extractvalue { i32, i64 } %i.dy, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.dz)
  %.pre.i = load i16, ptr %i.ad, align 8
  %i.ea = extractvalue { i32, i64 } %i.dy, 0
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = sub i16 %.pre.i, %i.eb
  store i16 %i.ec, ptr %i.ad, align 8
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  br label %fls.exit.i, !llvm.loop !20

bb.n:                                             ; preds = %bb.h
  %i.ed = load i8, ptr %i.h, align 8              ; 2 uses
  %i.ee = icmp eq i8 %i.ed, 9
  br i1 %i.ee, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.ef = load ptr, ptr %i.af, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i64 93458488361045, ptr %i.f, align 8, !annotation !21
  %i.eg = load i8, ptr %i.s, align 8
  %.not125.i = icmp eq i8 %i.eg, 0
  br i1 %.not125.i, label %gen9_sseu_device_status.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, i8 0, i64 12, i1 false), !annotation !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !annotation !21
  %i.eh = getelementptr i8, ptr %i.ef, i64 144    ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i42, %bb.p ] ; 4 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %indvars.iv.tr.i = trunc nuw nsw i64 %indvars.iv.i41 to i32
  %i.ej = shl nuw nsw i32 %indvars.iv.tr.i, 2
  %i.ek = add nuw nsw i32 %i.ej, 32844
  %i.el = tail call i32 %i.ei(ptr noundef %i.ef, i32 %i.ek, i1 noundef zeroext true) #8, !inline_history !22
  %i.em = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.i41
  store i32 %i.el, ptr %i.em, align 4
  %i.en = shl nuw nsw i64 %indvars.iv.i41, 3      ; 2 uses
  %i.eo = load ptr, ptr %i.eh, align 8
  %i.ep = trunc nuw nsw i64 %i.en to i32          ; 2 uses
  %i.eq = add nuw nsw i32 %i.ep, 32860
  %i.er = tail call i32 %i.eo(ptr noundef %i.ef, i32 %i.eq, i1 noundef zeroext true) #8, !inline_history !22
  %i.es = getelementptr i8, ptr %i.e, i64 %i.en   ; 2 uses
  store i32 %i.er, ptr %i.es, align 8
  %i.et = load ptr, ptr %i.eh, align 8
  %i.eu = add nuw nsw i32 %i.ep, 32864
  %i.ev = tail call i32 %i.et(ptr noundef %i.ef, i32 %i.eu, i1 noundef zeroext true) #8, !inline_history !22
  %i.ew = getelementptr i8, ptr %i.es, i64 4
  store i32 %i.ev, ptr %i.ew, align 4
  %indvars.iv.next.i42 = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %i.ex = load i8, ptr %i.s, align 8              ; 3 uses
  %i.ey = zext i8 %i.ex to i64
  %i.ez = icmp samesign ult i64 %indvars.iv.next.i42, %i.ey
  br i1 %i.ez, label %bb.p, label %._crit_edge.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.p
  %i.fa = icmp eq i8 %i.ex, 0
  br i1 %i.fa, label %gen9_sseu_device_status.exit, label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %._crit_edge.i, %.loopexit.i
  %i.fb = phi i8 [ %i.hi, %.loopexit.i ], [ %i.ex, %._crit_edge.i ] ; 2 uses
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i, %.loopexit.i ], [ 0, %._crit_edge.i ] ; 7 uses
  %i.fc = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv132.i
  %i.fd = load i32, ptr %i.fc, align 4            ; 2 uses
  %i.fe = and i32 %i.fd, 1
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %.loopexit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph123.i
  %i.fg = shl nuw i64 1, %indvars.iv132.i
  %i.fh = load i8, ptr %i.r, align 8
  %i.fi = trunc i64 %i.fg to i8
  %i.fj = or i8 %i.fh, %i.fi
  store i8 %i.fj, ptr %i.r, align 8
  %i.fk = load ptr, ptr %1, align 8               ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 1656
  %i.fm = load i8, ptr %i.fl, align 8
  %i.fn = icmp eq i8 %i.fm, 9
  br i1 %i.fn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fo = getelementptr i8, ptr %i.fk, i64 1664
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = and i32 %i.fp, 671088640
  %or.cond.not.i = icmp eq i32 %i.fq, 0
  br i1 %or.cond.not.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fr = getelementptr i8, ptr %i.ah, i64 %indvars.iv132.i
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = getelementptr i8, ptr %i.ac, i64 %indvars.iv132.i
  store i8 %i.fs, ptr %i.ft, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.fu = load i8, ptr %i.u, align 1              ; 2 uses
  %.not127.i = icmp eq i8 %i.fu, 0
  br i1 %.not127.i, label %.loopexit.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %bb.t
  %i.fv = getelementptr i8, ptr %i.ac, i64 %indvars.iv132.i ; 2 uses
  %indvars.iv132.tr.i = trunc nuw nsw i64 %indvars.iv132.i to i32
  %i.fw = shl nuw nsw i32 %indvars.iv132.tr.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph119.i
  %i.fx = phi i8 [ %i.fu, %.lr.ph119.i ], [ %i.hf, %bb.y ]
  %indvars.iv129.i = phi i64 [ 0, %.lr.ph119.i ], [ %indvars.iv.next130.i, %bb.y ] ; 5 uses
  %i.fy = load ptr, ptr %1, align 8
  %i.fz = getelementptr i8, ptr %i.fy, i64 1664
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = and i32 %i.ga, 671088640
  %or.cond115.not.i = icmp eq i32 %i.gb, 0
  br i1 %or.cond115.not.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gc = shl nuw nsw i64 %indvars.iv129.i, 1
  %i.gd = shl nuw i64 4, %i.gc
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = and i32 %i.fd, %i.ge
  %.not.i43 = icmp eq i32 %i.gf, 0
  br i1 %.not.i43, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gg = shl nuw i64 1, %indvars.iv129.i
  %i.gh = load i8, ptr %i.fv, align 1
  %i.gi = trunc i64 %i.gg to i8
  %i.gj = or i8 %i.gh, %i.gi
  store i8 %i.gj, ptr %i.fv, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w
  %i.gk = and i64 %indvars.iv129.i, 1
  %i.gl = getelementptr [4 x i8], ptr %i.f, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = trunc nuw nsw i64 %indvars.iv129.i to i32
  %i.go = lshr i32 %i.gn, 1
  %i.gp = add nuw i32 %i.go, %i.fw
  %2 = sext i32 %i.gp to i64
  %i.gq = getelementptr [4 x i8], ptr %i.e, i64 %2
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = and i32 %i.gm, %i.gr
  %i.gt = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.gu = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 %i.gs, i64 %i.gt) #11, !srcloc !19 ; 2 uses
  %i.gv = extractvalue { i32, i64 } %i.gu, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.gv)
  %.pre.i44.pre = load i8, ptr %i.u, align 1
  %i.gw = extractvalue { i32, i64 } %i.gu, 0
  %i.gx = shl i32 %i.gw, 1                        ; 2 uses
  %i.gy = load i16, ptr %i.ad, align 8
  %i.gz = trunc i32 %i.gx to i16
  %i.ha = add i16 %i.gy, %i.gz
  store i16 %i.ha, ptr %i.ad, align 8
  %i.hb = load i8, ptr %i.ae, align 2
  %i.hc = zext i8 %i.hb to i32
  %i.hd = tail call i32 @llvm.umax.i32(i32 %i.gx, i32 %i.hc)
  %i.he = trunc i32 %i.hd to i8
  store i8 %i.he, ptr %i.ae, align 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.hf = phi i8 [ %i.fx, %bb.v ], [ %.pre.i44.pre, %bb.x ] ; 2 uses
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %i.hg = zext i8 %i.hf to i64
  %i.hh = icmp samesign ult i64 %indvars.iv.next130.i, %i.hg
  br i1 %i.hh, label %bb.u, label %.loopexit.i.loopexit, !llvm.loop !24

.loopexit.i.loopexit:                             ; preds = %bb.y
  %.pre67 = load i8, ptr %i.s, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.t, %.lr.ph123.i
  %i.hi = phi i8 [ %.pre67, %.loopexit.i.loopexit ], [ %i.fb, %bb.t ], [ %i.fb, %.lr.ph123.i ] ; 2 uses
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %i.hj = zext i8 %i.hi to i64
  %i.hk = icmp samesign ult i64 %indvars.iv.next133.i, %i.hj
  br i1 %i.hk, label %.lr.ph123.i, label %gen9_sseu_device_status.exit, !llvm.loop !25

gen9_sseu_device_status.exit:                     ; preds = %.loopexit.i, %bb.o, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %cherryview_sseu_device_status.exit

bb.z:                                             ; preds = %bb.n
  %i.hl = icmp ugt i8 %i.ed, 10
  br i1 %i.hl, label %bb.aa, label %cherryview_sseu_device_status.exit

bb.aa:                                            ; preds = %bb.z
  %i.hm = load ptr, ptr %i.af, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i64 93458488361045, ptr %i.c, align 8, !annotation !21
  %i.hn = load i8, ptr %i.s, align 8
  %.not187.i = icmp eq i8 %i.hn, 0
  br i1 %.not187.i, label %gen11_sseu_device_status.exit, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !annotation !21
  %i.ho = getelementptr i8, ptr %i.hm, i64 144    ; 6 uses
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = tail call i32 %i.hp(ptr noundef %i.hm, i32 32844, i1 noundef zeroext true) #8, !inline_history !26
  %i.hr = and i32 %i.hq, 127
  store i32 %i.hr, ptr %i.a, align 16
  %i.hs = load ptr, ptr %i.ho, align 8
  %i.ht = tail call i32 %i.hs(ptr noundef %i.hm, i32 32860, i1 noundef zeroext true) #8, !inline_history !26
  store i32 %i.ht, ptr %i.b, align 16
  %i.hu = load ptr, ptr %i.ho, align 8
  %i.hv = tail call i32 %i.hu(ptr noundef %i.hm, i32 32864, i1 noundef zeroext true) #8, !inline_history !26
  store i32 %i.hv, ptr %i.aj, align 4
  %i.hw = load i8, ptr %i.s, align 8              ; 2 uses
  %i.hx = icmp ugt i8 %i.hw, 1
  br i1 %i.hx, label %.peel.next.i, label %._crit_edge.i47

.peel.next.i:                                     ; preds = %.lr.ph.i46, %.peel.next.i
  %indvars.iv.i52 = phi i64 [ %indvars.iv.next.i54, %.peel.next.i ], [ 1, %.lr.ph.i46 ] ; 4 uses
  %.lhs.trunc.i = trunc nuw i64 %indvars.iv.i52 to i8 ; 2 uses
  %i.hy = udiv i8 %.lhs.trunc.i, 3
  %.zext.i = zext nneg i8 %i.hy to i32            ; 2 uses
  %i.hz = mul nuw nsw i32 %.zext.i, 52
  %i.ia = add nuw nsw i32 %i.hz, 32844
  %i.ib = urem i8 %.lhs.trunc.i, 3
  %.zext177.i = zext nneg i8 %i.ib to i32         ; 2 uses
  %i.ic = shl nuw nsw i32 %.zext177.i, 2
  %i.id = add nuw nsw i32 %i.ia, %i.ic
  %i.ie = load ptr, ptr %i.ho, align 8
  %i.if = tail call i32 %i.ie(ptr noundef %i.hm, i32 %i.id, i1 noundef zeroext true) #8, !inline_history !26
  %i.ig = and i32 %i.if, 31
  %i.ih = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i52
  store i32 %i.ig, ptr %i.ih, align 4
  %i.ii = mul nuw nsw i32 %.zext.i, 48
  %i.ij = shl nuw nsw i32 %.zext177.i, 3
  %i.ik = add nuw nsw i32 %i.ij, %i.ii            ; 2 uses
  %i.il = add nuw nsw i32 %i.ik, 32860
  %i.im = load ptr, ptr %i.ho, align 8
  %i.in = tail call i32 %i.im(ptr noundef %i.hm, i32 %i.il, i1 noundef zeroext true) #8, !inline_history !26
  %.idx.i53 = shl nuw nsw i64 %indvars.iv.i52, 3
  %i.io = getelementptr i8, ptr %i.b, i64 %.idx.i53 ; 2 uses
  store i32 %i.in, ptr %i.io, align 8
  %i.ip = add nuw nsw i32 %i.ik, 32864
  %i.iq = load ptr, ptr %i.ho, align 8
  %i.ir = tail call i32 %i.iq(ptr noundef %i.hm, i32 %i.ip, i1 noundef zeroext true) #8, !inline_history !26
  %i.is = getelementptr i8, ptr %i.io, i64 4
  store i32 %i.ir, ptr %i.is, align 4
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %i.it = load i8, ptr %i.s, align 8              ; 2 uses
  %i.iu = zext i8 %i.it to i64
  %i.iv = icmp samesign ult i64 %indvars.iv.next.i54, %i.iu
  br i1 %i.iv, label %.peel.next.i, label %._crit_edge.i47, !llvm.loop !27

._crit_edge.i47:                                  ; preds = %.peel.next.i, %.lr.ph.i46
  %i.iw = phi i8 [ %i.hw, %.lr.ph.i46 ], [ %i.it, %.peel.next.i ] ; 2 uses
  %i.ix = icmp eq i8 %i.iw, 0
  br i1 %i.ix, label %gen11_sseu_device_status.exit, label %.lr.ph185.i

.lr.ph185.i:                                      ; preds = %._crit_edge.i47, %.loopexit.i50
  %i.iy = phi i8 [ %i.kr, %.loopexit.i50 ], [ %i.iw, %._crit_edge.i47 ] ; 2 uses
  %indvars.iv195.i = phi i64 [ %indvars.iv.next196.i, %.loopexit.i50 ], [ 0, %._crit_edge.i47 ] ; 6 uses
  %i.iz = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv195.i
  %i.ja = load i32, ptr %i.iz, align 4            ; 2 uses
  %i.jb = and i32 %i.ja, 1
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %.loopexit.i50, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph185.i
  %i.jd = shl nuw i64 1, %indvars.iv195.i
  %i.je = load i8, ptr %i.r, align 8
  %i.jf = trunc i64 %i.jd to i8
  %i.jg = or i8 %i.je, %i.jf
  store i8 %i.jg, ptr %i.r, align 8
  %i.jh = getelementptr i8, ptr %i.ah, i64 %indvars.iv195.i
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = getelementptr i8, ptr %i.ac, i64 %indvars.iv195.i
  store i8 %i.ji, ptr %i.jj, align 1
  %i.jk = load i8, ptr %i.u, align 1              ; 2 uses
  %.not189.i = icmp eq i8 %i.jk, 0
  br i1 %.not189.i, label %.loopexit.i50, label %.lr.ph181.i

.lr.ph181.i:                                      ; preds = %bb.ab
  %indvars.iv195.tr.i = trunc nuw nsw i64 %indvars.iv195.i to i32
  %i.jl = shl nuw nsw i32 %indvars.iv195.tr.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %.lr.ph181.i
  %i.jm = phi i8 [ %i.jk, %.lr.ph181.i ], [ %i.ko, %bb.af ]
  %indvars.iv192.i = phi i64 [ 0, %.lr.ph181.i ], [ %indvars.iv.next193.i, %bb.af ] ; 4 uses
  %i.jn = load i8, ptr %i.ak, align 1
  %i.jo = and i8 %i.jn, 2
  %.not.i48 = icmp eq i8 %i.jo, 0
  br i1 %.not.i48, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jp = shl nuw nsw i64 %indvars.iv192.i, 1
  %i.jq = shl nuw i64 4, %i.jp
  %i.jr = trunc i64 %i.jq to i32
  %i.js = and i32 %i.ja, %i.jr
  %.not148.i = icmp eq i32 %i.js, 0
  br i1 %.not148.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.jt = and i64 %indvars.iv192.i, 1
  %i.ju = getelementptr [4 x i8], ptr %i.c, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = trunc nuw nsw i64 %indvars.iv192.i to i32
  %i.jx = lshr i32 %i.jw, 1
  %i.jy = add nuw i32 %i.jx, %i.jl
  %3 = sext i32 %i.jy to i64
  %i.jz = getelementptr [4 x i8], ptr %i.b, i64 %3
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = and i32 %i.jv, %i.ka
  %i.kc = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.kd = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 %i.kb, i64 %i.kc) #11, !srcloc !19 ; 2 uses
  %i.ke = extractvalue { i32, i64 } %i.kd, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.ke)
  %.pre.i49.pre = load i8, ptr %i.u, align 1
  %i.kf = extractvalue { i32, i64 } %i.kd, 0
  %i.kg = shl i32 %i.kf, 1                        ; 2 uses
  %i.kh = load i16, ptr %i.ad, align 8
  %i.ki = trunc i32 %i.kg to i16
  %i.kj = add i16 %i.kh, %i.ki
  store i16 %i.kj, ptr %i.ad, align 8
  %i.kk = load i8, ptr %i.ae, align 2
  %i.kl = zext i8 %i.kk to i32
  %i.km = tail call i32 @llvm.umax.i32(i32 %i.kg, i32 %i.kl)
  %i.kn = trunc i32 %i.km to i8
  store i8 %i.kn, ptr %i.ae, align 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ko = phi i8 [ %i.jm, %bb.ad ], [ %.pre.i49.pre, %bb.ae ] ; 2 uses
  %indvars.iv.next193.i = add nuw nsw i64 %indvars.iv192.i, 1 ; 2 uses
  %i.kp = zext i8 %i.ko to i64
  %i.kq = icmp samesign ult i64 %indvars.iv.next193.i, %i.kp
  br i1 %i.kq, label %bb.ac, label %.loopexit.i50.loopexit, !llvm.loop !29

.loopexit.i50.loopexit:                           ; preds = %bb.af
  %.pre = load i8, ptr %i.s, align 8
  br label %.loopexit.i50

.loopexit.i50:                                    ; preds = %.loopexit.i50.loopexit, %bb.ab, %.lr.ph185.i
  %i.kr = phi i8 [ %.pre, %.loopexit.i50.loopexit ], [ %i.iy, %bb.ab ], [ %i.iy, %.lr.ph185.i ] ; 2 uses
  %indvars.iv.next196.i = add nuw nsw i64 %indvars.iv195.i, 1 ; 2 uses
  %i.ks = zext i8 %i.kr to i64
  %i.kt = icmp samesign ult i64 %indvars.iv.next196.i, %i.ks
  br i1 %i.kt, label %.lr.ph185.i, label %gen11_sseu_device_status.exit, !llvm.loop !30

gen11_sseu_device_status.exit:                    ; preds = %.loopexit.i50, %bb.aa, %._crit_edge.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %cherryview_sseu_device_status.exit

cherryview_sseu_device_status.exit:               ; preds = %fls.exit.i, %bb.i, %bb.g, %bb.f, %gen9_sseu_device_status.exit, %gen11_sseu_device_status.exit, %bb.z
  tail call void @intel_runtime_pm_put_unchecked(ptr noundef %i.y) #8
  br label %i915_print_sseu_info.exit

i915_print_sseu_info.exit:                        ; preds = %cherryview_sseu_device_status.exit, %bb.c
  %i.ku = load i8, ptr %i.r, align 8
  %i.kv = zext i8 %i.ku to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %i.kv) #8
  %i.kw = load i8, ptr %i.r, align 8
  %i.kx = zext i8 %i.kw to i32
  %i.ky = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.kz = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.kx, i64 %i.ky) #11, !srcloc !19 ; 2 uses
  %i.la = extractvalue { i32, i64 } %i.kz, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.la)
  %i.lb = extractvalue { i32, i64 } %i.kz, 0
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %i.lb) #8
  %i.lc = tail call i32 @intel_sseu_subslice_total(ptr noundef nonnull %i.r) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %i.lc) #8
  tail call void @intel_sseu_print_ss_info(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.r, ptr noundef %0) #8
  %i.ld = getelementptr i8, ptr %i.r, i64 160
  %i.le = load i16, ptr %i.ld, align 8
  %i.lf = zext i16 %i.le to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %i.lf) #8
  %i.lg = getelementptr i8, ptr %i.r, i64 162
  %i.lh = load i8, ptr %i.lg, align 2
  %i.li = zext i8 %i.lh to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %i.li) #8
  tail call void @kfree(ptr noundef nonnull %i.r) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.b, %bb.a, %i915_print_sseu_info.exit
  %.0 = phi i32 [ -19, %bb.a ], [ 0, %i915_print_sseu_info.exit ], [ -12, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @i915_print_sseu_info(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = select i1 %1, ptr @.str.4, ptr @.str.5   ; 6 uses
  %i.b = load i8, ptr %3, align 8
  %i.c = zext i8 %i.b to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, i32 noundef %i.c) #8
  %i.d = load i8, ptr %3, align 8
  %i.e = zext i8 %i.d to i32
  %i.f = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.g = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.e, i64 %i.f) #11, !srcloc !19 ; 2 uses
  %i.h = extractvalue { i32, i64 } %i.g, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.h)
  %i.i = extractvalue { i32, i64 } %i.g, 0
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i32 noundef %i.i) #8
  %i.j = tail call i32 @intel_sseu_subslice_total(ptr noundef %3) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, i32 noundef %i.j) #8
  tail call void @intel_sseu_print_ss_info(ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef %0) #8
  %i.k = getelementptr i8, ptr %3, i64 160
  %i.l = load i16, ptr %i.k, align 8
  %i.m = zext i16 %i.l to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, i32 noundef %i.m) #8
  %i.n = getelementptr i8, ptr %3, i64 162
  %i.o = load i8, ptr %i.n, align 2
  %i.p = zext i8 %i.o to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a, i32 noundef %i.p) #8
  br i1 %1, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.q = select i1 %2, ptr @.str.16, ptr @.str.17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.q) #8
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %3, i64 163
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %i.t) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr i8, ptr %3, i64 167        ; 3 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = trunc i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.16, ptr @.str.17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.x) #8
  %i.y = load i8, ptr %i.u, align 1
  %i.z = and i8 %i.y, 2
  %.not = icmp eq i8 %i.z, 0
  %i.aa = select i1 %.not, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.aa) #8
  %i.ab = load i8, ptr %i.u, align 1
  %i.ac = and i8 %i.ab, 4
  %.not44 = icmp eq i8 %i.ac, 0
  %i.ad = select i1 %.not44, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.ad) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_sseu_set_info(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_runtime_pm_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_sseu_debugfs_register(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @intel_gt_debugfs_register_files(ptr noundef %1, ptr noundef nonnull @intel_sseu_debugfs_register.files, i64 noundef 2, ptr noundef %0) #8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_gt_debugfs_register_files(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_sseu_subslice_total(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_sseu_print_ss_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_runtime_pm_put_unchecked(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

end_hunk_0
