Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000htdec?download=true
inline.NumInlined: 26
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ff_jpeg2000_decode_htj2k:bb.a
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !13
  %i.iz = or i8 %i.iy, %i.iw
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !13
  %i.jc = zext i8 %i.jb to i16
  %i.jd = shl nuw nsw i16 %i.jc, 1
  %i.je = zext i8 %i.iz to i16
  %i.jf = add nuw nsw i16 %i.jd, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ik, i64 3
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !13
  %i.ji = zext i8 %i.jh to i16
  %i.jj = shl nuw nsw i16 %i.ji, 2
  %i.jk = add nuw nsw i16 %i.jf, %i.jj            ; 2 uses
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %i.jl = icmp ne i8 %i.ga, 0                     ; 4 uses
  %i.jm = icmp ne i8 %i.ig, 0                     ; 2 uses
  %or.cond7.i = select i1 %i.jl, i1 %i.jm, i1 false
  br i1 %or.cond7.i, label %bb.ae, label %bb.be

bb.ae:                                            ; preds = %jpeg2000_decode_sig_emb.exit283
  %i.jn = call fastcc i32 @jpeg2000_decode_mel_sym(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef %i.bc, i32 noundef range(i32 2, 0) %i.ar)
  %.not748.i = icmp eq i32 %i.jn, 0
  %i.jo = load i8, ptr %i.ep, align 8, !tbaa !23  ; 3 uses
  %i.jp = icmp ult i8 %i.jo, 3                    ; 2 uses
  br i1 %.not748.i, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.jp, label %bb.ag, label %vlc_decode_u_prefix.exit166

bb.ag:                                            ; preds = %bb.af
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre898 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit166

vlc_decode_u_prefix.exit166:                      ; preds = %bb.af, %bb.ag
  %i.jq = phi i8 [ %i.jo, %bb.af ], [ %.pre898, %bb.ag ]
  %i.jr = load i64, ptr %i.eo, align 8, !tbaa !16 ; 3 uses
  %i.js = and i64 %i.jr, 7                        ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !13  ; 2 uses
  %i.jv = zext nneg i8 %i.ju to i64
  %i.jw = lshr i64 %i.jr, %i.jv                   ; 2 uses
  store i64 %i.jw, ptr %i.eo, align 8, !tbaa !16
  %i.jx = sub i8 %i.jq, %i.ju                     ; 3 uses
  store i8 %i.jx, ptr %i.ep, align 8, !tbaa !23
  %i.jy = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.js
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !13
  %i.ka = icmp ult i8 %i.jx, 3
  br i1 %i.ka, label %bb.ah, label %vlc_decode_u_prefix.exit165

bb.ah:                                            ; preds = %vlc_decode_u_prefix.exit166
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre899 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre900 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit165

vlc_decode_u_prefix.exit165:                      ; preds = %vlc_decode_u_prefix.exit166, %bb.ah
  %i.kb = phi i8 [ %i.jx, %vlc_decode_u_prefix.exit166 ], [ %.pre900, %bb.ah ]
  %i.kc = phi i64 [ %i.jw, %vlc_decode_u_prefix.exit166 ], [ %.pre899, %bb.ah ] ; 3 uses
  %i.kd = and i64 %i.kc, 7                        ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !13  ; 2 uses
  %i.kg = zext nneg i8 %i.kf to i64
  %i.kh = lshr i64 %i.kc, %i.kg                   ; 3 uses
  store i64 %i.kh, ptr %i.eo, align 8, !tbaa !16
  %i.ki = sub i8 %i.kb, %i.kf                     ; 4 uses
  store i8 %i.ki, ptr %i.ep, align 8, !tbaa !23
  %i.kj = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.kd
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !13
  %i.kl = icmp ne i64 %i.js, 4
  %i.km = and i64 %i.jr, 3
  %.not514 = icmp eq i64 %i.km, 0
  br i1 %.not514, label %bb.ai, label %vlc_decode_u_suffix.exit181

bb.ai:                                            ; preds = %vlc_decode_u_prefix.exit165
  %i.kn = icmp ult i8 %i.ki, 5
  br i1 %i.kn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre901 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre902 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ko = phi i8 [ %.pre902, %bb.aj ], [ %i.ki, %bb.ai ]
  %i.kp = phi i64 [ %.pre901, %bb.aj ], [ %i.kh, %bb.ai ] ; 2 uses
  %i.kq = trunc i64 %i.kp to i32
  %i.kr = and i32 %i.kq, 31
  %i.ks = zext i1 %i.kl to i64                    ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !12 ; 2 uses
  %i.kv = trunc i32 %i.ku to i8
  %.mask515 = and i32 %i.ku, 255
  %i.kw = zext nneg i32 %.mask515 to i64
  %i.kx = lshr i64 %i.kp, %i.kw                   ; 2 uses
  store i64 %i.kx, ptr %i.eo, align 8, !tbaa !16
  %i.ky = sub i8 %i.ko, %i.kv                     ; 2 uses
  store i8 %i.ky, ptr %i.ep, align 8, !tbaa !23
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.ks
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !12
  %i.lb = and i32 %i.kr, %i.la
  %i.lc = trunc nuw nsw i32 %i.lb to i8
  br label %vlc_decode_u_suffix.exit181

vlc_decode_u_suffix.exit181:                      ; preds = %vlc_decode_u_prefix.exit165, %bb.ak
  %i.ld = phi i64 [ %i.kx, %bb.ak ], [ %i.kh, %vlc_decode_u_prefix.exit165 ] ; 2 uses
  %i.le = phi i8 [ %i.ky, %bb.ak ], [ %i.ki, %vlc_decode_u_prefix.exit165 ] ; 3 uses
  %.0.i180 = phi i8 [ %i.lc, %bb.ak ], [ 0, %vlc_decode_u_prefix.exit165 ] ; 2 uses
  %i.lf = icmp ne i64 %i.kd, 4
  %i.lg = and i64 %i.kc, 3
  %.not516 = icmp eq i64 %i.lg, 0
  br i1 %.not516, label %bb.al, label %vlc_decode_u_suffix.exit179

bb.al:                                            ; preds = %vlc_decode_u_suffix.exit181
  %i.lh = icmp ult i8 %i.le, 5
  br i1 %i.lh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre903 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre904 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.li = phi i8 [ %.pre904, %bb.am ], [ %i.le, %bb.al ]
  %i.lj = phi i64 [ %.pre903, %bb.am ], [ %i.ld, %bb.al ] ; 2 uses
  %i.lk = trunc i64 %i.lj to i32
  %i.ll = and i32 %i.lk, 31
  %i.lm = zext i1 %i.lf to i64                    ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !12 ; 2 uses
  %i.lp = trunc i32 %i.lo to i8
  %.mask517 = and i32 %i.lo, 255
  %i.lq = zext nneg i32 %.mask517 to i64
  %i.lr = lshr i64 %i.lj, %i.lq                   ; 2 uses
  store i64 %i.lr, ptr %i.eo, align 8, !tbaa !16
  %i.ls = sub i8 %i.li, %i.lp                     ; 2 uses
  store i8 %i.ls, ptr %i.ep, align 8, !tbaa !23
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.lm
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !12
  %i.lv = and i32 %i.ll, %i.lu
  %i.lw = trunc nuw nsw i32 %i.lv to i8
  br label %vlc_decode_u_suffix.exit179

vlc_decode_u_suffix.exit179:                      ; preds = %vlc_decode_u_suffix.exit181, %bb.an
  %i.lx = phi i64 [ %i.lr, %bb.an ], [ %i.ld, %vlc_decode_u_suffix.exit181 ]
  %i.ly = phi i8 [ %i.ls, %bb.an ], [ %i.le, %vlc_decode_u_suffix.exit181 ] ; 2 uses
  %.0.i178 = phi i8 [ %i.lw, %bb.an ], [ 0, %vlc_decode_u_suffix.exit181 ] ; 2 uses
  %i.lz = icmp samesign ugt i8 %.0.i180, 27
  %i.ma = select i1 %i.lz, i8 4, i8 0             ; 3 uses
  %i.mb = icmp ult i8 %i.ly, %i.ma
  br i1 %i.mb, label %bb.ao, label %jpeg2000_bitbuf_get_bits_lsb.exit205

bb.ao:                                            ; preds = %vlc_decode_u_suffix.exit179
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre905 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre906 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit205

jpeg2000_bitbuf_get_bits_lsb.exit205:             ; preds = %vlc_decode_u_suffix.exit179, %bb.ao
  %i.mc = phi i8 [ %i.ly, %vlc_decode_u_suffix.exit179 ], [ %.pre906, %bb.ao ]
  %i.md = phi i64 [ %i.lx, %vlc_decode_u_suffix.exit179 ], [ %.pre905, %bb.ao ] ; 2 uses
  %i.me = zext nneg i8 %i.ma to i64               ; 2 uses
  %notmask.i204 = shl nsw i64 -1, %i.me
  %i.mf = xor i64 %notmask.i204, -1
  %i.mg = and i64 %i.md, %i.mf
  %i.mh = lshr i64 %i.md, %i.me                   ; 2 uses
  store i64 %i.mh, ptr %i.eo, align 8, !tbaa !16
  %i.mi = sub i8 %i.mc, %i.ma                     ; 3 uses
  store i8 %i.mi, ptr %i.ep, align 8, !tbaa !23
  %i.mj = trunc nuw nsw i64 %i.mg to i32
  %i.mk = icmp samesign ugt i8 %.0.i178, 27
  %i.ml = select i1 %i.mk, i8 4, i8 0             ; 3 uses
  %i.mm = icmp ult i8 %i.mi, %i.ml
  br i1 %i.mm, label %bb.ap, label %jpeg2000_bitbuf_get_bits_lsb.exit207

bb.ap:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit205
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre907 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre908 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit207

jpeg2000_bitbuf_get_bits_lsb.exit207:             ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit205, %bb.ap
  %i.mn = phi i8 [ %i.mi, %jpeg2000_bitbuf_get_bits_lsb.exit205 ], [ %.pre908, %bb.ap ]
  %i.mo = phi i64 [ %i.mh, %jpeg2000_bitbuf_get_bits_lsb.exit205 ], [ %.pre907, %bb.ap ] ; 2 uses
  %i.mp = zext nneg i8 %i.ml to i64               ; 2 uses
  %notmask.i206 = shl nsw i64 -1, %i.mp
  %i.mq = xor i64 %notmask.i206, -1
  %i.mr = and i64 %i.mo, %i.mq
  %i.ms = lshr i64 %i.mo, %i.mp
  store i64 %i.ms, ptr %i.eo, align 8, !tbaa !16
  %i.mt = sub i8 %i.mn, %i.ml
  store i8 %i.mt, ptr %i.ep, align 8, !tbaa !23
  %i.mu = trunc nuw nsw i64 %i.mr to i32
  %i.mv = zext i8 %i.jz to i32
  %i.mw = add nuw nsw i32 %i.mv, 2
  %i.mx = zext nneg i8 %.0.i180 to i32
  %i.my = add nuw nsw i32 %i.mw, %i.mx
  %i.mz = shl nuw nsw i32 %i.mj, 2
  %i.na = add nuw nsw i32 %i.my, %i.mz
  %i.nb = zext i8 %i.kk to i32
  %i.nc = add nuw nsw i32 %i.nb, 2
  %i.nd = zext nneg i8 %.0.i178 to i32
  %i.ne = add nuw nsw i32 %i.nc, %i.nd
  %i.nf = shl nuw nsw i32 %i.mu, 2
  %i.ng = add nuw nsw i32 %i.ne, %i.nf
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

bb.aq:                                            ; preds = %bb.ae
  br i1 %i.jp, label %bb.ar, label %vlc_decode_u_prefix.exit164

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre909 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit164

vlc_decode_u_prefix.exit164:                      ; preds = %bb.aq, %bb.ar
  %i.nh = phi i8 [ %i.jo, %bb.aq ], [ %.pre909, %bb.ar ] ; 2 uses
  %i.ni = load i64, ptr %i.eo, align 8, !tbaa !16 ; 3 uses
  %i.nj = and i64 %i.ni, 7                        ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !13  ; 3 uses
  %i.nm = zext nneg i8 %i.nl to i64
  %i.nn = lshr i64 %i.ni, %i.nm                   ; 3 uses
  store i64 %i.nn, ptr %i.eo, align 8, !tbaa !16
  %i.no = sub i8 %i.nh, %i.nl                     ; 4 uses
  store i8 %i.no, ptr %i.ep, align 8, !tbaa !23
  %i.np = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.nj
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !13
  %i.nr = and i64 %i.ni, 3
  %i.ns = icmp eq i64 %i.nr, 0
  br i1 %i.ns, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %vlc_decode_u_prefix.exit164
  %i.nt = icmp eq i8 %i.nh, %i.nl
  br i1 %i.nt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre916 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre917 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.nu = phi i8 [ %.pre917, %bb.at ], [ %i.no, %bb.as ]
  %i.nv = phi i64 [ %.pre916, %bb.at ], [ %i.nn, %bb.as ] ; 2 uses
  %i.nw = lshr i64 %i.nv, 1                       ; 2 uses
  store i64 %i.nw, ptr %i.eo, align 8, !tbaa !16
  %i.nx = add i8 %i.nu, -1                        ; 3 uses
  store i8 %i.nx, ptr %i.ep, align 8, !tbaa !23
  %i.ny = trunc i64 %i.nv to i32
  %i.nz = and i32 %i.ny, 1
  %i.oa = add nuw nsw i32 %i.nz, 1
  %i.ob = icmp ne i64 %i.nj, 4
  %i.oc = icmp ult i8 %i.nx, 5
  br i1 %i.oc, label %bb.av, label %vlc_decode_u_suffix.exit

bb.av:                                            ; preds = %bb.au
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre918 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre919 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit

vlc_decode_u_suffix.exit:                         ; preds = %bb.au, %bb.av
  %i.od = phi i8 [ %i.nx, %bb.au ], [ %.pre919, %bb.av ]
  %i.oe = phi i64 [ %i.nw, %bb.au ], [ %.pre918, %bb.av ] ; 2 uses
  %i.of = trunc i64 %i.oe to i32
  %i.og = and i32 %i.of, 31
  %i.oh = zext i1 %i.ob to i64                    ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !12 ; 2 uses
  %i.ok = trunc i32 %i.oj to i8
  %.mask520 = and i32 %i.oj, 255
  %i.ol = zext nneg i32 %.mask520 to i64
  %i.om = lshr i64 %i.oe, %i.ol                   ; 2 uses
  store i64 %i.om, ptr %i.eo, align 8, !tbaa !16
  %i.on = sub i8 %i.od, %i.ok                     ; 3 uses
  store i8 %i.on, ptr %i.ep, align 8, !tbaa !23
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.oh
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !12
  %i.oq = and i32 %i.og, %i.op                    ; 2 uses
  %i.or = icmp samesign ugt i32 %i.oq, 27
  %i.os = select i1 %i.or, i8 4, i8 0             ; 3 uses
  %i.ot = icmp ult i8 %i.on, %i.os
  br i1 %i.ot, label %bb.aw, label %jpeg2000_bitbuf_get_bits_lsb.exit213

bb.aw:                                            ; preds = %vlc_decode_u_suffix.exit
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre920 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre921 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit213

