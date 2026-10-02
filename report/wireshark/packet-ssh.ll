Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ssh?download=true
inline.NumInlined: 154
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ssh_try_dissect_encrypted_packet:bb.a
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
  %i.hh = load i32, ptr %i.hg, align 1
  %i.hi = tail call i32 @llvm.bswap.i32(i32 %i.hh) ; 5 uses
  %i.hj = add i32 %i.hi, -32769
  %or.cond12.i = icmp ult i32 %i.hj, -32757
  br i1 %or.cond12.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.thread346.i
  %i.hk = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.ar:                                            ; preds = %.thread346.i
  %5 = and i32 %i.hi, 15
  %.not321.i = icmp eq i32 %5, 12
  br i1 %.not321.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.781)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hl = add nuw nsw i32 %i.hi, 4                ; 4 uses
  %i.hm = add nuw i32 %i.hl, %spec.select.i       ; 2 uses
  %i.hn = icmp ult i32 %i.z, %i.hm
  br i1 %i.hn, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.ho = load i8, ptr @ssh_desegment, align 1, !range !8, !noundef !9
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.hq = getelementptr i8, ptr %1, i64 336
  %i.hr = load i16, ptr %i.hq, align 8
  %.not322.i = icmp eq i16 %i.hr, 0
  br i1 %.not322.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.gy, align 1
  %i.hs = getelementptr i8, ptr %1, i64 340
  store i32 %3, ptr %i.hs, align 4
  %i.ht = sub nuw i32 %i.hm, %i.z
  %i.hu = getelementptr i8, ptr %1, i64 344
  store i32 %i.ht, ptr %i.hu, align 8
  %i.hv = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.hw = load i32, ptr %i.ac, align 8
  %i.hx = add i32 %i.hw, 1
  store i32 %i.hx, ptr %i.ac, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.at
  store i8 0, ptr %i.gy, align 1
  %i.hy = getelementptr i8, ptr %1, i64 416
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = zext nneg i32 %i.hl to i64              ; 3 uses
  %i.ib = tail call noalias ptr @wmem_alloc(ptr noundef %i.hz, i64 noundef %i.ia) #23 ; 5 uses
  %i.ic = tail call ptr @__memcpy_chk(ptr noundef %i.ib, ptr noundef %i.hg, i64 noundef 16, i64 noundef %i.ia) #25, !alias.scope !30 ; 0 uses
  %i.id = icmp samesign ugt i32 %i.hi, 12
  br i1 %i.id, label %bb.az, label %.thread348.i

bb.az:                                            ; preds = %bb.ay
  %i.ie = add i32 %3, 16
  %i.if = add nsw i32 %i.hi, -12                  ; 2 uses
  %i.ig = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.ie, i32 noundef %i.if)
  %i.ih = load ptr, ptr %i.l, align 8
  %i.ii = getelementptr i8, ptr %i.ib, i64 16
  %i.ij = zext nneg i32 %i.if to i64              ; 2 uses
  %i.ik = tail call i32 @gcry_cipher_decrypt(ptr noundef %i.ih, ptr noundef %i.ii, i64 noundef %i.ij, ptr noundef %i.ig, i64 noundef %i.ij)
  %.not323.i = icmp eq i32 %i.ik, 0
  br i1 %.not323.i, label %.thread348.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.il = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

.thread348.i:                                     ; preds = %bb.az, %bb.ay
  %i.im = select i1 %i.y, ptr @.str.775, ptr @.str.776
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.777, ptr noundef nonnull %i.im, i32 noundef %i.ad)
  tail call fastcc void @ssh_print_data(ptr noundef nonnull @.str.778, ptr noundef %i.ib, i64 noundef %i.ia)
  call fastcc void @ssh_calc_mac(ptr noundef %2, i32 noundef %i.ad, ptr noundef %i.ib, i32 noundef %i.hl, ptr noundef nonnull %i.f)
  br label %bb.bl

