Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ssh?download=true
inline.NumInlined: 154
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ssh_try_dissect_encrypted_packet:bb.a
bb.x:                                             ; preds = %bb.w
  %i.dx = getelementptr i8, ptr %1, i64 336
  %i.dy = load i16, ptr %i.dx, align 8
  %.not325.i = icmp eq i16 %i.dy, 0
  br i1 %.not325.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = getelementptr i8, ptr %1, i64 340
  store i32 %3, ptr %i.dz, align 4
  %i.ea = sub nuw i32 %i.dv, %i.z
  %i.eb = getelementptr i8, ptr %1, i64 344
  store i32 %i.ea, ptr %i.eb, align 8
  %i.ec = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.z:                                             ; preds = %bb.x
  %i.ed = load i32, ptr %i.ac, align 8
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ac, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.ef = load ptr, ptr %i.l, align 8
  %i.eg = getelementptr i8, ptr %2, i64 160
  %i.eh = tail call i32 @gcry_cipher_setiv(ptr noundef %i.ef, ptr noundef %i.eg, i64 noundef 12)
  %.not326.i = icmp eq i32 %i.eh, 0
  br i1 %.not326.i, label %.preheader.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ei = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

.preheader.i:                                     ; preds = %bb.aa
  %i.ej = getelementptr i8, ptr %2, i64 171       ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = add i8 %i.ek, 1                         ; 2 uses
  store i8 %i.el, ptr %i.ej, align 1
  %i.em = icmp eq i8 %i.el, 0
  br i1 %i.em, label %.preheader.i.1, label %.critedge.i

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.en = getelementptr i8, ptr %2, i64 170       ; 2 uses
  %i.eo = load i8, ptr %i.en, align 2
  %i.ep = add i8 %i.eo, 1                         ; 2 uses
  store i8 %i.ep, ptr %i.en, align 2
  %i.eq = icmp eq i8 %i.ep, 0
  br i1 %i.eq, label %.preheader.i.2, label %.critedge.i

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.er = getelementptr i8, ptr %2, i64 169       ; 2 uses
  %i.es = load i8, ptr %i.er, align 1
  %i.et = add i8 %i.es, 1                         ; 2 uses
  store i8 %i.et, ptr %i.er, align 1
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %.preheader.i.3, label %.critedge.i

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.ev = getelementptr i8, ptr %2, i64 168       ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 8
  %i.ex = add i8 %i.ew, 1                         ; 2 uses
  store i8 %i.ex, ptr %i.ev, align 8
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %.preheader.i.4, label %.critedge.i

.preheader.i.4:                                   ; preds = %.preheader.i.3
  %i.ez = getelementptr i8, ptr %2, i64 167       ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = add i8 %i.fa, 1                         ; 2 uses
  store i8 %i.fb, ptr %i.ez, align 1
  %i.fc = icmp eq i8 %i.fb, 0
  br i1 %i.fc, label %.preheader.i.5, label %.critedge.i

.preheader.i.5:                                   ; preds = %.preheader.i.4
  %i.fd = getelementptr i8, ptr %2, i64 166       ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 2
  %i.ff = add i8 %i.fe, 1                         ; 2 uses
  store i8 %i.ff, ptr %i.fd, align 2
  %i.fg = icmp eq i8 %i.ff, 0
  br i1 %i.fg, label %.preheader.i.6, label %.critedge.i

.preheader.i.6:                                   ; preds = %.preheader.i.5
  %i.fh = getelementptr i8, ptr %2, i64 165       ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = add i8 %i.fi, 1                         ; 2 uses
  store i8 %i.fj, ptr %i.fh, align 1
  %i.fk = icmp eq i8 %i.fj, 0
  br i1 %i.fk, label %.preheader.i.7, label %.critedge.i