jpeg2000_bitbuf_get_bits_lsb.exit213:             ; preds = %vlc_decode_u_suffix.exit, %bb.aw
  %i.ou = phi i8 [ %i.on, %vlc_decode_u_suffix.exit ], [ %.pre921, %bb.aw ]
  %i.ov = phi i64 [ %i.om, %vlc_decode_u_suffix.exit ], [ %.pre920, %bb.aw ] ; 2 uses
  %i.ow = zext nneg i8 %i.os to i64               ; 2 uses
  %notmask.i212 = shl nsw i64 -1, %i.ow
  %i.ox = xor i64 %notmask.i212, -1
  %i.oy = and i64 %i.ov, %i.ox
  %i.oz = lshr i64 %i.ov, %i.ow
  store i64 %i.oz, ptr %i.eo, align 8, !tbaa !16
  %i.pa = sub i8 %i.ou, %i.os
  store i8 %i.pa, ptr %i.ep, align 8, !tbaa !23
  %i.pb = trunc nuw nsw i64 %i.oy to i32
  %i.pc = shl nuw nsw i32 %i.pb, 2
  br label %bb.bd

bb.ax:                                            ; preds = %vlc_decode_u_prefix.exit164
  %i.pd = icmp ult i8 %i.no, 3
  br i1 %i.pd, label %bb.ay, label %vlc_decode_u_suffix.exit177

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre910 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre911 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit177

vlc_decode_u_suffix.exit177:                      ; preds = %bb.ay, %bb.ax
  %i.pe = phi i8 [ %.pre911, %bb.ay ], [ %i.no, %bb.ax ]
  %i.pf = phi i64 [ %.pre910, %bb.ay ], [ %i.nn, %bb.ax ] ; 3 uses
  %i.pg = and i64 %i.pf, 7                        ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.pg
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !13  ; 2 uses
  %i.pj = zext nneg i8 %i.pi to i64
  %i.pk = lshr i64 %i.pf, %i.pj                   ; 3 uses
  store i64 %i.pk, ptr %i.eo, align 8, !tbaa !16
  %i.pl = sub i8 %i.pe, %i.pi                     ; 4 uses
  store i8 %i.pl, ptr %i.ep, align 8, !tbaa !23
  %i.pm = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.pg
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !13
  %i.po = icmp ne i64 %i.pg, 4
  %i.pp = and i64 %i.pf, 3
  %.not518 = icmp eq i64 %i.pp, 0
  br i1 %.not518, label %bb.az, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.az:                                            ; preds = %vlc_decode_u_suffix.exit177
  %i.pq = icmp ult i8 %i.pl, 5
  br i1 %i.pq, label %bb.ba, label %jpeg2000_bitbuf_get_bits_lsb.exit209

bb.ba:                                            ; preds = %bb.az
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre912 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre913 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit209

jpeg2000_bitbuf_get_bits_lsb.exit209:             ; preds = %bb.az, %bb.ba
  %i.pr = phi i8 [ %.pre913, %bb.ba ], [ %i.pl, %bb.az ]
  %i.ps = phi i64 [ %.pre912, %bb.ba ], [ %i.pk, %bb.az ] ; 2 uses
  %i.pt = trunc i64 %i.ps to i32
  %i.pu = and i32 %i.pt, 31
  %i.pv = zext i1 %i.po to i64                    ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.pv
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !12 ; 2 uses
  %i.py = trunc i32 %i.px to i8
  %.mask519 = and i32 %i.px, 255
  %i.pz = zext nneg i32 %.mask519 to i64
  %i.qa = lshr i64 %i.ps, %i.pz                   ; 3 uses
  store i64 %i.qa, ptr %i.eo, align 8, !tbaa !16
  %i.qb = sub i8 %i.pr, %i.py                     ; 4 uses
  store i8 %i.qb, ptr %i.ep, align 8, !tbaa !23
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.pv
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !12
  %i.qe = and i32 %i.pu, %i.qd
  %.fr1250 = freeze i32 %i.qe                     ; 4 uses
  %i.qf = icmp ugt i32 %.fr1250, 27
  br i1 %i.qf, label %bb.bb, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.bb:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit209
  %i.qg = icmp ult i8 %i.qb, 4
  br i1 %i.qg, label %bb.bc, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.bc:                                            ; preds = %bb.bb
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre914 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre915 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit211

jpeg2000_bitbuf_get_bits_lsb.exit211:             ; preds = %vlc_decode_u_suffix.exit177, %jpeg2000_bitbuf_get_bits_lsb.exit209, %bb.bb, %bb.bc
  %i.qh = phi i8 [ 4, %bb.bb ], [ 4, %bb.bc ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ 0, %vlc_decode_u_suffix.exit177 ] ; 2 uses
  %.0.i17411311134 = phi i32 [ %.fr1250, %bb.bb ], [ %.fr1250, %bb.bc ], [ %.fr1250, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ 0, %vlc_decode_u_suffix.exit177 ]
  %i.qi = phi i8 [ %i.qb, %bb.bb ], [ %.pre915, %bb.bc ], [ %i.qb, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ %i.pl, %vlc_decode_u_suffix.exit177 ]
  %i.qj = phi i64 [ %i.qa, %bb.bb ], [ %.pre914, %bb.bc ], [ %i.qa, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ %i.pk, %vlc_decode_u_suffix.exit177 ] ; 2 uses
  %i.qk = zext nneg i8 %i.qh to i64               ; 2 uses
  %notmask.i210 = shl nsw i64 -1, %i.qk
  %i.ql = xor i64 %notmask.i210, -1
  %i.qm = and i64 %i.qj, %i.ql
  %i.qn = lshr i64 %i.qj, %i.qk
  store i64 %i.qn, ptr %i.eo, align 8, !tbaa !16
  %i.qo = sub i8 %i.qi, %i.qh
  store i8 %i.qo, ptr %i.ep, align 8, !tbaa !23
  %i.qp = trunc nuw nsw i64 %i.qm to i32
  %i.qq = zext i8 %i.pn to i32
  %i.qr = add nuw nsw i32 %.0.i17411311134, %i.qq
  %i.qs = shl nuw nsw i32 %i.qp, 2
  %i.qt = and i32 %i.qs, 252
  %i.qu = add nuw nsw i32 %i.qr, %i.qt
  br label %bb.bd

