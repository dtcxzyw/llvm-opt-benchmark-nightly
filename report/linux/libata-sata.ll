Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/libata-sata?download=true
inline.NumInlined: 84
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ata_eh_analyze_ncq_error:bb.a
  %i.ef = getelementptr i8, ptr %i.a, i64 6384
  %i.eg = load i64, ptr %i.ef, align 16
  %i.eh = and i64 %i.eg, 65536
  %.not68.25 = icmp eq i64 %i.eh, 0
  br i1 %.not68.25, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ei = getelementptr i8, ptr %i.a, i64 6484
  %i.ej = load i32, ptr %i.ei, align 4
  %.not69.25 = icmp eq i32 %i.ej, 0
  br i1 %.not69.25, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ek = getelementptr i8, ptr %i.a, i64 6624
  %i.el = load i64, ptr %i.ek, align 32
  %i.em = and i64 %i.el, 65536
  %.not68.26 = icmp eq i64 %i.em, 0
  br i1 %.not68.26, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.en = getelementptr i8, ptr %i.a, i64 6724
  %i.eo = load i32, ptr %i.en, align 4
  %.not69.26 = icmp eq i32 %i.eo, 0
  br i1 %.not69.26, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ep = getelementptr i8, ptr %i.a, i64 6864
  %i.eq = load i64, ptr %i.ep, align 16
  %i.er = and i64 %i.eq, 65536
  %.not68.27 = icmp eq i64 %i.er, 0
  br i1 %.not68.27, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.es = getelementptr i8, ptr %i.a, i64 6964
  %i.et = load i32, ptr %i.es, align 4
  %.not69.27 = icmp eq i32 %i.et, 0
  br i1 %.not69.27, label %bb.bg, label %.loopexit

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.eu = getelementptr i8, ptr %i.a, i64 7104
  %i.ev = load i64, ptr %i.eu, align 32
  %i.ew = and i64 %i.ev, 65536
  %.not68.28 = icmp eq i64 %i.ew, 0
  br i1 %.not68.28, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ex = getelementptr i8, ptr %i.a, i64 7204
  %i.ey = load i32, ptr %i.ex, align 4
  %.not69.28 = icmp eq i32 %i.ey, 0
  br i1 %.not69.28, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ez = getelementptr i8, ptr %i.a, i64 7344
  %i.fa = load i64, ptr %i.ez, align 16
  %i.fb = and i64 %i.fa, 65536
  %.not68.29 = icmp eq i64 %i.fb, 0
  br i1 %.not68.29, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fc = getelementptr i8, ptr %i.a, i64 7444
  %i.fd = load i32, ptr %i.fc, align 4
  %.not69.29 = icmp eq i32 %i.fd, 0
  br i1 %.not69.29, label %bb.bk, label %.loopexit

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fe = getelementptr i8, ptr %i.a, i64 7584
  %i.ff = load i64, ptr %i.fe, align 32
  %i.fg = and i64 %i.ff, 65536
  %.not68.30 = icmp eq i64 %i.fg, 0
  br i1 %.not68.30, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fh = getelementptr i8, ptr %i.a, i64 7684
  %i.fi = load i32, ptr %i.fh, align 4
  %.not69.30 = icmp eq i32 %i.fi, 0
  br i1 %.not69.30, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.fj = getelementptr i8, ptr %i.a, i64 7824
  %i.fk = load i64, ptr %i.fj, align 16
  %i.fl = and i64 %i.fk, 65536
  %.not68.31 = icmp eq i64 %i.fl, 0
  br i1 %.not68.31, label %.critedge, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fm = getelementptr i8, ptr %i.a, i64 7924
  %i.fn = load i32, ptr %i.fm, align 4
  %.not69.31 = icmp eq i32 %i.fn, 0
  br i1 %.not69.31, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.bn, %bb.bm
  %i.fo = getelementptr i8, ptr %0, i64 3840      ; 10 uses
  %i.fp = tail call i32 @ata_read_log_page(ptr noundef %i.b, i8 noundef zeroext 16, i8 noundef zeroext 0, ptr noundef %i.fo, i32 noundef 1) #11
  %.not.i = icmp eq i32 %i.fp, 0
  br i1 %.not.i, label %.preheader.i, label %ata_eh_read_log_10h.exit