bb.bb:                                            ; preds = %bb.c
  %i.in = load i8, ptr @ssh_desegment, align 1, !range !8, !noundef !9
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ip = getelementptr i8, ptr %1, i64 336
  %i.iq = load i16, ptr %i.ip, align 8
  %i.ir = icmp ne i16 %i.iq, 0
  %i.is = icmp ult i32 %i.z, 4
  %or.cond14.i = select i1 %i.ir, i1 %i.is, i1 false
  br i1 %or.cond14.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.it = getelementptr i8, ptr %1, i64 340
  store i32 %3, ptr %i.it, align 4
  %i.iu = getelementptr i8, ptr %1, i64 344
  store i32 268435455, ptr %i.iu, align 8
  %i.iv = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.iw = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %3, i32 noundef 0) ; 3 uses
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.779, i32 noundef %i.iw, i32 noundef %i.z)
  %i.ix = add i32 %i.iw, -32769
  %or.cond16.i = icmp ult i32 %i.ix, -32761
  br i1 %or.cond16.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.iy = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.bg:                                            ; preds = %bb.be
  %i.iz = add nuw nsw i32 %i.iw, 4                ; 4 uses
  %i.ja = add nuw i32 %i.iz, %spec.select.i       ; 2 uses
  %i.jb = icmp ugt i32 %i.ja, %i.z
  br i1 %i.jb, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.jc = getelementptr i8, ptr %1, i64 336
  %i.jd = load i16, ptr %i.jc, align 8
  %.not.i = icmp eq i16 %i.jd, 0
  br i1 %.not.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.je = getelementptr i8, ptr %1, i64 340
  store i32 %3, ptr %i.je, align 4
  %i.jf = sub nuw i32 %i.ja, %i.z
  %i.jg = getelementptr i8, ptr %1, i64 344
  store i32 %i.jf, ptr %i.jg, align 8
  %i.jh = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.bj:                                            ; preds = %bb.bh
  %i.ji = load i32, ptr %i.ac, align 8
  %i.jj = add i32 %i.ji, 1
  store i32 %i.jj, ptr %i.ac, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bg
  %i.jk = getelementptr i8, ptr %1, i64 416
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = zext nneg i32 %i.iz to i64
  %i.jn = tail call ptr @tvb_memdup(ptr noundef %i.jl, ptr noundef %0, i32 noundef %3, i64 noundef %i.jm) ; 2 uses
  call fastcc void @ssh_calc_mac(ptr noundef %2, i32 noundef %i.ad, ptr noundef %i.jn, i32 noundef %i.iz, ptr noundef nonnull %i.f)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread348.i, %bb.aj, %bb.o
  %.1294.i = phi ptr [ %i.ca, %bb.o ], [ %i.ft, %bb.aj ], [ %i.ib, %.thread348.i ], [ %i.jn, %bb.bk ] ; 2 uses
  %.3292.i = phi i32 [ %i.bl, %bb.o ], [ %i.du, %bb.aj ], [ %i.hl, %.thread348.i ], [ %i.iz, %bb.bk ] ; 3 uses
  %.not364.i = icmp slt i32 %i.ab, 1
  br i1 %.not364.i, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jo = icmp samesign ult i32 %i.ab, 49
  br i1 %i.jo, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jp = add i32 %.3292.i, %3
  %i.jq = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.jp, i32 noundef %spec.select.i)
  %i.jr = zext nneg i32 %spec.select.i to i64
  %bcmp.i = call i32 @bcmp(ptr %i.jq, ptr nonnull %i.f, i64 %i.jr)
  %i.js = icmp eq i32 %bcmp.i, 0
  %i.jt = load i8, ptr @ssh_ignore_mac_failed, align 1, !range !8
  %i.ju = trunc nuw i8 %i.jt to i1
  %or.cond20.i = select i1 %i.js, i1 true, i1 %i.ju
  br i1 %or.cond20.i, label %bb.bq, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %.old.i = load i8, ptr @ssh_ignore_mac_failed, align 1, !range !8, !noundef !9
  %.old19.i = trunc nuw i8 %.old.i to i1
  br i1 %.old19.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.jv = call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.bq:                                            ; preds = %bb.bo, %bb.bn, %bb.bl
  %.not332.i = icmp eq ptr %.1294.i, null
  br i1 %.not332.i, label %ssh_decrypt_packet.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jw = call ptr @wmem_file_scope()
  %i.jx = load i32, ptr @proto_ssh, align 4
  %i.jy = call ptr @p_get_proto_data(ptr noundef %i.jw, ptr noundef %1, i32 noundef %i.jx, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i, label %bb.bs, label %ssh_get_packet_info.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.jz = zext i1 %i.y to i8
  %i.ka = call ptr @wmem_file_scope()
  %i.kb = call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.ka, i64 noundef 16) #23 ; 4 uses
  store i8 %i.jz, ptr %i.kb, align 8
  %i.kc = getelementptr i8, ptr %i.kb, i64 8
  store ptr null, ptr %i.kc, align 8
  %i.kd = call ptr @wmem_file_scope()
  %i.ke = load i32, ptr @proto_ssh, align 4
  call void @p_add_proto_data(ptr noundef %i.kd, ptr noundef %1, i32 noundef %i.ke, i32 noundef 0, ptr noundef %i.kb)
  br label %ssh_get_packet_info.exit.i