bb.bd:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit211, %jpeg2000_bitbuf_get_bits_lsb.exit213
  %.sroa.0416.0 = phi i32 [ %i.oq, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %.sroa.0399.0 = phi i32 [ %i.pc, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %.sroa.18.2 = phi i32 [ %i.oa, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ %i.qu, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %11 = zext i8 %i.nq to i32
  %i.qv = add nuw nsw i32 %.sroa.0416.0, %11
  %i.qw = add nuw nsw i32 %i.qv, %.sroa.0399.0
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

bb.be:                                            ; preds = %jpeg2000_decode_sig_emb.exit283
  %or.cond11.i = select i1 %i.jl, i1 true, i1 %i.jm
  br i1 %or.cond11.i, label %bb.bf, label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

bb.bf:                                            ; preds = %bb.be
  %i.qx = load i8, ptr %i.ep, align 8, !tbaa !23  ; 2 uses
  %i.qy = icmp ult i8 %i.qx, 3
  br i1 %i.qy, label %bb.bg, label %vlc_decode_u_prefix.exit167

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit167

vlc_decode_u_prefix.exit167:                      ; preds = %bb.bf, %bb.bg
  %i.qz = phi i8 [ %i.qx, %bb.bf ], [ %.pre, %bb.bg ]
  %i.ra = load i64, ptr %i.eo, align 8, !tbaa !16 ; 3 uses
  %i.rb = and i64 %i.ra, 7                        ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !13  ; 2 uses
  %i.re = zext nneg i8 %i.rd to i64
  %i.rf = lshr i64 %i.ra, %i.re                   ; 3 uses
  store i64 %i.rf, ptr %i.eo, align 8, !tbaa !16
  %i.rg = sub i8 %i.qz, %i.rd                     ; 4 uses
  store i8 %i.rg, ptr %i.ep, align 8, !tbaa !23
  %i.rh = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.rb
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !13
  %i.rj = icmp ne i64 %i.rb, 4
  %i.rk = and i64 %i.ra, 3
  %.not512 = icmp eq i64 %i.rk, 0
  br i1 %.not512, label %bb.bh, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bh:                                            ; preds = %vlc_decode_u_prefix.exit167
  %i.rl = icmp ult i8 %i.rg, 5
  br i1 %i.rl, label %bb.bi, label %vlc_decode_u_suffix.exit183.cont

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre894 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre895 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit183.cont

vlc_decode_u_suffix.exit183.cont:                 ; preds = %bb.bh, %bb.bi
  %i.rm = phi i8 [ %.pre895, %bb.bi ], [ %i.rg, %bb.bh ]
  %i.rn = phi i64 [ %.pre894, %bb.bi ], [ %i.rf, %bb.bh ] ; 2 uses
  %i.ro = trunc i64 %i.rn to i32
  %i.rp = and i32 %i.ro, 31
  %i.rq = zext i1 %i.rj to i64                    ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !12 ; 2 uses
  %i.rt = trunc i32 %i.rs to i8
  %.mask513 = and i32 %i.rs, 255
  %i.ru = zext nneg i32 %.mask513 to i64
  %i.rv = lshr i64 %i.rn, %i.ru                   ; 3 uses
  store i64 %i.rv, ptr %i.eo, align 8, !tbaa !16
  %i.rw = sub i8 %i.rm, %i.rt                     ; 4 uses
  store i8 %i.rw, ptr %i.ep, align 8, !tbaa !23
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.rq
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !12
  %i.rz = and i32 %i.rp, %i.ry
  %.fr1249 = freeze i32 %i.rz                     ; 4 uses
  %i.sa = icmp ugt i32 %.fr1249, 27
  br i1 %i.sa, label %bb.bj, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bj:                                            ; preds = %vlc_decode_u_suffix.exit183.cont
  %i.sb = icmp ult i8 %i.rw, 4
  br i1 %i.sb, label %bb.bk, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre896 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre897 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203

jpeg2000_bitbuf_get_bits_lsb.exit203:             ; preds = %vlc_decode_u_prefix.exit167, %vlc_decode_u_suffix.exit183.cont, %bb.bj, %bb.bk
  %i.sc = phi i8 [ 4, %bb.bj ], [ 4, %bb.bk ], [ 0, %vlc_decode_u_suffix.exit183.cont ], [ 0, %vlc_decode_u_prefix.exit167 ] ; 2 uses
  %.0.i18211381144 = phi i32 [ %.fr1249, %bb.bj ], [ %.fr1249, %bb.bk ], [ %.fr1249, %vlc_decode_u_suffix.exit183.cont ], [ 0, %vlc_decode_u_prefix.exit167 ]
  %i.sd = phi i8 [ %i.rw, %bb.bj ], [ %.pre897, %bb.bk ], [ %i.rw, %vlc_decode_u_suffix.exit183.cont ], [ %i.rg, %vlc_decode_u_prefix.exit167 ]
  %12 = phi i64 [ %i.rv, %bb.bj ], [ %.pre896, %bb.bk ], [ %i.rv, %vlc_decode_u_suffix.exit183.cont ], [ %i.rf, %vlc_decode_u_prefix.exit167 ] ; 2 uses
  %i.se = zext nneg i8 %i.sc to i64               ; 2 uses
  %notmask.i202 = shl nsw i64 -1, %i.se
  %i.sf = xor i64 %notmask.i202, -1
  %i.sg = and i64 %12, %i.sf
  %i.sh = lshr i64 %12, %i.se
  store i64 %i.sh, ptr %i.eo, align 8, !tbaa !16
  %i.si = sub i8 %i.sd, %i.sc
  store i8 %i.si, ptr %i.ep, align 8, !tbaa !23
  %i.sj = trunc nuw nsw i64 %i.sg to i32
  %i.sk = zext i8 %i.ri to i32
  %i.sl = add nuw nsw i32 %.0.i18211381144, %i.sk
  %i.sm = shl nuw nsw i32 %i.sj, 2
  %i.sn = and i32 %i.sm, 252
  %i.so = add nuw nsw i32 %i.sl, %i.sn            ; 2 uses
  %spec.select490 = select i1 %i.jl, i32 %i.so, i32 0
  %spec.select491 = select i1 %i.jl, i32 0, i32 %i.so
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

jpeg2000_bitbuf_get_bits_lsb.exit203.cont:        ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit203, %bb.be, %bb.bd, %jpeg2000_bitbuf_get_bits_lsb.exit207
  %.sroa.0386.3 = phi i32 [ %i.qw, %bb.bd ], [ %i.na, %jpeg2000_bitbuf_get_bits_lsb.exit207 ], [ 0, %bb.be ], [ %spec.select490, %jpeg2000_bitbuf_get_bits_lsb.exit203 ] ; 2 uses
  %.sroa.18.1 = phi i32 [ %.sroa.18.2, %bb.bd ], [ %i.ng, %jpeg2000_bitbuf_get_bits_lsb.exit207 ], [ 0, %bb.be ], [ %spec.select491, %jpeg2000_bitbuf_get_bits_lsb.exit203 ] ; 2 uses
  %.not749.i = icmp slt i32 %.sroa.0386.3, %i.du
  %.not750.i = icmp slt i32 %.sroa.18.1, %i.du
  %or.cond751.i = select i1 %.not749.i, i1 %.not750.i, i1 false
  br i1 %or.cond751.i, label %.preheader531, label %jpeg2000_decode_ht_cleanup_segment.exit

.preheader531:                                    ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit203.cont
  %i.sp = add nuw nsw i32 %.sroa.18.1, 1          ; 4 uses
  %i.sq = add nuw nsw i32 %.sroa.0386.3, 1        ; 4 uses
  %i.sr = zext nneg i8 %i.fy to i32               ; 4 uses
  %i.ss = zext nneg i8 %i.ie to i32               ; 4 uses
  %i.st = load i8, ptr %i.ge, align 1, !tbaa !13
  %i.su = zext i8 %i.st to i32
  %i.sv = mul nuw nsw i32 %i.sq, %i.su            ; 2 uses
  %i.sw = and i32 %i.sr, 1                        ; 2 uses
  %i.sx = sub nsw i32 %i.sv, %i.sw                ; 4 uses
  %i.sy = zext i8 %i.iw to i32
  %i.sz = mul nuw nsw i32 %i.sp, %i.sy            ; 2 uses
  %i.ta = and i32 %i.ss, 1                        ; 2 uses
  %i.tb = sub nsw i32 %i.sz, %i.ta                ; 4 uses
  %i.tc = or disjoint i64 %i.gc, 1                ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1, !tbaa !13
  %i.tf = zext i8 %i.te to i32
  %i.tg = mul nuw nsw i32 %i.sq, %i.tf            ; 2 uses
  %i.th = lshr i32 %i.sr, 1
  %i.ti = and i32 %i.th, 1                        ; 2 uses
  %i.tj = sub nsw i32 %i.tg, %i.ti                ; 4 uses
  %i.tk = or disjoint i64 %i.ii, 1                ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !13
  %i.tn = zext i8 %i.tm to i32
  %i.to = mul nuw nsw i32 %i.sp, %i.tn            ; 2 uses
  %i.tp = lshr i32 %i.ss, 1
  %i.tq = and i32 %i.tp, 1                        ; 2 uses
  %i.tr = sub nsw i32 %i.to, %i.tq                ; 4 uses
  %i.ts = or disjoint i64 %i.gc, 2                ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ts
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !13
  %i.tv = zext i8 %i.tu to i32
  %i.tw = mul nuw nsw i32 %i.sq, %i.tv            ; 2 uses
  %i.tx = lshr i32 %i.sr, 2
  %i.ty = and i32 %i.tx, 1                        ; 2 uses
  %i.tz = sub nsw i32 %i.tw, %i.ty                ; 4 uses
  %i.ua = or disjoint i64 %i.ii, 2                ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !13
  %i.ud = zext i8 %i.uc to i32
  %i.ue = mul nuw nsw i32 %i.sp, %i.ud            ; 2 uses
  %i.uf = lshr i32 %i.ss, 2
  %i.ug = and i32 %i.uf, 1                        ; 2 uses
  %i.uh = sub nsw i32 %i.ue, %i.ug                ; 4 uses
  %i.ui = or disjoint i64 %i.gc, 3                ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ui
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !13
  %i.ul = zext i8 %i.uk to i32
  %i.um = mul nuw nsw i32 %i.sq, %i.ul            ; 2 uses
  %i.un = lshr i32 %i.sr, 3                       ; 2 uses
  %i.uo = sub nsw i32 %i.um, %i.un                ; 4 uses
  %i.up = or disjoint i64 %i.ii, 3                ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.up
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !13
  %i.us = zext i8 %i.ur to i32
  %i.ut = mul nuw nsw i32 %i.sp, %i.us            ; 2 uses
  %i.uu = lshr i32 %i.ss, 3                       ; 2 uses
  %i.uv = sub nsw i32 %i.ut, %i.uu                ; 4 uses
  %i.uw = zext nneg i8 %i.fx to i32               ; 4 uses
  %i.ux = and i32 %i.uw, 1
  %i.uy = icmp sgt i32 %i.sx, 0
  br i1 %i.uy, label %bb.bl, label %jpeg2000_decode_mag_sgn.exit260

bb.bl:                                            ; preds = %.preheader531
  %i.uz = trunc i32 %i.sx to i8                   ; 2 uses
  %.not.i265 = icmp ule i8 %.sroa.52.0629, %i.uz
  %i.va = icmp ult i8 %.sroa.52.0629, 32
  %or.cond482 = and i1 %i.va, %.not.i265
  br i1 %or.cond482, label %.lr.ph.i285, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267

.lr.ph.i285:                                      ; preds = %bb.bl, %bb.bn
  %.sroa.0320.26 = phi i32 [ %.sroa.0320.27, %bb.bn ], [ %.sroa.0320.0625, %bb.bl ]
  %.sroa.38.26 = phi i32 [ %.sroa.38.27, %bb.bn ], [ %.sroa.38.0626, %bb.bl ]
  %i.vb = phi i64 [ %i.vs, %bb.bn ], [ %.sroa.84339.0627, %bb.bl ]
  %i.vc = phi i32 [ %i.vn, %bb.bn ], [ %.sroa.0320.0625, %bb.bl ] ; 4 uses
  %i.vd = phi i32 [ %i.vo, %bb.bn ], [ %.sroa.38.0626, %bb.bl ] ; 2 uses
  %i.ve = phi i8 [ %i.vu, %bb.bn ], [ %.sroa.52.0629, %bb.bl ] ; 2 uses
  %i.vf = icmp eq i32 %i.vd, 255
  %i.vg = icmp ult i32 %i.vc, %i.cl
  br i1 %i.vg, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i285
  %i.vh = sext i32 %i.vc to i64
  %i.vi = getelementptr inbounds i8, ptr %i.bc, i64 %i.vh
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !13  ; 2 uses
  %i.vk = zext i8 %i.vj to i32                    ; 2 uses
  %i.vl = add nuw nsw i32 %i.vc, 1                ; 2 uses
  %i.vm = zext i8 %i.vj to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.i285
  %.sroa.0320.27 = phi i32 [ %i.vl, %bb.bm ], [ %.sroa.0320.26, %.lr.ph.i285 ] ; 2 uses
  %.sroa.38.27 = phi i32 [ %i.vk, %bb.bm ], [ %.sroa.38.26, %.lr.ph.i285 ] ; 2 uses
  %i.vn = phi i32 [ %i.vl, %bb.bm ], [ %i.vc, %.lr.ph.i285 ]
  %i.vo = phi i32 [ %i.vk, %bb.bm ], [ %i.vd, %.lr.ph.i285 ]
  %i.vp = phi i64 [ %i.vm, %bb.bm ], [ 255, %.lr.ph.i285 ]
  %i.vq = zext nneg i8 %i.ve to i64
  %i.vr = shl nuw nsw i64 %i.vp, %i.vq
  %i.vs = or i64 %i.vr, %i.vb                     ; 2 uses
  %i.vt = select i1 %i.vf, i8 7, i8 8
  %i.vu = add nuw nsw i8 %i.vt, %i.ve             ; 3 uses
  %i.vv = icmp samesign ult i8 %i.vu, 32
  br i1 %i.vv, label %.lr.ph.i285, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit267:     ; preds = %bb.bn, %bb.bl
  %.sroa.0320.18 = phi i32 [ %.sroa.0320.0625, %bb.bl ], [ %.sroa.0320.27, %bb.bn ]
  %.sroa.38.18 = phi i32 [ %.sroa.38.0626, %bb.bl ], [ %.sroa.38.27, %bb.bn ]
  %.sroa.84339.18 = phi i64 [ %.sroa.84339.0627, %bb.bl ], [ %i.vs, %bb.bn ] ; 2 uses
  %.sroa.52.18 = phi i8 [ %.sroa.52.0629, %bb.bl ], [ %i.vu, %bb.bn ]
  %.mask522 = and i32 %i.sx, 255
  %i.vw = zext nneg i32 %.mask522 to i64          ; 2 uses
  %notmask.i266 = shl nsw i64 -1, %i.vw
  %i.vx = xor i64 %notmask.i266, -1
  %i.vy = and i64 %.sroa.84339.18, %i.vx
  %i.vz = lshr i64 %.sroa.84339.18, %i.vw
  %i.wa = sub i8 %.sroa.52.18, %i.uz
  %i.wb = trunc i64 %i.vy to i32
  %i.wc = shl nuw i32 %i.ux, %i.sx
  %i.wd = add nsw i32 %i.wc, %i.wb
  br label %jpeg2000_decode_mag_sgn.exit260

jpeg2000_decode_mag_sgn.exit260:                  ; preds = %.preheader531, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267
  %.sroa.0320.15 = phi i32 [ %.sroa.0320.18, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.0320.0625, %.preheader531 ] ; 4 uses
  %.sroa.38.15 = phi i32 [ %.sroa.38.18, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.38.0626, %.preheader531 ] ; 4 uses
  %.sroa.84339.15 = phi i64 [ %i.vz, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.84339.0627, %.preheader531 ] ; 3 uses
  %.sroa.52.15 = phi i8 [ %i.wa, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.52.0629, %.preheader531 ] ; 5 uses
  %.0.i259 = phi i32 [ %i.wd, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ 0, %.preheader531 ] ; 3 uses
  %.not.i218 = icmp eq i32 %i.sv, %i.sw
  br i1 %.not.i218, label %bb.bo, label %ff_clz_c.exit.i222

ff_clz_c.exit.i222:                               ; preds = %jpeg2000_decode_mag_sgn.exit260
  %i.we = lshr i32 %.0.i259, 1
  %i.wf = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.we, i1 false)
  %i.wg = trunc nuw nsw i32 %i.wf to i8
  %i.wh = sub nuw nsw i8 33, %i.wg
  %i.wi = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.gc
  store i8 %i.wh, ptr %i.wi, align 1, !tbaa !13
  %i.wj = ashr i32 %.0.i259, 1
  %i.wk = add nsw i32 %i.wj, 1
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gc
  %i.wm = shl i32 %i.wk, %i.eu
  %i.wn = shl i32 %.0.i259, 31
  %i.wo = or i32 %i.wn, %i.wm
  %i.wp = or i32 %i.wo, %i.ew
  store i32 %i.wp, ptr %i.wl, align 4, !tbaa !12
  br label %bb.bo

bb.bo:                                            ; preds = %ff_clz_c.exit.i222, %jpeg2000_decode_mag_sgn.exit260
  %i.wq = lshr i32 %i.uw, 1
  %i.wr = and i32 %i.wq, 1
  %i.ws = icmp sgt i32 %i.tj, 0
  br i1 %i.ws, label %bb.bp, label %jpeg2000_decode_mag_sgn.exit260.1

bb.bp:                                            ; preds = %bb.bo
  %i.wt = trunc i32 %i.tj to i8                   ; 2 uses
  %.not.i265.1 = icmp ule i8 %.sroa.52.15, %i.wt
  %i.wu = icmp ult i8 %.sroa.52.15, 32
  %or.cond482.1 = and i1 %i.wu, %.not.i265.1
  br i1 %or.cond482.1, label %.lr.ph.i285.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1

.lr.ph.i285.1:                                    ; preds = %bb.bp, %bb.br
  %.sroa.0320.26.1 = phi i32 [ %.sroa.0320.27.1, %bb.br ], [ %.sroa.0320.15, %bb.bp ]
  %.sroa.38.26.1 = phi i32 [ %.sroa.38.27.1, %bb.br ], [ %.sroa.38.15, %bb.bp ]
  %i.wv = phi i64 [ %i.xm, %bb.br ], [ %.sroa.84339.15, %bb.bp ]
  %i.ww = phi i32 [ %i.xh, %bb.br ], [ %.sroa.0320.15, %bb.bp ] ; 4 uses
  %i.wx = phi i32 [ %i.xi, %bb.br ], [ %.sroa.38.15, %bb.bp ] ; 2 uses
  %i.wy = phi i8 [ %i.xo, %bb.br ], [ %.sroa.52.15, %bb.bp ] ; 2 uses
  %i.wz = icmp eq i32 %i.wx, 255
  %i.xa = icmp ult i32 %i.ww, %i.cl
  br i1 %i.xa, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i285.1
  %i.xb = sext i32 %i.ww to i64
  %i.xc = getelementptr inbounds i8, ptr %i.bc, i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !13  ; 2 uses
  %i.xe = zext i8 %i.xd to i32                    ; 2 uses
  %i.xf = add nuw nsw i32 %i.ww, 1                ; 2 uses
  %i.xg = zext i8 %i.xd to i64
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph.i285.1
  %.sroa.0320.27.1 = phi i32 [ %i.xf, %bb.bq ], [ %.sroa.0320.26.1, %.lr.ph.i285.1 ] ; 2 uses
  %.sroa.38.27.1 = phi i32 [ %i.xe, %bb.bq ], [ %.sroa.38.26.1, %.lr.ph.i285.1 ] ; 2 uses
  %i.xh = phi i32 [ %i.xf, %bb.bq ], [ %i.ww, %.lr.ph.i285.1 ]
  %i.xi = phi i32 [ %i.xe, %bb.bq ], [ %i.wx, %.lr.ph.i285.1 ]
  %i.xj = phi i64 [ %i.xg, %bb.bq ], [ 255, %.lr.ph.i285.1 ]
  %i.xk = zext nneg i8 %i.wy to i64
  %i.xl = shl nuw nsw i64 %i.xj, %i.xk
  %i.xm = or i64 %i.xl, %i.wv                     ; 2 uses
  %i.xn = select i1 %i.wz, i8 7, i8 8
  %i.xo = add nuw nsw i8 %i.xn, %i.wy             ; 3 uses
  %i.xp = icmp samesign ult i8 %i.xo, 32
  br i1 %i.xp, label %.lr.ph.i285.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1:   ; preds = %bb.br, %bb.bp
  %.sroa.0320.18.1 = phi i32 [ %.sroa.0320.15, %bb.bp ], [ %.sroa.0320.27.1, %bb.br ]
  %.sroa.38.18.1 = phi i32 [ %.sroa.38.15, %bb.bp ], [ %.sroa.38.27.1, %bb.br ]
  %.sroa.84339.18.1 = phi i64 [ %.sroa.84339.15, %bb.bp ], [ %i.xm, %bb.br ] ; 2 uses
  %.sroa.52.18.1 = phi i8 [ %.sroa.52.15, %bb.bp ], [ %i.xo, %bb.br ]
  %.mask522.1 = and i32 %i.tj, 255
  %i.xq = zext nneg i32 %.mask522.1 to i64        ; 2 uses
  %notmask.i266.1 = shl nsw i64 -1, %i.xq
  %i.xr = xor i64 %notmask.i266.1, -1
  %i.xs = and i64 %.sroa.84339.18.1, %i.xr
  %i.xt = lshr i64 %.sroa.84339.18.1, %i.xq
  %i.xu = sub i8 %.sroa.52.18.1, %i.wt
  %i.xv = trunc i64 %i.xs to i32
  %i.xw = shl nuw i32 %i.wr, %i.tj
  %i.xx = add nsw i32 %i.xw, %i.xv
  br label %jpeg2000_decode_mag_sgn.exit260.1

jpeg2000_decode_mag_sgn.exit260.1:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1, %bb.bo
  %.sroa.0320.15.1 = phi i32 [ %.sroa.0320.18.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ %.sroa.0320.15, %bb.bo ] ; 4 uses
  %.sroa.38.15.1 = phi i32 [ %.sroa.38.18.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ %.sroa.38.15, %bb.bo ] ; 4 uses
  %.sroa.84339.15.1 = phi i64 [ %i.xt, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ %.sroa.84339.15, %bb.bo ] ; 3 uses
  %.sroa.52.15.1 = phi i8 [ %i.xu, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ %.sroa.52.15, %bb.bo ] ; 5 uses
  %.0.i259.1 = phi i32 [ %i.xx, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ 0, %bb.bo ] ; 3 uses
  %.not.i218.1 = icmp eq i32 %i.tg, %i.ti
  br i1 %.not.i218.1, label %bb.bs, label %ff_clz_c.exit.i222.1

ff_clz_c.exit.i222.1:                             ; preds = %jpeg2000_decode_mag_sgn.exit260.1
  %i.xy = lshr i32 %.0.i259.1, 1
  %i.xz = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.xy, i1 false)
  %i.ya = trunc nuw nsw i32 %i.xz to i8
  %i.yb = sub nuw nsw i8 33, %i.ya
  %i.yc = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.tc
  store i8 %i.yb, ptr %i.yc, align 1, !tbaa !13
  %i.yd = ashr i32 %.0.i259.1, 1
  %i.ye = add nsw i32 %i.yd, 1
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.tc
  %i.yg = shl i32 %i.ye, %i.eu
  %i.yh = shl i32 %.0.i259.1, 31
  %i.yi = or i32 %i.yh, %i.yg
  %i.yj = or i32 %i.yi, %i.ew
  store i32 %i.yj, ptr %i.yf, align 4, !tbaa !12
  br label %bb.bs

bb.bs:                                            ; preds = %ff_clz_c.exit.i222.1, %jpeg2000_decode_mag_sgn.exit260.1
  %i.yk = lshr i32 %i.uw, 2
  %i.yl = and i32 %i.yk, 1
  %i.ym = icmp sgt i32 %i.tz, 0
  br i1 %i.ym, label %bb.bt, label %jpeg2000_decode_mag_sgn.exit260.2

bb.bt:                                            ; preds = %bb.bs
  %i.yn = trunc i32 %i.tz to i8                   ; 2 uses
  %.not.i265.2 = icmp ule i8 %.sroa.52.15.1, %i.yn
  %i.yo = icmp ult i8 %.sroa.52.15.1, 32
  %or.cond482.2 = and i1 %i.yo, %.not.i265.2
  br i1 %or.cond482.2, label %.lr.ph.i285.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2

.lr.ph.i285.2:                                    ; preds = %bb.bt, %bb.bv
  %.sroa.0320.26.2 = phi i32 [ %.sroa.0320.27.2, %bb.bv ], [ %.sroa.0320.15.1, %bb.bt ]
  %.sroa.38.26.2 = phi i32 [ %.sroa.38.27.2, %bb.bv ], [ %.sroa.38.15.1, %bb.bt ]
  %i.yp = phi i64 [ %i.zg, %bb.bv ], [ %.sroa.84339.15.1, %bb.bt ]
  %i.yq = phi i32 [ %i.zb, %bb.bv ], [ %.sroa.0320.15.1, %bb.bt ] ; 4 uses
  %i.yr = phi i32 [ %i.zc, %bb.bv ], [ %.sroa.38.15.1, %bb.bt ] ; 2 uses
end_hunk_0
begin_hunk_1_@ff_jpeg2000_decode_htj2k:bb.a
  %i.ahw = phi i32 [ %i.ahs, %bb.cn ], [ %i.ahl, %.lr.ph.i291.3 ]
  %i.ahx = phi i64 [ %i.ahu, %bb.cn ], [ 255, %.lr.ph.i291.3 ]
  %i.ahy = zext nneg i8 %i.ahm to i64
  %i.ahz = shl nuw nsw i64 %i.ahx, %i.ahy
  %i.aia = or i64 %i.ahz, %i.ahj                  ; 2 uses
  %i.aib = select i1 %i.ahn, i8 7, i8 8
  %i.aic = add nuw nsw i8 %i.aib, %i.ahm          ; 3 uses
  %i.aid = icmp samesign ult i8 %i.aic, 32
  br i1 %i.aid, label %.lr.ph.i291.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit.3:      ; preds = %bb.co, %bb.cm
  %.sroa.0320.17.3 = phi i32 [ %.sroa.0320.16.2, %bb.cm ], [ %.sroa.0320.30.3, %bb.co ]
  %.sroa.38.17.3 = phi i32 [ %.sroa.38.16.2, %bb.cm ], [ %.sroa.38.30.3, %bb.co ]
  %.sroa.84339.17.3 = phi i64 [ %.sroa.84339.16.2, %bb.cm ], [ %i.aia, %bb.co ] ; 2 uses
  %.sroa.52.17.3 = phi i8 [ %.sroa.52.16.2, %bb.cm ], [ %i.aic, %bb.co ]
  %.mask521.3 = and i32 %i.uv, 255
  %i.aie = zext nneg i32 %.mask521.3 to i64       ; 2 uses
  %notmask.i264.3 = shl nsw i64 -1, %i.aie
  %i.aif = xor i64 %notmask.i264.3, -1
  %i.aig = and i64 %.sroa.84339.17.3, %i.aif
  %i.aih = lshr i64 %.sroa.84339.17.3, %i.aie
  %i.aii = sub i8 %.sroa.52.17.3, %i.ahh
  %i.aij = trunc i64 %i.aig to i32
  %i.aik = shl nuw i32 %i.ahf, %i.uv
  %i.ail = add nsw i32 %i.aik, %i.aij
  br label %jpeg2000_decode_mag_sgn.exit262.3

jpeg2000_decode_mag_sgn.exit262.3:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3, %bb.cl
  %.sroa.0320.16.3 = phi i32 [ %.sroa.0320.17.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.0320.16.2, %bb.cl ] ; 2 uses
  %.sroa.38.16.3 = phi i32 [ %.sroa.38.17.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.38.16.2, %bb.cl ] ; 2 uses
  %.sroa.84339.16.3 = phi i64 [ %i.aih, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.84339.16.2, %bb.cl ] ; 2 uses
  %.sroa.52.16.3 = phi i8 [ %i.aii, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.52.16.2, %bb.cl ] ; 2 uses
  %.0.i261.3 = phi i32 [ %i.ail, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ 0, %bb.cl ] ; 3 uses
  %.not.i216.3 = icmp eq i32 %i.ut, %i.uu
  br i1 %.not.i216.3, label %recover_mag_sgn.exit, label %ff_clz_c.exit.i.3

ff_clz_c.exit.i.3:                                ; preds = %jpeg2000_decode_mag_sgn.exit262.3
  %i.aim = lshr i32 %.0.i261.3, 1
  %i.ain = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.aim, i1 false)
  %i.aio = trunc nuw nsw i32 %i.ain to i8
  %i.aip = sub nuw nsw i8 33, %i.aio
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.up
  store i8 %i.aip, ptr %i.aiq, align 1, !tbaa !13
  %i.air = ashr i32 %.0.i261.3, 1
  %i.ais = add nsw i32 %i.air, 1
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.up
  %i.aiu = shl i32 %i.ais, %i.eu
  %i.aiv = shl i32 %.0.i261.3, 31
  %i.aiw = or i32 %i.aiv, %i.aiu
  %i.aix = or i32 %i.aiw, %i.ew
  store i32 %i.aix, ptr %i.ait, align 4, !tbaa !12
  br label %recover_mag_sgn.exit