.preheader.i:                                     ; preds = %.critedge, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.preheader.i ], [ 0, %.critedge ] ; 9 uses
  %.04856.i = phi i8 [ %i.gu, %.preheader.i ], [ 0, %.critedge ]
  %i.fq = getelementptr i8, ptr %i.fo, i64 %indvars.iv.i
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = add i8 %i.fr, %.04856.i
  %i.ft = getelementptr i8, ptr %i.fo, i64 %indvars.iv.i
  %i.fu = getelementptr i8, ptr %i.ft, i64 1
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = add i8 %i.fv, %i.fs
  %i.fx = getelementptr i8, ptr %i.fo, i64 %indvars.iv.i
  %i.fy = getelementptr i8, ptr %i.fx, i64 2
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = add i8 %i.fz, %i.fw
  %i.gb = getelementptr i8, ptr %i.fo, i64 %indvars.iv.i
  %i.gc = getelementptr i8, ptr %i.gb, i64 3
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = add i8 %i.gd, %i.ga
  %i.gf = getelementptr i8, ptr %i.fo, i64 %indvars.iv.i
  %i.gg = getelementptr i8, ptr %i.gf, i64 4
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = add i8 %i.gh, %i.ge
  %i.gj = getelementptr i8, ptr %i.fo, i64 %indvars.iv.i
  %i.gk = getelementptr i8, ptr %i.gj, i64 5
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = add i8 %i.gl, %i.gi
  %i.gn = getelementptr i8, ptr %i.fo, i64 %indvars.iv.i
  %i.go = getelementptr i8, ptr %i.gn, i64 6
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = add i8 %i.gp, %i.gm
  %i.gr = getelementptr i8, ptr %i.fo, i64 %indvars.iv.i
  %i.gs = getelementptr i8, ptr %i.gr, i64 7
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = add i8 %i.gt, %i.gq                     ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 512
  br i1 %exitcond.not.i.7, label %bb.bo, label %.preheader.i, !llvm.loop !39

bb.bo:                                            ; preds = %.preheader.i
  %.not50.i = icmp eq i8 %i.gu, 0
  br i1 %.not50.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gv = load ptr, ptr %i.b, align 64            ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 64
  %i.gx = getelementptr i8, ptr %i.gw, i64 36
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = getelementptr i8, ptr %i.gv, i64 8
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = getelementptr i8, ptr %0, i64 1224
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = add i32 %i.hc, %i.ha
  %i.he = zext i8 %i.gu to i32
  %i.hf = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %i.gy, i32 noundef %i.hd, i32 noundef %i.he) #13 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.hg = load i8, ptr %i.fo, align 64            ; 2 uses
  %.not51.i = icmp sgt i8 %i.hg, -1
  br i1 %.not51.i, label %bb.br, label %ata_eh_read_log_10h.exit