.preheader.i.7:                                   ; preds = %.preheader.i.6
  %i.fl = getelementptr i8, ptr %2, i64 164       ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 4
  %i.fn = add i8 %i.fm, 1
  store i8 %i.fn, ptr %i.fl, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %.preheader.i.7, %.preheader.i.6, %.preheader.i.5, %.preheader.i.4, %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  %i.fo = add i32 %3, 4
  %i.fp = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.fo, i32 noundef %i.dq)
  %i.fq = getelementptr i8, ptr %1, i64 416
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = zext nneg i32 %i.du to i64              ; 2 uses
  %i.ft = tail call noalias ptr @wmem_alloc(ptr noundef %i.fr, i64 noundef %i.fs) #23 ; 8 uses
  store i8 0, ptr %i.ft, align 1
  %i.fu = getelementptr i8, ptr %i.ft, i64 1
  store i8 0, ptr %i.fu, align 1
  %i.fv = lshr i32 %i.dq, 8
  %i.fw = trunc nuw i32 %i.fv to i8
  %i.fx = getelementptr i8, ptr %i.ft, i64 2
  store i8 %i.fw, ptr %i.fx, align 1
  %i.fy = trunc i32 %i.dq to i8
  %i.fz = getelementptr i8, ptr %i.ft, i64 3
  store i8 %i.fy, ptr %i.fz, align 1
  %i.ga = load ptr, ptr %i.l, align 8
  %i.gb = tail call i32 @gcry_cipher_authenticate(ptr noundef %i.ga, ptr noundef %i.ft, i64 noundef 4)
  %.not327.i = icmp eq i32 %i.gb, 0
  br i1 %.not327.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.critedge.i
  %i.gc = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.ad:                                            ; preds = %.critedge.i
  %i.gd = load ptr, ptr %i.l, align 8
  %i.ge = getelementptr i8, ptr %i.ft, i64 4
  %i.gf = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.gg = tail call i32 @gcry_cipher_decrypt(ptr noundef %i.gd, ptr noundef %i.ge, i64 noundef %i.gf, ptr noundef %i.fp, i64 noundef %i.gf)
  %.not328.i = icmp eq i32 %i.gg, 0
  br i1 %.not328.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gh = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.af:                                            ; preds = %bb.ad
  %i.gi = load ptr, ptr %i.l, align 8
  %i.gj = call i32 @gcry_cipher_gettag(ptr noundef %i.gi, ptr noundef nonnull %i.f, i64 noundef 16)
  %.not329.i = icmp eq i32 %i.gj, 0
  br i1 %.not329.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gk = call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.ah:                                            ; preds = %bb.af
  %i.gl = load ptr, ptr %i.l, align 8
  %i.gm = call i32 @gcry_cipher_ctl(ptr noundef %i.gl, i32 noundef 4, ptr noundef null, i64 noundef 0)
  %.not330.i = icmp eq i32 %i.gm, 0
  br i1 %.not330.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gn = call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.aj:                                            ; preds = %bb.ah
  %i.go = select i1 %i.y, ptr @.str.775, ptr @.str.776
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.777, ptr noundef nonnull %i.go, i32 noundef %i.ad)
  call fastcc void @ssh_print_data(ptr noundef nonnull @.str.778, ptr noundef %i.ft, i64 noundef %i.fs)
  br label %bb.bl

bb.ak:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.gp = load i8, ptr @ssh_desegment, align 1, !range !8, !noundef !9
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.gr = getelementptr i8, ptr %1, i64 336
  %i.gs = load i16, ptr %i.gr, align 8
  %i.gt = icmp ne i16 %i.gs, 0
  %i.gu = icmp ult i32 %i.z, 16
  %or.cond10.i = select i1 %i.gt, i1 %i.gu, i1 false
  br i1 %or.cond10.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gv = getelementptr i8, ptr %1, i64 340
  store i32 %3, ptr %i.gv, align 4
  %i.gw = getelementptr i8, ptr %1, i64 344
  store i32 268435455, ptr %i.gw, align 8
  %i.gx = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.gy = getelementptr i8, ptr %2, i64 245       ; 3 uses
  %i.gz = load i8, ptr %i.gy, align 1, !range !8, !noundef !9
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %.thread346.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hb = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %3, i32 noundef 16)
  %i.hc = load ptr, ptr %i.l, align 8
  %i.hd = getelementptr i8, ptr %2, i64 229
  %i.he = tail call i32 @gcry_cipher_decrypt(ptr noundef %i.hc, ptr noundef %i.hd, i64 noundef 16, ptr noundef %i.hb, i64 noundef 16)
  %.not320.i = icmp eq i32 %i.he, 0
  br i1 %.not320.i, label %.thread346.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hf = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