recover_mag_sgn.exit:                             ; preds = %ff_clz_c.exit.i.3, %jpeg2000_decode_mag_sgn.exit262.3
  %i.aiy = add i16 %.0659.i631, 2                 ; 3 uses
  %i.aiz = zext i16 %i.aiy to i32                 ; 3 uses
  %i.aja = icmp sgt i32 %i.em, %i.aiz
  br i1 %i.aja, label %bb.x, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %recover_mag_sgn.exit
  store i8 %i.ig, ptr %i.eq, align 1
  store i8 %i.if, ptr %i.er, align 1
  store i8 %i.ie, ptr %i.es, align 1
  store i8 %i.id, ptr %i.et, align 1
  %i.ajb = shl nuw nsw i32 %i.aiz, 2
  %i.ajc = zext nneg i32 %i.ajb to i64
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge, %.preheader532
  %.lcssa620 = phi i8 [ %i.fx, %._crit_edge ], [ 0, %.preheader532 ]
  %.lcssa615 = phi i8 [ %i.fy, %._crit_edge ], [ 0, %.preheader532 ]
  %.lcssa610 = phi i8 [ %i.fz, %._crit_edge ], [ 0, %.preheader532 ]
  %.lcssa605 = phi i8 [ %i.ga, %._crit_edge ], [ 0, %.preheader532 ]
  %.sroa.0320.0.lcssa = phi i32 [ %.sroa.0320.16.3, %._crit_edge ], [ %.sroa.0320.24, %.preheader532 ] ; 5 uses
  %.sroa.38.0.lcssa = phi i32 [ %.sroa.38.16.3, %._crit_edge ], [ %.sroa.38.24, %.preheader532 ] ; 5 uses
  %.sroa.84339.0.lcssa = phi i64 [ %.sroa.84339.16.3, %._crit_edge ], [ %i.de, %.preheader532 ] ; 4 uses
  %.sroa.52.0.lcssa = phi i8 [ %.sroa.52.16.3, %._crit_edge ], [ %i.dg, %.preheader532 ] ; 6 uses
  %.0677.i.lcssa = phi i16 [ %i.jk, %._crit_edge ], [ 0, %.preheader532 ]
  %.0659.i.lcssa = phi i16 [ %i.aiy, %._crit_edge ], [ 0, %.preheader532 ] ; 2 uses
  %.lcssa558 = phi i64 [ %i.ajc, %._crit_edge ], [ 0, %.preheader532 ] ; 6 uses
  store i8 %.lcssa605, ptr %i.b, align 2
  store i8 %.lcssa610, ptr %i.a, align 2
  store i8 %.lcssa615, ptr %i.c, align 2
  store i8 %.lcssa620, ptr %i.d, align 2
  %i.ajd = and i32 %i.dz, 1
  %.not.i = icmp eq i32 %i.ajd, 0                 ; 2 uses
  br i1 %.not.i, label %bb.dn, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call fastcc void @jpeg2000_decode_sig_emb(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dec_cxt_vlc_table0, ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i8 noundef zeroext 0, i16 noundef zeroext %.0677.i.lcssa, i32 noundef range(i32 2, 0) %i.ar, i32 noundef %i.cl)
  %i.aje = load i8, ptr %i.a, align 2, !tbaa !13  ; 4 uses
  %i.ajf = and i8 %i.aje, 1
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.lcssa558 ; 2 uses
  store i8 %i.ajf, ptr %i.ajg, align 1, !tbaa !13
  %i.ajh = lshr i8 %i.aje, 1
  %i.aji = and i8 %i.ajh, 1                       ; 2 uses
  %i.ajj = add nuw nsw i64 %.lcssa558, 1          ; 3 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ajj
  store i8 %i.aji, ptr %i.ajk, align 1, !tbaa !13
  %i.ajl = lshr i8 %i.aje, 2
  %i.ajm = and i8 %i.ajl, 1                       ; 2 uses
  %i.ajn = add nuw nsw i64 %.lcssa558, 2          ; 3 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ajn
  store i8 %i.ajm, ptr %i.ajo, align 1, !tbaa !13
  %i.ajp = lshr i8 %i.aje, 3
  %i.ajq = and i8 %i.ajp, 1                       ; 2 uses
  %i.ajr = add nuw nsw i64 %.lcssa558, 3          ; 3 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ajr
  store i8 %i.ajq, ptr %i.ajs, align 1, !tbaa !13
  %i.ajt = load i8, ptr %i.b, align 2, !tbaa !13
  %i.aju = icmp eq i8 %i.ajt, 1
  br i1 %i.aju, label %bb.cr, label %bb.cx

bb.cr:                                            ; preds = %bb.cq
  %i.ajv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ajw = load i8, ptr %i.ajv, align 8, !tbaa !23 ; 2 uses
  %i.ajx = icmp ult i8 %i.ajw, 3
  br i1 %i.ajx, label %bb.cs, label %vlc_decode_u_prefix.exit168

bb.cs:                                            ; preds = %bb.cr
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre922 = load i8, ptr %i.ajv, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit168

vlc_decode_u_prefix.exit168:                      ; preds = %bb.cr, %bb.cs
  %i.ajy = phi i8 [ %i.ajw, %bb.cr ], [ %.pre922, %bb.cs ]
  %i.ajz = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !16 ; 3 uses
  %i.akb = and i64 %i.aka, 7                      ; 3 uses
  %i.akc = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.akb
  %i.akd = load i8, ptr %i.akc, align 1, !tbaa !13 ; 2 uses
  %i.ake = zext nneg i8 %i.akd to i64
  %i.akf = lshr i64 %i.aka, %i.ake                ; 3 uses
  store i64 %i.akf, ptr %i.ajz, align 8, !tbaa !16
  %i.akg = sub i8 %i.ajy, %i.akd                  ; 4 uses
  store i8 %i.akg, ptr %i.ajv, align 8, !tbaa !23
  %i.akh = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.akb
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !13
  %i.akj = icmp ne i64 %i.akb, 4
  %i.akk = and i64 %i.aka, 3
  %.not495 = icmp eq i64 %i.akk, 0
  br i1 %.not495, label %bb.ct, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.ct:                                            ; preds = %vlc_decode_u_prefix.exit168
  %i.akl = icmp ult i8 %i.akg, 5
  br i1 %i.akl, label %bb.cu, label %vlc_decode_u_suffix.exit185

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre923 = load i64, ptr %i.ajz, align 8, !tbaa !16
  %.pre924 = load i8, ptr %i.ajv, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit185

vlc_decode_u_suffix.exit185:                      ; preds = %bb.ct, %bb.cu
  %i.akm = phi i8 [ %i.akg, %bb.ct ], [ %.pre924, %bb.cu ]
  %i.akn = phi i64 [ %i.akf, %bb.ct ], [ %.pre923, %bb.cu ] ; 2 uses
  %i.ako = trunc i64 %i.akn to i32
  %i.akp = and i32 %i.ako, 31
  %i.akq = zext i1 %i.akj to i64                  ; 2 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.akq
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !12 ; 2 uses
  %i.akt = trunc i32 %i.aks to i8
  %.mask = and i32 %i.aks, 255
  %i.aku = zext nneg i32 %.mask to i64
  %i.akv = lshr i64 %i.akn, %i.aku                ; 3 uses
  store i64 %i.akv, ptr %i.ajz, align 8, !tbaa !16
  %i.akw = sub i8 %i.akm, %i.akt                  ; 4 uses
  store i8 %i.akw, ptr %i.ajv, align 8, !tbaa !23
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.akq
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !12
  %i.akz = and i32 %i.akp, %i.aky
  %.fr = freeze i32 %i.akz                        ; 4 uses
  %i.ala = icmp ugt i32 %.fr, 27
  br i1 %i.ala, label %bb.cv, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.cv:                                            ; preds = %vlc_decode_u_suffix.exit185
  %i.alb = icmp ult i8 %i.akw, 4
  br i1 %i.alb, label %bb.cw, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.cw:                                            ; preds = %bb.cv
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre925 = load i64, ptr %i.ajz, align 8, !tbaa !16
  %.pre926 = load i8, ptr %i.ajv, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit201

jpeg2000_bitbuf_get_bits_lsb.exit201:             ; preds = %vlc_decode_u_prefix.exit168, %vlc_decode_u_suffix.exit185, %bb.cv, %bb.cw
  %i.alc = phi i8 [ %.pre926, %bb.cw ], [ %i.akw, %bb.cv ], [ %i.akw, %vlc_decode_u_suffix.exit185 ], [ %i.akg, %vlc_decode_u_prefix.exit168 ]
  %i.ald = phi i64 [ %.pre925, %bb.cw ], [ %i.akv, %bb.cv ], [ %i.akv, %vlc_decode_u_suffix.exit185 ], [ %i.akf, %vlc_decode_u_prefix.exit168 ] ; 2 uses
  %i.ale = phi i8 [ 4, %bb.cw ], [ 4, %bb.cv ], [ 0, %vlc_decode_u_suffix.exit185 ], [ 0, %vlc_decode_u_prefix.exit168 ] ; 2 uses
  %.0.i184453455 = phi i32 [ %.fr, %bb.cw ], [ %.fr, %bb.cv ], [ %.fr, %vlc_decode_u_suffix.exit185 ], [ 0, %vlc_decode_u_prefix.exit168 ]
  %i.alf = zext nneg i8 %i.ale to i64             ; 2 uses
  %notmask.i200 = shl nsw i64 -1, %i.alf
  %i.alg = xor i64 %notmask.i200, -1
  %i.alh = and i64 %i.ald, %i.alg
  %i.ali = lshr i64 %i.ald, %i.alf
  store i64 %i.ali, ptr %i.ajz, align 8, !tbaa !16
  %i.alj = sub i8 %i.alc, %i.ale
  store i8 %i.alj, ptr %i.ajv, align 8, !tbaa !23
  %i.alk = trunc nuw nsw i64 %i.alh to i32
  %i.all = zext i8 %i.aki to i32
  %13 = add nuw nsw i32 %.0.i184453455, %i.all
  %14 = shl nuw nsw i32 %i.alk, 2
  %15 = and i32 %14, 252
  %i.alm = add nuw nsw i32 %13, %15
  br label %bb.cx

bb.cx:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit201, %bb.cq
  %.sroa.0386.0 = phi i32 [ %i.alm, %jpeg2000_bitbuf_get_bits_lsb.exit201 ], [ 0, %bb.cq ] ; 2 uses
  %.not732.i = icmp slt i32 %.sroa.0386.0, %i.du
  br i1 %.not732.i, label %.preheader530, label %jpeg2000_decode_ht_cleanup_segment.exit