bb.br:                                            ; preds = %bb.bq
  %i.hh = and i8 %i.hg, 31                        ; 2 uses
  %i.hi = zext nneg i8 %i.hh to i32               ; 2 uses
  %i.hj = getelementptr i8, ptr %0, i64 3842
  %i.hk = load i8, ptr %i.hj, align 2             ; 2 uses
  %i.hl = getelementptr i8, ptr %0, i64 3843
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = getelementptr i8, ptr %0, i64 3844
  %i.ho = load i8, ptr %i.hn, align 4
  %i.hp = getelementptr i8, ptr %0, i64 3845
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = getelementptr i8, ptr %0, i64 3846
  %i.hs = load i8, ptr %i.hr, align 2
  %i.ht = getelementptr i8, ptr %0, i64 3847
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = getelementptr i8, ptr %0, i64 3848
  %i.hw = load i8, ptr %i.hv, align 8
  %i.hx = getelementptr i8, ptr %0, i64 3849
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = getelementptr i8, ptr %0, i64 3850
  %i.ia = load i8, ptr %i.hz, align 2
  %i.ib = getelementptr i8, ptr %0, i64 3852
  %i.ic = load i8, ptr %i.ib, align 4
  %i.id = getelementptr i8, ptr %0, i64 3853
  %i.ie = load i8, ptr %i.id, align 1
  %i.if = getelementptr i8, ptr %0, i64 2264
  %i.ig = load i16, ptr %i.if, align 8
  %.off.i = add i16 %i.ig, -1
  %switch.i = icmp ult i16 %.off.i, -2
  br i1 %switch.i, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.ih = getelementptr i8, ptr %0, i64 2268
  %i.ii = load i16, ptr %i.ih, align 4
  %i.ij = and i16 %i.ii, 128
  %.not54.i = icmp eq i16 %i.ij, 0
  %i.ik = and i8 %i.hk, 2
  %.not55.i = icmp eq i8 %i.ik, 0
  %or.cond.i = select i1 %.not54.i, i1 true, i1 %.not55.i
  br i1 %or.cond.i, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.il = getelementptr i8, ptr %0, i64 3854
  %1 = load i8, ptr %i.il, align 2
  %2 = zext i8 %1 to i32
  %3 = shl nuw nsw i32 %2, 16
  %4 = getelementptr i8, ptr %0, i64 3855
  %5 = load i8, ptr %4, align 1
  %i.im = zext i8 %5 to i32
  %i.in = shl nuw nsw i32 %i.im, 8
  %6 = or disjoint i32 %i.in, %3
  %i.io = getelementptr i8, ptr %0, i64 3856
  %i.ip = load i8, ptr %i.io, align 16
  %i.iq = zext i8 %i.ip to i32
  %i.ir = or disjoint i32 %6, %i.iq
  br label %bb.bx

ata_eh_read_log_10h.exit:                         ; preds = %bb.bq, %.critedge
  %.0.i72 = phi i32 [ -2, %bb.bq ], [ -5, %.critedge ] ; 2 uses
  %i.is = load ptr, ptr %0, align 64              ; 4 uses
  %i.it = getelementptr i8, ptr %i.is, i64 15816
  %.val70 = load i32, ptr %i.it, align 8
  %.not111 = icmp eq i32 %.val70, 0
  br i1 %.not111, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %ata_eh_read_log_10h.exit
  %i.iu = getelementptr i8, ptr %i.is, i64 15808
  %i.iv = load ptr, ptr %i.iu, align 64
  %.not67 = icmp eq ptr %i.iv, null
  br i1 %.not67, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %ata_eh_read_log_10h.exit, %bb.bu
  %i.iw = getelementptr i8, ptr %i.is, i64 36
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = getelementptr i8, ptr %0, i64 8
  %i.iz = load i32, ptr %i.iy, align 8
  %i.ja = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %i.ix, i32 noundef %i.iz, i32 noundef %.0.i72) #13 ; 0 uses
  br label %.loopexit

bb.bw:                                            ; preds = %bb.bu
  %i.jb = getelementptr i8, ptr %i.is, i64 36
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %i.jc, i32 noundef %.0.i72) #13 ; 0 uses
  br label %.loopexit