.thread346.i:                                     ; preds = %bb.ao, %bb.an
  %i.hg = getelementptr i8, ptr %2, i64 229       ; 2 uses
  %5 = load i8, ptr %i.hg, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr i8, ptr %2, i64 230
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or disjoint i32 %11, %7
  %13 = getelementptr i8, ptr %2, i64 231
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or disjoint i32 %12, %16
  %18 = getelementptr i8, ptr %2, i64 232
  %19 = load i8, ptr %18, align 8
  %20 = zext i8 %19 to i32                        ; 2 uses
  %21 = or disjoint i32 %17, %20                  ; 4 uses
  %i.hh = add i32 %21, -32769
  %or.cond12.i = icmp ult i32 %i.hh, -32757
  br i1 %or.cond12.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.thread346.i
  %i.hi = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.ar:                                            ; preds = %.thread346.i
  %22 = and i32 %20, 15
  %.not321.i = icmp eq i32 %22, 12
  br i1 %.not321.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.781)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hj = add nuw nsw i32 %21, 4                  ; 4 uses
  %i.hk = add nuw i32 %i.hj, %spec.select.i       ; 2 uses
  %i.hl = icmp ult i32 %i.z, %i.hk
  br i1 %i.hl, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.hm = load i8, ptr @ssh_desegment, align 1, !range !8, !noundef !9
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ho = getelementptr i8, ptr %1, i64 336
  %i.hp = load i16, ptr %i.ho, align 8
  %.not322.i = icmp eq i16 %i.hp, 0
  br i1 %.not322.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.gy, align 1
  %i.hq = getelementptr i8, ptr %1, i64 340
  store i32 %3, ptr %i.hq, align 4
  %i.hr = sub nuw i32 %i.hk, %i.z
  %i.hs = getelementptr i8, ptr %1, i64 344
  store i32 %i.hr, ptr %i.hs, align 8
  %i.ht = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.hu = load i32, ptr %i.ac, align 8
  %i.hv = add i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ac, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.at
  store i8 0, ptr %i.gy, align 1
  %i.hw = getelementptr i8, ptr %1, i64 416
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = zext nneg i32 %i.hj to i64              ; 3 uses
  %i.hz = tail call noalias ptr @wmem_alloc(ptr noundef %i.hx, i64 noundef %i.hy) #23 ; 5 uses
  %i.ia = tail call ptr @__memcpy_chk(ptr noundef %i.hz, ptr noundef %i.hg, i64 noundef 16, i64 noundef %i.hy) #25, !alias.scope !30 ; 0 uses
  %i.ib = icmp samesign ugt i32 %21, 12
  br i1 %i.ib, label %bb.az, label %.thread348.i

bb.az:                                            ; preds = %bb.ay
  %i.ic = add i32 %3, 16
  %i.id = add nsw i32 %21, -12                    ; 2 uses
  %i.ie = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.ic, i32 noundef %i.id)
  %i.if = load ptr, ptr %i.l, align 8
  %i.ig = getelementptr i8, ptr %i.hz, i64 16
  %i.ih = zext nneg i32 %i.id to i64              ; 2 uses
  %i.ii = tail call i32 @gcry_cipher_decrypt(ptr noundef %i.if, ptr noundef %i.ig, i64 noundef %i.ih, ptr noundef %i.ie, i64 noundef %i.ih)
  %.not323.i = icmp eq i32 %i.ii, 0
  br i1 %.not323.i, label %.thread348.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ij = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

.thread348.i:                                     ; preds = %bb.az, %bb.ay
  %i.ik = select i1 %i.y, ptr @.str.775, ptr @.str.776
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.777, ptr noundef nonnull %i.ik, i32 noundef %i.ad)
  tail call fastcc void @ssh_print_data(ptr noundef nonnull @.str.778, ptr noundef %i.hz, i64 noundef %i.hy)
  call fastcc void @ssh_calc_mac(ptr noundef %2, i32 noundef %i.ad, ptr noundef %i.hz, i32 noundef %i.hj, ptr noundef nonnull %i.f)
  br label %bb.bl