.preheader530:                                    ; preds = %bb.cx
  %16 = add nuw nsw i32 %.sroa.0386.0, 1          ; 4 uses
  %i.aln = load i8, ptr %i.c, align 2, !tbaa !13
  %i.alo = zext i8 %i.aln to i32                  ; 4 uses
  %i.alp = load i8, ptr %i.ajg, align 1, !tbaa !13
  %i.alq = zext i8 %i.alp to i32
  %i.alr = mul nsw i32 %16, %i.alq                ; 2 uses
  %i.als = and i32 %i.alo, 1                      ; 2 uses
  %i.alt = sub nsw i32 %i.alr, %i.als             ; 4 uses
  %i.alu = zext nneg i8 %i.aji to i32
  %i.alv = mul nuw nsw i32 %16, %i.alu            ; 2 uses
  %i.alw = lshr i32 %i.alo, 1
  %i.alx = and i32 %i.alw, 1                      ; 2 uses
  %i.aly = sub nsw i32 %i.alv, %i.alx             ; 4 uses
  %i.alz = zext nneg i8 %i.ajm to i32
  %i.ama = mul nuw nsw i32 %16, %i.alz            ; 2 uses
  %i.amb = lshr i32 %i.alo, 2
  %i.amc = and i32 %i.amb, 1                      ; 2 uses
  %i.amd = sub nsw i32 %i.ama, %i.amc             ; 4 uses
  %i.ame = zext nneg i8 %i.ajq to i32
  %i.amf = mul nuw nsw i32 %16, %i.ame            ; 2 uses
  %i.amg = lshr i32 %i.alo, 3
  %i.amh = and i32 %i.amg, 1                      ; 2 uses
  %i.ami = sub nsw i32 %i.amf, %i.amh             ; 4 uses
  %i.amj = zext i8 %i.bn to i32                   ; 5 uses
  %i.amk = load i8, ptr %i.d, align 2, !tbaa !13
  %i.aml = zext i8 %i.amk to i32                  ; 4 uses
  %i.amm = add nsw i32 %i.amj, -1
  %i.amn = shl nuw i32 1, %i.amm                  ; 4 uses
  %i.amo = and i32 %i.aml, 1
  %i.amp = icmp sgt i32 %i.alt, 0
  br i1 %i.amp, label %bb.cy, label %jpeg2000_decode_mag_sgn.exit

bb.cy:                                            ; preds = %.preheader530
  %i.amq = trunc i32 %i.alt to i8                 ; 2 uses
  %.not.i277 = icmp ule i8 %.sroa.52.0.lcssa, %i.amq
  %i.amr = icmp ult i8 %.sroa.52.0.lcssa, 32
  %or.cond484 = and i1 %i.amr, %.not.i277
  br i1 %or.cond484, label %.lr.ph.i297, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279

.lr.ph.i297:                                      ; preds = %bb.cy, %bb.da
  %.sroa.0320.32 = phi i32 [ %.sroa.0320.33, %bb.da ], [ %.sroa.0320.0.lcssa, %bb.cy ]
  %.sroa.38.32 = phi i32 [ %.sroa.38.33, %bb.da ], [ %.sroa.38.0.lcssa, %bb.cy ]
  %i.ams = phi i64 [ %i.anj, %bb.da ], [ %.sroa.84339.0.lcssa, %bb.cy ]
  %i.amt = phi i32 [ %i.ane, %bb.da ], [ %.sroa.0320.0.lcssa, %bb.cy ] ; 4 uses
  %i.amu = phi i32 [ %i.anf, %bb.da ], [ %.sroa.38.0.lcssa, %bb.cy ] ; 2 uses
  %i.amv = phi i8 [ %i.anl, %bb.da ], [ %.sroa.52.0.lcssa, %bb.cy ] ; 2 uses
  %i.amw = icmp eq i32 %i.amu, 255
  %i.amx = icmp ult i32 %i.amt, %i.cl
  br i1 %i.amx, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.lr.ph.i297
  %i.amy = sext i32 %i.amt to i64
  %i.amz = getelementptr inbounds i8, ptr %i.bc, i64 %i.amy
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !13 ; 2 uses
  %i.anb = zext i8 %i.ana to i32                  ; 2 uses
  %i.anc = add nuw nsw i32 %i.amt, 1              ; 2 uses
  %i.and = zext i8 %i.ana to i64
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %.lr.ph.i297
  %.sroa.0320.33 = phi i32 [ %i.anc, %bb.cz ], [ %.sroa.0320.32, %.lr.ph.i297 ] ; 2 uses
  %.sroa.38.33 = phi i32 [ %i.anb, %bb.cz ], [ %.sroa.38.32, %.lr.ph.i297 ] ; 2 uses
  %i.ane = phi i32 [ %i.anc, %bb.cz ], [ %i.amt, %.lr.ph.i297 ]
  %i.anf = phi i32 [ %i.anb, %bb.cz ], [ %i.amu, %.lr.ph.i297 ]
  %i.ang = phi i64 [ %i.and, %bb.cz ], [ 255, %.lr.ph.i297 ]
  %i.anh = zext nneg i8 %i.amv to i64
  %i.ani = shl nuw nsw i64 %i.ang, %i.anh
  %i.anj = or i64 %i.ani, %i.ams                  ; 2 uses
  %i.ank = select i1 %i.amw, i8 7, i8 8
  %i.anl = add nuw nsw i8 %i.ank, %i.amv          ; 3 uses
  %i.anm = icmp samesign ult i8 %i.anl, 32
  br i1 %i.anm, label %.lr.ph.i297, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit279:     ; preds = %bb.da, %bb.cy
  %.sroa.0320.22 = phi i32 [ %.sroa.0320.0.lcssa, %bb.cy ], [ %.sroa.0320.33, %bb.da ]
  %.sroa.38.22 = phi i32 [ %.sroa.38.0.lcssa, %bb.cy ], [ %.sroa.38.33, %bb.da ]
  %.sroa.84339.22 = phi i64 [ %.sroa.84339.0.lcssa, %bb.cy ], [ %i.anj, %bb.da ] ; 2 uses
  %.sroa.52.22 = phi i8 [ %.sroa.52.0.lcssa, %bb.cy ], [ %i.anl, %bb.da ]
  %.mask496 = and i32 %i.alt, 255
  %i.ann = zext nneg i32 %.mask496 to i64         ; 2 uses
  %notmask.i278 = shl nsw i64 -1, %i.ann
  %i.ano = xor i64 %notmask.i278, -1
  %i.anp = and i64 %.sroa.84339.22, %i.ano
  %i.anq = lshr i64 %.sroa.84339.22, %i.ann
  %i.anr = sub i8 %.sroa.52.22, %i.amq
  %i.ans = trunc i64 %i.anp to i32
  %i.ant = shl nuw i32 %i.amo, %i.alt
  %i.anu = add nsw i32 %i.ant, %i.ans
  br label %jpeg2000_decode_mag_sgn.exit

jpeg2000_decode_mag_sgn.exit:                     ; preds = %.preheader530, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279
  %.sroa.0320.11 = phi i32 [ %.sroa.0320.22, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.0320.0.lcssa, %.preheader530 ] ; 4 uses
  %.sroa.38.11 = phi i32 [ %.sroa.38.22, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.38.0.lcssa, %.preheader530 ] ; 4 uses
  %.sroa.84339.11 = phi i64 [ %i.anq, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.84339.0.lcssa, %.preheader530 ] ; 3 uses
  %.sroa.52.11 = phi i8 [ %i.anr, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.52.0.lcssa, %.preheader530 ] ; 5 uses
  %.0.i252 = phi i32 [ %i.anu, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ 0, %.preheader530 ] ; 3 uses
  %.not.i246 = icmp eq i32 %i.alr, %i.als
  br i1 %.not.i246, label %bb.db, label %ff_clz_c.exit.i250

ff_clz_c.exit.i250:                               ; preds = %jpeg2000_decode_mag_sgn.exit
  %i.anv = lshr i32 %.0.i252, 1
  %i.anw = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.anv, i1 false)
  %i.anx = trunc nuw nsw i32 %i.anw to i8
  %i.any = sub nuw nsw i8 33, %i.anx
  %i.anz = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.lcssa558
  store i8 %i.any, ptr %i.anz, align 1, !tbaa !13
  %i.aoa = ashr i32 %.0.i252, 1
  %i.aob = add nsw i32 %i.aoa, 1
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.lcssa558
  %i.aod = shl i32 %i.aob, %i.amj
  %i.aoe = shl i32 %.0.i252, 31
  %i.aof = or i32 %i.aoe, %i.aod
  %i.aog = or i32 %i.aof, %i.amn
  store i32 %i.aog, ptr %i.aoc, align 4, !tbaa !12
  br label %bb.db

bb.db:                                            ; preds = %ff_clz_c.exit.i250, %jpeg2000_decode_mag_sgn.exit
  %i.aoh = lshr i32 %i.aml, 1
  %i.aoi = and i32 %i.aoh, 1
  %i.aoj = icmp sgt i32 %i.aly, 0
  br i1 %i.aoj, label %bb.dc, label %jpeg2000_decode_mag_sgn.exit.1

bb.dc:                                            ; preds = %bb.db
  %i.aok = trunc i32 %i.aly to i8                 ; 2 uses
  %.not.i277.1 = icmp ule i8 %.sroa.52.11, %i.aok
  %i.aol = icmp ult i8 %.sroa.52.11, 32
  %or.cond484.1 = and i1 %i.aol, %.not.i277.1
  br i1 %or.cond484.1, label %.lr.ph.i297.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1

.lr.ph.i297.1:                                    ; preds = %bb.dc, %bb.de
  %.sroa.0320.32.1 = phi i32 [ %.sroa.0320.33.1, %bb.de ], [ %.sroa.0320.11, %bb.dc ]
  %.sroa.38.32.1 = phi i32 [ %.sroa.38.33.1, %bb.de ], [ %.sroa.38.11, %bb.dc ]
  %i.aom = phi i64 [ %i.apd, %bb.de ], [ %.sroa.84339.11, %bb.dc ]
  %i.aon = phi i32 [ %i.aoy, %bb.de ], [ %.sroa.0320.11, %bb.dc ] ; 4 uses
  %i.aoo = phi i32 [ %i.aoz, %bb.de ], [ %.sroa.38.11, %bb.dc ] ; 2 uses
  %i.aop = phi i8 [ %i.apf, %bb.de ], [ %.sroa.52.11, %bb.dc ] ; 2 uses
  %i.aoq = icmp eq i32 %i.aoo, 255
  %i.aor = icmp ult i32 %i.aon, %i.cl
  br i1 %i.aor, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.lr.ph.i297.1
  %i.aos = sext i32 %i.aon to i64
  %i.aot = getelementptr inbounds i8, ptr %i.bc, i64 %i.aos
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !13 ; 2 uses
  %i.aov = zext i8 %i.aou to i32                  ; 2 uses
  %i.aow = add nuw nsw i32 %i.aon, 1              ; 2 uses
  %i.aox = zext i8 %i.aou to i64
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.lr.ph.i297.1
  %.sroa.0320.33.1 = phi i32 [ %i.aow, %bb.dd ], [ %.sroa.0320.32.1, %.lr.ph.i297.1 ] ; 2 uses
  %.sroa.38.33.1 = phi i32 [ %i.aov, %bb.dd ], [ %.sroa.38.32.1, %.lr.ph.i297.1 ] ; 2 uses
  %i.aoy = phi i32 [ %i.aow, %bb.dd ], [ %i.aon, %.lr.ph.i297.1 ]
  %i.aoz = phi i32 [ %i.aov, %bb.dd ], [ %i.aoo, %.lr.ph.i297.1 ]
  %i.apa = phi i64 [ %i.aox, %bb.dd ], [ 255, %.lr.ph.i297.1 ]
  %i.apb = zext nneg i8 %i.aop to i64
  %i.apc = shl nuw nsw i64 %i.apa, %i.apb
  %i.apd = or i64 %i.apc, %i.aom                  ; 2 uses
  %i.ape = select i1 %i.aoq, i8 7, i8 8
  %i.apf = add nuw nsw i8 %i.ape, %i.aop          ; 3 uses
  %i.apg = icmp samesign ult i8 %i.apf, 32
  br i1 %i.apg, label %.lr.ph.i297.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1:   ; preds = %bb.de, %bb.dc
  %.sroa.0320.22.1 = phi i32 [ %.sroa.0320.11, %bb.dc ], [ %.sroa.0320.33.1, %bb.de ]
  %.sroa.38.22.1 = phi i32 [ %.sroa.38.11, %bb.dc ], [ %.sroa.38.33.1, %bb.de ]
  %.sroa.84339.22.1 = phi i64 [ %.sroa.84339.11, %bb.dc ], [ %i.apd, %bb.de ] ; 2 uses
  %.sroa.52.22.1 = phi i8 [ %.sroa.52.11, %bb.dc ], [ %i.apf, %bb.de ]
  %.mask496.1 = and i32 %i.aly, 255
  %i.aph = zext nneg i32 %.mask496.1 to i64       ; 2 uses
  %notmask.i278.1 = shl nsw i64 -1, %i.aph
  %i.api = xor i64 %notmask.i278.1, -1
  %i.apj = and i64 %.sroa.84339.22.1, %i.api
  %i.apk = lshr i64 %.sroa.84339.22.1, %i.aph
  %i.apl = sub i8 %.sroa.52.22.1, %i.aok
  %i.apm = trunc i64 %i.apj to i32
  %i.apn = shl nuw i32 %i.aoi, %i.aly
  %i.apo = add nsw i32 %i.apn, %i.apm
  br label %jpeg2000_decode_mag_sgn.exit.1

jpeg2000_decode_mag_sgn.exit.1:                   ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1, %bb.db
  %.sroa.0320.11.1 = phi i32 [ %.sroa.0320.22.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1 ], [ %.sroa.0320.11, %bb.db ] ; 4 uses
  %.sroa.38.11.1 = phi i32 [ %.sroa.38.22.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1 ], [ %.sroa.38.11, %bb.db ] ; 4 uses
  %.sroa.84339.11.1 = phi i64 [ %i.apk, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1 ], [ %.sroa.84339.11, %bb.db ] ; 3 uses
  %.sroa.52.11.1 = phi i8 [ %i.apl, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1 ], [ %.sroa.52.11, %bb.db ] ; 5 uses
  %.0.i252.1 = phi i32 [ %i.apo, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1 ], [ 0, %bb.db ] ; 3 uses
  %.not.i246.1 = icmp eq i32 %i.alv, %i.alx
  br i1 %.not.i246.1, label %bb.df, label %ff_clz_c.exit.i250.1

ff_clz_c.exit.i250.1:                             ; preds = %jpeg2000_decode_mag_sgn.exit.1
  %i.app = lshr i32 %.0.i252.1, 1
  %i.apq = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.app, i1 false)
  %i.apr = trunc nuw nsw i32 %i.apq to i8
  %i.aps = sub nuw nsw i8 33, %i.apr
  %i.apt = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ajj
  store i8 %i.aps, ptr %i.apt, align 1, !tbaa !13
  %i.apu = ashr i32 %.0.i252.1, 1
  %i.apv = add nsw i32 %i.apu, 1
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ajj
  %i.apx = shl i32 %i.apv, %i.amj
  %i.apy = shl i32 %.0.i252.1, 31
  %i.apz = or i32 %i.apy, %i.apx
  %i.aqa = or i32 %i.apz, %i.amn
  store i32 %i.aqa, ptr %i.apw, align 4, !tbaa !12
  br label %bb.df

bb.df:                                            ; preds = %ff_clz_c.exit.i250.1, %jpeg2000_decode_mag_sgn.exit.1
  %i.aqb = lshr i32 %i.aml, 2
  %i.aqc = and i32 %i.aqb, 1
  %i.aqd = icmp sgt i32 %i.amd, 0
  br i1 %i.aqd, label %bb.dg, label %jpeg2000_decode_mag_sgn.exit.2