ssh_get_packet_info.exit.i:                       ; preds = %bb.bs, %bb.br
  %.0.i.i = phi ptr [ %i.jy, %bb.br ], [ %i.kb, %bb.bs ]
  %i.kf = call i32 @tvb_raw_offset(ptr noundef %0)
  %i.kg = add i32 %i.kf, %3
  %i.kh = call ptr @wmem_file_scope()
  %i.ki = call noalias dereferenceable_or_null(88) ptr @wmem_alloc(ptr noundef %i.kh, i64 noundef 88) #23 ; 7 uses
  %i.kj = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.kk = add i32 %i.kj, 1
  store i32 %i.kk, ptr %i.ac, align 8
end_hunk_0
begin_hunk_1_@ssh_dissect_term_modes:bb.a
  br label %bb.d

.fold.split106:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split107:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split108:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split109:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split110:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split111:                                   ; preds = %.preheader.42
  br label %bb.d

bb.d:                                             ; preds = %.preheader.42, %.fold.split111, %.fold.split110, %.fold.split109, %.fold.split108, %.fold.split107, %.fold.split106, %.fold.split105, %.fold.split104, %.fold.split103, %.fold.split102, %.fold.split101, %.fold.split100, %.fold.split99, %.fold.split98, %bb.b, %.fold.split97, %.fold.split96, %.fold.split95, %.fold.split94, %.fold.split93, %.fold.split92, %.fold.split91, %.fold.split90, %.fold.split89, %.fold.split88, %.fold.split87, %.fold.split86, %.fold.split85, %.fold.split84, %.fold.split83, %.fold.split82, %.fold.split81, %.fold.split80, %.fold.split79, %.fold.split78, %.fold.split77, %.fold.split76, %.fold.split75, %.fold.split74, %.fold.split73, %.fold.split72, %.fold.split71, %.fold.split70, %.fold.split69, %.fold.split68, %.fold.split67, %.fold.split66, %.fold.split65, %.fold.split64, %.fold.split63, %.fold.split62, %.fold.split61, %.fold.split60, %.fold.split59, %.fold.split
  %.lcssa = phi i64 [ 55, %.fold.split110 ], [ 1, %bb.b ], [ 54, %.fold.split109 ], [ 2, %.fold.split ], [ 3, %.fold.split59 ], [ 4, %.fold.split60 ], [ 5, %.fold.split61 ], [ 6, %.fold.split62 ], [ 7, %.fold.split63 ], [ 8, %.fold.split64 ], [ 9, %.fold.split65 ], [ 10, %.fold.split66 ], [ 11, %.fold.split67 ], [ 12, %.fold.split68 ], [ 13, %.fold.split69 ], [ 14, %.fold.split70 ], [ 15, %.fold.split71 ], [ 16, %.fold.split72 ], [ 17, %.fold.split73 ], [ 18, %.fold.split74 ], [ 19, %.fold.split75 ], [ 20, %.fold.split76 ], [ 21, %.fold.split77 ], [ 22, %.fold.split78 ], [ 23, %.fold.split79 ], [ 24, %.fold.split80 ], [ 25, %.fold.split81 ], [ 26, %.fold.split82 ], [ 27, %.fold.split83 ], [ 28, %.fold.split84 ], [ 29, %.fold.split85 ], [ 30, %.fold.split86 ], [ 31, %.fold.split87 ], [ 32, %.fold.split88 ], [ 33, %.fold.split89 ], [ 34, %.fold.split90 ], [ 35, %.fold.split91 ], [ 36, %.fold.split92 ], [ 37, %.fold.split93 ], [ 38, %.fold.split94 ], [ 39, %.fold.split95 ], [ 40, %.fold.split96 ], [ 42, %.preheader.42 ], [ 41, %.fold.split97 ], [ 43, %.fold.split98 ], [ 44, %.fold.split99 ], [ 45, %.fold.split100 ], [ 46, %.fold.split101 ], [ 47, %.fold.split102 ], [ 48, %.fold.split103 ], [ 49, %.fold.split104 ], [ 50, %.fold.split105 ], [ 51, %.fold.split106 ], [ 52, %.fold.split107 ], [ 53, %.fold.split108 ], [ 56, %.fold.split111 ]
  %i.x = getelementptr [16 x i8], ptr @ssh_dissect_term_modes.tty_opts, i64 %.lcssa
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load i32, ptr %i.z, align 4             ; 4 uses
  %i.ab = call i32 @proto_registrar_get_ftype(i32 noundef %i.aa)
  switch i32 %i.ab, label %bb.h [
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 7, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ac = add i32 %.04453, 4
  %i.ad = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.n, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.ac, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.ae = load i8, ptr %i.c, align 1, !range !8, !noundef !9
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = select i1 %i.af, ptr @.str.879, ptr @.str.880
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.l, ptr noundef nonnull @.str.878, ptr noundef nonnull %i.ag)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ah = add i32 %.04453, 4
  %i.ai = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.n, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.ah, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.aj = load ptr, ptr %i.j, align 8
  %i.ak = load i32, ptr %i.b, align 4
  %i.al = trunc i32 %i.ak to i8
  %i.am = call ptr @format_char(ptr noundef %i.aj, i8 noundef signext %i.al)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.l, ptr noundef nonnull @.str.881, ptr noundef %i.am)
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.an = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.n, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.s, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.ao = load i32, ptr %i.b, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.l, ptr noundef nonnull @.str.876, i32 noundef %i.ao)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.839, ptr noundef nonnull @.str.745, i32 noundef 5483) #28
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.c
  %i.ap = add i32 %.04453, 5                      ; 3 uses
  %i.aq = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ap)
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.i, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.s, %bb.b ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_hash(ptr noundef) #18

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_equal(ptr noundef, ptr noundef) #18

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @fragment_set_partial_reassembly(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_get_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @pdu_store_sequencenumber_of_next_pdu(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_fence(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_writable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @show_fragment_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_get_parent_nth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_tree_move_item(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wmem_map_lookup_extended(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_registrar_get_ftype(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @format_char(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @gnutls_check_version(ptr noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_check_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_strneql(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_dissector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #17

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind null_pointer_is_valid memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { allocsize(1) }
attributes #24 = { allocsize(2) }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(none) }
attributes #27 = { allocsize(0) }
attributes #28 = { noreturn }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = distinct !{!11, !7, !13, !14}
!12 = distinct !{!12, !7, !14, !13}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{null, null}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, i1 false, !"memcpy.inline"}
!21 = distinct !{!21, !20, !"memcpy.inline: argument 1"}
!22 = distinct !{!22, !20, !"memcpy.inline: argument 0"}
!23 = distinct !{!23, i1 false, !"memcpy.inline"}
!24 = distinct !{!24, !23, !"memcpy.inline: argument 1"}
!25 = distinct !{!25, !23, !"memcpy.inline: argument 0"}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{null}
!29 = !{!22, !21}
!30 = !{!25, !24}
!31 = distinct !{!31, i1 false, !"memcpy.inline"}
!32 = distinct !{!32, !31, !"memcpy.inline: argument 1"}
!33 = distinct !{!33, !31, !"memcpy.inline: argument 0"}
!34 = !{!33, !32}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, i1 false, !"memcpy.inline"}
!37 = distinct !{!37, !36, !"memcpy.inline: argument 1"}
!38 = distinct !{!38, !36, !"memcpy.inline: argument 0"}
!39 = distinct !{!39, i1 false, !"memcpy.inline"}
!40 = distinct !{!40, !39, !"memcpy.inline: argument 1"}
!41 = distinct !{!41, !39, !"memcpy.inline: argument 0"}
!42 = distinct !{!42, i1 false, !"memcpy.inline"}
!43 = distinct !{!43, !42, !"memcpy.inline: argument 1"}
!44 = distinct !{!44, !42, !"memcpy.inline: argument 0"}
!45 = distinct !{!45, i1 false, !"memcpy.inline"}
!46 = distinct !{!46, !45, !"memcpy.inline: argument 1"}
!47 = distinct !{!47, !45, !"memcpy.inline: argument 0"}
!48 = distinct !{!48, i1 false, !"memcpy.inline"}
!49 = distinct !{!49, !48, !"memcpy.inline: argument 1"}
!50 = distinct !{!50, !48, !"memcpy.inline: argument 0"}
!51 = distinct !{!51, i1 false, !"memcpy.inline"}
!52 = distinct !{!52, !51, !"memcpy.inline: argument 1"}
!53 = distinct !{!53, !51, !"memcpy.inline: argument 0"}
!54 = distinct !{!54, i1 false, !"memcpy.inline"}
!55 = distinct !{!55, !54, !"memcpy.inline: argument 1"}
!56 = distinct !{!56, !54, !"memcpy.inline: argument 0"}
!57 = distinct !{!57, i1 false, !"memcpy.inline"}
!58 = distinct !{!58, !57, !"memcpy.inline: argument 1"}
!59 = distinct !{!59, !57, !"memcpy.inline: argument 0"}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = !{!38, !37}
!63 = !{!41, !40}
!64 = !{!44, !43}
!65 = !{!47, !46}
!66 = !{!50, !49}
!67 = !{!53, !52}
!68 = !{!56, !55}
!69 = !{!59, !58}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = distinct !{!72, !7}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7}
!75 = distinct !{!75, !7}
!76 = distinct !{!76, i1 false, !"memcpy.inline"}
!77 = distinct !{!77, !76, !"memcpy.inline: argument 1"}
!78 = distinct !{!78, !76, !"memcpy.inline: argument 0"}
!79 = !{!78, !77}
!80 = distinct !{!80, i1 false, !"memcpy.inline"}
!81 = distinct !{!81, !80, !"memcpy.inline: argument 1"}
!82 = distinct !{!82, !80, !"memcpy.inline: argument 0"}
!83 = distinct !{!83, i1 false, !"memcpy.inline"}
!84 = distinct !{!84, !83, !"memcpy.inline: argument 1"}
!85 = distinct !{!85, !83, !"memcpy.inline: argument 0"}
!86 = distinct !{!86, i1 false, !"memcpy.inline"}
!87 = distinct !{!87, !86, !"memcpy.inline: argument 1"}
!88 = distinct !{!88, !86, !"memcpy.inline: argument 0"}
!89 = !{!82, !81}
!90 = !{!85, !84}
!91 = !{!88, !87}
!92 = distinct !{!92, !7}
!93 = !{!"branch_weights", !"expected", i32 2789303, i32 2144694345}
!94 = distinct !{!94, !7}
end_hunk_1