bb.bb:                                            ; preds = %bb.c
  %i.il = load i8, ptr @ssh_desegment, align 1, !range !8, !noundef !9
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.in = getelementptr i8, ptr %1, i64 336
  %i.io = load i16, ptr %i.in, align 8
  %i.ip = icmp ne i16 %i.io, 0
  %i.iq = icmp ult i32 %i.z, 4
  %or.cond14.i = select i1 %i.ip, i1 %i.iq, i1 false
  br i1 %or.cond14.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ir = getelementptr i8, ptr %1, i64 340
  store i32 %3, ptr %i.ir, align 4
  %i.is = getelementptr i8, ptr %1, i64 344
  store i32 268435455, ptr %i.is, align 8
  %i.it = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.iu = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %3, i32 noundef 0) ; 3 uses
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.779, i32 noundef %i.iu, i32 noundef %i.z)
  %i.iv = add i32 %i.iu, -32769
  %or.cond16.i = icmp ult i32 %i.iv, -32761
  br i1 %or.cond16.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.iw = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.bg:                                            ; preds = %bb.be
  %i.ix = add nuw nsw i32 %i.iu, 4                ; 4 uses
  %i.iy = add nuw i32 %i.ix, %spec.select.i       ; 2 uses
  %i.iz = icmp ugt i32 %i.iy, %i.z
  br i1 %i.iz, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.ja = getelementptr i8, ptr %1, i64 336
  %i.jb = load i16, ptr %i.ja, align 8
  %.not.i = icmp eq i16 %i.jb, 0
  br i1 %.not.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jc = getelementptr i8, ptr %1, i64 340
  store i32 %3, ptr %i.jc, align 4
  %i.jd = sub nuw i32 %i.iy, %i.z
  %i.je = getelementptr i8, ptr %1, i64 344
  store i32 %i.jd, ptr %i.je, align 8
  %i.jf = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.bj:                                            ; preds = %bb.bh
  %i.jg = load i32, ptr %i.ac, align 8
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr %i.ac, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bg
  %i.ji = getelementptr i8, ptr %1, i64 416
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = zext nneg i32 %i.ix to i64
  %i.jl = tail call ptr @tvb_memdup(ptr noundef %i.jj, ptr noundef %0, i32 noundef %3, i64 noundef %i.jk) ; 2 uses
  call fastcc void @ssh_calc_mac(ptr noundef %2, i32 noundef %i.ad, ptr noundef %i.jl, i32 noundef %i.ix, ptr noundef nonnull %i.f)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread348.i, %bb.aj, %bb.o
  %.1294.i = phi ptr [ %i.ca, %bb.o ], [ %i.ft, %bb.aj ], [ %i.hz, %.thread348.i ], [ %i.jl, %bb.bk ] ; 2 uses
  %.3292.i = phi i32 [ %i.bl, %bb.o ], [ %i.du, %bb.aj ], [ %i.hj, %.thread348.i ], [ %i.ix, %bb.bk ] ; 3 uses
  %.not364.i = icmp slt i32 %i.ab, 1
  br i1 %.not364.i, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jm = icmp samesign ult i32 %i.ab, 49
  br i1 %i.jm, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jn = add i32 %.3292.i, %3
  %i.jo = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.jn, i32 noundef %spec.select.i)
  %i.jp = zext nneg i32 %spec.select.i to i64
  %bcmp.i = call i32 @bcmp(ptr %i.jo, ptr nonnull %i.f, i64 %i.jp)
  %i.jq = icmp eq i32 %bcmp.i, 0
  %i.jr = load i8, ptr @ssh_ignore_mac_failed, align 1, !range !8
  %i.js = trunc nuw i8 %i.jr to i1
  %or.cond20.i = select i1 %i.jq, i1 true, i1 %i.js
  br i1 %or.cond20.i, label %bb.bq, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %.old.i = load i8, ptr @ssh_ignore_mac_failed, align 1, !range !8, !noundef !9
  %.old19.i = trunc nuw i8 %.old.i to i1
  br i1 %.old19.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.jt = call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.bq:                                            ; preds = %bb.bo, %bb.bn, %bb.bl
  %.not332.i = icmp eq ptr %.1294.i, null
  br i1 %.not332.i, label %ssh_decrypt_packet.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ju = call ptr @wmem_file_scope()
  %i.jv = load i32, ptr @proto_ssh, align 4
  %i.jw = call ptr @p_get_proto_data(ptr noundef %i.ju, ptr noundef %1, i32 noundef %i.jv, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i, label %bb.bs, label %ssh_get_packet_info.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.jx = zext i1 %i.y to i8
  %i.jy = call ptr @wmem_file_scope()
  %i.jz = call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.jy, i64 noundef 16) #23 ; 4 uses
  store i8 %i.jx, ptr %i.jz, align 8
  %i.ka = getelementptr i8, ptr %i.jz, i64 8
  store ptr null, ptr %i.ka, align 8
  %i.kb = call ptr @wmem_file_scope()
  %i.kc = load i32, ptr @proto_ssh, align 4
  call void @p_add_proto_data(ptr noundef %i.kb, ptr noundef %1, i32 noundef %i.kc, i32 noundef 0, ptr noundef %i.jz)
  br label %ssh_get_packet_info.exit.i