bb.dg:                                            ; preds = %bb.df
  %i.aqe = trunc i32 %i.amd to i8                 ; 2 uses
  %.not.i277.2 = icmp ule i8 %.sroa.52.11.1, %i.aqe
  %i.aqf = icmp ult i8 %.sroa.52.11.1, 32
  %or.cond484.2 = and i1 %i.aqf, %.not.i277.2
  br i1 %or.cond484.2, label %.lr.ph.i297.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.2

.lr.ph.i297.2:                                    ; preds = %bb.dg, %bb.di
end_hunk_1
begin_hunk_2_@ff_jpeg2000_decode_htj2k:bb.a
  %i.ayv = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.ayt ; 2 uses
  store i8 %i.ayu, ptr %i.ayv, align 1, !tbaa !13
  %i.ayw = lshr i8 %i.ayr, 1
  %i.ayx = and i8 %i.ayw, 1
  %i.ayy = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.ayt
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 1 ; 2 uses
  store i8 %i.ayx, ptr %i.ayz, align 1, !tbaa !13
  %i.aza = lshr i8 %i.ayr, 2
  %i.azb = and i8 %i.aza, 1
  %i.azc = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.ayt
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 2 ; 2 uses
  store i8 %i.azb, ptr %i.azd, align 1, !tbaa !13
  %i.aze = lshr i8 %i.ayr, 3
  %i.azf = and i8 %i.aze, 1
  %i.azg = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.ayt
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 3 ; 2 uses
  store i8 %i.azf, ptr %i.azh, align 1, !tbaa !13
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %i.azi = load i8, ptr %i.b, align 2, !tbaa !13
  %i.azj = icmp eq i8 %i.azi, 1                   ; 4 uses
  %i.azk = load i8, ptr %i.atw, align 1
  %i.azl = icmp eq i8 %i.azk, 1                   ; 2 uses
  %or.cond15.i = select i1 %i.azj, i1 %i.azl, i1 false
  br i1 %or.cond15.i, label %bb.dw, label %bb.eh

bb.dw:                                            ; preds = %bb.dv
  %i.azm = load i8, ptr %i.atx, align 8, !tbaa !23 ; 2 uses
  %i.azn = icmp ult i8 %i.azm, 3
  br i1 %i.azn, label %bb.dx, label %vlc_decode_u_prefix.exit170

bb.dx:                                            ; preds = %bb.dw
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre933 = load i8, ptr %i.atx, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit170

vlc_decode_u_prefix.exit170:                      ; preds = %bb.dw, %bb.dx
  %i.azo = phi i8 [ %i.azm, %bb.dw ], [ %.pre933, %bb.dx ]
  %i.azp = load i64, ptr %i.aty, align 8, !tbaa !16 ; 3 uses
  %i.azq = and i64 %i.azp, 7                      ; 3 uses
  %i.azr = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.azq
  %i.azs = load i8, ptr %i.azr, align 1, !tbaa !13 ; 2 uses
  %i.azt = zext nneg i8 %i.azs to i64
  %i.azu = lshr i64 %i.azp, %i.azt                ; 2 uses
  store i64 %i.azu, ptr %i.aty, align 8, !tbaa !16
  %i.azv = sub i8 %i.azo, %i.azs                  ; 3 uses
  store i8 %i.azv, ptr %i.atx, align 8, !tbaa !23
  %i.azw = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.azq
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !13
  %i.azy = icmp ult i8 %i.azv, 3
  br i1 %i.azy, label %bb.dy, label %vlc_decode_u_prefix.exit169

bb.dy:                                            ; preds = %vlc_decode_u_prefix.exit170
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre934 = load i64, ptr %i.aty, align 8, !tbaa !16
  %.pre935 = load i8, ptr %i.atx, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit169

vlc_decode_u_prefix.exit169:                      ; preds = %vlc_decode_u_prefix.exit170, %bb.dy
  %i.azz = phi i8 [ %i.azv, %vlc_decode_u_prefix.exit170 ], [ %.pre935, %bb.dy ]
  %i.baa = phi i64 [ %i.azu, %vlc_decode_u_prefix.exit170 ], [ %.pre934, %bb.dy ] ; 3 uses
  %i.bab = and i64 %i.baa, 7                      ; 3 uses
  %i.bac = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.bab
  %i.bad = load i8, ptr %i.bac, align 1, !tbaa !13 ; 2 uses
  %i.bae = zext nneg i8 %i.bad to i64
  %i.baf = lshr i64 %i.baa, %i.bae                ; 3 uses
  store i64 %i.baf, ptr %i.aty, align 8, !tbaa !16
  %i.bag = sub i8 %i.azz, %i.bad                  ; 4 uses
  store i8 %i.bag, ptr %i.atx, align 8, !tbaa !23
  %i.bah = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.bab
  %i.bai = load i8, ptr %i.bah, align 1, !tbaa !13
  %i.baj = icmp ne i64 %i.azq, 4
  %i.bak = and i64 %i.azp, 3
  %.not504 = icmp eq i64 %i.bak, 0
  br i1 %.not504, label %bb.dz, label %vlc_decode_u_suffix.exit189

bb.dz:                                            ; preds = %vlc_decode_u_prefix.exit169
  %i.bal = icmp ult i8 %i.bag, 5
  br i1 %i.bal, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre936 = load i64, ptr %i.aty, align 8, !tbaa !16
  %.pre937 = load i8, ptr %i.atx, align 8, !tbaa !23
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.bam = phi i8 [ %.pre937, %bb.ea ], [ %i.bag, %bb.dz ]
  %i.ban = phi i64 [ %.pre936, %bb.ea ], [ %i.baf, %bb.dz ] ; 2 uses
  %i.bao = trunc i64 %i.ban to i32
  %i.bap = and i32 %i.bao, 31
  %i.baq = zext i1 %i.baj to i64                  ; 2 uses
  %i.bar = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.baq
  %i.bas = load i32, ptr %i.bar, align 4, !tbaa !12 ; 2 uses
  %i.bat = trunc i32 %i.bas to i8
  %.mask505 = and i32 %i.bas, 255
  %i.bau = zext nneg i32 %.mask505 to i64
  %i.bav = lshr i64 %i.ban, %i.bau                ; 2 uses
  store i64 %i.bav, ptr %i.aty, align 8, !tbaa !16
  %i.baw = sub i8 %i.bam, %i.bat                  ; 2 uses
  store i8 %i.baw, ptr %i.atx, align 8, !tbaa !23
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.baq
  %i.bay = load i32, ptr %i.bax, align 4, !tbaa !12
  %i.baz = and i32 %i.bap, %i.bay
  %i.bba = trunc nuw nsw i32 %i.baz to i8
  br label %vlc_decode_u_suffix.exit189

vlc_decode_u_suffix.exit189:                      ; preds = %vlc_decode_u_prefix.exit169, %bb.eb
  %i.bbb = phi i64 [ %i.bav, %bb.eb ], [ %i.baf, %vlc_decode_u_prefix.exit169 ] ; 2 uses
  %i.bbc = phi i8 [ %i.baw, %bb.eb ], [ %i.bag, %vlc_decode_u_prefix.exit169 ] ; 3 uses
  %.0.i188 = phi i8 [ %i.bba, %bb.eb ], [ 0, %vlc_decode_u_prefix.exit169 ] ; 2 uses
  %i.bbd = icmp ne i64 %i.bab, 4
  %i.bbe = and i64 %i.baa, 3
  %.not506 = icmp eq i64 %i.bbe, 0
  br i1 %.not506, label %bb.ec, label %vlc_decode_u_suffix.exit187

bb.ec:                                            ; preds = %vlc_decode_u_suffix.exit189
  %i.bbf = icmp ult i8 %i.bbc, 5
  br i1 %i.bbf, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre938 = load i64, ptr %i.aty, align 8, !tbaa !16
  %.pre939 = load i8, ptr %i.atx, align 8, !tbaa !23
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.bbg = phi i8 [ %.pre939, %bb.ed ], [ %i.bbc, %bb.ec ]
  %i.bbh = phi i64 [ %.pre938, %bb.ed ], [ %i.bbb, %bb.ec ] ; 2 uses
  %i.bbi = trunc i64 %i.bbh to i32
  %i.bbj = and i32 %i.bbi, 31
  %i.bbk = zext i1 %i.bbd to i64                  ; 2 uses
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.bbk
  %i.bbm = load i32, ptr %i.bbl, align 4, !tbaa !12 ; 2 uses
  %i.bbn = trunc i32 %i.bbm to i8
  %.mask507 = and i32 %i.bbm, 255
  %i.bbo = zext nneg i32 %.mask507 to i64
  %i.bbp = lshr i64 %i.bbh, %i.bbo                ; 2 uses
  store i64 %i.bbp, ptr %i.aty, align 8, !tbaa !16
  %i.bbq = sub i8 %i.bbg, %i.bbn                  ; 2 uses
  store i8 %i.bbq, ptr %i.atx, align 8, !tbaa !23
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.bbk
  %i.bbs = load i32, ptr %i.bbr, align 4, !tbaa !12
  %i.bbt = and i32 %i.bbj, %i.bbs
  %i.bbu = trunc nuw nsw i32 %i.bbt to i8
  br label %vlc_decode_u_suffix.exit187

vlc_decode_u_suffix.exit187:                      ; preds = %vlc_decode_u_suffix.exit189, %bb.ee
  %i.bbv = phi i64 [ %i.bbp, %bb.ee ], [ %i.bbb, %vlc_decode_u_suffix.exit189 ]
  %i.bbw = phi i8 [ %i.bbq, %bb.ee ], [ %i.bbc, %vlc_decode_u_suffix.exit189 ] ; 2 uses
  %.0.i186 = phi i8 [ %i.bbu, %bb.ee ], [ 0, %vlc_decode_u_suffix.exit189 ] ; 2 uses
  %i.bbx = icmp samesign ugt i8 %.0.i188, 27
  %i.bby = select i1 %i.bbx, i8 4, i8 0           ; 3 uses
  %i.bbz = icmp ult i8 %i.bbw, %i.bby
  br i1 %i.bbz, label %bb.ef, label %jpeg2000_bitbuf_get_bits_lsb.exit197

bb.ef:                                            ; preds = %vlc_decode_u_suffix.exit187
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre940 = load i64, ptr %i.aty, align 8, !tbaa !16
  %.pre941 = load i8, ptr %i.atx, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit197

jpeg2000_bitbuf_get_bits_lsb.exit197:             ; preds = %vlc_decode_u_suffix.exit187, %bb.ef
  %i.bca = phi i8 [ %i.bbw, %vlc_decode_u_suffix.exit187 ], [ %.pre941, %bb.ef ]
  %i.bcb = phi i64 [ %i.bbv, %vlc_decode_u_suffix.exit187 ], [ %.pre940, %bb.ef ] ; 2 uses
  %i.bcc = zext nneg i8 %i.bby to i64             ; 2 uses
  %notmask.i196 = shl nsw i64 -1, %i.bcc
  %i.bcd = xor i64 %notmask.i196, -1
  %i.bce = and i64 %i.bcb, %i.bcd
  %i.bcf = lshr i64 %i.bcb, %i.bcc                ; 2 uses
  store i64 %i.bcf, ptr %i.aty, align 8, !tbaa !16
  %i.bcg = sub i8 %i.bca, %i.bby                  ; 3 uses
  store i8 %i.bcg, ptr %i.atx, align 8, !tbaa !23
  %i.bch = trunc nuw nsw i64 %i.bce to i32
  %i.bci = icmp samesign ugt i8 %.0.i186, 27
  %i.bcj = select i1 %i.bci, i8 4, i8 0           ; 3 uses
  %i.bck = icmp ult i8 %i.bcg, %i.bcj
  br i1 %i.bck, label %bb.eg, label %jpeg2000_bitbuf_get_bits_lsb.exit199

bb.eg:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit197
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre942 = load i64, ptr %i.aty, align 8, !tbaa !16
  %.pre943 = load i8, ptr %i.atx, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit199

jpeg2000_bitbuf_get_bits_lsb.exit199:             ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit197, %bb.eg
  %i.bcl = phi i8 [ %i.bcg, %jpeg2000_bitbuf_get_bits_lsb.exit197 ], [ %.pre943, %bb.eg ]
  %i.bcm = phi i64 [ %i.bcf, %jpeg2000_bitbuf_get_bits_lsb.exit197 ], [ %.pre942, %bb.eg ] ; 2 uses
  %i.bcn = zext nneg i8 %i.bcj to i64             ; 2 uses
  %notmask.i198 = shl nsw i64 -1, %i.bcn
  %i.bco = xor i64 %notmask.i198, -1
  %i.bcp = and i64 %i.bcm, %i.bco
  %i.bcq = lshr i64 %i.bcm, %i.bcn
  store i64 %i.bcq, ptr %i.aty, align 8, !tbaa !16
  %i.bcr = sub i8 %i.bcl, %i.bcj
  store i8 %i.bcr, ptr %i.atx, align 8, !tbaa !23
  %i.bcs = trunc nuw nsw i64 %i.bcp to i32
  %i.bct = zext i8 %i.azx to i32
  %i.bcu = zext nneg i8 %.0.i188 to i32
  %i.bcv = add nuw nsw i32 %i.bcu, %i.bct
  %i.bcw = shl nuw nsw i32 %i.bch, 2
  %i.bcx = add nuw nsw i32 %i.bcv, %i.bcw
  %i.bcy = zext i8 %i.bai to i32
  %i.bcz = zext nneg i8 %.0.i186 to i32
  %i.bda = add nuw nsw i32 %i.bcz, %i.bcy
  %i.bdb = shl nuw nsw i32 %i.bcs, 2
  %i.bdc = add nuw nsw i32 %i.bda, %i.bdb
  br label %jpeg2000_bitbuf_get_bits_lsb.exit195.cont

bb.eh:                                            ; preds = %bb.dv
  %or.cond19.i = select i1 %i.azj, i1 true, i1 %i.azl
  br i1 %or.cond19.i, label %bb.ei, label %jpeg2000_bitbuf_get_bits_lsb.exit195.cont

bb.ei:                                            ; preds = %bb.eh
  %i.bdd = load i8, ptr %i.atx, align 8, !tbaa !23 ; 2 uses
  %i.bde = icmp ult i8 %i.bdd, 3
  br i1 %i.bde, label %bb.ej, label %vlc_decode_u_prefix.exit171

bb.ej:                                            ; preds = %bb.ei
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre928 = load i8, ptr %i.atx, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit171

vlc_decode_u_prefix.exit171:                      ; preds = %bb.ei, %bb.ej
  %i.bdf = phi i8 [ %i.bdd, %bb.ei ], [ %.pre928, %bb.ej ]
  %i.bdg = load i64, ptr %i.aty, align 8, !tbaa !16 ; 3 uses
  %i.bdh = and i64 %i.bdg, 7                      ; 3 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.bdh
  %i.bdj = load i8, ptr %i.bdi, align 1, !tbaa !13 ; 2 uses
  %i.bdk = zext nneg i8 %i.bdj to i64
  %i.bdl = lshr i64 %i.bdg, %i.bdk                ; 3 uses
  store i64 %i.bdl, ptr %i.aty, align 8, !tbaa !16
  %i.bdm = sub i8 %i.bdf, %i.bdj                  ; 4 uses
  store i8 %i.bdm, ptr %i.atx, align 8, !tbaa !23
  %i.bdn = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.bdh
  %i.bdo = load i8, ptr %i.bdn, align 1, !tbaa !13
  %i.bdp = icmp ne i64 %i.bdh, 4
  %i.bdq = and i64 %i.bdg, 3
  %.not502 = icmp eq i64 %i.bdq, 0
  br i1 %.not502, label %bb.ek, label %jpeg2000_bitbuf_get_bits_lsb.exit195