bb.bx:                                            ; preds = %bb.bs, %bb.br, %bb.bt
  %.sroa.1681.0.ph = phi i32 [ 0, %bb.br ], [ %i.ir, %bb.bt ], [ 0, %bb.bs ] ; 5 uses
  %i.je = load i32, ptr %i.e, align 4
  %i.jf = zext i32 %i.je to i64
  %i.jg = zext nneg i8 %i.hh to i64               ; 2 uses
  %i.jh = shl nuw nsw i64 1, %i.jg
  %i.ji = and i64 %i.jh, %i.jf
  %.not59 = icmp eq i64 %i.ji, 0
  br i1 %.not59, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %bb.bx
  %i.jj = load ptr, ptr %0, align 64              ; 4 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 15816
  %.val = load i32, ptr %i.jk, align 8
  %.not112 = icmp eq i32 %.val, 0
  br i1 %.not112, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jl = getelementptr i8, ptr %i.jj, i64 15808
  %i.jm = load ptr, ptr %i.jl, align 64
  %.not60 = icmp eq ptr %i.jm, null
  br i1 %.not60, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %i.jn = getelementptr i8, ptr %i.jj, i64 36
  %i.jo = load i32, ptr %i.jn, align 4
  %i.jp = getelementptr i8, ptr %0, i64 8
  %i.jq = load i32, ptr %i.jp, align 8
  %i.jr = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %i.jo, i32 noundef %i.jq, i32 noundef %i.hi) #13 ; 0 uses
  br label %.loopexit

bb.cb:                                            ; preds = %bb.bz
  %i.js = getelementptr i8, ptr %i.jj, i64 36
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %i.jt, i32 noundef %i.hi) #13 ; 0 uses
  br label %.loopexit

bb.cc:                                            ; preds = %bb.bx
  %i.jv = getelementptr [240 x i8], ptr %i.j, i64 %i.jg ; 19 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 184
  %i.jx = getelementptr i8, ptr %i.jv, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(3) %i.jx, i8 0, i64 3, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 195
  store i8 %i.ie, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 196
  store i8 %i.hw, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 197
  store i8 %i.hy, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 198
  store i8 %i.ia, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 199
  store i8 %i.hm, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 200
  store i8 %i.ic, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 201
  store i8 %i.ho, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 202
  store i8 %i.hq, ptr %.sroa.12.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 203
  store i8 %i.hs, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 204
  store i8 %i.hu, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 205
  store i8 %i.hk, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 206
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 2
  %.sroa.1681.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 208
  store i32 %.sroa.1681.0.ph, ptr %.sroa.1681.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr i8, ptr %i.jv, i64 212
  store i32 0, ptr %.sroa.17.0..sroa_idx, align 4
  store i64 19, ptr %i.jw, align 8
  %i.jy = getelementptr i8, ptr %i.jv, i64 180    ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4
  %i.ka = or i32 %i.jz, 1025
  store i32 %i.ka, ptr %i.jy, align 4
  %.not61 = icmp eq i32 %.sroa.1681.0.ph, 0
  br i1 %.not61, label %.preheader118, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kb = lshr i32 %.sroa.1681.0.ph, 16
  %i.kc = trunc nuw i32 %i.kb to i8               ; 2 uses
  %i.kd = lshr i32 %.sroa.1681.0.ph, 8
  %i.ke = trunc i32 %i.kd to i8                   ; 2 uses
  %i.kf = trunc i32 %.sroa.1681.0.ph to i8        ; 2 uses
  %i.kg = tail call zeroext i1 @ata_scsi_sense_is_valid(i8 noundef zeroext %i.kc, i8 noundef zeroext %i.ke, i8 noundef zeroext %i.kf) #11
  br i1 %i.kg, label %bb.ce, label %.preheader118

bb.ce:                                            ; preds = %bb.cd
  %i.kh = getelementptr i8, ptr %i.jv, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8
  tail call void @ata_scsi_set_sense(ptr noundef %i.b, ptr noundef %i.ki, i8 noundef zeroext %i.kc, i8 noundef zeroext %i.ke, i8 noundef zeroext %i.kf) #11
  %i.kj = getelementptr i8, ptr %i.jv, i64 80     ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8
  %i.kl = or i64 %i.kk, 131072
  store i64 %i.kl, ptr %i.kj, align 8
  br label %.preheader118

.preheader118:                                    ; preds = %bb.cd, %bb.ce, %bb.cc
  br label %bb.cf