ssh_get_packet_info.exit.i:                       ; preds = %bb.bs, %bb.br
  %.0.i.i = phi ptr [ %i.jw, %bb.br ], [ %i.jz, %bb.bs ]
  %i.kd = call i32 @tvb_raw_offset(ptr noundef %0)
  %i.ke = add i32 %i.kd, %3
  %i.kf = call ptr @wmem_file_scope()
  %i.kg = call noalias dereferenceable_or_null(88) ptr @wmem_alloc(ptr noundef %i.kf, i64 noundef 88) #23 ; 7 uses
  %i.kh = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ki = add i32 %i.kh, 1
  store i32 %i.ki, ptr %i.ac, align 8
  store i32 %i.kh, ptr %i.kg, align 8
  %i.kj = call ptr @wmem_file_scope()
  %i.kk = zext nneg i32 %.3292.i to i64
  %i.kl = call ptr @wmem_memdup(ptr noundef %i.kj, ptr noundef nonnull %.1294.i, i64 noundef %i.kk) #24
  %i.km = getelementptr i8, ptr %i.kg, i64 8
  store ptr %i.kl, ptr %i.km, align 8
  %i.kn = getelementptr i8, ptr %i.kg, i64 16
  store i32 %.3292.i, ptr %i.kn, align 8
  %i.ko = getelementptr i8, ptr %i.kg, i64 20
  store i32 %i.ke, ptr %i.ko, align 4
  %i.kp = getelementptr i8, ptr %i.kg, i64 32
  store ptr null, ptr %i.kp, align 8
  %i.kq = getelementptr i8, ptr %i.kg, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) %i.kq, ptr noundef nonnull align 16 dereferenceable(48) %i.f, i64 noundef 48, i1 noundef false) #25
  %i.kr = select i1 %i.y, ptr @.str.783, ptr @.str.784
  %i.ks = load i32, ptr %i.ac, align 8
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.782, ptr noundef nonnull %i.kr, i32 noundef %i.ks)
  %i.kt = getelementptr i8, ptr %.0.i.i, i64 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %ssh_get_packet_info.exit.i
  %.0.i = phi ptr [ %i.kt, %ssh_get_packet_info.exit.i ], [ %i.kv, %bb.bt ] ; 2 uses
  %i.ku = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not333.i = icmp eq ptr %i.ku, null
  %i.kv = getelementptr i8, ptr %i.ku, i64 32
  br i1 %.not333.i, label %bb.bu, label %bb.bt, !llvm.loop !26

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.kg, ptr %.0.i, align 8
  br label %ssh_decrypt_packet.exit

ssh_decrypt_packet.exit:                          ; preds = %bb.c, %bb.bq, %bb.bu, %bb.f, %.thread.i, %bb.r, %bb.t, %bb.y, %bb.ab, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.am, %bb.ap, %bb.aq, %bb.aw, %bb.ba, %bb.bd, %bb.bf, %bb.bi, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.kw = getelementptr i8, ptr %1, i64 344
  %i.kx = load i32, ptr %i.kw, align 8
  %.not34 = icmp eq i32 %i.kx, 0
  br i1 %.not34, label %bb.bv, label %bb.fa

bb.bv:                                            ; preds = %ssh_decrypt_packet.exit, %.critedge
  %i.ky = call i32 @tvb_raw_offset(ptr noundef %0)
  %i.kz = add i32 %i.ky, %3
  %i.la = call ptr @wmem_file_scope()
  %i.lb = load i32, ptr @proto_ssh, align 4
  %i.lc = call ptr @p_get_proto_data(ptr noundef %i.la, ptr noundef %1, i32 noundef %i.lb, i32 noundef 0) ; 2 uses
  %.not.i36 = icmp eq ptr %i.lc, null
  br i1 %.not.i36, label %.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ld = getelementptr i8, ptr %i.lc, i64 8
  %.011.i = load ptr, ptr %i.ld, align 8          ; 2 uses
  %.not1012.i = icmp eq ptr %.011.i, null
  br i1 %.not1012.i, label %.thread, label %.lr.ph.i
end_hunk_0