bb.ek:                                            ; preds = %vlc_decode_u_prefix.exit171
  %i.bdr = icmp ult i8 %i.bdm, 5
  br i1 %i.bdr, label %bb.el, label %vlc_decode_u_suffix.exit191.cont

bb.el:                                            ; preds = %bb.ek
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre929 = load i64, ptr %i.aty, align 8, !tbaa !16
  %.pre930 = load i8, ptr %i.atx, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit191.cont

vlc_decode_u_suffix.exit191.cont:                 ; preds = %bb.ek, %bb.el
  %i.bds = phi i8 [ %.pre930, %bb.el ], [ %i.bdm, %bb.ek ]
  %i.bdt = phi i64 [ %.pre929, %bb.el ], [ %i.bdl, %bb.ek ] ; 2 uses
  %i.bdu = trunc i64 %i.bdt to i32
  %i.bdv = and i32 %i.bdu, 31
  %i.bdw = zext i1 %i.bdp to i64                  ; 2 uses
  %i.bdx = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.bdw
  %i.bdy = load i32, ptr %i.bdx, align 4, !tbaa !12 ; 2 uses
  %i.bdz = trunc i32 %i.bdy to i8
  %.mask503 = and i32 %i.bdy, 255
  %i.bea = zext nneg i32 %.mask503 to i64
  %i.beb = lshr i64 %i.bdt, %i.bea                ; 3 uses
  store i64 %i.beb, ptr %i.aty, align 8, !tbaa !16
  %i.bec = sub i8 %i.bds, %i.bdz                  ; 4 uses
  store i8 %i.bec, ptr %i.atx, align 8, !tbaa !23
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.bdw
  %i.bee = load i32, ptr %i.bed, align 4, !tbaa !12
  %i.bef = and i32 %i.bdv, %i.bee
  %.fr1251 = freeze i32 %i.bef                    ; 4 uses
  %i.beg = icmp ugt i32 %.fr1251, 27
  br i1 %i.beg, label %bb.em, label %jpeg2000_bitbuf_get_bits_lsb.exit195

bb.em:                                            ; preds = %vlc_decode_u_suffix.exit191.cont
  %i.beh = icmp ult i8 %i.bec, 4
  br i1 %i.beh, label %bb.en, label %jpeg2000_bitbuf_get_bits_lsb.exit195

bb.en:                                            ; preds = %bb.em
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre931 = load i64, ptr %i.aty, align 8, !tbaa !16
  %.pre932 = load i8, ptr %i.atx, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit195

jpeg2000_bitbuf_get_bits_lsb.exit195:             ; preds = %vlc_decode_u_prefix.exit171, %vlc_decode_u_suffix.exit191.cont, %bb.em, %bb.en
  %i.bei = phi i8 [ 4, %bb.em ], [ 4, %bb.en ], [ 0, %vlc_decode_u_suffix.exit191.cont ], [ 0, %vlc_decode_u_prefix.exit171 ] ; 2 uses
  %.0.i19011481154 = phi i32 [ %.fr1251, %bb.em ], [ %.fr1251, %bb.en ], [ %.fr1251, %vlc_decode_u_suffix.exit191.cont ], [ 0, %vlc_decode_u_prefix.exit171 ]
  %i.bej = phi i8 [ %i.bec, %bb.em ], [ %.pre932, %bb.en ], [ %i.bec, %vlc_decode_u_suffix.exit191.cont ], [ %i.bdm, %vlc_decode_u_prefix.exit171 ]
  %17 = phi i64 [ %i.beb, %bb.em ], [ %.pre931, %bb.en ], [ %i.beb, %vlc_decode_u_suffix.exit191.cont ], [ %i.bdl, %vlc_decode_u_prefix.exit171 ] ; 2 uses
  %i.bek = zext nneg i8 %i.bei to i64             ; 2 uses
  %notmask.i194 = shl nsw i64 -1, %i.bek
  %i.bel = xor i64 %notmask.i194, -1
  %i.bem = and i64 %17, %i.bel
  %i.ben = lshr i64 %17, %i.bek
  store i64 %i.ben, ptr %i.aty, align 8, !tbaa !16
  %i.beo = sub i8 %i.bej, %i.bei
  store i8 %i.beo, ptr %i.atx, align 8, !tbaa !23
  %i.bep = trunc nuw nsw i64 %i.bem to i32
  %i.beq = zext i8 %i.bdo to i32
  %i.ber = add nuw nsw i32 %.0.i19011481154, %i.beq
  %i.bes = shl nuw nsw i32 %i.bep, 2
  %i.bet = and i32 %i.bes, 252
  %i.beu = add nuw nsw i32 %i.ber, %i.bet         ; 2 uses
  %spec.select492 = select i1 %i.azj, i32 %i.beu, i32 0
  %spec.select493 = select i1 %i.azj, i32 0, i32 %i.beu
  br label %jpeg2000_bitbuf_get_bits_lsb.exit195.cont

jpeg2000_bitbuf_get_bits_lsb.exit195.cont:        ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit195, %bb.eh, %jpeg2000_bitbuf_get_bits_lsb.exit199
  %.sroa.0386.2 = phi i32 [ %i.bcx, %jpeg2000_bitbuf_get_bits_lsb.exit199 ], [ 0, %bb.eh ], [ %spec.select492, %jpeg2000_bitbuf_get_bits_lsb.exit195 ]
  %.sroa.18.0 = phi i32 [ %i.bdc, %jpeg2000_bitbuf_get_bits_lsb.exit199 ], [ 0, %bb.eh ], [ %spec.select493, %jpeg2000_bitbuf_get_bits_lsb.exit195 ]
  %i.bev = load i8, ptr %i.a, align 2, !tbaa !13  ; 2 uses
  %i.bew = icmp ult i8 %i.bev, 9
  br i1 %i.bew, label %switch.lookup, label %bb.eo

switch.lookup:                                    ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit195.cont
  %i.bex = zext nneg i8 %i.bev to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ff_jpeg2000_decode_htj2k.4, i64 %i.bex
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %bb.eo

bb.eo:                                            ; preds = %switch.lookup, %jpeg2000_bitbuf_get_bits_lsb.exit195.cont
  %.sroa.0414.0.i = phi i16 [ %switch.ext, %switch.lookup ], [ 1, %jpeg2000_bitbuf_get_bits_lsb.exit195.cont ]
  %i.bey = icmp ult i8 %i.ayr, 9
  br i1 %i.bey, label %switch.lookup1333, label %bb.ep

switch.lookup1333:                                ; preds = %bb.eo
  %i.bez = zext nneg i8 %i.ayr to i64
  %switch.gep1334 = getelementptr inbounds nuw i8, ptr @switch.table.ff_jpeg2000_decode_htj2k.4, i64 %i.bez
  %switch.load1335 = load i8, ptr %switch.gep1334, align 1
  %switch.ext1336 = zext i8 %switch.load1335 to i16
  br label %bb.ep

bb.ep:                                            ; preds = %switch.lookup1333, %bb.eo
  %.sroa.11.0.i = phi i16 [ %switch.ext1336, %switch.lookup1333 ], [ 1, %bb.eo ]
  %i.bfa = load ptr, ptr %i.f, align 8, !tbaa !39 ; 16 uses
  %i.bfb = getelementptr inbounds i8, ptr %i.bfa, i64 %i.aur
  %i.bfc = load i8, ptr %i.bfb, align 1, !tbaa !13
  %i.bfd = getelementptr inbounds i8, ptr %i.bfa, i64 %i.axb
  %i.bfe = load i8, ptr %i.bfd, align 1, !tbaa !13
  %i.bff = getelementptr inbounds i8, ptr %i.bfa, i64 %i.auv
  %i.bfg = load i8, ptr %i.bff, align 1, !tbaa !13
  %i.bfh = getelementptr inbounds i8, ptr %i.bfa, i64 %i.axf
  %i.bfi = load i8, ptr %i.bfh, align 1, !tbaa !13
  %i.bfj = icmp sgt i32 %i.auo, 0
  %i.bfk = add nsw i32 %i.aup, -1
  %narrow508 = select i1 %i.bfj, i32 %i.bfk, i32 0
  %i.bfl = zext i32 %narrow508 to i64
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %i.bfl
  %i.bfn = load i8, ptr %i.bfm, align 1, !tbaa !13
  %i.bfo = icmp sgt i32 %i.awy, 0
  %i.bfp = add nsw i32 %i.awz, -1
  %narrow509 = select i1 %i.bfo, i32 %i.bfp, i32 0
  %i.bfq = zext i32 %narrow509 to i64
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %i.bfq
  %i.bfs = load i8, ptr %i.bfr, align 1, !tbaa !13
  %i.bft = sext i32 %i.aup to i64
  %i.bfu = getelementptr i8, ptr %i.bfa, i64 %i.bft
  %i.bfv = getelementptr i8, ptr %i.bfu, i64 5
  %i.bfw = load i8, ptr %i.bfv, align 1, !tbaa !13
  %i.bfx = sext i32 %i.awz to i64
  %i.bfy = getelementptr i8, ptr %i.bfa, i64 %i.bfx
  %i.bfz = getelementptr i8, ptr %i.bfy, i64 5
  %i.bga = load i8, ptr %i.bfz, align 1, !tbaa !13
  %i.bgb = tail call i8 @llvm.umax.i8(i8 %i.bfc, i8 %i.bfg) ; 2 uses
  %i.bgc = tail call i8 @llvm.umax.i8(i8 %i.bgb, i8 %i.bfw)
  %.in745.i = select i1 %i.avy, i8 %i.bgc, i8 %i.bgb ; 2 uses
  %i.bgd = tail call i8 @llvm.umax.i8(i8 %.in745.i, i8 %i.bfn)
  %i.bge = select i1 %i.ave, i8 %i.bgd, i8 %.in745.i
  %i.bgf = tail call i8 @llvm.umax.i8(i8 %i.bfe, i8 %i.bfi) ; 2 uses
  %i.bgg = tail call i8 @llvm.umax.i8(i8 %i.bgf, i8 %i.bga)
  %.in746.i = select i1 %i.ayj, i8 %i.bgg, i8 %i.bgf ; 2 uses
  %i.bgh = tail call i8 @llvm.umax.i8(i8 %.in746.i, i8 %i.bfs)
  %i.bgi = select i1 %i.axo, i8 %i.bgh, i8 %.in746.i
  %i.bgj = zext i8 %i.bge to i16
  %i.bgk = add nsw i16 %i.bgj, -1
  %i.bgl = mul nuw nsw i16 %i.bgk, %.sroa.0414.0.i
  %i.bgm = tail call i16 @llvm.smax.i16(i16 %i.bgl, i16 1)
  %i.bgn = zext i8 %i.bgi to i16
  %i.bgo = add nsw i16 %i.bgn, -1
  %i.bgp = mul nuw nsw i16 %i.bgo, %.sroa.11.0.i
  %i.bgq = tail call i16 @llvm.smax.i16(i16 %i.bgp, i16 1)
  %i.bgr = zext nneg i16 %i.bgm to i32
  %i.bgs = add nuw nsw i32 %.sroa.0386.2, %i.bgr  ; 5 uses
  %i.bgt = zext nneg i16 %i.bgq to i32
  %i.bgu = add nuw nsw i32 %.sroa.18.0, %i.bgt    ; 5 uses
  %i.bgv = icmp sgt i32 %i.bgs, %i.du
  %i.bgw = icmp sgt i32 %i.bgu, %i.du
  %or.cond755.i = select i1 %i.bgv, i1 true, i1 %i.bgw
  br i1 %or.cond755.i, label %jpeg2000_decode_ht_cleanup_segment.exit, label %.preheader525

.preheader525:                                    ; preds = %bb.ep
  %i.bgx = load i8, ptr %i.c, align 2, !tbaa !13
  %i.bgy = zext i8 %i.bgx to i32                  ; 4 uses
  %i.bgz = load i8, ptr %i.atz, align 1, !tbaa !13
  %i.bha = zext i8 %i.bgz to i32                  ; 4 uses
  %i.bhb = load i8, ptr %i.awk, align 1, !tbaa !13
  %i.bhc = zext i8 %i.bhb to i32
  %i.bhd = mul nuw nsw i32 %i.bgs, %i.bhc         ; 2 uses
  %i.bhe = and i32 %i.bgy, 1                      ; 2 uses
  %i.bhf = sub nsw i32 %i.bhd, %i.bhe             ; 4 uses
  %i.bhg = load i8, ptr %i.ayv, align 1, !tbaa !13
  %i.bhh = zext i8 %i.bhg to i32
  %i.bhi = mul nuw nsw i32 %i.bgu, %i.bhh         ; 2 uses
  %i.bhj = and i32 %i.bha, 1                      ; 2 uses
  %i.bhk = sub nsw i32 %i.bhi, %i.bhj             ; 4 uses
  %i.bhl = load i8, ptr %i.awo, align 1, !tbaa !13
  %i.bhm = zext i8 %i.bhl to i32
  %i.bhn = mul nuw nsw i32 %i.bgs, %i.bhm         ; 2 uses
  %i.bho = lshr i32 %i.bgy, 1
  %i.bhp = and i32 %i.bho, 1                      ; 2 uses
  %i.bhq = sub nsw i32 %i.bhn, %i.bhp             ; 4 uses
  %i.bhr = load i8, ptr %i.ayz, align 1, !tbaa !13
  %i.bhs = zext i8 %i.bhr to i32
  %i.bht = mul nuw nsw i32 %i.bgu, %i.bhs         ; 2 uses
  %i.bhu = lshr i32 %i.bha, 1
  %i.bhv = and i32 %i.bhu, 1                      ; 2 uses
  %i.bhw = sub nsw i32 %i.bht, %i.bhv             ; 4 uses
  %i.bhx = load i8, ptr %i.aws, align 1, !tbaa !13
  %i.bhy = zext i8 %i.bhx to i32
  %i.bhz = mul nuw nsw i32 %i.bgs, %i.bhy         ; 2 uses
  %i.bia = lshr i32 %i.bgy, 2
  %i.bib = and i32 %i.bia, 1                      ; 2 uses
  %i.bic = sub nsw i32 %i.bhz, %i.bib             ; 4 uses
  %i.bid = load i8, ptr %i.azd, align 1, !tbaa !13
  %i.bie = zext i8 %i.bid to i32
  %i.bif = mul nuw nsw i32 %i.bgu, %i.bie         ; 2 uses
  %i.big = lshr i32 %i.bha, 2
  %i.bih = and i32 %i.big, 1                      ; 2 uses
  %i.bii = sub nsw i32 %i.bif, %i.bih             ; 4 uses
  %i.bij = load i8, ptr %i.aww, align 1, !tbaa !13
  %i.bik = zext i8 %i.bij to i32
  %i.bil = mul nuw nsw i32 %i.bgs, %i.bik         ; 2 uses
  %i.bim = lshr i32 %i.bgy, 3
  %i.bin = and i32 %i.bim, 1                      ; 2 uses
  %i.bio = sub nsw i32 %i.bil, %i.bin             ; 4 uses
  %i.bip = load i8, ptr %i.azh, align 1, !tbaa !13
  %i.biq = zext i8 %i.bip to i32
  %i.bir = mul nuw nsw i32 %i.bgu, %i.biq         ; 2 uses
  %i.bis = lshr i32 %i.bha, 3
  %i.bit = and i32 %i.bis, 1                      ; 2 uses
  %i.biu = sub nsw i32 %i.bir, %i.bit             ; 4 uses
  %i.biv = load ptr, ptr %i.g, align 8, !tbaa !37 ; 8 uses
  %i.biw = load i8, ptr %i.d, align 2, !tbaa !13
  %i.bix = zext i8 %i.biw to i32                  ; 4 uses
  %i.biy = and i32 %i.bix, 1
  %i.biz = icmp sgt i32 %i.bhf, 0
  br i1 %i.biz, label %bb.eq, label %jpeg2000_decode_mag_sgn.exit256