bb.cf:                                            ; preds = %.preheader118, %bb.cj
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cj ], [ 0, %.preheader118 ] ; 2 uses
  %i.km = getelementptr [240 x i8], ptr %i.j, i64 %indvars.iv ; 5 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 80     ; 3 uses
  %i.ko = load i64, ptr %i.kn, align 8
  %i.kp = and i64 %i.ko, 589824
  %or.cond = icmp eq i64 %i.kp, 65536
  br i1 %or.cond, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.kq = getelementptr i8, ptr %i.km, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = tail call ptr @ata_dev_phys_link(ptr noundef %i.kr) #11
  %.not65 = icmp eq ptr %i.ks, %0
  br i1 %.not65, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.kt = getelementptr i8, ptr %i.km, i64 180
  %i.ku = load i32, ptr %i.kt, align 4
  %.not66 = icmp eq i32 %i.ku, 0
  br i1 %.not66, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.kv = getelementptr i8, ptr %i.km, i64 205    ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1
  %i.kx = and i8 %i.kw, -2
  store i8 %i.kx, ptr %i.kv, align 1
  %i.ky = getelementptr i8, ptr %i.km, i64 199
  store i8 0, ptr %i.ky, align 1
  %i.kz = load i64, ptr %i.kn, align 8
  %i.la = or i64 %i.kz, 128
  store i64 %i.la, ptr %i.kn, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.cf, %bb.cg, %bb.ci
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.critedge2, label %bb.cf, !llvm.loop !40

.critedge2:                                       ; preds = %bb.cj
  %i.lb = load i32, ptr %i.g, align 4
  %i.lc = and i32 %i.lb, -2
  store i32 %i.lc, ptr %i.g, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.an, %bb.ap, %bb.ar, %bb.at, %bb.av, %bb.ax, %bb.az, %bb.bb, %bb.bd, %bb.bf, %bb.bh, %bb.bj, %bb.bl, %bb.bn, %bb.ca, %bb.cb, %bb.bv, %bb.bw, %bb.b, %bb.c, %bb.a, %.critedge2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ata_scsi_set_sense(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ata_std_qc_defer(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: read, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { nounwind }
attributes #13 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #14 = { noredzone "no-builtin-wcslen" }
attributes #15 = { nounwind memory(none) }
attributes #16 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 8, !"cf-protection-branch", i32 1}
!4 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!8 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{i32 4, !"SkipRaxSetup", i32 1}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{!"auto-init"}
!13 = !{ptr @sata_scr_read}
!14 = !{ptr @sata_scr_write}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{i64 533772}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = distinct !{!20, !15}
!21 = !{i64 2158041605, i64 2158041480}
!22 = !{i64 2158042128, i64 2158043167, i64 2158043200, i64 2158043235, i64 2158043251, i64 2158044178, i64 2158044236, i64 2158044285, i64 2158044095, i64 2158043310, i64 2158043342, i64 2158043425}
!23 = !{i64 2158044590, i64 2158044466}
!24 = !{i64 532130}
!25 = distinct !{null, ptr @sata_scr_read}
!26 = !{ptr @sata_scr_write_flush}
!27 = distinct !{!27, !15}
!28 = !{i64 530493}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{i64 2158063101, i64 2158062976}
!31 = !{i64 2158063624, i64 2158064676, i64 2158064709, i64 2158064744, i64 2158064760, i64 2158065687, i64 2158065745, i64 2158065794, i64 2158065604, i64 2158064819, i64 2158064851, i64 2158064934}
!32 = !{i64 2158066099, i64 2158065975}
!33 = !{i64 2158067399, i64 2158067274}
!34 = !{i64 2158067922, i64 2158068984, i64 2158069017, i64 2158069052, i64 2158069068, i64 2158069995, i64 2158070053, i64 2158070102, i64 2158069912, i64 2158069127, i64 2158069159, i64 2158069242}
!35 = !{i64 2158070407, i64 2158070283}
!36 = !{!"branch_weights", i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 0}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
end_hunk_0