bb.eq:                                            ; preds = %.preheader525
  %i.bja = trunc i32 %i.bhf to i8                 ; 2 uses
  %.not.i271 = icmp ule i8 %.sroa.52.3697, %i.bja
  %i.bjb = icmp ult i8 %.sroa.52.3697, 32
  %or.cond487 = and i1 %i.bjb, %.not.i271
  br i1 %or.cond487, label %.lr.ph.i303, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273

.lr.ph.i303:                                      ; preds = %bb.eq, %bb.es
  %.sroa.0320.35 = phi i32 [ %.sroa.0320.36, %bb.es ], [ %.sroa.0320.3693, %bb.eq ]
  %.sroa.38.35 = phi i32 [ %.sroa.38.36, %bb.es ], [ %.sroa.38.3694, %bb.eq ]
  %i.bjc = phi i64 [ %i.bjt, %bb.es ], [ %.sroa.84339.3695, %bb.eq ]
  %i.bjd = phi i32 [ %i.bjo, %bb.es ], [ %.sroa.0320.3693, %bb.eq ] ; 4 uses
  %i.bje = phi i32 [ %i.bjp, %bb.es ], [ %.sroa.38.3694, %bb.eq ] ; 2 uses
  %i.bjf = phi i8 [ %i.bjv, %bb.es ], [ %.sroa.52.3697, %bb.eq ] ; 2 uses
  %i.bjg = icmp eq i32 %i.bje, 255
  %i.bjh = icmp ult i32 %i.bjd, %i.cl
  br i1 %i.bjh, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.lr.ph.i303
  %i.bji = sext i32 %i.bjd to i64
  %i.bjj = getelementptr inbounds i8, ptr %i.bc, i64 %i.bji
  %i.bjk = load i8, ptr %i.bjj, align 1, !tbaa !13 ; 2 uses
  %i.bjl = zext i8 %i.bjk to i32                  ; 2 uses
  %i.bjm = add nuw nsw i32 %i.bjd, 1              ; 2 uses
  %i.bjn = zext i8 %i.bjk to i64
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %.lr.ph.i303
  %.sroa.0320.36 = phi i32 [ %i.bjm, %bb.er ], [ %.sroa.0320.35, %.lr.ph.i303 ] ; 2 uses
  %.sroa.38.36 = phi i32 [ %i.bjl, %bb.er ], [ %.sroa.38.35, %.lr.ph.i303 ] ; 2 uses
  %i.bjo = phi i32 [ %i.bjm, %bb.er ], [ %i.bjd, %.lr.ph.i303 ]
  %i.bjp = phi i32 [ %i.bjl, %bb.er ], [ %i.bje, %.lr.ph.i303 ]
  %i.bjq = phi i64 [ %i.bjn, %bb.er ], [ 255, %.lr.ph.i303 ]
  %i.bjr = zext nneg i8 %i.bjf to i64
  %i.bjs = shl nuw nsw i64 %i.bjq, %i.bjr
  %i.bjt = or i64 %i.bjs, %i.bjc                  ; 2 uses
  %i.bju = select i1 %i.bjg, i8 7, i8 8
  %i.bjv = add nuw nsw i8 %i.bju, %i.bjf          ; 3 uses
  %i.bjw = icmp samesign ult i8 %i.bjv, 32
  br i1 %i.bjw, label %.lr.ph.i303, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit273:     ; preds = %bb.es, %bb.eq
  %.sroa.0320.20 = phi i32 [ %.sroa.0320.3693, %bb.eq ], [ %.sroa.0320.36, %bb.es ]
  %.sroa.38.20 = phi i32 [ %.sroa.38.3694, %bb.eq ], [ %.sroa.38.36, %bb.es ]
  %.sroa.84339.20 = phi i64 [ %.sroa.84339.3695, %bb.eq ], [ %i.bjt, %bb.es ] ; 2 uses
  %.sroa.52.20 = phi i8 [ %.sroa.52.3697, %bb.eq ], [ %i.bjv, %bb.es ]
  %.mask511 = and i32 %i.bhf, 255
  %i.bjx = zext nneg i32 %.mask511 to i64         ; 2 uses
  %notmask.i272 = shl nsw i64 -1, %i.bjx
  %i.bjy = xor i64 %notmask.i272, -1
  %i.bjz = and i64 %.sroa.84339.20, %i.bjy
  %i.bka = lshr i64 %.sroa.84339.20, %i.bjx
  %i.bkb = sub i8 %.sroa.52.20, %i.bja
  %i.bkc = trunc i64 %i.bjz to i32
  %i.bkd = shl nuw i32 %i.biy, %i.bhf
  %i.bke = add nsw i32 %i.bkd, %i.bkc
  br label %jpeg2000_decode_mag_sgn.exit256

jpeg2000_decode_mag_sgn.exit256:                  ; preds = %.preheader525, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273
  %.sroa.0320.13 = phi i32 [ %.sroa.0320.20, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273 ], [ %.sroa.0320.3693, %.preheader525 ] ; 4 uses
  %.sroa.38.13 = phi i32 [ %.sroa.38.20, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273 ], [ %.sroa.38.3694, %.preheader525 ] ; 4 uses
  %.sroa.84339.13 = phi i64 [ %i.bka, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273 ], [ %.sroa.84339.3695, %.preheader525 ] ; 3 uses
  %.sroa.52.13 = phi i8 [ %i.bkb, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273 ], [ %.sroa.52.3697, %.preheader525 ] ; 5 uses
  %.0.i255 = phi i32 [ %i.bke, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273 ], [ 0, %.preheader525 ] ; 3 uses
  %.not.i232 = icmp eq i32 %i.bhd, %i.bhe
  br i1 %.not.i232, label %bb.et, label %ff_clz_c.exit.i236

ff_clz_c.exit.i236:                               ; preds = %jpeg2000_decode_mag_sgn.exit256
  %i.bkf = lshr i32 %.0.i255, 1
  %i.bkg = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.bkf, i1 false)
  %i.bkh = trunc nuw nsw i32 %i.bkg to i8
  %i.bki = sub nuw nsw i8 33, %i.bkh
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %i.awi
  store i8 %i.bki, ptr %i.bkj, align 1, !tbaa !13
  %i.bkk = ashr i32 %.0.i255, 1
  %i.bkl = add nsw i32 %i.bkk, 1
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %i.biv, i64 %i.awi
  %i.bkn = shl i32 %i.bkl, %i.aua
  %i.bko = shl i32 %.0.i255, 31
  %i.bkp = or i32 %i.bko, %i.bkn
  %i.bkq = or i32 %i.bkp, %i.auc
  store i32 %i.bkq, ptr %i.bkm, align 4, !tbaa !12
  br label %bb.et

bb.et:                                            ; preds = %ff_clz_c.exit.i236, %jpeg2000_decode_mag_sgn.exit256
  %i.bkr = lshr i32 %i.bix, 1
  %i.bks = and i32 %i.bkr, 1
  %i.bkt = icmp sgt i32 %i.bhq, 0
  br i1 %i.bkt, label %bb.eu, label %jpeg2000_decode_mag_sgn.exit256.1

bb.eu:                                            ; preds = %bb.et
  %i.bku = trunc i32 %i.bhq to i8                 ; 2 uses
  %.not.i271.1 = icmp ule i8 %.sroa.52.13, %i.bku
  %i.bkv = icmp ult i8 %.sroa.52.13, 32
  %or.cond487.1 = and i1 %i.bkv, %.not.i271.1
  br i1 %or.cond487.1, label %.lr.ph.i303.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1

.lr.ph.i303.1:                                    ; preds = %bb.eu, %bb.ew
  %.sroa.0320.35.1 = phi i32 [ %.sroa.0320.36.1, %bb.ew ], [ %.sroa.0320.13, %bb.eu ]
  %.sroa.38.35.1 = phi i32 [ %.sroa.38.36.1, %bb.ew ], [ %.sroa.38.13, %bb.eu ]
  %i.bkw = phi i64 [ %i.bln, %bb.ew ], [ %.sroa.84339.13, %bb.eu ]
  %i.bkx = phi i32 [ %i.bli, %bb.ew ], [ %.sroa.0320.13, %bb.eu ] ; 4 uses
  %i.bky = phi i32 [ %i.blj, %bb.ew ], [ %.sroa.38.13, %bb.eu ] ; 2 uses
  %i.bkz = phi i8 [ %i.blp, %bb.ew ], [ %.sroa.52.13, %bb.eu ] ; 2 uses
  %i.bla = icmp eq i32 %i.bky, 255
  %i.blb = icmp ult i32 %i.bkx, %i.cl
  br i1 %i.blb, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %.lr.ph.i303.1
  %i.blc = sext i32 %i.bkx to i64
  %i.bld = getelementptr inbounds i8, ptr %i.bc, i64 %i.blc
  %i.ble = load i8, ptr %i.bld, align 1, !tbaa !13 ; 2 uses
  %i.blf = zext i8 %i.ble to i32                  ; 2 uses
  %i.blg = add nuw nsw i32 %i.bkx, 1              ; 2 uses
  %i.blh = zext i8 %i.ble to i64
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %.lr.ph.i303.1
  %.sroa.0320.36.1 = phi i32 [ %i.blg, %bb.ev ], [ %.sroa.0320.35.1, %.lr.ph.i303.1 ] ; 2 uses
  %.sroa.38.36.1 = phi i32 [ %i.blf, %bb.ev ], [ %.sroa.38.35.1, %.lr.ph.i303.1 ] ; 2 uses
  %i.bli = phi i32 [ %i.blg, %bb.ev ], [ %i.bkx, %.lr.ph.i303.1 ]
  %i.blj = phi i32 [ %i.blf, %bb.ev ], [ %i.bky, %.lr.ph.i303.1 ]
  %i.blk = phi i64 [ %i.blh, %bb.ev ], [ 255, %.lr.ph.i303.1 ]
  %i.bll = zext nneg i8 %i.bkz to i64
  %i.blm = shl nuw nsw i64 %i.blk, %i.bll
  %i.bln = or i64 %i.blm, %i.bkw                  ; 2 uses
  %i.blo = select i1 %i.bla, i8 7, i8 8
  %i.blp = add nuw nsw i8 %i.blo, %i.bkz          ; 3 uses
  %i.blq = icmp samesign ult i8 %i.blp, 32
  br i1 %i.blq, label %.lr.ph.i303.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1:   ; preds = %bb.ew, %bb.eu
  %.sroa.0320.20.1 = phi i32 [ %.sroa.0320.13, %bb.eu ], [ %.sroa.0320.36.1, %bb.ew ]
  %.sroa.38.20.1 = phi i32 [ %.sroa.38.13, %bb.eu ], [ %.sroa.38.36.1, %bb.ew ]
  %.sroa.84339.20.1 = phi i64 [ %.sroa.84339.13, %bb.eu ], [ %i.bln, %bb.ew ] ; 2 uses
  %.sroa.52.20.1 = phi i8 [ %.sroa.52.13, %bb.eu ], [ %i.blp, %bb.ew ]
  %.mask511.1 = and i32 %i.bhq, 255
  %i.blr = zext nneg i32 %.mask511.1 to i64       ; 2 uses
  %notmask.i272.1 = shl nsw i64 -1, %i.blr
  %i.bls = xor i64 %notmask.i272.1, -1
  %i.blt = and i64 %.sroa.84339.20.1, %i.bls
  %i.blu = lshr i64 %.sroa.84339.20.1, %i.blr
  %i.blv = sub i8 %.sroa.52.20.1, %i.bku
  %i.blw = trunc i64 %i.blt to i32
  %i.blx = shl nuw i32 %i.bks, %i.bhq
  %i.bly = add nsw i32 %i.blx, %i.blw
  br label %jpeg2000_decode_mag_sgn.exit256.1

jpeg2000_decode_mag_sgn.exit256.1:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1, %bb.et
  %.sroa.0320.13.1 = phi i32 [ %.sroa.0320.20.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1 ], [ %.sroa.0320.13, %bb.et ] ; 4 uses
  %.sroa.38.13.1 = phi i32 [ %.sroa.38.20.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1 ], [ %.sroa.38.13, %bb.et ] ; 4 uses
  %.sroa.84339.13.1 = phi i64 [ %i.blu, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1 ], [ %.sroa.84339.13, %bb.et ] ; 3 uses
  %.sroa.52.13.1 = phi i8 [ %i.blv, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1 ], [ %.sroa.52.13, %bb.et ] ; 5 uses
  %.0.i255.1 = phi i32 [ %i.bly, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1 ], [ 0, %bb.et ] ; 3 uses
  %.not.i232.1 = icmp eq i32 %i.bhn, %i.bhp
  br i1 %.not.i232.1, label %bb.ex, label %ff_clz_c.exit.i236.1

ff_clz_c.exit.i236.1:                             ; preds = %jpeg2000_decode_mag_sgn.exit256.1
  %i.blz = lshr i32 %.0.i255.1, 1
  %i.bma = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.blz, i1 false)
  %i.bmb = trunc nuw nsw i32 %i.bma to i8
  %i.bmc = sub nuw nsw i8 33, %i.bmb
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %i.awn
  store i8 %i.bmc, ptr %i.bmd, align 1, !tbaa !13
  %i.bme = ashr i32 %.0.i255.1, 1
  %i.bmf = add nsw i32 %i.bme, 1
  %i.bmg = getelementptr inbounds nuw [4 x i8], ptr %i.biv, i64 %i.awn
  %i.bmh = shl i32 %i.bmf, %i.aua
  %i.bmi = shl i32 %.0.i255.1, 31
  %i.bmj = or i32 %i.bmi, %i.bmh
  %i.bmk = or i32 %i.bmj, %i.auc
  store i32 %i.bmk, ptr %i.bmg, align 4, !tbaa !12
  br label %bb.ex

bb.ex:                                            ; preds = %ff_clz_c.exit.i236.1, %jpeg2000_decode_mag_sgn.exit256.1
  %i.bml = lshr i32 %i.bix, 2
  %i.bmm = and i32 %i.bml, 1
  %i.bmn = icmp sgt i32 %i.bic, 0
  br i1 %i.bmn, label %bb.ey, label %jpeg2000_decode_mag_sgn.exit256.2

bb.ey:                                            ; preds = %bb.ex
  %i.bmo = trunc i32 %i.bic to i8                 ; 2 uses
  %.not.i271.2 = icmp ule i8 %.sroa.52.13.1, %i.bmo
  %i.bmp = icmp ult i8 %.sroa.52.13.1, 32
  %or.cond487.2 = and i1 %i.bmp, %.not.i271.2
  br i1 %or.cond487.2, label %.lr.ph.i303.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.2

.lr.ph.i303.2:                                    ; preds = %bb.ey, %bb.fa
  %.sroa.0320.35.2 = phi i32 [ %.sroa.0320.36.2, %bb.fa ], [ %.sroa.0320.13.1, %bb.ey ]
  %.sroa.38.35.2 = phi i32 [ %.sroa.38.36.2, %bb.fa ], [ %.sroa.38.13.1, %bb.ey ]
end_hunk_2
