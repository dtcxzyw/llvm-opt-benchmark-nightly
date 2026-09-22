Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000htdec?download=true
inline.NumInlined: 26
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ff_jpeg2000_decode_htj2k:bb.a
jpeg2000_decode_sig_emb.exit:                     ; preds = %bb.y, %jpeg2000_decode_ctx_vlc.exit.i
  %i.fx = phi i8 [ %i.fs, %jpeg2000_decode_ctx_vlc.exit.i ], [ 0, %bb.y ] ; 2 uses
  %i.fy = phi i8 [ %i.fq, %jpeg2000_decode_ctx_vlc.exit.i ], [ 0, %bb.y ] ; 2 uses
  %i.fz = phi i8 [ %i.fn, %jpeg2000_decode_ctx_vlc.exit.i ], [ 0, %bb.y ] ; 5 uses
  %i.ga = phi i8 [ %i.fm, %jpeg2000_decode_ctx_vlc.exit.i ], [ 0, %bb.y ] ; 2 uses
  %i.gb = shl nuw nsw i32 %i.ex, 2
  %i.gc = zext nneg i32 %i.gb to i64              ; 9 uses
  %i.gd = and i8 %i.fz, 1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gc ; 6 uses
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !13
  %i.gf = lshr i8 %i.fz, 1
  %i.gg = and i8 %i.gf, 1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gc
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  store i8 %i.gg, ptr %i.gi, align 1, !tbaa !13
  %i.gj = lshr i8 %i.fz, 2
  %i.gk = and i8 %i.gj, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gc
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  store i8 %i.gk, ptr %i.gm, align 1, !tbaa !13
  %i.gn = lshr i8 %i.fz, 3
  %i.go = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gc
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 3
  store i8 %i.gn, ptr %i.gp, align 1, !tbaa !13
  %i.gq = load i8, ptr %i.ge, align 1, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !13
  %i.gt = or i8 %i.gs, %i.gq
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !13
  %i.gw = zext i8 %i.gv to i16
  %i.gx = shl nuw nsw i16 %i.gw, 1
  %i.gy = zext i8 %i.gt to i16
  %i.gz = add nuw nsw i16 %i.gx, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ge, i64 3
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !13
  %i.hc = zext i8 %i.hb to i16
  %i.hd = shl nuw nsw i16 %i.hc, 2
  %i.he = add nuw nsw i16 %i.gz, %i.hd            ; 3 uses
  %i.hf = icmp eq i16 %i.he, 0
  br i1 %i.hf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %jpeg2000_decode_sig_emb.exit
  %i.hg = call fastcc i32 @jpeg2000_decode_mel_sym(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef readonly %i.bc, i32 noundef range(i32 2, 0) %i.ar)
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %jpeg2000_decode_sig_emb.exit283, label %.thread1.i282

.thread1.i282:                                    ; preds = %bb.ab
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef readonly %i.ds)
  br label %jpeg2000_decode_ctx_vlc.exit.i280

bb.ac:                                            ; preds = %jpeg2000_decode_sig_emb.exit
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef readonly %i.ds)
  %i.hi = icmp samesign ult i16 %i.he, 8
  br i1 %i.hi, label %jpeg2000_decode_ctx_vlc.exit.i280, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 318) #11
  tail call void @abort() #12
  unreachable

jpeg2000_decode_ctx_vlc.exit.i280:                ; preds = %bb.ac, %.thread1.i282
  %i.hj = load i64, ptr %i.eo, align 8, !tbaa !16 ; 2 uses
  %i.hk = and i64 %i.hj, 127
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr @dec_cxt_vlc_table0, i64 %i.hk
  %i.hm = shl nuw nsw i16 %i.he, 8
  %.idx.i.i281 = zext nneg i16 %i.hm to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.idx.i.i281
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !22 ; 3 uses
  %i.hp = trunc i16 %i.ho to i8                   ; 3 uses
  %i.hq = lshr i8 %i.hp, 1
  %i.hr = and i8 %i.hq, 7                         ; 2 uses
  %i.hs = and i8 %i.hp, 1
  %i.ht = lshr i8 %i.hp, 4
  %i.hu = lshr i16 %i.ho, 8
  %i.hv = trunc nuw i16 %i.hu to i8
  %i.hw = and i8 %i.hv, 15
  %i.hx = lshr i16 %i.ho, 12
  %i.hy = trunc nuw nsw i16 %i.hx to i8
  %i.hz = zext nneg i8 %i.hr to i64
  %i.ia = lshr i64 %i.hj, %i.hz
  store i64 %i.ia, ptr %i.eo, align 8, !tbaa !16
  %i.ib = load i8, ptr %i.ep, align 8, !tbaa !23
  %i.ic = sub i8 %i.ib, %i.hr
  store i8 %i.ic, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_decode_sig_emb.exit283

jpeg2000_decode_sig_emb.exit283:                  ; preds = %bb.ab, %jpeg2000_decode_ctx_vlc.exit.i280
  %i.id = phi i8 [ %i.hy, %jpeg2000_decode_ctx_vlc.exit.i280 ], [ 0, %bb.ab ] ; 2 uses
  %i.ie = phi i8 [ %i.hw, %jpeg2000_decode_ctx_vlc.exit.i280 ], [ 0, %bb.ab ] ; 2 uses
  %i.if = phi i8 [ %i.ht, %jpeg2000_decode_ctx_vlc.exit.i280 ], [ 0, %bb.ab ] ; 5 uses
  %i.ig = phi i8 [ %i.hs, %jpeg2000_decode_ctx_vlc.exit.i280 ], [ 0, %bb.ab ] ; 2 uses
  %i.ih = zext i16 %i.ey to i64
  %i.ii = shl nuw nsw i64 %i.ih, 2                ; 9 uses
  %i.ij = and i8 %i.if, 1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ii ; 5 uses
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !13
  %i.il = lshr i8 %i.if, 1
  %i.im = and i8 %i.il, 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ii
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  store i8 %i.im, ptr %i.io, align 1, !tbaa !13
  %i.ip = lshr i8 %i.if, 2
  %i.iq = and i8 %i.ip, 1
  %i.ir = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ii
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  store i8 %i.iq, ptr %i.is, align 1, !tbaa !13
  %i.it = lshr i8 %i.if, 3
  %i.iu = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ii
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 3
  store i8 %i.it, ptr %i.iv, align 1, !tbaa !13
  %i.iw = load i8, ptr %i.ik, align 1, !tbaa !13  ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
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
  %i.kq = zext i1 %i.kl to i64                    ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !12 ; 2 uses
  %i.kt = trunc i32 %i.ks to i8
  %.mask515 = and i32 %i.ks, 255
  %i.ku = zext nneg i32 %.mask515 to i64
  %i.kv = lshr i64 %i.kp, %i.ku                   ; 2 uses
  store i64 %i.kv, ptr %i.eo, align 8, !tbaa !16
  %i.kw = sub i8 %i.ko, %i.kt                     ; 2 uses
  store i8 %i.kw, ptr %i.ep, align 8, !tbaa !23
  %11 = trunc i64 %i.kp to i32
  %12 = and i32 %11, 31
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.kq
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !12
  %i.kz = and i32 %12, %i.ky
  %i.la = trunc nuw nsw i32 %i.kz to i8
  br label %vlc_decode_u_suffix.exit181

vlc_decode_u_suffix.exit181:                      ; preds = %vlc_decode_u_prefix.exit165, %bb.ak
  %i.lb = phi i64 [ %i.kv, %bb.ak ], [ %i.kh, %vlc_decode_u_prefix.exit165 ] ; 2 uses
  %i.lc = phi i8 [ %i.kw, %bb.ak ], [ %i.ki, %vlc_decode_u_prefix.exit165 ] ; 3 uses
  %.0.i180 = phi i8 [ %i.la, %bb.ak ], [ 0, %vlc_decode_u_prefix.exit165 ] ; 2 uses
  %i.ld = icmp ne i64 %i.kd, 4
  %i.le = and i64 %i.kc, 3
  %.not516 = icmp eq i64 %i.le, 0
  br i1 %.not516, label %bb.al, label %vlc_decode_u_suffix.exit179

bb.al:                                            ; preds = %vlc_decode_u_suffix.exit181
  %i.lf = icmp ult i8 %i.lc, 5
  br i1 %i.lf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre903 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre904 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.lg = phi i8 [ %.pre904, %bb.am ], [ %i.lc, %bb.al ]
  %i.lh = phi i64 [ %.pre903, %bb.am ], [ %i.lb, %bb.al ] ; 2 uses
  %i.li = zext i1 %i.ld to i64                    ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !12 ; 2 uses
  %i.ll = trunc i32 %i.lk to i8
  %.mask517 = and i32 %i.lk, 255
  %i.lm = zext nneg i32 %.mask517 to i64
  %i.ln = lshr i64 %i.lh, %i.lm                   ; 2 uses
  store i64 %i.ln, ptr %i.eo, align 8, !tbaa !16
  %i.lo = sub i8 %i.lg, %i.ll                     ; 2 uses
  store i8 %i.lo, ptr %i.ep, align 8, !tbaa !23
  %13 = trunc i64 %i.lh to i32
  %14 = and i32 %13, 31
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.li
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !12
  %i.lr = and i32 %14, %i.lq
  %i.ls = trunc nuw nsw i32 %i.lr to i8
  br label %vlc_decode_u_suffix.exit179

vlc_decode_u_suffix.exit179:                      ; preds = %vlc_decode_u_suffix.exit181, %bb.an
  %i.lt = phi i64 [ %i.ln, %bb.an ], [ %i.lb, %vlc_decode_u_suffix.exit181 ]
  %i.lu = phi i8 [ %i.lo, %bb.an ], [ %i.lc, %vlc_decode_u_suffix.exit181 ] ; 2 uses
  %.0.i178 = phi i8 [ %i.ls, %bb.an ], [ 0, %vlc_decode_u_suffix.exit181 ] ; 2 uses
  %i.lv = icmp samesign ugt i8 %.0.i180, 27
  %i.lw = select i1 %i.lv, i8 4, i8 0             ; 3 uses
  %i.lx = icmp ult i8 %i.lu, %i.lw
  br i1 %i.lx, label %bb.ao, label %jpeg2000_bitbuf_get_bits_lsb.exit205

bb.ao:                                            ; preds = %vlc_decode_u_suffix.exit179
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre905 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre906 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit205

jpeg2000_bitbuf_get_bits_lsb.exit205:             ; preds = %vlc_decode_u_suffix.exit179, %bb.ao
  %i.ly = phi i8 [ %i.lu, %vlc_decode_u_suffix.exit179 ], [ %.pre906, %bb.ao ]
  %i.lz = phi i64 [ %i.lt, %vlc_decode_u_suffix.exit179 ], [ %.pre905, %bb.ao ] ; 2 uses
  %i.ma = zext nneg i8 %i.lw to i64               ; 2 uses
  %notmask.i204 = shl nsw i64 -1, %i.ma
  %i.mb = xor i64 %notmask.i204, -1
  %i.mc = and i64 %i.lz, %i.mb
  %i.md = lshr i64 %i.lz, %i.ma                   ; 2 uses
  store i64 %i.md, ptr %i.eo, align 8, !tbaa !16
  %i.me = sub i8 %i.ly, %i.lw                     ; 3 uses
  store i8 %i.me, ptr %i.ep, align 8, !tbaa !23
  %i.mf = icmp samesign ugt i8 %.0.i178, 27
  %i.mg = select i1 %i.mf, i8 4, i8 0             ; 3 uses
  %i.mh = icmp ult i8 %i.me, %i.mg
  br i1 %i.mh, label %bb.ap, label %jpeg2000_bitbuf_get_bits_lsb.exit207

bb.ap:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit205
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre907 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre908 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit207

jpeg2000_bitbuf_get_bits_lsb.exit207:             ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit205, %bb.ap
  %i.mi = phi i8 [ %i.me, %jpeg2000_bitbuf_get_bits_lsb.exit205 ], [ %.pre908, %bb.ap ]
  %i.mj = phi i64 [ %i.md, %jpeg2000_bitbuf_get_bits_lsb.exit205 ], [ %.pre907, %bb.ap ] ; 2 uses
  %i.mk = zext nneg i8 %i.mg to i64               ; 2 uses
  %notmask.i206 = shl nsw i64 -1, %i.mk
  %i.ml = xor i64 %notmask.i206, -1
  %i.mm = and i64 %i.mj, %i.ml
  %i.mn = lshr i64 %i.mj, %i.mk
  store i64 %i.mn, ptr %i.eo, align 8, !tbaa !16
  %i.mo = sub i8 %i.mi, %i.mg
  store i8 %i.mo, ptr %i.ep, align 8, !tbaa !23
  %i.mp = zext i8 %i.jz to i32
  %i.mq = add nuw nsw i32 %i.mp, 2
  %i.mr = zext nneg i8 %.0.i180 to i32
  %i.ms = add nuw nsw i32 %i.mq, %i.mr
  %15 = trunc nuw nsw i64 %i.mc to i32
  %i.mt = shl nuw nsw i32 %15, 2
  %i.mu = add nuw nsw i32 %i.ms, %i.mt
  %i.mv = zext i8 %i.kk to i32
  %i.mw = add nuw nsw i32 %i.mv, 2
  %i.mx = zext nneg i8 %.0.i178 to i32
  %i.my = add nuw nsw i32 %i.mw, %i.mx
  %16 = trunc nuw nsw i64 %i.mm to i32
  %i.mz = shl nuw nsw i32 %16, 2
  %i.na = add nuw nsw i32 %i.my, %i.mz
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

bb.aq:                                            ; preds = %bb.ae
  br i1 %i.jp, label %bb.ar, label %vlc_decode_u_prefix.exit164

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre909 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit164

vlc_decode_u_prefix.exit164:                      ; preds = %bb.aq, %bb.ar
  %i.nb = phi i8 [ %i.jo, %bb.aq ], [ %.pre909, %bb.ar ] ; 2 uses
  %i.nc = load i64, ptr %i.eo, align 8, !tbaa !16 ; 3 uses
  %i.nd = and i64 %i.nc, 7                        ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !13  ; 3 uses
  %i.ng = zext nneg i8 %i.nf to i64
  %i.nh = lshr i64 %i.nc, %i.ng                   ; 3 uses
  store i64 %i.nh, ptr %i.eo, align 8, !tbaa !16
  %i.ni = sub i8 %i.nb, %i.nf                     ; 4 uses
  store i8 %i.ni, ptr %i.ep, align 8, !tbaa !23
  %i.nj = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.nd
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !13
  %i.nl = and i64 %i.nc, 3
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %vlc_decode_u_prefix.exit164
  %i.nn = icmp eq i8 %i.nb, %i.nf
  br i1 %i.nn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre916 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre917 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.no = phi i8 [ %.pre917, %bb.at ], [ %i.ni, %bb.as ]
  %i.np = phi i64 [ %.pre916, %bb.at ], [ %i.nh, %bb.as ] ; 2 uses
  %i.nq = lshr i64 %i.np, 1                       ; 2 uses
  store i64 %i.nq, ptr %i.eo, align 8, !tbaa !16
  %i.nr = add i8 %i.no, -1                        ; 3 uses
  store i8 %i.nr, ptr %i.ep, align 8, !tbaa !23
  %i.ns = trunc i64 %i.np to i32
  %i.nt = and i32 %i.ns, 1
  %i.nu = add nuw nsw i32 %i.nt, 1
  %i.nv = icmp ne i64 %i.nd, 4
  %i.nw = icmp ult i8 %i.nr, 5
  br i1 %i.nw, label %bb.av, label %vlc_decode_u_suffix.exit

bb.av:                                            ; preds = %bb.au
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre918 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre919 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit

vlc_decode_u_suffix.exit:                         ; preds = %bb.au, %bb.av
  %i.nx = phi i8 [ %i.nr, %bb.au ], [ %.pre919, %bb.av ]
  %i.ny = phi i64 [ %i.nq, %bb.au ], [ %.pre918, %bb.av ] ; 2 uses
  %i.nz = zext i1 %i.nv to i64                    ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !12 ; 2 uses
  %i.oc = trunc i32 %i.ob to i8
  %.mask520 = and i32 %i.ob, 255
  %i.od = zext nneg i32 %.mask520 to i64
  %i.oe = lshr i64 %i.ny, %i.od                   ; 2 uses
  store i64 %i.oe, ptr %i.eo, align 8, !tbaa !16
  %i.of = sub i8 %i.nx, %i.oc                     ; 3 uses
  store i8 %i.of, ptr %i.ep, align 8, !tbaa !23
  %17 = trunc i64 %i.ny to i32
  %18 = and i32 %17, 31
  %i.og = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.nz
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !12
  %i.oi = and i32 %18, %i.oh                      ; 2 uses
  %i.oj = icmp samesign ugt i32 %i.oi, 27
  %i.ok = select i1 %i.oj, i8 4, i8 0             ; 3 uses
  %i.ol = icmp ult i8 %i.of, %i.ok
  br i1 %i.ol, label %bb.aw, label %jpeg2000_bitbuf_get_bits_lsb.exit213

bb.aw:                                            ; preds = %vlc_decode_u_suffix.exit
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre920 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre921 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit213

jpeg2000_bitbuf_get_bits_lsb.exit213:             ; preds = %vlc_decode_u_suffix.exit, %bb.aw
  %i.om = phi i8 [ %i.of, %vlc_decode_u_suffix.exit ], [ %.pre921, %bb.aw ]
  %i.on = phi i64 [ %i.oe, %vlc_decode_u_suffix.exit ], [ %.pre920, %bb.aw ] ; 2 uses
  %i.oo = zext nneg i8 %i.ok to i64               ; 2 uses
  %notmask.i212 = shl nsw i64 -1, %i.oo
  %i.op = xor i64 %notmask.i212, -1
  %i.oq = and i64 %i.on, %i.op
  %i.or = lshr i64 %i.on, %i.oo
  store i64 %i.or, ptr %i.eo, align 8, !tbaa !16
  %i.os = sub i8 %i.om, %i.ok
  store i8 %i.os, ptr %i.ep, align 8, !tbaa !23
  %i.ot = trunc nuw nsw i64 %i.oq to i32
  %i.ou = shl nuw nsw i32 %i.ot, 2
  br label %bb.bd

bb.ax:                                            ; preds = %vlc_decode_u_prefix.exit164
  %i.ov = icmp ult i8 %i.ni, 3
  br i1 %i.ov, label %bb.ay, label %vlc_decode_u_suffix.exit177

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre910 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre911 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit177

vlc_decode_u_suffix.exit177:                      ; preds = %bb.ay, %bb.ax
  %i.ow = phi i8 [ %.pre911, %bb.ay ], [ %i.ni, %bb.ax ]
  %i.ox = phi i64 [ %.pre910, %bb.ay ], [ %i.nh, %bb.ax ] ; 3 uses
  %i.oy = and i64 %i.ox, 7                        ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !13  ; 2 uses
  %i.pb = zext nneg i8 %i.pa to i64
  %i.pc = lshr i64 %i.ox, %i.pb                   ; 3 uses
  store i64 %i.pc, ptr %i.eo, align 8, !tbaa !16
  %i.pd = sub i8 %i.ow, %i.pa                     ; 4 uses
  store i8 %i.pd, ptr %i.ep, align 8, !tbaa !23
  %i.pe = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.oy
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !13
  %i.pg = icmp ne i64 %i.oy, 4
  %i.ph = and i64 %i.ox, 3
  %.not518 = icmp eq i64 %i.ph, 0
  br i1 %.not518, label %bb.az, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.az:                                            ; preds = %vlc_decode_u_suffix.exit177
  %i.pi = icmp ult i8 %i.pd, 5
  br i1 %i.pi, label %bb.ba, label %jpeg2000_bitbuf_get_bits_lsb.exit209

bb.ba:                                            ; preds = %bb.az
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre912 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre913 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit209

jpeg2000_bitbuf_get_bits_lsb.exit209:             ; preds = %bb.az, %bb.ba
  %i.pj = phi i8 [ %.pre913, %bb.ba ], [ %i.pd, %bb.az ]
  %i.pk = phi i64 [ %.pre912, %bb.ba ], [ %i.pc, %bb.az ] ; 2 uses
  %i.pl = zext i1 %i.pg to i64                    ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !12 ; 2 uses
  %i.po = trunc i32 %i.pn to i8
  %.mask519 = and i32 %i.pn, 255
  %i.pp = zext nneg i32 %.mask519 to i64
  %i.pq = lshr i64 %i.pk, %i.pp                   ; 3 uses
  store i64 %i.pq, ptr %i.eo, align 8, !tbaa !16
  %i.pr = sub i8 %i.pj, %i.po                     ; 4 uses
  store i8 %i.pr, ptr %i.ep, align 8, !tbaa !23
  %19 = trunc i64 %i.pk to i32
  %20 = and i32 %19, 31
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.pl
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !12
  %i.pu = and i32 %20, %i.pt
  %.fr1250 = freeze i32 %i.pu                     ; 4 uses
  %i.pv = icmp ugt i32 %.fr1250, 27
  br i1 %i.pv, label %bb.bb, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.bb:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit209
  %i.pw = icmp ult i8 %i.pr, 4
  br i1 %i.pw, label %bb.bc, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.bc:                                            ; preds = %bb.bb
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre914 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre915 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit211

jpeg2000_bitbuf_get_bits_lsb.exit211:             ; preds = %vlc_decode_u_suffix.exit177, %jpeg2000_bitbuf_get_bits_lsb.exit209, %bb.bb, %bb.bc
  %i.px = phi i8 [ 4, %bb.bb ], [ 4, %bb.bc ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ 0, %vlc_decode_u_suffix.exit177 ] ; 2 uses
  %.0.i17411311134 = phi i32 [ %.fr1250, %bb.bb ], [ %.fr1250, %bb.bc ], [ %.fr1250, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ 0, %vlc_decode_u_suffix.exit177 ]
  %i.py = phi i8 [ %i.pr, %bb.bb ], [ %.pre915, %bb.bc ], [ %i.pr, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ %i.pd, %vlc_decode_u_suffix.exit177 ]
  %i.pz = phi i64 [ %i.pq, %bb.bb ], [ %.pre914, %bb.bc ], [ %i.pq, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ %i.pc, %vlc_decode_u_suffix.exit177 ] ; 2 uses
  %i.qa = zext nneg i8 %i.px to i64               ; 2 uses
  %notmask.i210 = shl nsw i64 -1, %i.qa
  %i.qb = xor i64 %notmask.i210, -1
  %i.qc = and i64 %i.pz, %i.qb
  %i.qd = lshr i64 %i.pz, %i.qa
  store i64 %i.qd, ptr %i.eo, align 8, !tbaa !16
  %i.qe = sub i8 %i.py, %i.px
  store i8 %i.qe, ptr %i.ep, align 8, !tbaa !23
  %i.qf = trunc nuw nsw i64 %i.qc to i32
  %i.qg = zext i8 %i.pf to i32
  %i.qh = add nuw nsw i32 %.0.i17411311134, %i.qg
  %i.qi = shl nuw nsw i32 %i.qf, 2
  %i.qj = and i32 %i.qi, 252
  %i.qk = add nuw nsw i32 %i.qh, %i.qj
  br label %bb.bd

bb.bd:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit211, %jpeg2000_bitbuf_get_bits_lsb.exit213
  %.sroa.0416.0 = phi i32 [ %i.oi, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %.sroa.0399.0 = phi i32 [ %i.ou, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %.sroa.18.2 = phi i32 [ %i.nu, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ %i.qk, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %i.ql = zext i8 %i.nk to i32
  %i.qm = add nuw nsw i32 %.sroa.0416.0, %i.ql
  %i.qn = add nuw nsw i32 %i.qm, %.sroa.0399.0
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

bb.be:                                            ; preds = %jpeg2000_decode_sig_emb.exit283
  %or.cond11.i = select i1 %i.jl, i1 true, i1 %i.jm
  br i1 %or.cond11.i, label %bb.bf, label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

bb.bf:                                            ; preds = %bb.be
  %i.qo = load i8, ptr %i.ep, align 8, !tbaa !23  ; 2 uses
  %i.qp = icmp ult i8 %i.qo, 3
  br i1 %i.qp, label %bb.bg, label %vlc_decode_u_prefix.exit167

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit167

vlc_decode_u_prefix.exit167:                      ; preds = %bb.bf, %bb.bg
  %i.qq = phi i8 [ %i.qo, %bb.bf ], [ %.pre, %bb.bg ]
  %i.qr = load i64, ptr %i.eo, align 8, !tbaa !16 ; 3 uses
  %i.qs = and i64 %i.qr, 7                        ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !13  ; 2 uses
  %i.qv = zext nneg i8 %i.qu to i64
  %i.qw = lshr i64 %i.qr, %i.qv                   ; 3 uses
  store i64 %i.qw, ptr %i.eo, align 8, !tbaa !16
  %i.qx = sub i8 %i.qq, %i.qu                     ; 4 uses
  store i8 %i.qx, ptr %i.ep, align 8, !tbaa !23
  %i.qy = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.qs
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !13
  %i.ra = icmp ne i64 %i.qs, 4
  %i.rb = and i64 %i.qr, 3
  %.not512 = icmp eq i64 %i.rb, 0
  br i1 %.not512, label %bb.bh, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bh:                                            ; preds = %vlc_decode_u_prefix.exit167
  %i.rc = icmp ult i8 %i.qx, 5
  br i1 %i.rc, label %bb.bi, label %vlc_decode_u_suffix.exit183.cont

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre894 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre895 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit183.cont

vlc_decode_u_suffix.exit183.cont:                 ; preds = %bb.bh, %bb.bi
  %i.rd = phi i8 [ %.pre895, %bb.bi ], [ %i.qx, %bb.bh ]
  %i.re = phi i64 [ %.pre894, %bb.bi ], [ %i.qw, %bb.bh ] ; 2 uses
  %i.rf = zext i1 %i.ra to i64                    ; 2 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !12 ; 2 uses
  %i.ri = trunc i32 %i.rh to i8
  %.mask513 = and i32 %i.rh, 255
  %i.rj = zext nneg i32 %.mask513 to i64
  %i.rk = lshr i64 %i.re, %i.rj                   ; 3 uses
  store i64 %i.rk, ptr %i.eo, align 8, !tbaa !16
  %i.rl = sub i8 %i.rd, %i.ri                     ; 4 uses
  store i8 %i.rl, ptr %i.ep, align 8, !tbaa !23
  %21 = trunc i64 %i.re to i32
  %22 = and i32 %21, 31
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.rf
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !12
  %i.ro = and i32 %22, %i.rn
  %.fr1249 = freeze i32 %i.ro                     ; 4 uses
  %i.rp = icmp ugt i32 %.fr1249, 27
  br i1 %i.rp, label %bb.bj, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bj:                                            ; preds = %vlc_decode_u_suffix.exit183.cont
  %i.rq = icmp ult i8 %i.rl, 4
  br i1 %i.rq, label %bb.bk, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre896 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre897 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203

jpeg2000_bitbuf_get_bits_lsb.exit203:             ; preds = %vlc_decode_u_prefix.exit167, %vlc_decode_u_suffix.exit183.cont, %bb.bj, %bb.bk
  %i.rr = phi i8 [ 4, %bb.bj ], [ 4, %bb.bk ], [ 0, %vlc_decode_u_suffix.exit183.cont ], [ 0, %vlc_decode_u_prefix.exit167 ] ; 2 uses
  %.0.i18211381144 = phi i32 [ %.fr1249, %bb.bj ], [ %.fr1249, %bb.bk ], [ %.fr1249, %vlc_decode_u_suffix.exit183.cont ], [ 0, %vlc_decode_u_prefix.exit167 ]
  %i.rs = phi i8 [ %i.rl, %bb.bj ], [ %.pre897, %bb.bk ], [ %i.rl, %vlc_decode_u_suffix.exit183.cont ], [ %i.qx, %vlc_decode_u_prefix.exit167 ]
  %i.rt = phi i64 [ %i.rk, %bb.bj ], [ %.pre896, %bb.bk ], [ %i.rk, %vlc_decode_u_suffix.exit183.cont ], [ %i.qw, %vlc_decode_u_prefix.exit167 ] ; 2 uses
  %i.ru = zext nneg i8 %i.rr to i64               ; 2 uses
  %notmask.i202 = shl nsw i64 -1, %i.ru
  %i.rv = xor i64 %notmask.i202, -1
  %i.rw = and i64 %i.rt, %i.rv
  %i.rx = lshr i64 %i.rt, %i.ru
  store i64 %i.rx, ptr %i.eo, align 8, !tbaa !16
  %i.ry = sub i8 %i.rs, %i.rr
  store i8 %i.ry, ptr %i.ep, align 8, !tbaa !23
  %i.rz = trunc nuw nsw i64 %i.rw to i32
  %i.sa = zext i8 %i.qz to i32
  %i.sb = add nuw nsw i32 %.0.i18211381144, %i.sa
  %i.sc = shl nuw nsw i32 %i.rz, 2
  %i.sd = and i32 %i.sc, 252
  %i.se = add nuw nsw i32 %i.sb, %i.sd            ; 2 uses
  %spec.select490 = select i1 %i.jl, i32 %i.se, i32 0
  %spec.select491 = select i1 %i.jl, i32 0, i32 %i.se
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

jpeg2000_bitbuf_get_bits_lsb.exit203.cont:        ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit203, %bb.be, %bb.bd, %jpeg2000_bitbuf_get_bits_lsb.exit207
  %.sroa.0386.3 = phi i32 [ %i.qn, %bb.bd ], [ %i.mu, %jpeg2000_bitbuf_get_bits_lsb.exit207 ], [ 0, %bb.be ], [ %spec.select490, %jpeg2000_bitbuf_get_bits_lsb.exit203 ] ; 2 uses
  %.sroa.18.1 = phi i32 [ %.sroa.18.2, %bb.bd ], [ %i.na, %jpeg2000_bitbuf_get_bits_lsb.exit207 ], [ 0, %bb.be ], [ %spec.select491, %jpeg2000_bitbuf_get_bits_lsb.exit203 ] ; 2 uses
  %.not749.i = icmp slt i32 %.sroa.0386.3, %i.du
  %.not750.i = icmp slt i32 %.sroa.18.1, %i.du
  %or.cond751.i = select i1 %.not749.i, i1 %.not750.i, i1 false
  br i1 %or.cond751.i, label %.preheader531, label %jpeg2000_decode_ht_cleanup_segment.exit

.preheader531:                                    ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit203.cont
  %i.sf = add nuw nsw i32 %.sroa.18.1, 1          ; 4 uses
  %i.sg = add nuw nsw i32 %.sroa.0386.3, 1        ; 4 uses
  %i.sh = zext nneg i8 %i.fy to i32               ; 4 uses
  %i.si = zext nneg i8 %i.ie to i32               ; 4 uses
  %i.sj = load i8, ptr %i.ge, align 1, !tbaa !13
  %i.sk = zext i8 %i.sj to i32
  %i.sl = mul nuw nsw i32 %i.sg, %i.sk            ; 2 uses
  %i.sm = and i32 %i.sh, 1                        ; 2 uses
  %i.sn = sub nsw i32 %i.sl, %i.sm                ; 4 uses
  %i.so = zext i8 %i.iw to i32
  %i.sp = mul nuw nsw i32 %i.sf, %i.so            ; 2 uses
  %i.sq = and i32 %i.si, 1                        ; 2 uses
  %i.sr = sub nsw i32 %i.sp, %i.sq                ; 4 uses
  %i.ss = or disjoint i64 %i.gc, 1                ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ss
  %i.su = load i8, ptr %i.st, align 1, !tbaa !13
  %i.sv = zext i8 %i.su to i32
  %i.sw = mul nuw nsw i32 %i.sg, %i.sv            ; 2 uses
  %i.sx = lshr i32 %i.sh, 1
  %i.sy = and i32 %i.sx, 1                        ; 2 uses
  %i.sz = sub nsw i32 %i.sw, %i.sy                ; 4 uses
  %i.ta = or disjoint i64 %i.ii, 1                ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !13
  %i.td = zext i8 %i.tc to i32
  %i.te = mul nuw nsw i32 %i.sf, %i.td            ; 2 uses
  %i.tf = lshr i32 %i.si, 1
  %i.tg = and i32 %i.tf, 1                        ; 2 uses
  %i.th = sub nsw i32 %i.te, %i.tg                ; 4 uses
  %i.ti = or disjoint i64 %i.gc, 2                ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !13
  %i.tl = zext i8 %i.tk to i32
  %i.tm = mul nuw nsw i32 %i.sg, %i.tl            ; 2 uses
  %i.tn = lshr i32 %i.sh, 2
  %i.to = and i32 %i.tn, 1                        ; 2 uses
  %i.tp = sub nsw i32 %i.tm, %i.to                ; 4 uses
  %i.tq = or disjoint i64 %i.ii, 2                ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.tq
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !13
  %i.tt = zext i8 %i.ts to i32
  %i.tu = mul nuw nsw i32 %i.sf, %i.tt            ; 2 uses
  %i.tv = lshr i32 %i.si, 2
  %i.tw = and i32 %i.tv, 1                        ; 2 uses
  %i.tx = sub nsw i32 %i.tu, %i.tw                ; 4 uses
  %i.ty = or disjoint i64 %i.gc, 3                ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !13
  %i.ub = zext i8 %i.ua to i32
  %i.uc = mul nuw nsw i32 %i.sg, %i.ub            ; 2 uses
  %i.ud = lshr i32 %i.sh, 3                       ; 2 uses
  %i.ue = sub nsw i32 %i.uc, %i.ud                ; 4 uses
  %i.uf = or disjoint i64 %i.ii, 3                ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.uf
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !13
  %i.ui = zext i8 %i.uh to i32
  %i.uj = mul nuw nsw i32 %i.sf, %i.ui            ; 2 uses
  %i.uk = lshr i32 %i.si, 3                       ; 2 uses
  %i.ul = sub nsw i32 %i.uj, %i.uk                ; 4 uses
  %i.um = zext nneg i8 %i.fx to i32               ; 4 uses
  %i.un = and i32 %i.um, 1
  %i.uo = icmp sgt i32 %i.sn, 0
  br i1 %i.uo, label %bb.bl, label %jpeg2000_decode_mag_sgn.exit260

bb.bl:                                            ; preds = %.preheader531
  %i.up = trunc i32 %i.sn to i8                   ; 2 uses
  %.not.i265 = icmp ule i8 %.sroa.52.0629, %i.up
  %i.uq = icmp ult i8 %.sroa.52.0629, 32
  %or.cond482 = and i1 %i.uq, %.not.i265
  br i1 %or.cond482, label %.lr.ph.i285, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267

.lr.ph.i285:                                      ; preds = %bb.bl, %bb.bn
  %.sroa.0320.26 = phi i32 [ %.sroa.0320.27, %bb.bn ], [ %.sroa.0320.0625, %bb.bl ]
  %.sroa.38.26 = phi i32 [ %.sroa.38.27, %bb.bn ], [ %.sroa.38.0626, %bb.bl ]
  %i.ur = phi i64 [ %i.vi, %bb.bn ], [ %.sroa.84339.0627, %bb.bl ]
  %i.us = phi i32 [ %i.vd, %bb.bn ], [ %.sroa.0320.0625, %bb.bl ] ; 4 uses
  %i.ut = phi i32 [ %i.ve, %bb.bn ], [ %.sroa.38.0626, %bb.bl ] ; 2 uses
  %i.uu = phi i8 [ %i.vk, %bb.bn ], [ %.sroa.52.0629, %bb.bl ] ; 2 uses
  %i.uv = icmp eq i32 %i.ut, 255
  %i.uw = icmp ult i32 %i.us, %i.cl
  br i1 %i.uw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i285
  %i.ux = sext i32 %i.us to i64
  %i.uy = getelementptr inbounds i8, ptr %i.bc, i64 %i.ux
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !13  ; 2 uses
  %i.va = zext i8 %i.uz to i32                    ; 2 uses
  %i.vb = add nuw nsw i32 %i.us, 1                ; 2 uses
  %i.vc = zext i8 %i.uz to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.i285
  %.sroa.0320.27 = phi i32 [ %i.vb, %bb.bm ], [ %.sroa.0320.26, %.lr.ph.i285 ] ; 2 uses
  %.sroa.38.27 = phi i32 [ %i.va, %bb.bm ], [ %.sroa.38.26, %.lr.ph.i285 ] ; 2 uses
  %i.vd = phi i32 [ %i.vb, %bb.bm ], [ %i.us, %.lr.ph.i285 ]
  %i.ve = phi i32 [ %i.va, %bb.bm ], [ %i.ut, %.lr.ph.i285 ]
  %i.vf = phi i64 [ %i.vc, %bb.bm ], [ 255, %.lr.ph.i285 ]
  %i.vg = zext nneg i8 %i.uu to i64
  %i.vh = shl nuw nsw i64 %i.vf, %i.vg
  %i.vi = or i64 %i.vh, %i.ur                     ; 2 uses
  %i.vj = select i1 %i.uv, i8 7, i8 8
  %i.vk = add nuw nsw i8 %i.vj, %i.uu             ; 3 uses
  %i.vl = icmp samesign ult i8 %i.vk, 32
  br i1 %i.vl, label %.lr.ph.i285, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit267:     ; preds = %bb.bn, %bb.bl
  %.sroa.0320.18 = phi i32 [ %.sroa.0320.0625, %bb.bl ], [ %.sroa.0320.27, %bb.bn ]
  %.sroa.38.18 = phi i32 [ %.sroa.38.0626, %bb.bl ], [ %.sroa.38.27, %bb.bn ]
  %.sroa.84339.18 = phi i64 [ %.sroa.84339.0627, %bb.bl ], [ %i.vi, %bb.bn ] ; 2 uses
  %.sroa.52.18 = phi i8 [ %.sroa.52.0629, %bb.bl ], [ %i.vk, %bb.bn ]
  %.mask522 = and i32 %i.sn, 255
  %i.vm = zext nneg i32 %.mask522 to i64          ; 2 uses
  %notmask.i266 = shl nsw i64 -1, %i.vm
  %i.vn = xor i64 %notmask.i266, -1
  %i.vo = and i64 %.sroa.84339.18, %i.vn
  %i.vp = lshr i64 %.sroa.84339.18, %i.vm
  %i.vq = sub i8 %.sroa.52.18, %i.up
  %i.vr = trunc i64 %i.vo to i32
  %i.vs = shl nuw i32 %i.un, %i.sn
  %i.vt = add nsw i32 %i.vs, %i.vr
  br label %jpeg2000_decode_mag_sgn.exit260

jpeg2000_decode_mag_sgn.exit260:                  ; preds = %.preheader531, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267
  %.sroa.0320.15 = phi i32 [ %.sroa.0320.18, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.0320.0625, %.preheader531 ] ; 4 uses
  %.sroa.38.15 = phi i32 [ %.sroa.38.18, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.38.0626, %.preheader531 ] ; 4 uses
  %.sroa.84339.15 = phi i64 [ %i.vp, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.84339.0627, %.preheader531 ] ; 3 uses
  %.sroa.52.15 = phi i8 [ %i.vq, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.52.0629, %.preheader531 ] ; 5 uses
  %.0.i259 = phi i32 [ %i.vt, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ 0, %.preheader531 ] ; 3 uses
  %.not.i218 = icmp eq i32 %i.sl, %i.sm
  br i1 %.not.i218, label %bb.bo, label %ff_clz_c.exit.i222

ff_clz_c.exit.i222:                               ; preds = %jpeg2000_decode_mag_sgn.exit260
  %i.vu = lshr i32 %.0.i259, 1
  %i.vv = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.vu, i1 false)
  %i.vw = trunc nuw nsw i32 %i.vv to i8
  %i.vx = sub nuw nsw i8 33, %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.gc
  store i8 %i.vx, ptr %i.vy, align 1, !tbaa !13
  %i.vz = ashr i32 %.0.i259, 1
  %i.wa = add nsw i32 %i.vz, 1
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gc
  %i.wc = shl i32 %i.wa, %i.eu
  %i.wd = shl i32 %.0.i259, 31
  %i.we = or i32 %i.wd, %i.wc
  %i.wf = or i32 %i.we, %i.ew
  store i32 %i.wf, ptr %i.wb, align 4, !tbaa !12
  br label %bb.bo

bb.bo:                                            ; preds = %ff_clz_c.exit.i222, %jpeg2000_decode_mag_sgn.exit260
  %i.wg = lshr i32 %i.um, 1
  %i.wh = and i32 %i.wg, 1
end_hunk_0
begin_hunk_1_@ff_jpeg2000_decode_htj2k:bb.a
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.tq
  %i.agr = shl i32 %i.agp, %i.eu
  %i.ags = shl i32 %.0.i261.2, 31
  %i.agt = or i32 %i.ags, %i.agr
  %i.agu = or i32 %i.agt, %i.ew
  store i32 %i.agu, ptr %i.agq, align 4, !tbaa !12
  br label %bb.cl

bb.cl:                                            ; preds = %ff_clz_c.exit.i.2, %jpeg2000_decode_mag_sgn.exit262.2
  %i.agv = lshr i32 %i.abn, 3
  %i.agw = icmp sgt i32 %i.ul, 0
  br i1 %i.agw, label %bb.cm, label %jpeg2000_decode_mag_sgn.exit262.3

bb.cm:                                            ; preds = %bb.cl
  %i.agx = trunc i32 %i.ul to i8                  ; 2 uses
  %.not.i263.3 = icmp ule i8 %.sroa.52.16.2, %i.agx
  %i.agy = icmp ult i8 %.sroa.52.16.2, 32
  %or.cond483.3 = and i1 %i.agy, %.not.i263.3
  br i1 %or.cond483.3, label %.lr.ph.i291.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3

.lr.ph.i291.3:                                    ; preds = %bb.cm, %bb.co
  %.sroa.0320.29.3 = phi i32 [ %.sroa.0320.30.3, %bb.co ], [ %.sroa.0320.16.2, %bb.cm ]
  %.sroa.38.29.3 = phi i32 [ %.sroa.38.30.3, %bb.co ], [ %.sroa.38.16.2, %bb.cm ]
  %i.agz = phi i64 [ %i.ahq, %bb.co ], [ %.sroa.84339.16.2, %bb.cm ]
  %i.aha = phi i32 [ %i.ahl, %bb.co ], [ %.sroa.0320.16.2, %bb.cm ] ; 4 uses
  %i.ahb = phi i32 [ %i.ahm, %bb.co ], [ %.sroa.38.16.2, %bb.cm ] ; 2 uses
  %i.ahc = phi i8 [ %i.ahs, %bb.co ], [ %.sroa.52.16.2, %bb.cm ] ; 2 uses
  %i.ahd = icmp eq i32 %i.ahb, 255
  %i.ahe = icmp ult i32 %i.aha, %i.cl
  br i1 %i.ahe, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph.i291.3
  %i.ahf = sext i32 %i.aha to i64
  %i.ahg = getelementptr inbounds i8, ptr %i.bc, i64 %i.ahf
  %i.ahh = load i8, ptr %i.ahg, align 1, !tbaa !13 ; 2 uses
  %i.ahi = zext i8 %i.ahh to i32                  ; 2 uses
  %i.ahj = add nuw nsw i32 %i.aha, 1              ; 2 uses
  %i.ahk = zext i8 %i.ahh to i64
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.lr.ph.i291.3
  %.sroa.0320.30.3 = phi i32 [ %i.ahj, %bb.cn ], [ %.sroa.0320.29.3, %.lr.ph.i291.3 ] ; 2 uses
  %.sroa.38.30.3 = phi i32 [ %i.ahi, %bb.cn ], [ %.sroa.38.29.3, %.lr.ph.i291.3 ] ; 2 uses
  %i.ahl = phi i32 [ %i.ahj, %bb.cn ], [ %i.aha, %.lr.ph.i291.3 ]
  %i.ahm = phi i32 [ %i.ahi, %bb.cn ], [ %i.ahb, %.lr.ph.i291.3 ]
  %i.ahn = phi i64 [ %i.ahk, %bb.cn ], [ 255, %.lr.ph.i291.3 ]
  %i.aho = zext nneg i8 %i.ahc to i64
  %i.ahp = shl nuw nsw i64 %i.ahn, %i.aho
  %i.ahq = or i64 %i.ahp, %i.agz                  ; 2 uses
  %i.ahr = select i1 %i.ahd, i8 7, i8 8
  %i.ahs = add nuw nsw i8 %i.ahr, %i.ahc          ; 3 uses
  %i.aht = icmp samesign ult i8 %i.ahs, 32
  br i1 %i.aht, label %.lr.ph.i291.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit.3:      ; preds = %bb.co, %bb.cm
  %.sroa.0320.17.3 = phi i32 [ %.sroa.0320.16.2, %bb.cm ], [ %.sroa.0320.30.3, %bb.co ]
  %.sroa.38.17.3 = phi i32 [ %.sroa.38.16.2, %bb.cm ], [ %.sroa.38.30.3, %bb.co ]
  %.sroa.84339.17.3 = phi i64 [ %.sroa.84339.16.2, %bb.cm ], [ %i.ahq, %bb.co ] ; 2 uses
  %.sroa.52.17.3 = phi i8 [ %.sroa.52.16.2, %bb.cm ], [ %i.ahs, %bb.co ]
  %.mask521.3 = and i32 %i.ul, 255
  %i.ahu = zext nneg i32 %.mask521.3 to i64       ; 2 uses
  %notmask.i264.3 = shl nsw i64 -1, %i.ahu
  %i.ahv = xor i64 %notmask.i264.3, -1
  %i.ahw = and i64 %.sroa.84339.17.3, %i.ahv
  %i.ahx = lshr i64 %.sroa.84339.17.3, %i.ahu
  %i.ahy = sub i8 %.sroa.52.17.3, %i.agx
  %i.ahz = trunc i64 %i.ahw to i32
  %i.aia = shl nuw i32 %i.agv, %i.ul
  %i.aib = add nsw i32 %i.aia, %i.ahz
  br label %jpeg2000_decode_mag_sgn.exit262.3

jpeg2000_decode_mag_sgn.exit262.3:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3, %bb.cl
  %.sroa.0320.16.3 = phi i32 [ %.sroa.0320.17.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.0320.16.2, %bb.cl ] ; 2 uses
  %.sroa.38.16.3 = phi i32 [ %.sroa.38.17.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.38.16.2, %bb.cl ] ; 2 uses
  %.sroa.84339.16.3 = phi i64 [ %i.ahx, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.84339.16.2, %bb.cl ] ; 2 uses
  %.sroa.52.16.3 = phi i8 [ %i.ahy, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.52.16.2, %bb.cl ] ; 2 uses
  %.0.i261.3 = phi i32 [ %i.aib, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ 0, %bb.cl ] ; 3 uses
  %.not.i216.3 = icmp eq i32 %i.uj, %i.uk
  br i1 %.not.i216.3, label %recover_mag_sgn.exit, label %ff_clz_c.exit.i.3

ff_clz_c.exit.i.3:                                ; preds = %jpeg2000_decode_mag_sgn.exit262.3
  %i.aic = lshr i32 %.0.i261.3, 1
  %i.aid = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.aic, i1 false)
  %i.aie = trunc nuw nsw i32 %i.aid to i8
  %i.aif = sub nuw nsw i8 33, %i.aie
  %i.aig = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.uf
  store i8 %i.aif, ptr %i.aig, align 1, !tbaa !13
  %i.aih = ashr i32 %.0.i261.3, 1
  %i.aii = add nsw i32 %i.aih, 1
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.uf
  %i.aik = shl i32 %i.aii, %i.eu
  %i.ail = shl i32 %.0.i261.3, 31
  %i.aim = or i32 %i.ail, %i.aik
  %i.ain = or i32 %i.aim, %i.ew
  store i32 %i.ain, ptr %i.aij, align 4, !tbaa !12
  br label %recover_mag_sgn.exit

recover_mag_sgn.exit:                             ; preds = %ff_clz_c.exit.i.3, %jpeg2000_decode_mag_sgn.exit262.3
  %i.aio = add i16 %.0659.i631, 2                 ; 3 uses
  %i.aip = zext i16 %i.aio to i32                 ; 3 uses
  %i.aiq = icmp sgt i32 %i.em, %i.aip
  br i1 %i.aiq, label %bb.x, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %recover_mag_sgn.exit
  store i8 %i.ig, ptr %i.eq, align 1
  store i8 %i.if, ptr %i.er, align 1
  store i8 %i.ie, ptr %i.es, align 1
  store i8 %i.id, ptr %i.et, align 1
  %i.air = shl nuw nsw i32 %i.aip, 2
  %i.ais = zext nneg i32 %i.air to i64
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
  %.0659.i.lcssa = phi i16 [ %i.aio, %._crit_edge ], [ 0, %.preheader532 ] ; 2 uses
  %.lcssa558 = phi i64 [ %i.ais, %._crit_edge ], [ 0, %.preheader532 ] ; 6 uses
  store i8 %.lcssa605, ptr %i.b, align 2
  store i8 %.lcssa610, ptr %i.a, align 2
  store i8 %.lcssa615, ptr %i.c, align 2
  store i8 %.lcssa620, ptr %i.d, align 2
  %i.ait = and i32 %i.dz, 1
  %.not.i = icmp eq i32 %i.ait, 0                 ; 2 uses
  br i1 %.not.i, label %bb.dn, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call fastcc void @jpeg2000_decode_sig_emb(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dec_cxt_vlc_table0, ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i8 noundef zeroext 0, i16 noundef zeroext %.0677.i.lcssa, i32 noundef range(i32 2, 0) %i.ar, i32 noundef %i.cl)
  %i.aiu = load i8, ptr %i.a, align 2, !tbaa !13  ; 4 uses
  %i.aiv = and i8 %i.aiu, 1
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.lcssa558 ; 2 uses
  store i8 %i.aiv, ptr %i.aiw, align 1, !tbaa !13
  %i.aix = lshr i8 %i.aiu, 1
  %i.aiy = and i8 %i.aix, 1                       ; 2 uses
  %i.aiz = add nuw nsw i64 %.lcssa558, 1          ; 3 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.aiz
  store i8 %i.aiy, ptr %i.aja, align 1, !tbaa !13
  %i.ajb = lshr i8 %i.aiu, 2
  %i.ajc = and i8 %i.ajb, 1                       ; 2 uses
  %i.ajd = add nuw nsw i64 %.lcssa558, 2          ; 3 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ajd
  store i8 %i.ajc, ptr %i.aje, align 1, !tbaa !13
  %i.ajf = lshr i8 %i.aiu, 3
  %i.ajg = and i8 %i.ajf, 1                       ; 2 uses
  %i.ajh = add nuw nsw i64 %.lcssa558, 3          ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ajh
  store i8 %i.ajg, ptr %i.aji, align 1, !tbaa !13
  %i.ajj = load i8, ptr %i.b, align 2, !tbaa !13
  %i.ajk = icmp eq i8 %i.ajj, 1
  br i1 %i.ajk, label %bb.cr, label %bb.cx

bb.cr:                                            ; preds = %bb.cq
  %i.ajl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ajm = load i8, ptr %i.ajl, align 8, !tbaa !23 ; 2 uses
  %i.ajn = icmp ult i8 %i.ajm, 3
  br i1 %i.ajn, label %bb.cs, label %vlc_decode_u_prefix.exit168

bb.cs:                                            ; preds = %bb.cr
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre922 = load i8, ptr %i.ajl, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit168

vlc_decode_u_prefix.exit168:                      ; preds = %bb.cr, %bb.cs
  %i.ajo = phi i8 [ %i.ajm, %bb.cr ], [ %.pre922, %bb.cs ]
  %i.ajp = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.ajq = load i64, ptr %i.ajp, align 8, !tbaa !16 ; 3 uses
  %i.ajr = and i64 %i.ajq, 7                      ; 3 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.ajr
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !13 ; 2 uses
  %i.aju = zext nneg i8 %i.ajt to i64
  %i.ajv = lshr i64 %i.ajq, %i.aju                ; 3 uses
  store i64 %i.ajv, ptr %i.ajp, align 8, !tbaa !16
  %i.ajw = sub i8 %i.ajo, %i.ajt                  ; 4 uses
  store i8 %i.ajw, ptr %i.ajl, align 8, !tbaa !23
  %i.ajx = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.ajr
  %i.ajy = load i8, ptr %i.ajx, align 1, !tbaa !13
  %i.ajz = icmp ne i64 %i.ajr, 4
  %i.aka = and i64 %i.ajq, 3
  %.not495 = icmp eq i64 %i.aka, 0
  br i1 %.not495, label %bb.ct, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.ct:                                            ; preds = %vlc_decode_u_prefix.exit168
  %i.akb = icmp ult i8 %i.ajw, 5
  br i1 %i.akb, label %bb.cu, label %vlc_decode_u_suffix.exit185

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre923 = load i64, ptr %i.ajp, align 8, !tbaa !16
  %.pre924 = load i8, ptr %i.ajl, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit185

vlc_decode_u_suffix.exit185:                      ; preds = %bb.ct, %bb.cu
  %i.akc = phi i8 [ %i.ajw, %bb.ct ], [ %.pre924, %bb.cu ]
  %i.akd = phi i64 [ %i.ajv, %bb.ct ], [ %.pre923, %bb.cu ] ; 2 uses
  %i.ake = zext i1 %i.ajz to i64                  ; 2 uses
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.ake
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !12 ; 2 uses
  %i.akh = trunc i32 %i.akg to i8
  %.mask = and i32 %i.akg, 255
  %i.aki = zext nneg i32 %.mask to i64
  %i.akj = lshr i64 %i.akd, %i.aki                ; 3 uses
  store i64 %i.akj, ptr %i.ajp, align 8, !tbaa !16
  %i.akk = sub i8 %i.akc, %i.akh                  ; 4 uses
  store i8 %i.akk, ptr %i.ajl, align 8, !tbaa !23
  %23 = trunc i64 %i.akd to i32
  %24 = and i32 %23, 31
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.ake
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !12
  %i.akn = and i32 %24, %i.akm
  %.fr = freeze i32 %i.akn                        ; 4 uses
  %i.ako = icmp ugt i32 %.fr, 27
  br i1 %i.ako, label %bb.cv, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.cv:                                            ; preds = %vlc_decode_u_suffix.exit185
  %i.akp = icmp ult i8 %i.akk, 4
  br i1 %i.akp, label %bb.cw, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.cw:                                            ; preds = %bb.cv
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre925 = load i64, ptr %i.ajp, align 8, !tbaa !16
  %.pre926 = load i8, ptr %i.ajl, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit201

jpeg2000_bitbuf_get_bits_lsb.exit201:             ; preds = %vlc_decode_u_prefix.exit168, %vlc_decode_u_suffix.exit185, %bb.cv, %bb.cw
  %i.akq = phi i8 [ %.pre926, %bb.cw ], [ %i.akk, %bb.cv ], [ %i.akk, %vlc_decode_u_suffix.exit185 ], [ %i.ajw, %vlc_decode_u_prefix.exit168 ]
  %i.akr = phi i64 [ %.pre925, %bb.cw ], [ %i.akj, %bb.cv ], [ %i.akj, %vlc_decode_u_suffix.exit185 ], [ %i.ajv, %vlc_decode_u_prefix.exit168 ] ; 2 uses
  %i.aks = phi i8 [ 4, %bb.cw ], [ 4, %bb.cv ], [ 0, %vlc_decode_u_suffix.exit185 ], [ 0, %vlc_decode_u_prefix.exit168 ] ; 2 uses
  %.0.i184453455 = phi i32 [ %.fr, %bb.cw ], [ %.fr, %bb.cv ], [ %.fr, %vlc_decode_u_suffix.exit185 ], [ 0, %vlc_decode_u_prefix.exit168 ]
  %i.akt = zext nneg i8 %i.aks to i64             ; 2 uses
  %notmask.i200 = shl nsw i64 -1, %i.akt
  %i.aku = xor i64 %notmask.i200, -1
  %i.akv = and i64 %i.akr, %i.aku
  %i.akw = lshr i64 %i.akr, %i.akt
  store i64 %i.akw, ptr %i.ajp, align 8, !tbaa !16
  %i.akx = sub i8 %i.akq, %i.aks
  store i8 %i.akx, ptr %i.ajl, align 8, !tbaa !23
  %i.aky = trunc nuw nsw i64 %i.akv to i32
  %i.akz = zext i8 %i.ajy to i32
  %i.ala = add nuw nsw i32 %.0.i184453455, %i.akz
  %i.alb = shl nuw nsw i32 %i.aky, 2
  %i.alc = and i32 %i.alb, 252
  %i.ald = add nuw nsw i32 %i.ala, %i.alc
  br label %bb.cx

bb.cx:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit201, %bb.cq
  %.sroa.0386.0 = phi i32 [ %i.ald, %jpeg2000_bitbuf_get_bits_lsb.exit201 ], [ 0, %bb.cq ] ; 2 uses
  %.not732.i = icmp slt i32 %.sroa.0386.0, %i.du
  br i1 %.not732.i, label %.preheader530, label %jpeg2000_decode_ht_cleanup_segment.exit

.preheader530:                                    ; preds = %bb.cx
  %i.ale = add nuw nsw i32 %.sroa.0386.0, 1       ; 4 uses
  %i.alf = load i8, ptr %i.c, align 2, !tbaa !13
  %i.alg = zext i8 %i.alf to i32                  ; 4 uses
  %i.alh = load i8, ptr %i.aiw, align 1, !tbaa !13
  %i.ali = zext i8 %i.alh to i32
  %i.alj = mul nsw i32 %i.ale, %i.ali             ; 2 uses
  %i.alk = and i32 %i.alg, 1                      ; 2 uses
  %i.all = sub nsw i32 %i.alj, %i.alk             ; 4 uses
  %i.alm = zext nneg i8 %i.aiy to i32
  %i.aln = mul nuw nsw i32 %i.ale, %i.alm         ; 2 uses
  %i.alo = lshr i32 %i.alg, 1
  %i.alp = and i32 %i.alo, 1                      ; 2 uses
  %i.alq = sub nsw i32 %i.aln, %i.alp             ; 4 uses
  %i.alr = zext nneg i8 %i.ajc to i32
  %i.als = mul nuw nsw i32 %i.ale, %i.alr         ; 2 uses
  %i.alt = lshr i32 %i.alg, 2
  %i.alu = and i32 %i.alt, 1                      ; 2 uses
  %i.alv = sub nsw i32 %i.als, %i.alu             ; 4 uses
  %i.alw = zext nneg i8 %i.ajg to i32
  %i.alx = mul nuw nsw i32 %i.ale, %i.alw         ; 2 uses
  %i.aly = lshr i32 %i.alg, 3
  %i.alz = and i32 %i.aly, 1                      ; 2 uses
  %i.ama = sub nsw i32 %i.alx, %i.alz             ; 4 uses
  %i.amb = zext i8 %i.bn to i32                   ; 5 uses
  %i.amc = load i8, ptr %i.d, align 2, !tbaa !13
  %i.amd = zext i8 %i.amc to i32                  ; 4 uses
  %i.ame = add nsw i32 %i.amb, -1
  %i.amf = shl nuw i32 1, %i.ame                  ; 4 uses
  %i.amg = and i32 %i.amd, 1
  %i.amh = icmp sgt i32 %i.all, 0
  br i1 %i.amh, label %bb.cy, label %jpeg2000_decode_mag_sgn.exit

bb.cy:                                            ; preds = %.preheader530
  %i.ami = trunc i32 %i.all to i8                 ; 2 uses
  %.not.i277 = icmp ule i8 %.sroa.52.0.lcssa, %i.ami
  %i.amj = icmp ult i8 %.sroa.52.0.lcssa, 32
  %or.cond484 = and i1 %i.amj, %.not.i277
  br i1 %or.cond484, label %.lr.ph.i297, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279

.lr.ph.i297:                                      ; preds = %bb.cy, %bb.da
  %.sroa.0320.32 = phi i32 [ %.sroa.0320.33, %bb.da ], [ %.sroa.0320.0.lcssa, %bb.cy ]
  %.sroa.38.32 = phi i32 [ %.sroa.38.33, %bb.da ], [ %.sroa.38.0.lcssa, %bb.cy ]
  %i.amk = phi i64 [ %i.anb, %bb.da ], [ %.sroa.84339.0.lcssa, %bb.cy ]
  %i.aml = phi i32 [ %i.amw, %bb.da ], [ %.sroa.0320.0.lcssa, %bb.cy ] ; 4 uses
  %i.amm = phi i32 [ %i.amx, %bb.da ], [ %.sroa.38.0.lcssa, %bb.cy ] ; 2 uses
  %i.amn = phi i8 [ %i.and, %bb.da ], [ %.sroa.52.0.lcssa, %bb.cy ] ; 2 uses
  %i.amo = icmp eq i32 %i.amm, 255
  %i.amp = icmp ult i32 %i.aml, %i.cl
  br i1 %i.amp, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.lr.ph.i297
  %i.amq = sext i32 %i.aml to i64
  %i.amr = getelementptr inbounds i8, ptr %i.bc, i64 %i.amq
  %i.ams = load i8, ptr %i.amr, align 1, !tbaa !13 ; 2 uses
  %i.amt = zext i8 %i.ams to i32                  ; 2 uses
  %i.amu = add nuw nsw i32 %i.aml, 1              ; 2 uses
  %i.amv = zext i8 %i.ams to i64
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %.lr.ph.i297
  %.sroa.0320.33 = phi i32 [ %i.amu, %bb.cz ], [ %.sroa.0320.32, %.lr.ph.i297 ] ; 2 uses
  %.sroa.38.33 = phi i32 [ %i.amt, %bb.cz ], [ %.sroa.38.32, %.lr.ph.i297 ] ; 2 uses
  %i.amw = phi i32 [ %i.amu, %bb.cz ], [ %i.aml, %.lr.ph.i297 ]
  %i.amx = phi i32 [ %i.amt, %bb.cz ], [ %i.amm, %.lr.ph.i297 ]
  %i.amy = phi i64 [ %i.amv, %bb.cz ], [ 255, %.lr.ph.i297 ]
  %i.amz = zext nneg i8 %i.amn to i64
  %i.ana = shl nuw nsw i64 %i.amy, %i.amz
  %i.anb = or i64 %i.ana, %i.amk                  ; 2 uses
  %i.anc = select i1 %i.amo, i8 7, i8 8
  %i.and = add nuw nsw i8 %i.anc, %i.amn          ; 3 uses
  %i.ane = icmp samesign ult i8 %i.and, 32
  br i1 %i.ane, label %.lr.ph.i297, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit279:     ; preds = %bb.da, %bb.cy
  %.sroa.0320.22 = phi i32 [ %.sroa.0320.0.lcssa, %bb.cy ], [ %.sroa.0320.33, %bb.da ]
  %.sroa.38.22 = phi i32 [ %.sroa.38.0.lcssa, %bb.cy ], [ %.sroa.38.33, %bb.da ]
  %.sroa.84339.22 = phi i64 [ %.sroa.84339.0.lcssa, %bb.cy ], [ %i.anb, %bb.da ] ; 2 uses
  %.sroa.52.22 = phi i8 [ %.sroa.52.0.lcssa, %bb.cy ], [ %i.and, %bb.da ]
  %.mask496 = and i32 %i.all, 255
  %i.anf = zext nneg i32 %.mask496 to i64         ; 2 uses
  %notmask.i278 = shl nsw i64 -1, %i.anf
  %i.ang = xor i64 %notmask.i278, -1
  %i.anh = and i64 %.sroa.84339.22, %i.ang
  %i.ani = lshr i64 %.sroa.84339.22, %i.anf
  %i.anj = sub i8 %.sroa.52.22, %i.ami
  %i.ank = trunc i64 %i.anh to i32
  %i.anl = shl nuw i32 %i.amg, %i.all
  %i.anm = add nsw i32 %i.anl, %i.ank
  br label %jpeg2000_decode_mag_sgn.exit

jpeg2000_decode_mag_sgn.exit:                     ; preds = %.preheader530, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279
  %.sroa.0320.11 = phi i32 [ %.sroa.0320.22, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.0320.0.lcssa, %.preheader530 ] ; 4 uses
  %.sroa.38.11 = phi i32 [ %.sroa.38.22, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.38.0.lcssa, %.preheader530 ] ; 4 uses
  %.sroa.84339.11 = phi i64 [ %i.ani, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.84339.0.lcssa, %.preheader530 ] ; 3 uses
  %.sroa.52.11 = phi i8 [ %i.anj, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.52.0.lcssa, %.preheader530 ] ; 5 uses
  %.0.i252 = phi i32 [ %i.anm, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ 0, %.preheader530 ] ; 3 uses
  %.not.i246 = icmp eq i32 %i.alj, %i.alk
  br i1 %.not.i246, label %bb.db, label %ff_clz_c.exit.i250

ff_clz_c.exit.i250:                               ; preds = %jpeg2000_decode_mag_sgn.exit
  %i.ann = lshr i32 %.0.i252, 1
  %i.ano = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.ann, i1 false)
  %i.anp = trunc nuw nsw i32 %i.ano to i8
  %i.anq = sub nuw nsw i8 33, %i.anp
  %i.anr = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.lcssa558
  store i8 %i.anq, ptr %i.anr, align 1, !tbaa !13
  %i.ans = ashr i32 %.0.i252, 1
  %i.ant = add nsw i32 %i.ans, 1
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.lcssa558
  %i.anv = shl i32 %i.ant, %i.amb
  %i.anw = shl i32 %.0.i252, 31
  %i.anx = or i32 %i.anw, %i.anv
  %i.any = or i32 %i.anx, %i.amf
  store i32 %i.any, ptr %i.anu, align 4, !tbaa !12
  br label %bb.db

bb.db:                                            ; preds = %ff_clz_c.exit.i250, %jpeg2000_decode_mag_sgn.exit
  %i.anz = lshr i32 %i.amd, 1
  %i.aoa = and i32 %i.anz, 1
  %i.aob = icmp sgt i32 %i.alq, 0
  br i1 %i.aob, label %bb.dc, label %jpeg2000_decode_mag_sgn.exit.1

bb.dc:                                            ; preds = %bb.db
  %i.aoc = trunc i32 %i.alq to i8                 ; 2 uses
  %.not.i277.1 = icmp ule i8 %.sroa.52.11, %i.aoc
  %i.aod = icmp ult i8 %.sroa.52.11, 32
  %or.cond484.1 = and i1 %i.aod, %.not.i277.1
  br i1 %or.cond484.1, label %.lr.ph.i297.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1

.lr.ph.i297.1:                                    ; preds = %bb.dc, %bb.de
  %.sroa.0320.32.1 = phi i32 [ %.sroa.0320.33.1, %bb.de ], [ %.sroa.0320.11, %bb.dc ]
  %.sroa.38.32.1 = phi i32 [ %.sroa.38.33.1, %bb.de ], [ %.sroa.38.11, %bb.dc ]
  %i.aoe = phi i64 [ %i.aov, %bb.de ], [ %.sroa.84339.11, %bb.dc ]
  %i.aof = phi i32 [ %i.aoq, %bb.de ], [ %.sroa.0320.11, %bb.dc ] ; 4 uses
  %i.aog = phi i32 [ %i.aor, %bb.de ], [ %.sroa.38.11, %bb.dc ] ; 2 uses
  %i.aoh = phi i8 [ %i.aox, %bb.de ], [ %.sroa.52.11, %bb.dc ] ; 2 uses
  %i.aoi = icmp eq i32 %i.aog, 255
  %i.aoj = icmp ult i32 %i.aof, %i.cl
  br i1 %i.aoj, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.lr.ph.i297.1
  %i.aok = sext i32 %i.aof to i64
  %i.aol = getelementptr inbounds i8, ptr %i.bc, i64 %i.aok
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !13 ; 2 uses
  %i.aon = zext i8 %i.aom to i32                  ; 2 uses
  %i.aoo = add nuw nsw i32 %i.aof, 1              ; 2 uses
  %i.aop = zext i8 %i.aom to i64
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.lr.ph.i297.1
  %.sroa.0320.33.1 = phi i32 [ %i.aoo, %bb.dd ], [ %.sroa.0320.32.1, %.lr.ph.i297.1 ] ; 2 uses
  %.sroa.38.33.1 = phi i32 [ %i.aon, %bb.dd ], [ %.sroa.38.32.1, %.lr.ph.i297.1 ] ; 2 uses
  %i.aoq = phi i32 [ %i.aoo, %bb.dd ], [ %i.aof, %.lr.ph.i297.1 ]
  %i.aor = phi i32 [ %i.aon, %bb.dd ], [ %i.aog, %.lr.ph.i297.1 ]
  %i.aos = phi i64 [ %i.aop, %bb.dd ], [ 255, %.lr.ph.i297.1 ]
  %i.aot = zext nneg i8 %i.aoh to i64
end_hunk_1
begin_hunk_2_@ff_jpeg2000_decode_htj2k:bb.a
  %i.avk = or i8 %i.avj, %i.avh
  %i.avl = zext i8 %i.avk to i16
  %i.avm = shl nuw nsw i16 %i.avl, 1
  %i.avn = add nuw nsw i16 %i.avm, %i.avc
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.lr.ph699
  %.0660.i = phi i16 [ %i.aut, %.lr.ph699 ], [ %i.avn, %bb.do ] ; 2 uses
  %i.avo = zext nneg i32 %i.auf to i64
  %i.avp = mul i64 %i.atk, %i.avo
  %i.avq = icmp ugt i64 %i.avp, %i.atj            ; 2 uses
  br i1 %i.avq, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.avr = sext i32 %i.auh to i64
  %i.avs = getelementptr i8, ptr %.pre927, i64 %i.avr
  %i.avt = getelementptr i8, ptr %i.avs, i64 5
  %i.avu = load i8, ptr %i.avt, align 1, !tbaa !13
  %i.avv = zext i8 %i.avu to i16
  %i.avw = shl nuw nsw i16 %i.avv, 2
  %i.avx = or i16 %i.avw, %.0660.i
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.1661.i = phi i16 [ %.0660.i, %bb.dp ], [ %i.avx, %bb.dq ]
  call fastcc void @jpeg2000_decode_sig_emb(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dec_cxt_vlc_table1, ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i8 noundef zeroext 0, i16 noundef zeroext %.1661.i, i32 noundef range(i32 2, 0) %i.ar, i32 noundef %i.cl)
  %i.avy = load i8, ptr %i.a, align 2, !tbaa !13  ; 4 uses
  %i.avz = shl nuw nsw i32 %i.aue, 2
  %i.awa = zext nneg i32 %i.avz to i64            ; 6 uses
  %i.awb = and i8 %i.avy, 1
  %i.awc = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.awa ; 2 uses
  store i8 %i.awb, ptr %i.awc, align 1, !tbaa !13
  %i.awd = lshr i8 %i.avy, 1
  %i.awe = and i8 %i.awd, 1
  %i.awf = or disjoint i64 %i.awa, 1              ; 3 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.awf ; 2 uses
  store i8 %i.awe, ptr %i.awg, align 1, !tbaa !13
  %i.awh = lshr i8 %i.avy, 2
  %i.awi = and i8 %i.awh, 1
  %i.awj = or disjoint i64 %i.awa, 2              ; 3 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.awj ; 2 uses
  store i8 %i.awi, ptr %i.awk, align 1, !tbaa !13
  %i.awl = lshr i8 %i.avy, 3
  %i.awm = and i8 %i.awl, 1
  %i.awn = or disjoint i64 %i.awa, 3              ; 3 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.awn ; 2 uses
  store i8 %i.awm, ptr %i.awo, align 1, !tbaa !13
  %i.awp = and i32 %i.auf, 65535                  ; 5 uses
  %i.awq = add nsw i32 %i.awp, %i.dy              ; 2 uses
  %i.awr = shl nsw i32 %i.awq, 2                  ; 6 uses
  %i.aws = or disjoint i32 %i.awr, 1
  %i.awt = sext i32 %i.aws to i64                 ; 2 uses
  %i.awu = getelementptr inbounds i8, ptr %.pre927, i64 %i.awt
  %i.awv = load i8, ptr %i.awu, align 1, !tbaa !13
  %i.aww = or disjoint i32 %i.awr, 3
  %i.awx = sext i32 %i.aww to i64                 ; 2 uses
  %i.awy = getelementptr inbounds i8, ptr %.pre927, i64 %i.awx
  %i.awz = load i8, ptr %i.awy, align 1, !tbaa !13
  %i.axa = zext i8 %i.awz to i16
  %i.axb = shl nuw nsw i16 %i.axa, 2
  %i.axc = zext i8 %i.awv to i16
  %i.axd = add nuw nsw i16 %i.axb, %i.axc         ; 2 uses
  %i.axe = zext nneg i32 %i.awp to i64
  %i.axf = mul i64 %i.atk, %i.axe
  %i.axg = icmp ugt i64 %i.axf, %i.atj            ; 2 uses
  br i1 %i.axg, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.axh = sext i32 %i.awr to i64
  %i.axi = getelementptr i8, ptr %.pre927, i64 %i.axh
  %i.axj = getelementptr i8, ptr %i.axi, i64 -1
  %i.axk = load i8, ptr %i.axj, align 1, !tbaa !13
  %i.axl = zext i8 %i.axk to i16
  %i.axm = or i16 %i.axd, %i.axl
  %i.axn = shl nuw nsw i32 %i.awp, 2
  %i.axo = zext nneg i32 %i.axn to i64
  %i.axp = getelementptr i8, ptr %.pre927, i64 %i.axo ; 2 uses
  %i.axq = getelementptr i8, ptr %i.axp, i64 -1
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !13
  %i.axs = getelementptr i8, ptr %i.axp, i64 -2
  %i.axt = load i8, ptr %i.axs, align 1, !tbaa !13
  %i.axu = or i8 %i.axt, %i.axr
  %i.axv = zext i8 %i.axu to i16
  %i.axw = shl nuw nsw i16 %i.axv, 1
  %i.axx = add nuw nsw i16 %i.axw, %i.axm
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.0669.i = phi i16 [ %i.axd, %bb.dr ], [ %i.axx, %bb.ds ] ; 2 uses
  %i.axy = add nuw nsw i32 %i.awp, 1
  %i.axz = zext nneg i32 %i.axy to i64
  %i.aya = mul i64 %i.atk, %i.axz
  %i.ayb = icmp ugt i64 %i.aya, %i.atj            ; 2 uses
  br i1 %i.ayb, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ayc = sext i32 %i.awr to i64
  %i.ayd = getelementptr i8, ptr %.pre927, i64 %i.ayc
  %i.aye = getelementptr i8, ptr %i.ayd, i64 5
  %i.ayf = load i8, ptr %i.aye, align 1, !tbaa !13
  %i.ayg = zext i8 %i.ayf to i16
  %i.ayh = shl nuw nsw i16 %i.ayg, 2
  %i.ayi = or i16 %i.ayh, %.0669.i
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.1670.i = phi i16 [ %.0669.i, %bb.dt ], [ %i.ayi, %bb.du ]
  call fastcc void @jpeg2000_decode_sig_emb(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dec_cxt_vlc_table1, ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i8 noundef zeroext 1, i16 noundef zeroext %.1670.i, i32 noundef range(i32 2, 0) %i.ar, i32 noundef %i.cl)
  %i.ayj = load i8, ptr %i.atn, align 1, !tbaa !13 ; 6 uses
  %i.ayk = shl nuw nsw i32 %i.awp, 2
  %i.ayl = zext nneg i32 %i.ayk to i64            ; 4 uses
  %i.aym = and i8 %i.ayj, 1
  %i.ayn = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.ayl ; 2 uses
  store i8 %i.aym, ptr %i.ayn, align 1, !tbaa !13
  %i.ayo = lshr i8 %i.ayj, 1
  %i.ayp = and i8 %i.ayo, 1
  %i.ayq = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.ayl
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 1 ; 2 uses
  store i8 %i.ayp, ptr %i.ayr, align 1, !tbaa !13
  %i.ays = lshr i8 %i.ayj, 2
  %i.ayt = and i8 %i.ays, 1
  %i.ayu = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.ayl
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 2 ; 2 uses
  store i8 %i.ayt, ptr %i.ayv, align 1, !tbaa !13
  %i.ayw = lshr i8 %i.ayj, 3
  %i.ayx = and i8 %i.ayw, 1
  %i.ayy = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.ayl
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 3 ; 2 uses
  store i8 %i.ayx, ptr %i.ayz, align 1, !tbaa !13
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %i.aza = load i8, ptr %i.b, align 2, !tbaa !13
  %i.azb = icmp eq i8 %i.aza, 1                   ; 4 uses
  %i.azc = load i8, ptr %i.ato, align 1
  %i.azd = icmp eq i8 %i.azc, 1                   ; 2 uses
  %or.cond15.i = select i1 %i.azb, i1 %i.azd, i1 false
  br i1 %or.cond15.i, label %bb.dw, label %bb.eh

bb.dw:                                            ; preds = %bb.dv
  %i.aze = load i8, ptr %i.atp, align 8, !tbaa !23 ; 2 uses
  %i.azf = icmp ult i8 %i.aze, 3
  br i1 %i.azf, label %bb.dx, label %vlc_decode_u_prefix.exit170

bb.dx:                                            ; preds = %bb.dw
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre933 = load i8, ptr %i.atp, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit170

vlc_decode_u_prefix.exit170:                      ; preds = %bb.dw, %bb.dx
  %i.azg = phi i8 [ %i.aze, %bb.dw ], [ %.pre933, %bb.dx ]
  %i.azh = load i64, ptr %i.atq, align 8, !tbaa !16 ; 3 uses
  %i.azi = and i64 %i.azh, 7                      ; 3 uses
  %i.azj = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.azi
  %i.azk = load i8, ptr %i.azj, align 1, !tbaa !13 ; 2 uses
  %i.azl = zext nneg i8 %i.azk to i64
  %i.azm = lshr i64 %i.azh, %i.azl                ; 2 uses
  store i64 %i.azm, ptr %i.atq, align 8, !tbaa !16
  %i.azn = sub i8 %i.azg, %i.azk                  ; 3 uses
  store i8 %i.azn, ptr %i.atp, align 8, !tbaa !23
  %i.azo = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.azi
  %i.azp = load i8, ptr %i.azo, align 1, !tbaa !13
  %i.azq = icmp ult i8 %i.azn, 3
  br i1 %i.azq, label %bb.dy, label %vlc_decode_u_prefix.exit169

bb.dy:                                            ; preds = %vlc_decode_u_prefix.exit170
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre934 = load i64, ptr %i.atq, align 8, !tbaa !16
  %.pre935 = load i8, ptr %i.atp, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit169

vlc_decode_u_prefix.exit169:                      ; preds = %vlc_decode_u_prefix.exit170, %bb.dy
  %i.azr = phi i8 [ %i.azn, %vlc_decode_u_prefix.exit170 ], [ %.pre935, %bb.dy ]
  %i.azs = phi i64 [ %i.azm, %vlc_decode_u_prefix.exit170 ], [ %.pre934, %bb.dy ] ; 3 uses
  %i.azt = and i64 %i.azs, 7                      ; 3 uses
  %i.azu = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.azt
  %i.azv = load i8, ptr %i.azu, align 1, !tbaa !13 ; 2 uses
  %i.azw = zext nneg i8 %i.azv to i64
  %i.azx = lshr i64 %i.azs, %i.azw                ; 3 uses
  store i64 %i.azx, ptr %i.atq, align 8, !tbaa !16
  %i.azy = sub i8 %i.azr, %i.azv                  ; 4 uses
  store i8 %i.azy, ptr %i.atp, align 8, !tbaa !23
  %i.azz = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.azt
  %i.baa = load i8, ptr %i.azz, align 1, !tbaa !13
  %i.bab = icmp ne i64 %i.azi, 4
  %i.bac = and i64 %i.azh, 3
  %.not504 = icmp eq i64 %i.bac, 0
  br i1 %.not504, label %bb.dz, label %vlc_decode_u_suffix.exit189

bb.dz:                                            ; preds = %vlc_decode_u_prefix.exit169
  %i.bad = icmp ult i8 %i.azy, 5
  br i1 %i.bad, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre936 = load i64, ptr %i.atq, align 8, !tbaa !16
  %.pre937 = load i8, ptr %i.atp, align 8, !tbaa !23
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.bae = phi i8 [ %.pre937, %bb.ea ], [ %i.azy, %bb.dz ]
  %i.baf = phi i64 [ %.pre936, %bb.ea ], [ %i.azx, %bb.dz ] ; 2 uses
  %i.bag = zext i1 %i.bab to i64                  ; 2 uses
  %i.bah = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.bag
  %i.bai = load i32, ptr %i.bah, align 4, !tbaa !12 ; 2 uses
  %i.baj = trunc i32 %i.bai to i8
  %.mask505 = and i32 %i.bai, 255
  %i.bak = zext nneg i32 %.mask505 to i64
  %i.bal = lshr i64 %i.baf, %i.bak                ; 2 uses
  store i64 %i.bal, ptr %i.atq, align 8, !tbaa !16
  %i.bam = sub i8 %i.bae, %i.baj                  ; 2 uses
  store i8 %i.bam, ptr %i.atp, align 8, !tbaa !23
  %25 = trunc i64 %i.baf to i32
  %26 = and i32 %25, 31
  %i.ban = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.bag
  %i.bao = load i32, ptr %i.ban, align 4, !tbaa !12
  %i.bap = and i32 %26, %i.bao
  %i.baq = trunc nuw nsw i32 %i.bap to i8
  br label %vlc_decode_u_suffix.exit189

vlc_decode_u_suffix.exit189:                      ; preds = %vlc_decode_u_prefix.exit169, %bb.eb
  %i.bar = phi i64 [ %i.bal, %bb.eb ], [ %i.azx, %vlc_decode_u_prefix.exit169 ] ; 2 uses
  %i.bas = phi i8 [ %i.bam, %bb.eb ], [ %i.azy, %vlc_decode_u_prefix.exit169 ] ; 3 uses
  %.0.i188 = phi i8 [ %i.baq, %bb.eb ], [ 0, %vlc_decode_u_prefix.exit169 ] ; 2 uses
  %i.bat = icmp ne i64 %i.azt, 4
  %i.bau = and i64 %i.azs, 3
  %.not506 = icmp eq i64 %i.bau, 0
  br i1 %.not506, label %bb.ec, label %vlc_decode_u_suffix.exit187

bb.ec:                                            ; preds = %vlc_decode_u_suffix.exit189
  %i.bav = icmp ult i8 %i.bas, 5
  br i1 %i.bav, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre938 = load i64, ptr %i.atq, align 8, !tbaa !16
  %.pre939 = load i8, ptr %i.atp, align 8, !tbaa !23
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.baw = phi i8 [ %.pre939, %bb.ed ], [ %i.bas, %bb.ec ]
  %i.bax = phi i64 [ %.pre938, %bb.ed ], [ %i.bar, %bb.ec ] ; 2 uses
  %i.bay = zext i1 %i.bat to i64                  ; 2 uses
  %i.baz = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.bay
  %i.bba = load i32, ptr %i.baz, align 4, !tbaa !12 ; 2 uses
  %i.bbb = trunc i32 %i.bba to i8
  %.mask507 = and i32 %i.bba, 255
  %i.bbc = zext nneg i32 %.mask507 to i64
  %i.bbd = lshr i64 %i.bax, %i.bbc                ; 2 uses
  store i64 %i.bbd, ptr %i.atq, align 8, !tbaa !16
  %i.bbe = sub i8 %i.baw, %i.bbb                  ; 2 uses
  store i8 %i.bbe, ptr %i.atp, align 8, !tbaa !23
  %27 = trunc i64 %i.bax to i32
  %28 = and i32 %27, 31
  %i.bbf = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.bay
  %i.bbg = load i32, ptr %i.bbf, align 4, !tbaa !12
  %i.bbh = and i32 %28, %i.bbg
  %i.bbi = trunc nuw nsw i32 %i.bbh to i8
  br label %vlc_decode_u_suffix.exit187

vlc_decode_u_suffix.exit187:                      ; preds = %vlc_decode_u_suffix.exit189, %bb.ee
  %i.bbj = phi i64 [ %i.bbd, %bb.ee ], [ %i.bar, %vlc_decode_u_suffix.exit189 ]
  %i.bbk = phi i8 [ %i.bbe, %bb.ee ], [ %i.bas, %vlc_decode_u_suffix.exit189 ] ; 2 uses
  %.0.i186 = phi i8 [ %i.bbi, %bb.ee ], [ 0, %vlc_decode_u_suffix.exit189 ] ; 2 uses
  %i.bbl = icmp samesign ugt i8 %.0.i188, 27
  %i.bbm = select i1 %i.bbl, i8 4, i8 0           ; 3 uses
  %i.bbn = icmp ult i8 %i.bbk, %i.bbm
  br i1 %i.bbn, label %bb.ef, label %jpeg2000_bitbuf_get_bits_lsb.exit197

bb.ef:                                            ; preds = %vlc_decode_u_suffix.exit187
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre940 = load i64, ptr %i.atq, align 8, !tbaa !16
  %.pre941 = load i8, ptr %i.atp, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit197

jpeg2000_bitbuf_get_bits_lsb.exit197:             ; preds = %vlc_decode_u_suffix.exit187, %bb.ef
  %i.bbo = phi i8 [ %i.bbk, %vlc_decode_u_suffix.exit187 ], [ %.pre941, %bb.ef ]
  %i.bbp = phi i64 [ %i.bbj, %vlc_decode_u_suffix.exit187 ], [ %.pre940, %bb.ef ] ; 2 uses
  %i.bbq = zext nneg i8 %i.bbm to i64             ; 2 uses
  %notmask.i196 = shl nsw i64 -1, %i.bbq
  %i.bbr = xor i64 %notmask.i196, -1
  %i.bbs = and i64 %i.bbp, %i.bbr
  %i.bbt = lshr i64 %i.bbp, %i.bbq                ; 2 uses
  store i64 %i.bbt, ptr %i.atq, align 8, !tbaa !16
  %i.bbu = sub i8 %i.bbo, %i.bbm                  ; 3 uses
  store i8 %i.bbu, ptr %i.atp, align 8, !tbaa !23
  %i.bbv = icmp samesign ugt i8 %.0.i186, 27
  %i.bbw = select i1 %i.bbv, i8 4, i8 0           ; 3 uses
  %i.bbx = icmp ult i8 %i.bbu, %i.bbw
  br i1 %i.bbx, label %bb.eg, label %jpeg2000_bitbuf_get_bits_lsb.exit199

bb.eg:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit197
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre942 = load i64, ptr %i.atq, align 8, !tbaa !16
  %.pre943 = load i8, ptr %i.atp, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit199

jpeg2000_bitbuf_get_bits_lsb.exit199:             ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit197, %bb.eg
  %i.bby = phi i8 [ %i.bbu, %jpeg2000_bitbuf_get_bits_lsb.exit197 ], [ %.pre943, %bb.eg ]
  %i.bbz = phi i64 [ %i.bbt, %jpeg2000_bitbuf_get_bits_lsb.exit197 ], [ %.pre942, %bb.eg ] ; 2 uses
  %i.bca = zext nneg i8 %i.bbw to i64             ; 2 uses
  %notmask.i198 = shl nsw i64 -1, %i.bca
  %i.bcb = xor i64 %notmask.i198, -1
  %i.bcc = and i64 %i.bbz, %i.bcb
  %i.bcd = lshr i64 %i.bbz, %i.bca
  store i64 %i.bcd, ptr %i.atq, align 8, !tbaa !16
  %i.bce = sub i8 %i.bby, %i.bbw
  store i8 %i.bce, ptr %i.atp, align 8, !tbaa !23
  %i.bcf = zext i8 %i.azp to i32
  %i.bcg = zext nneg i8 %.0.i188 to i32
  %i.bch = add nuw nsw i32 %i.bcg, %i.bcf
  %29 = trunc nuw nsw i64 %i.bbs to i32
  %i.bci = shl nuw nsw i32 %29, 2
  %i.bcj = add nuw nsw i32 %i.bch, %i.bci
  %i.bck = zext i8 %i.baa to i32
  %i.bcl = zext nneg i8 %.0.i186 to i32
  %i.bcm = add nuw nsw i32 %i.bcl, %i.bck
  %30 = trunc nuw nsw i64 %i.bcc to i32
  %i.bcn = shl nuw nsw i32 %30, 2
  %i.bco = add nuw nsw i32 %i.bcm, %i.bcn
  br label %jpeg2000_bitbuf_get_bits_lsb.exit195.cont

bb.eh:                                            ; preds = %bb.dv
  %or.cond19.i = select i1 %i.azb, i1 true, i1 %i.azd
  br i1 %or.cond19.i, label %bb.ei, label %jpeg2000_bitbuf_get_bits_lsb.exit195.cont

bb.ei:                                            ; preds = %bb.eh
  %i.bcp = load i8, ptr %i.atp, align 8, !tbaa !23 ; 2 uses
  %i.bcq = icmp ult i8 %i.bcp, 3
  br i1 %i.bcq, label %bb.ej, label %vlc_decode_u_prefix.exit171

bb.ej:                                            ; preds = %bb.ei
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre928 = load i8, ptr %i.atp, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit171

vlc_decode_u_prefix.exit171:                      ; preds = %bb.ei, %bb.ej
  %i.bcr = phi i8 [ %i.bcp, %bb.ei ], [ %.pre928, %bb.ej ]
  %i.bcs = load i64, ptr %i.atq, align 8, !tbaa !16 ; 3 uses
  %i.bct = and i64 %i.bcs, 7                      ; 3 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.bct
  %i.bcv = load i8, ptr %i.bcu, align 1, !tbaa !13 ; 2 uses
  %i.bcw = zext nneg i8 %i.bcv to i64
  %i.bcx = lshr i64 %i.bcs, %i.bcw                ; 3 uses
  store i64 %i.bcx, ptr %i.atq, align 8, !tbaa !16
  %i.bcy = sub i8 %i.bcr, %i.bcv                  ; 4 uses
  store i8 %i.bcy, ptr %i.atp, align 8, !tbaa !23
  %i.bcz = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.bct
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !13
  %i.bdb = icmp ne i64 %i.bct, 4
  %i.bdc = and i64 %i.bcs, 3
  %.not502 = icmp eq i64 %i.bdc, 0
  br i1 %.not502, label %bb.ek, label %jpeg2000_bitbuf_get_bits_lsb.exit195

bb.ek:                                            ; preds = %vlc_decode_u_prefix.exit171
  %i.bdd = icmp ult i8 %i.bcy, 5
  br i1 %i.bdd, label %bb.el, label %vlc_decode_u_suffix.exit191.cont

bb.el:                                            ; preds = %bb.ek
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre929 = load i64, ptr %i.atq, align 8, !tbaa !16
  %.pre930 = load i8, ptr %i.atp, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit191.cont

vlc_decode_u_suffix.exit191.cont:                 ; preds = %bb.ek, %bb.el
  %i.bde = phi i8 [ %.pre930, %bb.el ], [ %i.bcy, %bb.ek ]
  %i.bdf = phi i64 [ %.pre929, %bb.el ], [ %i.bcx, %bb.ek ] ; 2 uses
  %i.bdg = zext i1 %i.bdb to i64                  ; 2 uses
  %i.bdh = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.bdg
  %i.bdi = load i32, ptr %i.bdh, align 4, !tbaa !12 ; 2 uses
  %i.bdj = trunc i32 %i.bdi to i8
  %.mask503 = and i32 %i.bdi, 255
  %i.bdk = zext nneg i32 %.mask503 to i64
  %i.bdl = lshr i64 %i.bdf, %i.bdk                ; 3 uses
  store i64 %i.bdl, ptr %i.atq, align 8, !tbaa !16
  %i.bdm = sub i8 %i.bde, %i.bdj                  ; 4 uses
  store i8 %i.bdm, ptr %i.atp, align 8, !tbaa !23
  %31 = trunc i64 %i.bdf to i32
  %32 = and i32 %31, 31
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.bdg
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !12
  %i.bdp = and i32 %32, %i.bdo
  %.fr1251 = freeze i32 %i.bdp                    ; 4 uses
  %i.bdq = icmp ugt i32 %.fr1251, 27
  br i1 %i.bdq, label %bb.em, label %jpeg2000_bitbuf_get_bits_lsb.exit195

bb.em:                                            ; preds = %vlc_decode_u_suffix.exit191.cont
  %i.bdr = icmp ult i8 %i.bdm, 4
  br i1 %i.bdr, label %bb.en, label %jpeg2000_bitbuf_get_bits_lsb.exit195

bb.en:                                            ; preds = %bb.em
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre931 = load i64, ptr %i.atq, align 8, !tbaa !16
  %.pre932 = load i8, ptr %i.atp, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit195

jpeg2000_bitbuf_get_bits_lsb.exit195:             ; preds = %vlc_decode_u_prefix.exit171, %vlc_decode_u_suffix.exit191.cont, %bb.em, %bb.en
  %i.bds = phi i8 [ 4, %bb.em ], [ 4, %bb.en ], [ 0, %vlc_decode_u_suffix.exit191.cont ], [ 0, %vlc_decode_u_prefix.exit171 ] ; 2 uses
  %.0.i19011481154 = phi i32 [ %.fr1251, %bb.em ], [ %.fr1251, %bb.en ], [ %.fr1251, %vlc_decode_u_suffix.exit191.cont ], [ 0, %vlc_decode_u_prefix.exit171 ]
  %i.bdt = phi i8 [ %i.bdm, %bb.em ], [ %.pre932, %bb.en ], [ %i.bdm, %vlc_decode_u_suffix.exit191.cont ], [ %i.bcy, %vlc_decode_u_prefix.exit171 ]
  %i.bdu = phi i64 [ %i.bdl, %bb.em ], [ %.pre931, %bb.en ], [ %i.bdl, %vlc_decode_u_suffix.exit191.cont ], [ %i.bcx, %vlc_decode_u_prefix.exit171 ] ; 2 uses
  %i.bdv = zext nneg i8 %i.bds to i64             ; 2 uses
  %notmask.i194 = shl nsw i64 -1, %i.bdv
  %i.bdw = xor i64 %notmask.i194, -1
  %i.bdx = and i64 %i.bdu, %i.bdw
  %i.bdy = lshr i64 %i.bdu, %i.bdv
  store i64 %i.bdy, ptr %i.atq, align 8, !tbaa !16
  %i.bdz = sub i8 %i.bdt, %i.bds
  store i8 %i.bdz, ptr %i.atp, align 8, !tbaa !23
  %i.bea = trunc nuw nsw i64 %i.bdx to i32
  %i.beb = zext i8 %i.bda to i32
  %i.bec = add nuw nsw i32 %.0.i19011481154, %i.beb
  %i.bed = shl nuw nsw i32 %i.bea, 2
  %i.bee = and i32 %i.bed, 252
  %i.bef = add nuw nsw i32 %i.bec, %i.bee         ; 2 uses
  %spec.select492 = select i1 %i.azb, i32 %i.bef, i32 0
  %spec.select493 = select i1 %i.azb, i32 0, i32 %i.bef
  br label %jpeg2000_bitbuf_get_bits_lsb.exit195.cont

jpeg2000_bitbuf_get_bits_lsb.exit195.cont:        ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit195, %bb.eh, %jpeg2000_bitbuf_get_bits_lsb.exit199
  %.sroa.0386.2 = phi i32 [ %i.bcj, %jpeg2000_bitbuf_get_bits_lsb.exit199 ], [ 0, %bb.eh ], [ %spec.select492, %jpeg2000_bitbuf_get_bits_lsb.exit195 ]
  %.sroa.18.0 = phi i32 [ %i.bco, %jpeg2000_bitbuf_get_bits_lsb.exit199 ], [ 0, %bb.eh ], [ %spec.select493, %jpeg2000_bitbuf_get_bits_lsb.exit195 ]
  %i.beg = load i8, ptr %i.a, align 2, !tbaa !13  ; 2 uses
  %i.beh = icmp ult i8 %i.beg, 9
  br i1 %i.beh, label %switch.lookup, label %bb.eo

switch.lookup:                                    ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit195.cont
  %i.bei = zext nneg i8 %i.beg to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ff_jpeg2000_decode_htj2k.4, i64 %i.bei
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %bb.eo

bb.eo:                                            ; preds = %switch.lookup, %jpeg2000_bitbuf_get_bits_lsb.exit195.cont
  %.sroa.0414.0.i = phi i16 [ %switch.ext, %switch.lookup ], [ 1, %jpeg2000_bitbuf_get_bits_lsb.exit195.cont ]
  %i.bej = icmp ult i8 %i.ayj, 9
  br i1 %i.bej, label %switch.lookup1333, label %bb.ep

switch.lookup1333:                                ; preds = %bb.eo
  %i.bek = zext nneg i8 %i.ayj to i64
  %switch.gep1334 = getelementptr inbounds nuw i8, ptr @switch.table.ff_jpeg2000_decode_htj2k.4, i64 %i.bek
  %switch.load1335 = load i8, ptr %switch.gep1334, align 1
  %switch.ext1336 = zext i8 %switch.load1335 to i16
  br label %bb.ep

bb.ep:                                            ; preds = %switch.lookup1333, %bb.eo
  %.sroa.11.0.i = phi i16 [ %switch.ext1336, %switch.lookup1333 ], [ 1, %bb.eo ]
  %i.bel = load ptr, ptr %i.f, align 8, !tbaa !39 ; 16 uses
  %i.bem = getelementptr inbounds i8, ptr %i.bel, i64 %i.auj
  %i.ben = load i8, ptr %i.bem, align 1, !tbaa !13
  %i.beo = getelementptr inbounds i8, ptr %i.bel, i64 %i.awt
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !13
  %i.beq = getelementptr inbounds i8, ptr %i.bel, i64 %i.aun
  %i.ber = load i8, ptr %i.beq, align 1, !tbaa !13
  %i.bes = getelementptr inbounds i8, ptr %i.bel, i64 %i.awx
  %i.bet = load i8, ptr %i.bes, align 1, !tbaa !13
  %i.beu = icmp sgt i32 %i.aug, 0
  %i.bev = add nsw i32 %i.auh, -1
  %narrow508 = select i1 %i.beu, i32 %i.bev, i32 0
  %i.bew = zext i32 %narrow508 to i64
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bel, i64 %i.bew
  %i.bey = load i8, ptr %i.bex, align 1, !tbaa !13
  %i.bez = icmp sgt i32 %i.awq, 0
  %i.bfa = add nsw i32 %i.awr, -1
  %narrow509 = select i1 %i.bez, i32 %i.bfa, i32 0
  %i.bfb = zext i32 %narrow509 to i64
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bel, i64 %i.bfb
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !13
  %i.bfe = sext i32 %i.auh to i64
  %i.bff = getelementptr i8, ptr %i.bel, i64 %i.bfe
  %i.bfg = getelementptr i8, ptr %i.bff, i64 5
  %i.bfh = load i8, ptr %i.bfg, align 1, !tbaa !13
  %i.bfi = sext i32 %i.awr to i64
  %i.bfj = getelementptr i8, ptr %i.bel, i64 %i.bfi
  %i.bfk = getelementptr i8, ptr %i.bfj, i64 5
  %i.bfl = load i8, ptr %i.bfk, align 1, !tbaa !13
  %i.bfm = tail call i8 @llvm.umax.i8(i8 %i.ben, i8 %i.ber) ; 2 uses
  %i.bfn = tail call i8 @llvm.umax.i8(i8 %i.bfm, i8 %i.bfh)
  %.in745.i = select i1 %i.avq, i8 %i.bfn, i8 %i.bfm ; 2 uses
  %i.bfo = tail call i8 @llvm.umax.i8(i8 %.in745.i, i8 %i.bey)
  %i.bfp = select i1 %i.auw, i8 %i.bfo, i8 %.in745.i
  %i.bfq = tail call i8 @llvm.umax.i8(i8 %i.bep, i8 %i.bet) ; 2 uses
  %i.bfr = tail call i8 @llvm.umax.i8(i8 %i.bfq, i8 %i.bfl)
  %.in746.i = select i1 %i.ayb, i8 %i.bfr, i8 %i.bfq ; 2 uses
  %i.bfs = tail call i8 @llvm.umax.i8(i8 %.in746.i, i8 %i.bfd)
  %i.bft = select i1 %i.axg, i8 %i.bfs, i8 %.in746.i
  %i.bfu = zext i8 %i.bfp to i16
  %i.bfv = add nsw i16 %i.bfu, -1
  %i.bfw = mul nuw nsw i16 %i.bfv, %.sroa.0414.0.i
  %i.bfx = tail call i16 @llvm.smax.i16(i16 %i.bfw, i16 1)
  %i.bfy = zext i8 %i.bft to i16
  %i.bfz = add nsw i16 %i.bfy, -1
  %i.bga = mul nuw nsw i16 %i.bfz, %.sroa.11.0.i
  %i.bgb = tail call i16 @llvm.smax.i16(i16 %i.bga, i16 1)
  %i.bgc = zext nneg i16 %i.bfx to i32
  %i.bgd = add nuw nsw i32 %.sroa.0386.2, %i.bgc  ; 5 uses
  %i.bge = zext nneg i16 %i.bgb to i32
  %i.bgf = add nuw nsw i32 %.sroa.18.0, %i.bge    ; 5 uses
  %i.bgg = icmp sgt i32 %i.bgd, %i.du
  %i.bgh = icmp sgt i32 %i.bgf, %i.du
  %or.cond755.i = select i1 %i.bgg, i1 true, i1 %i.bgh
  br i1 %or.cond755.i, label %jpeg2000_decode_ht_cleanup_segment.exit, label %.preheader525

.preheader525:                                    ; preds = %bb.ep
  %i.bgi = load i8, ptr %i.c, align 2, !tbaa !13
  %i.bgj = zext i8 %i.bgi to i32                  ; 4 uses
  %i.bgk = load i8, ptr %i.atr, align 1, !tbaa !13
  %i.bgl = zext i8 %i.bgk to i32                  ; 4 uses
  %i.bgm = load i8, ptr %i.awc, align 1, !tbaa !13
  %i.bgn = zext i8 %i.bgm to i32
  %i.bgo = mul nuw nsw i32 %i.bgd, %i.bgn         ; 2 uses
  %i.bgp = and i32 %i.bgj, 1                      ; 2 uses
  %i.bgq = sub nsw i32 %i.bgo, %i.bgp             ; 4 uses
  %i.bgr = load i8, ptr %i.ayn, align 1, !tbaa !13
  %i.bgs = zext i8 %i.bgr to i32
  %i.bgt = mul nuw nsw i32 %i.bgf, %i.bgs         ; 2 uses
  %i.bgu = and i32 %i.bgl, 1                      ; 2 uses
  %i.bgv = sub nsw i32 %i.bgt, %i.bgu             ; 4 uses
  %i.bgw = load i8, ptr %i.awg, align 1, !tbaa !13
  %i.bgx = zext i8 %i.bgw to i32
  %i.bgy = mul nuw nsw i32 %i.bgd, %i.bgx         ; 2 uses
  %i.bgz = lshr i32 %i.bgj, 1
  %i.bha = and i32 %i.bgz, 1                      ; 2 uses
  %i.bhb = sub nsw i32 %i.bgy, %i.bha             ; 4 uses
  %i.bhc = load i8, ptr %i.ayr, align 1, !tbaa !13
  %i.bhd = zext i8 %i.bhc to i32
  %i.bhe = mul nuw nsw i32 %i.bgf, %i.bhd         ; 2 uses
  %i.bhf = lshr i32 %i.bgl, 1
  %i.bhg = and i32 %i.bhf, 1                      ; 2 uses
  %i.bhh = sub nsw i32 %i.bhe, %i.bhg             ; 4 uses
  %i.bhi = load i8, ptr %i.awk, align 1, !tbaa !13
  %i.bhj = zext i8 %i.bhi to i32
  %i.bhk = mul nuw nsw i32 %i.bgd, %i.bhj         ; 2 uses
  %i.bhl = lshr i32 %i.bgj, 2
  %i.bhm = and i32 %i.bhl, 1                      ; 2 uses
  %i.bhn = sub nsw i32 %i.bhk, %i.bhm             ; 4 uses
  %i.bho = load i8, ptr %i.ayv, align 1, !tbaa !13
  %i.bhp = zext i8 %i.bho to i32
  %i.bhq = mul nuw nsw i32 %i.bgf, %i.bhp         ; 2 uses
  %i.bhr = lshr i32 %i.bgl, 2
  %i.bhs = and i32 %i.bhr, 1                      ; 2 uses
  %i.bht = sub nsw i32 %i.bhq, %i.bhs             ; 4 uses
  %i.bhu = load i8, ptr %i.awo, align 1, !tbaa !13
  %i.bhv = zext i8 %i.bhu to i32
  %i.bhw = mul nuw nsw i32 %i.bgd, %i.bhv         ; 2 uses
  %i.bhx = lshr i32 %i.bgj, 3
  %i.bhy = and i32 %i.bhx, 1                      ; 2 uses
  %i.bhz = sub nsw i32 %i.bhw, %i.bhy             ; 4 uses
  %i.bia = load i8, ptr %i.ayz, align 1, !tbaa !13
  %i.bib = zext i8 %i.bia to i32
  %i.bic = mul nuw nsw i32 %i.bgf, %i.bib         ; 2 uses
  %i.bid = lshr i32 %i.bgl, 3
  %i.bie = and i32 %i.bid, 1                      ; 2 uses
  %i.bif = sub nsw i32 %i.bic, %i.bie             ; 4 uses
  %i.big = load ptr, ptr %i.g, align 8, !tbaa !37 ; 8 uses
  %i.bih = load i8, ptr %i.d, align 2, !tbaa !13
  %i.bii = zext i8 %i.bih to i32                  ; 4 uses
  %i.bij = and i32 %i.bii, 1
  %i.bik = icmp sgt i32 %i.bgq, 0
  br i1 %i.bik, label %bb.eq, label %jpeg2000_decode_mag_sgn.exit256

bb.eq:                                            ; preds = %.preheader525
  %i.bil = trunc i32 %i.bgq to i8                 ; 2 uses
  %.not.i271 = icmp ule i8 %.sroa.52.3697, %i.bil
  %i.bim = icmp ult i8 %.sroa.52.3697, 32
  %or.cond487 = and i1 %i.bim, %.not.i271
  br i1 %or.cond487, label %.lr.ph.i303, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273

.lr.ph.i303:                                      ; preds = %bb.eq, %bb.es
  %.sroa.0320.35 = phi i32 [ %.sroa.0320.36, %bb.es ], [ %.sroa.0320.3693, %bb.eq ]
  %.sroa.38.35 = phi i32 [ %.sroa.38.36, %bb.es ], [ %.sroa.38.3694, %bb.eq ]
  %i.bin = phi i64 [ %i.bje, %bb.es ], [ %.sroa.84339.3695, %bb.eq ]
  %i.bio = phi i32 [ %i.biz, %bb.es ], [ %.sroa.0320.3693, %bb.eq ] ; 4 uses
  %i.bip = phi i32 [ %i.bja, %bb.es ], [ %.sroa.38.3694, %bb.eq ] ; 2 uses
  %i.biq = phi i8 [ %i.bjg, %bb.es ], [ %.sroa.52.3697, %bb.eq ] ; 2 uses
  %i.bir = icmp eq i32 %i.bip, 255
  %i.bis = icmp ult i32 %i.bio, %i.cl
  br i1 %i.bis, label %bb.er, label %bb.es

end_hunk_2
begin_hunk_3_@ff_jpeg2000_decode_htj2k:bb.a
  %i.bvq = phi i32 [ %i.bvm, %bb.fs ], [ %i.bvf, %.lr.ph.i309.3 ]
  %i.bvr = phi i64 [ %i.bvo, %bb.fs ], [ 255, %.lr.ph.i309.3 ]
  %i.bvs = zext nneg i8 %i.bvg to i64
  %i.bvt = shl nuw nsw i64 %i.bvr, %i.bvs
  %i.bvu = or i64 %i.bvt, %i.bvd                  ; 2 uses
  %i.bvv = select i1 %i.bvh, i8 7, i8 8
  %i.bvw = add nuw nsw i8 %i.bvv, %i.bvg          ; 3 uses
  %i.bvx = icmp samesign ult i8 %i.bvw, 32
  br i1 %i.bvx, label %.lr.ph.i309.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3:   ; preds = %bb.ft, %bb.fr
  %.sroa.0320.19.3 = phi i32 [ %.sroa.0320.14.2, %bb.fr ], [ %.sroa.0320.39.3, %bb.ft ]
  %.sroa.38.19.3 = phi i32 [ %.sroa.38.14.2, %bb.fr ], [ %.sroa.38.39.3, %bb.ft ]
  %.sroa.84339.19.3 = phi i64 [ %.sroa.84339.14.2, %bb.fr ], [ %i.bvu, %bb.ft ] ; 2 uses
  %.sroa.52.19.3 = phi i8 [ %.sroa.52.14.2, %bb.fr ], [ %i.bvw, %bb.ft ]
  %.mask510.3 = and i32 %i.bif, 255
  %i.bvy = zext nneg i32 %.mask510.3 to i64       ; 2 uses
  %notmask.i269.3 = shl nsw i64 -1, %i.bvy
  %i.bvz = xor i64 %notmask.i269.3, -1
  %i.bwa = and i64 %.sroa.84339.19.3, %i.bvz
  %i.bwb = lshr i64 %.sroa.84339.19.3, %i.bvy
  %i.bwc = sub i8 %.sroa.52.19.3, %i.bvb
  %i.bwd = trunc i64 %i.bwa to i32
  %i.bwe = shl nuw i32 %i.buz, %i.bif
  %i.bwf = add nsw i32 %i.bwe, %i.bwd
  br label %jpeg2000_decode_mag_sgn.exit258.3

jpeg2000_decode_mag_sgn.exit258.3:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3, %bb.fq
  %.sroa.0320.14.3 = phi i32 [ %.sroa.0320.19.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ %.sroa.0320.14.2, %bb.fq ] ; 2 uses
  %.sroa.38.14.3 = phi i32 [ %.sroa.38.19.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ %.sroa.38.14.2, %bb.fq ] ; 2 uses
  %.sroa.84339.14.3 = phi i64 [ %i.bwb, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ %.sroa.84339.14.2, %bb.fq ] ; 2 uses
  %.sroa.52.14.3 = phi i8 [ %i.bwc, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ %.sroa.52.14.2, %bb.fq ] ; 2 uses
  %.0.i257.3 = phi i32 [ %i.bwf, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ 0, %bb.fq ] ; 3 uses
  %.not.i225.3 = icmp eq i32 %i.bic, %i.bie
  br i1 %.not.i225.3, label %recover_mag_sgn.exit230, label %ff_clz_c.exit.i229.3

ff_clz_c.exit.i229.3:                             ; preds = %jpeg2000_decode_mag_sgn.exit258.3
  %i.bwg = lshr i32 %.0.i257.3, 1
  %i.bwh = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.bwg, i1 false)
  %i.bwi = trunc nuw nsw i32 %i.bwh to i8
  %i.bwj = or disjoint i64 %i.bpo, 3              ; 2 uses
  %i.bwk = sub nuw nsw i8 33, %i.bwi
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bel, i64 %i.bwj
  store i8 %i.bwk, ptr %i.bwl, align 1, !tbaa !13
  %i.bwm = ashr i32 %.0.i257.3, 1
  %i.bwn = add nsw i32 %i.bwm, 1
  %i.bwo = getelementptr inbounds nuw [4 x i8], ptr %i.big, i64 %i.bwj
  %i.bwp = shl i32 %i.bwn, %i.ats
  %i.bwq = shl i32 %.0.i257.3, 31
  %i.bwr = or i32 %i.bwq, %i.bwp
  %i.bws = or i32 %i.bwr, %i.atu
  store i32 %i.bws, ptr %i.bwo, align 4, !tbaa !12
  br label %recover_mag_sgn.exit230

recover_mag_sgn.exit230:                          ; preds = %ff_clz_c.exit.i229.3, %jpeg2000_decode_mag_sgn.exit258.3
  %i.bwt = add i16 %.3.i698, 2                    ; 3 uses
  %i.bwu = zext i16 %i.bwt to i32                 ; 4 uses
  %i.bwv = add i32 %.neg497, %i.bwu
  %i.bww = icmp slt i32 %i.bwv, %i.em
  %i.bwx = icmp samesign ugt i32 %i.atm, %i.bwu
  %or.cond753.i = select i1 %i.bww, i1 %i.bwx, i1 false
  br i1 %or.cond753.i, label %.lr.ph699, label %.critedge.i, !llvm.loop !29

.critedge.i:                                      ; preds = %recover_mag_sgn.exit230, %.preheader527
  %.sroa.0320.3.lcssa = phi i32 [ %.sroa.0320.2718, %.preheader527 ], [ %.sroa.0320.14.3, %recover_mag_sgn.exit230 ] ; 5 uses
  %.sroa.38.3.lcssa = phi i32 [ %.sroa.38.2719, %.preheader527 ], [ %.sroa.38.14.3, %recover_mag_sgn.exit230 ] ; 5 uses
  %.sroa.84339.3.lcssa = phi i64 [ %.sroa.84339.2720, %.preheader527 ], [ %.sroa.84339.14.3, %recover_mag_sgn.exit230 ] ; 4 uses
  %.sroa.52.3.lcssa = phi i8 [ %.sroa.52.2722, %.preheader527 ], [ %.sroa.52.14.3, %recover_mag_sgn.exit230 ] ; 6 uses
  %.3.i.lcssa = phi i16 [ %.2.i724, %.preheader527 ], [ %i.bwt, %recover_mag_sgn.exit230 ] ; 2 uses
  %.lcssa537 = phi i32 [ %i.atw, %.preheader527 ], [ %i.bwu, %recover_mag_sgn.exit230 ] ; 4 uses
  br i1 %.not.i, label %bb.gw, label %bb.fu

bb.fu:                                            ; preds = %.critedge.i
  %i.bwy = load ptr, ptr %i.e, align 8, !tbaa !39 ; 9 uses
  %i.bwz = add nsw i32 %.lcssa537, %i.dy          ; 2 uses
  %i.bxa = shl nsw i32 %i.bwz, 2                  ; 6 uses
  %i.bxb = or disjoint i32 %i.bxa, 1
  %i.bxc = sext i32 %i.bxb to i64                 ; 2 uses
  %i.bxd = getelementptr inbounds i8, ptr %i.bwy, i64 %i.bxc
  %i.bxe = load i8, ptr %i.bxd, align 1, !tbaa !13
  %i.bxf = or disjoint i32 %i.bxa, 3
  %i.bxg = sext i32 %i.bxf to i64                 ; 2 uses
  %i.bxh = getelementptr inbounds i8, ptr %i.bwy, i64 %i.bxg
  %i.bxi = load i8, ptr %i.bxh, align 1, !tbaa !13
  %i.bxj = zext i8 %i.bxi to i16
  %i.bxk = shl nuw nsw i16 %i.bxj, 2
  %i.bxl = zext i8 %i.bxe to i16
  %i.bxm = add nuw nsw i16 %i.bxk, %i.bxl         ; 2 uses
  %i.bxn = zext i16 %.3.i.lcssa to i64
  %i.bxo = mul i64 %i.atk, %i.bxn
  %i.bxp = icmp ugt i64 %i.bxo, %i.atj            ; 2 uses
  br i1 %i.bxp, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.bxq = sext i32 %i.bxa to i64
  %i.bxr = getelementptr i8, ptr %i.bwy, i64 %i.bxq
  %i.bxs = getelementptr i8, ptr %i.bxr, i64 -1
  %i.bxt = load i8, ptr %i.bxs, align 1, !tbaa !13
  %i.bxu = zext i8 %i.bxt to i16
  %i.bxv = or i16 %i.bxm, %i.bxu
  %i.bxw = shl nuw nsw i32 %.lcssa537, 2
  %i.bxx = zext nneg i32 %i.bxw to i64
  %i.bxy = getelementptr i8, ptr %i.bwy, i64 %i.bxx ; 2 uses
  %i.bxz = getelementptr i8, ptr %i.bxy, i64 -1
  %i.bya = load i8, ptr %i.bxz, align 1, !tbaa !13
  %i.byb = getelementptr i8, ptr %i.bxy, i64 -2
  %i.byc = load i8, ptr %i.byb, align 1, !tbaa !13
  %i.byd = or i8 %i.byc, %i.bya
  %i.bye = zext i8 %i.byd to i16
  %i.byf = shl nuw nsw i16 %i.bye, 1
  %i.byg = add nuw nsw i16 %i.byf, %i.bxv
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.2662.i = phi i16 [ %i.bxm, %bb.fu ], [ %i.byg, %bb.fv ] ; 2 uses
  %i.byh = add nuw nsw i32 %.lcssa537, 1          ; 2 uses
  %i.byi = zext nneg i32 %i.byh to i64
  %i.byj = mul i64 %i.atk, %i.byi
  %i.byk = icmp ugt i64 %i.byj, %i.atj            ; 2 uses
  br i1 %i.byk, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.byl = sext i32 %i.bxa to i64
  %i.bym = getelementptr i8, ptr %i.bwy, i64 %i.byl
  %i.byn = getelementptr i8, ptr %i.bym, i64 5
  %i.byo = load i8, ptr %i.byn, align 1, !tbaa !13
  %i.byp = zext i8 %i.byo to i16
  %i.byq = shl nuw nsw i16 %i.byp, 2
  %i.byr = or i16 %i.byq, %.2662.i
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.3663.i = phi i16 [ %.2662.i, %bb.fw ], [ %i.byr, %bb.fx ]
  call fastcc void @jpeg2000_decode_sig_emb(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dec_cxt_vlc_table1, ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i8 noundef zeroext 0, i16 noundef zeroext %.3663.i, i32 noundef range(i32 2, 0) %i.ar, i32 noundef %i.cl)
  %i.bys = load i8, ptr %i.a, align 2, !tbaa !13  ; 6 uses
  %i.byt = shl nuw nsw i32 %.lcssa537, 2
  %i.byu = zext nneg i32 %i.byt to i64            ; 6 uses
  %i.byv = and i8 %i.bys, 1
  %i.byw = getelementptr inbounds nuw i8, ptr %i.bwy, i64 %i.byu ; 2 uses
  store i8 %i.byv, ptr %i.byw, align 1, !tbaa !13
  %i.byx = lshr i8 %i.bys, 1
  %i.byy = and i8 %i.byx, 1
  %i.byz = or disjoint i64 %i.byu, 1              ; 3 uses
  %i.bza = getelementptr inbounds nuw i8, ptr %i.bwy, i64 %i.byz ; 2 uses
  store i8 %i.byy, ptr %i.bza, align 1, !tbaa !13
  %i.bzb = lshr i8 %i.bys, 2
  %i.bzc = and i8 %i.bzb, 1
  %i.bzd = or disjoint i64 %i.byu, 2              ; 3 uses
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bwy, i64 %i.bzd ; 2 uses
  store i8 %i.bzc, ptr %i.bze, align 1, !tbaa !13
  %i.bzf = lshr i8 %i.bys, 3
  %i.bzg = and i8 %i.bzf, 1
  %i.bzh = or disjoint i64 %i.byu, 3              ; 3 uses
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bwy, i64 %i.bzh ; 2 uses
  store i8 %i.bzg, ptr %i.bzi, align 1, !tbaa !13
  %i.bzj = load i8, ptr %i.b, align 2, !tbaa !13
  %i.bzk = icmp eq i8 %i.bzj, 1
  br i1 %i.bzk, label %bb.fz, label %bb.gf

bb.fz:                                            ; preds = %bb.fy
  %i.bzl = load i8, ptr %i.atp, align 8, !tbaa !23 ; 2 uses
  %i.bzm = icmp ult i8 %i.bzl, 3
  br i1 %i.bzm, label %bb.ga, label %vlc_decode_u_prefix.exit172

bb.ga:                                            ; preds = %bb.fz
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre944 = load i8, ptr %i.atp, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit172

vlc_decode_u_prefix.exit172:                      ; preds = %bb.fz, %bb.ga
  %i.bzn = phi i8 [ %i.bzl, %bb.fz ], [ %.pre944, %bb.ga ]
  %i.bzo = load i64, ptr %i.atq, align 8, !tbaa !16 ; 3 uses
  %i.bzp = and i64 %i.bzo, 7                      ; 3 uses
  %i.bzq = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.bzp
  %i.bzr = load i8, ptr %i.bzq, align 1, !tbaa !13 ; 2 uses
  %i.bzs = zext nneg i8 %i.bzr to i64
  %i.bzt = lshr i64 %i.bzo, %i.bzs                ; 3 uses
  store i64 %i.bzt, ptr %i.atq, align 8, !tbaa !16
  %i.bzu = sub i8 %i.bzn, %i.bzr                  ; 4 uses
  store i8 %i.bzu, ptr %i.atp, align 8, !tbaa !23
  %i.bzv = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.bzp
  %i.bzw = load i8, ptr %i.bzv, align 1, !tbaa !13
  %i.bzx = icmp ne i64 %i.bzp, 4
  %i.bzy = and i64 %i.bzo, 3
  %.not498 = icmp eq i64 %i.bzy, 0
  br i1 %.not498, label %bb.gb, label %jpeg2000_bitbuf_get_bits_lsb.exit

bb.gb:                                            ; preds = %vlc_decode_u_prefix.exit172
  %i.bzz = icmp ult i8 %i.bzu, 5
  br i1 %i.bzz, label %bb.gc, label %vlc_decode_u_suffix.exit193

bb.gc:                                            ; preds = %bb.gb
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre945 = load i64, ptr %i.atq, align 8, !tbaa !16
  %.pre946 = load i8, ptr %i.atp, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit193

vlc_decode_u_suffix.exit193:                      ; preds = %bb.gb, %bb.gc
  %i.caa = phi i8 [ %i.bzu, %bb.gb ], [ %.pre946, %bb.gc ]
  %i.cab = phi i64 [ %i.bzt, %bb.gb ], [ %.pre945, %bb.gc ] ; 2 uses
  %i.cac = zext i1 %i.bzx to i64                  ; 2 uses
  %i.cad = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.cac
  %i.cae = load i32, ptr %i.cad, align 4, !tbaa !12 ; 2 uses
  %i.caf = trunc i32 %i.cae to i8
  %.mask499 = and i32 %i.cae, 255
  %i.cag = zext nneg i32 %.mask499 to i64
  %i.cah = lshr i64 %i.cab, %i.cag                ; 3 uses
  store i64 %i.cah, ptr %i.atq, align 8, !tbaa !16
  %i.cai = sub i8 %i.caa, %i.caf                  ; 4 uses
  store i8 %i.cai, ptr %i.atp, align 8, !tbaa !23
  %33 = trunc i64 %i.cab to i32
  %34 = and i32 %33, 31
  %i.caj = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.cac
  %i.cak = load i32, ptr %i.caj, align 4, !tbaa !12
  %i.cal = and i32 %34, %i.cak
  %.fr500 = freeze i32 %i.cal                     ; 4 uses
  %i.cam = icmp ugt i32 %.fr500, 27
  br i1 %i.cam, label %bb.gd, label %jpeg2000_bitbuf_get_bits_lsb.exit

bb.gd:                                            ; preds = %vlc_decode_u_suffix.exit193
  %i.can = icmp ult i8 %i.cai, 4
  br i1 %i.can, label %bb.ge, label %jpeg2000_bitbuf_get_bits_lsb.exit

bb.ge:                                            ; preds = %bb.gd
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre947 = load i64, ptr %i.atq, align 8, !tbaa !16
  %.pre948 = load i8, ptr %i.atp, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit

jpeg2000_bitbuf_get_bits_lsb.exit:                ; preds = %vlc_decode_u_prefix.exit172, %vlc_decode_u_suffix.exit193, %bb.gd, %bb.ge
  %i.cao = phi i8 [ %.pre948, %bb.ge ], [ %i.cai, %bb.gd ], [ %i.cai, %vlc_decode_u_suffix.exit193 ], [ %i.bzu, %vlc_decode_u_prefix.exit172 ]
  %i.cap = phi i64 [ %.pre947, %bb.ge ], [ %i.cah, %bb.gd ], [ %i.cah, %vlc_decode_u_suffix.exit193 ], [ %i.bzt, %vlc_decode_u_prefix.exit172 ] ; 2 uses
  %i.caq = phi i8 [ 4, %bb.ge ], [ 4, %bb.gd ], [ 0, %vlc_decode_u_suffix.exit193 ], [ 0, %vlc_decode_u_prefix.exit172 ] ; 2 uses
  %.0.i192459463 = phi i32 [ %.fr500, %bb.ge ], [ %.fr500, %bb.gd ], [ %.fr500, %vlc_decode_u_suffix.exit193 ], [ 0, %vlc_decode_u_prefix.exit172 ]
  %i.car = zext nneg i8 %i.caq to i64             ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.car
  %i.cas = xor i64 %notmask.i, -1
  %i.cat = and i64 %i.cap, %i.cas
  %i.cau = lshr i64 %i.cap, %i.car
  store i64 %i.cau, ptr %i.atq, align 8, !tbaa !16
  %i.cav = sub i8 %i.cao, %i.caq
  store i8 %i.cav, ptr %i.atp, align 8, !tbaa !23
  %i.caw = trunc nuw nsw i64 %i.cat to i32
  %i.cax = zext i8 %i.bzw to i32
  %i.cay = add nuw nsw i32 %.0.i192459463, %i.cax
  %i.caz = shl nuw nsw i32 %i.caw, 2
  %i.cba = and i32 %i.caz, 252
  %i.cbb = add nuw nsw i32 %i.cay, %i.cba
  br label %bb.gf

bb.gf:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit, %bb.fy
  %.sroa.0386.1 = phi i32 [ %i.cbb, %jpeg2000_bitbuf_get_bits_lsb.exit ], [ 0, %bb.fy ]
  %i.cbc = icmp ult i8 %i.bys, 9
  br i1 %i.cbc, label %switch.lookup1337, label %bb.gg

switch.lookup1337:                                ; preds = %bb.gf
  %i.cbd = zext nneg i8 %i.bys to i64
  %switch.gep1338 = getelementptr inbounds nuw i8, ptr @switch.table.ff_jpeg2000_decode_htj2k.4, i64 %i.cbd
  %switch.load1339 = load i8, ptr %switch.gep1338, align 1
  %switch.ext1340 = zext i8 %switch.load1339 to i16
  br label %bb.gg

bb.gg:                                            ; preds = %switch.lookup1337, %bb.gf
  %.sroa.0414.1.i = phi i16 [ %switch.ext1340, %switch.lookup1337 ], [ 1, %bb.gf ]
  %i.cbe = load ptr, ptr %i.f, align 8, !tbaa !39 ; 8 uses
  %i.cbf = getelementptr inbounds i8, ptr %i.cbe, i64 %i.bxc
  %i.cbg = load i8, ptr %i.cbf, align 1, !tbaa !13
  %i.cbh = getelementptr inbounds i8, ptr %i.cbe, i64 %i.bxg
  %i.cbi = load i8, ptr %i.cbh, align 1, !tbaa !13
  %i.cbj = icmp sgt i32 %i.bwz, 0
  %i.cbk = add nsw i32 %i.bxa, -1
  %narrow = select i1 %i.cbj, i32 %i.cbk, i32 0
  %i.cbl = zext i32 %narrow to i64
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbe, i64 %i.cbl
  %i.cbn = load i8, ptr %i.cbm, align 1, !tbaa !13
  %i.cbo = sext i32 %i.bxa to i64
  %i.cbp = getelementptr i8, ptr %i.cbe, i64 %i.cbo
  %i.cbq = getelementptr i8, ptr %i.cbp, i64 5
  %i.cbr = load i8, ptr %i.cbq, align 1, !tbaa !13
  %i.cbs = tail call i8 @llvm.umax.i8(i8 %i.cbg, i8 %i.cbi) ; 2 uses
  %i.cbt = tail call i8 @llvm.umax.i8(i8 %i.cbs, i8 %i.cbr)
  %.in.i = select i1 %i.byk, i8 %i.cbt, i8 %i.cbs ; 2 uses
  %i.cbu = tail call i8 @llvm.umax.i8(i8 %.in.i, i8 %i.cbn)
  %i.cbv = select i1 %i.bxp, i8 %i.cbu, i8 %.in.i
  %i.cbw = zext i8 %i.cbv to i16
  %i.cbx = add nsw i16 %i.cbw, -1
  %i.cby = mul nuw nsw i16 %i.cbx, %.sroa.0414.1.i
  %i.cbz = tail call i16 @llvm.smax.i16(i16 %i.cby, i16 1)
  %i.cca = zext nneg i16 %i.cbz to i32
  %i.ccb = add nuw nsw i32 %.sroa.0386.1, %i.cca  ; 5 uses
  %i.ccc = icmp sgt i32 %i.ccb, %i.du
  br i1 %i.ccc, label %jpeg2000_decode_ht_cleanup_segment.exit, label %.preheader526

.preheader526:                                    ; preds = %bb.gg
  %i.ccd = load i8, ptr %i.c, align 2, !tbaa !13
  %i.cce = zext i8 %i.ccd to i32                  ; 4 uses
  %i.ccf = load i8, ptr %i.byw, align 1, !tbaa !13
  %i.ccg = zext i8 %i.ccf to i32
  %i.cch = mul nsw i32 %i.ccb, %i.ccg             ; 2 uses
  %i.cci = and i32 %i.cce, 1                      ; 2 uses
  %i.ccj = sub nsw i32 %i.cch, %i.cci             ; 4 uses
  %i.cck = load i8, ptr %i.bza, align 1, !tbaa !13
  %i.ccl = zext i8 %i.cck to i32
  %i.ccm = mul nsw i32 %i.ccb, %i.ccl             ; 2 uses
  %i.ccn = lshr i32 %i.cce, 1
  %i.cco = and i32 %i.ccn, 1                      ; 2 uses
  %i.ccp = sub nsw i32 %i.ccm, %i.cco             ; 4 uses
  %i.ccq = load i8, ptr %i.bze, align 1, !tbaa !13
  %i.ccr = zext i8 %i.ccq to i32
  %i.ccs = mul nsw i32 %i.ccb, %i.ccr             ; 2 uses
  %i.cct = lshr i32 %i.cce, 2
  %i.ccu = and i32 %i.cct, 1                      ; 2 uses
  %i.ccv = sub nsw i32 %i.ccs, %i.ccu             ; 4 uses
  %i.ccw = load i8, ptr %i.bzi, align 1, !tbaa !13
  %i.ccx = zext i8 %i.ccw to i32
  %i.ccy = mul nsw i32 %i.ccb, %i.ccx             ; 2 uses
  %i.ccz = lshr i32 %i.cce, 3
  %i.cda = and i32 %i.ccz, 1                      ; 2 uses
  %i.cdb = sub nsw i32 %i.ccy, %i.cda             ; 4 uses
  %i.cdc = load ptr, ptr %i.g, align 8, !tbaa !37 ; 4 uses
  %i.cdd = load i8, ptr %i.d, align 2, !tbaa !13
  %i.cde = zext i8 %i.cdd to i32                  ; 4 uses
  %i.cdf = and i32 %i.cde, 1
  %i.cdg = icmp sgt i32 %i.ccj, 0
  br i1 %i.cdg, label %bb.gh, label %jpeg2000_decode_mag_sgn.exit254

bb.gh:                                            ; preds = %.preheader526
  %i.cdh = trunc i32 %i.ccj to i8                 ; 2 uses
  %.not.i274 = icmp ule i8 %.sroa.52.3.lcssa, %i.cdh
  %i.cdi = icmp ult i8 %.sroa.52.3.lcssa, 32
  %or.cond489 = and i1 %i.cdi, %.not.i274
  br i1 %or.cond489, label %.lr.ph.i315, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit276

.lr.ph.i315:                                      ; preds = %bb.gh, %bb.gj
  %.sroa.0320.41 = phi i32 [ %.sroa.0320.42, %bb.gj ], [ %.sroa.0320.3.lcssa, %bb.gh ]
  %.sroa.38.41 = phi i32 [ %.sroa.38.42, %bb.gj ], [ %.sroa.38.3.lcssa, %bb.gh ]
  %i.cdj = phi i64 [ %i.cea, %bb.gj ], [ %.sroa.84339.3.lcssa, %bb.gh ]
  %i.cdk = phi i32 [ %i.cdv, %bb.gj ], [ %.sroa.0320.3.lcssa, %bb.gh ] ; 4 uses
  %i.cdl = phi i32 [ %i.cdw, %bb.gj ], [ %.sroa.38.3.lcssa, %bb.gh ] ; 2 uses
  %i.cdm = phi i8 [ %i.cec, %bb.gj ], [ %.sroa.52.3.lcssa, %bb.gh ] ; 2 uses
  %i.cdn = icmp eq i32 %i.cdl, 255
  %i.cdo = icmp ult i32 %i.cdk, %i.cl
  br i1 %i.cdo, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %.lr.ph.i315
  %i.cdp = sext i32 %i.cdk to i64
  %i.cdq = getelementptr inbounds i8, ptr %i.bc, i64 %i.cdp
  %i.cdr = load i8, ptr %i.cdq, align 1, !tbaa !13 ; 2 uses
  %i.cds = zext i8 %i.cdr to i32                  ; 2 uses
  %i.cdt = add nuw nsw i32 %i.cdk, 1              ; 2 uses
  %i.cdu = zext i8 %i.cdr to i64
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph.i315
  %.sroa.0320.42 = phi i32 [ %i.cdt, %bb.gi ], [ %.sroa.0320.41, %.lr.ph.i315 ] ; 2 uses
  %.sroa.38.42 = phi i32 [ %i.cds, %bb.gi ], [ %.sroa.38.41, %.lr.ph.i315 ] ; 2 uses
  %i.cdv = phi i32 [ %i.cdt, %bb.gi ], [ %i.cdk, %.lr.ph.i315 ]
  %i.cdw = phi i32 [ %i.cds, %bb.gi ], [ %i.cdl, %.lr.ph.i315 ]
  %i.cdx = phi i64 [ %i.cdu, %bb.gi ], [ 255, %.lr.ph.i315 ]
  %i.cdy = zext nneg i8 %i.cdm to i64
  %i.cdz = shl nuw nsw i64 %i.cdx, %i.cdy
  %i.cea = or i64 %i.cdz, %i.cdj                  ; 2 uses
  %i.ceb = select i1 %i.cdn, i8 7, i8 8
  %i.cec = add nuw nsw i8 %i.ceb, %i.cdm          ; 3 uses
  %i.ced = icmp samesign ult i8 %i.cec, 32
  br i1 %i.ced, label %.lr.ph.i315, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit276, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit276:     ; preds = %bb.gj, %bb.gh
  %.sroa.0320.21 = phi i32 [ %.sroa.0320.3.lcssa, %bb.gh ], [ %.sroa.0320.42, %bb.gj ]
  %.sroa.38.21 = phi i32 [ %.sroa.38.3.lcssa, %bb.gh ], [ %.sroa.38.42, %bb.gj ]
  %.sroa.84339.21 = phi i64 [ %.sroa.84339.3.lcssa, %bb.gh ], [ %i.cea, %bb.gj ] ; 2 uses
  %.sroa.52.21 = phi i8 [ %.sroa.52.3.lcssa, %bb.gh ], [ %i.cec, %bb.gj ]
  %.mask501 = and i32 %i.ccj, 255
  %i.cee = zext nneg i32 %.mask501 to i64         ; 2 uses
  %notmask.i275 = shl nsw i64 -1, %i.cee
  %i.cef = xor i64 %notmask.i275, -1
  %i.ceg = and i64 %.sroa.84339.21, %i.cef
  %i.ceh = lshr i64 %.sroa.84339.21, %i.cee
  %i.cei = sub i8 %.sroa.52.21, %i.cdh
  %i.cej = trunc i64 %i.ceg to i32
  %i.cek = shl nuw i32 %i.cdf, %i.ccj
  %i.cel = add nsw i32 %i.cek, %i.cej
  br label %jpeg2000_decode_mag_sgn.exit254

jpeg2000_decode_mag_sgn.exit254:                  ; preds = %.preheader526, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276
  %.sroa.0320.12 = phi i32 [ %.sroa.0320.21, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276 ], [ %.sroa.0320.3.lcssa, %.preheader526 ] ; 4 uses
  %.sroa.38.12 = phi i32 [ %.sroa.38.21, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276 ], [ %.sroa.38.3.lcssa, %.preheader526 ] ; 4 uses
  %.sroa.84339.12 = phi i64 [ %i.ceh, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276 ], [ %.sroa.84339.3.lcssa, %.preheader526 ] ; 3 uses
  %.sroa.52.12 = phi i8 [ %i.cei, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276 ], [ %.sroa.52.3.lcssa, %.preheader526 ] ; 5 uses
  %.0.i253 = phi i32 [ %i.cel, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276 ], [ 0, %.preheader526 ] ; 3 uses
  %.not.i239 = icmp eq i32 %i.cch, %i.cci
  br i1 %.not.i239, label %bb.gk, label %ff_clz_c.exit.i243

ff_clz_c.exit.i243:                               ; preds = %jpeg2000_decode_mag_sgn.exit254
  %i.cem = lshr i32 %.0.i253, 1
  %i.cen = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.cem, i1 false)
  %i.ceo = trunc nuw nsw i32 %i.cen to i8
  %i.cep = sub nuw nsw i8 33, %i.ceo
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cbe, i64 %i.byu
  store i8 %i.cep, ptr %i.ceq, align 1, !tbaa !13
  %i.cer = ashr i32 %.0.i253, 1
  %i.ces = add nsw i32 %i.cer, 1
  %i.cet = getelementptr inbounds nuw [4 x i8], ptr %i.cdc, i64 %i.byu
  %i.ceu = shl i32 %i.ces, %i.ats
  %i.cev = shl i32 %.0.i253, 31
  %i.cew = or i32 %i.cev, %i.ceu
  %i.cex = or i32 %i.cew, %i.atu
  store i32 %i.cex, ptr %i.cet, align 4, !tbaa !12
  br label %bb.gk

bb.gk:                                            ; preds = %ff_clz_c.exit.i243, %jpeg2000_decode_mag_sgn.exit254
  %i.cey = lshr i32 %i.cde, 1
end_hunk_3
begin_hunk_4_@jpeg2000_decode_sigprop_segment:bb.a
  %i.vx = phi i32 [ %i.vh, %bb.bl ], [ %i.vt, %bb.bn ], [ 0, %bb.bm ] ; 2 uses
  %i.vy = lshr i32 %i.vx, 1
  %i.vz = add i32 %i.vw, -1
  %i.wa = shl i32 %i.vx, 31
  %i.wb = load i32, ptr %gep122.i.us.3.2, align 4, !tbaa !12
  %i.wc = or i32 %i.wb, %i.wa
  store i32 %i.wc, ptr %gep122.i.us.3.2, align 4, !tbaa !12
  br label %._crit_edge99.i.us.2

._crit_edge99.i.us.2:                             ; preds = %jpeg2000_peek_bit.exit86.i.us.3.2, %bb.bk
  %i.wd = phi i32 [ %i.vv, %jpeg2000_peek_bit.exit86.i.us.3.2 ], [ %i.vg, %bb.bk ] ; 6 uses
  %.sink.i85.i20.us.3.2 = phi i32 [ %.sink.i85.i19.us.3.2, %jpeg2000_peek_bit.exit86.i.us.3.2 ], [ %.sink.i85.i20.us.2.2, %bb.bk ] ; 3 uses
  %i.we = phi i32 [ %i.vy, %jpeg2000_peek_bit.exit86.i.us.3.2 ], [ %i.vh, %bb.bk ] ; 2 uses
  %i.wf = phi i32 [ %i.vz, %jpeg2000_peek_bit.exit86.i.us.3.2 ], [ %i.vi, %bb.bk ] ; 3 uses
  %indvars.iv.next114.i.us.2 = or disjoint i64 %indvars.iv95, 3 ; 2 uses
  %invariant.gep100.i.us.3 = getelementptr i8, ptr %7, i64 %indvars.iv.next114.i.us.2 ; 4 uses
  %invariant.gep121.i.us.3 = getelementptr [4 x i8], ptr %6, i64 %indvars.iv.next114.i.us.2 ; 4 uses
  %gep101.i.us.389 = getelementptr i8, ptr %invariant.gep100.i.us.3, i64 %i.o
  %i.wg = getelementptr inbounds nuw i8, ptr %gep101.i.us.389, i64 1
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !13
  %i.wi = and i8 %i.wh, 8
  %.not.i.us.390 = icmp eq i8 %i.wi, 0
  br i1 %.not.i.us.390, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge99.i.us.2
  %gep122.i.us.391 = getelementptr [4 x i8], ptr %invariant.gep121.i.us.3, i64 %i.n ; 2 uses
  %i.wj = icmp eq i32 %i.wf, 0
  br i1 %i.wj, label %bb.bp, label %jpeg2000_peek_bit.exit86.i.us.393

bb.bp:                                            ; preds = %bb.bo
  %i.wk = icmp eq i32 %.sink.i85.i20.us.3.2, 255
  %i.wl = select i1 %i.wk, i32 7, i32 8           ; 2 uses
  %i.wm = icmp ult i32 %i.wd, %4
  br i1 %i.wm, label %bb.bq, label %jpeg2000_peek_bit.exit86.i.us.393

bb.bq:                                            ; preds = %bb.bp
  %i.wn = sext i32 %i.wd to i64
  %i.wo = getelementptr inbounds i8, ptr %3, i64 %i.wn
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !13
  %i.wq = zext i8 %i.wp to i32                    ; 2 uses
  %i.wr = add nuw nsw i32 %i.wd, 1
  br label %jpeg2000_peek_bit.exit86.i.us.393

jpeg2000_peek_bit.exit86.i.us.393:                ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.ws = phi i32 [ %i.wd, %bb.bo ], [ %i.wr, %bb.bq ], [ %i.wd, %bb.bp ]
  %.sink.i85.i19.us.392 = phi i32 [ %.sink.i85.i20.us.3.2, %bb.bo ], [ %i.wq, %bb.bq ], [ 0, %bb.bp ]
  %i.wt = phi i32 [ %i.wf, %bb.bo ], [ %i.wl, %bb.bq ], [ %i.wl, %bb.bp ]
  %i.wu = phi i32 [ %i.we, %bb.bo ], [ %i.wq, %bb.bq ], [ 0, %bb.bp ] ; 2 uses
  %i.wv = lshr i32 %i.wu, 1
  %i.ww = add i32 %i.wt, -1
  %i.wx = shl i32 %i.wu, 31
  %i.wy = load i32, ptr %gep122.i.us.391, align 4, !tbaa !12
  %i.wz = or i32 %i.wy, %i.wx
  store i32 %i.wz, ptr %gep122.i.us.391, align 4, !tbaa !12
  br label %bb.br

bb.br:                                            ; preds = %jpeg2000_peek_bit.exit86.i.us.393, %._crit_edge99.i.us.2
  %i.xa = phi i32 [ %i.ws, %jpeg2000_peek_bit.exit86.i.us.393 ], [ %i.wd, %._crit_edge99.i.us.2 ] ; 6 uses
  %.sink.i85.i20.us.394 = phi i32 [ %.sink.i85.i19.us.392, %jpeg2000_peek_bit.exit86.i.us.393 ], [ %.sink.i85.i20.us.3.2, %._crit_edge99.i.us.2 ] ; 3 uses
  %i.xb = phi i32 [ %i.wv, %jpeg2000_peek_bit.exit86.i.us.393 ], [ %i.we, %._crit_edge99.i.us.2 ] ; 2 uses
  %i.xc = phi i32 [ %i.ww, %jpeg2000_peek_bit.exit86.i.us.393 ], [ %i.wf, %._crit_edge99.i.us.2 ] ; 3 uses
  %gep101.i.us.1.3 = getelementptr i8, ptr %invariant.gep100.i.us.3, i64 %i.z
  %i.xd = getelementptr inbounds nuw i8, ptr %gep101.i.us.1.3, i64 1
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !13
  %i.xf = and i8 %i.xe, 8
  %.not.i.us.1.3 = icmp eq i8 %i.xf, 0
  br i1 %.not.i.us.1.3, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %gep122.i.us.1.3 = getelementptr [4 x i8], ptr %invariant.gep121.i.us.3, i64 %i.o ; 2 uses
  %i.xg = icmp eq i32 %i.xc, 0
  br i1 %i.xg, label %bb.bt, label %jpeg2000_peek_bit.exit86.i.us.1.3

bb.bt:                                            ; preds = %bb.bs
  %i.xh = icmp eq i32 %.sink.i85.i20.us.394, 255
  %i.xi = select i1 %i.xh, i32 7, i32 8           ; 2 uses
  %i.xj = icmp ult i32 %i.xa, %4
  br i1 %i.xj, label %bb.bu, label %jpeg2000_peek_bit.exit86.i.us.1.3

bb.bu:                                            ; preds = %bb.bt
  %i.xk = sext i32 %i.xa to i64
  %i.xl = getelementptr inbounds i8, ptr %3, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !13
  %i.xn = zext i8 %i.xm to i32                    ; 2 uses
  %i.xo = add nuw nsw i32 %i.xa, 1
  br label %jpeg2000_peek_bit.exit86.i.us.1.3

jpeg2000_peek_bit.exit86.i.us.1.3:                ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.xp = phi i32 [ %i.xa, %bb.bs ], [ %i.xo, %bb.bu ], [ %i.xa, %bb.bt ]
  %.sink.i85.i19.us.1.3 = phi i32 [ %.sink.i85.i20.us.394, %bb.bs ], [ %i.xn, %bb.bu ], [ 0, %bb.bt ]
  %i.xq = phi i32 [ %i.xc, %bb.bs ], [ %i.xi, %bb.bu ], [ %i.xi, %bb.bt ]
  %i.xr = phi i32 [ %i.xb, %bb.bs ], [ %i.xn, %bb.bu ], [ 0, %bb.bt ] ; 2 uses
  %i.xs = lshr i32 %i.xr, 1
  %i.xt = add i32 %i.xq, -1
  %i.xu = shl i32 %i.xr, 31
  %i.xv = load i32, ptr %gep122.i.us.1.3, align 4, !tbaa !12
  %i.xw = or i32 %i.xv, %i.xu
  store i32 %i.xw, ptr %gep122.i.us.1.3, align 4, !tbaa !12
  br label %bb.bv

bb.bv:                                            ; preds = %jpeg2000_peek_bit.exit86.i.us.1.3, %bb.br
  %i.xx = phi i32 [ %i.xp, %jpeg2000_peek_bit.exit86.i.us.1.3 ], [ %i.xa, %bb.br ] ; 6 uses
  %.sink.i85.i20.us.1.3 = phi i32 [ %.sink.i85.i19.us.1.3, %jpeg2000_peek_bit.exit86.i.us.1.3 ], [ %.sink.i85.i20.us.394, %bb.br ] ; 3 uses
  %i.xy = phi i32 [ %i.xs, %jpeg2000_peek_bit.exit86.i.us.1.3 ], [ %i.xb, %bb.br ] ; 2 uses
  %i.xz = phi i32 [ %i.xt, %jpeg2000_peek_bit.exit86.i.us.1.3 ], [ %i.xc, %bb.br ] ; 3 uses
  %gep101.i.us.2.3 = getelementptr i8, ptr %invariant.gep100.i.us.3, i64 %i.ak
  %i.ya = getelementptr inbounds nuw i8, ptr %gep101.i.us.2.3, i64 1
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !13
  %i.yc = and i8 %i.yb, 8
  %.not.i.us.2.3 = icmp eq i8 %i.yc, 0
  br i1 %.not.i.us.2.3, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %gep122.i.us.2.3 = getelementptr [4 x i8], ptr %invariant.gep121.i.us.3, i64 %i.z ; 2 uses
  %i.yd = icmp eq i32 %i.xz, 0
  br i1 %i.yd, label %bb.bx, label %jpeg2000_peek_bit.exit86.i.us.2.3

bb.bx:                                            ; preds = %bb.bw
  %i.ye = icmp eq i32 %.sink.i85.i20.us.1.3, 255
  %i.yf = select i1 %i.ye, i32 7, i32 8           ; 2 uses
  %i.yg = icmp ult i32 %i.xx, %4
  br i1 %i.yg, label %bb.by, label %jpeg2000_peek_bit.exit86.i.us.2.3

bb.by:                                            ; preds = %bb.bx
  %i.yh = sext i32 %i.xx to i64
  %i.yi = getelementptr inbounds i8, ptr %3, i64 %i.yh
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !13
  %i.yk = zext i8 %i.yj to i32                    ; 2 uses
  %i.yl = add nuw nsw i32 %i.xx, 1
  br label %jpeg2000_peek_bit.exit86.i.us.2.3

jpeg2000_peek_bit.exit86.i.us.2.3:                ; preds = %bb.by, %bb.bx, %bb.bw
  %i.ym = phi i32 [ %i.xx, %bb.bw ], [ %i.yl, %bb.by ], [ %i.xx, %bb.bx ]
  %.sink.i85.i19.us.2.3 = phi i32 [ %.sink.i85.i20.us.1.3, %bb.bw ], [ %i.yk, %bb.by ], [ 0, %bb.bx ]
  %i.yn = phi i32 [ %i.xz, %bb.bw ], [ %i.yf, %bb.by ], [ %i.yf, %bb.bx ]
  %i.yo = phi i32 [ %i.xy, %bb.bw ], [ %i.yk, %bb.by ], [ 0, %bb.bx ] ; 2 uses
  %i.yp = lshr i32 %i.yo, 1
  %i.yq = add i32 %i.yn, -1
  %i.yr = shl i32 %i.yo, 31
  %i.ys = load i32, ptr %gep122.i.us.2.3, align 4, !tbaa !12
  %i.yt = or i32 %i.ys, %i.yr
  store i32 %i.yt, ptr %gep122.i.us.2.3, align 4, !tbaa !12
  br label %bb.bz

bb.bz:                                            ; preds = %jpeg2000_peek_bit.exit86.i.us.2.3, %bb.bv
  %i.yu = phi i32 [ %i.ym, %jpeg2000_peek_bit.exit86.i.us.2.3 ], [ %i.xx, %bb.bv ] ; 6 uses
  %.sink.i85.i20.us.2.3 = phi i32 [ %.sink.i85.i19.us.2.3, %jpeg2000_peek_bit.exit86.i.us.2.3 ], [ %.sink.i85.i20.us.1.3, %bb.bv ] ; 3 uses
  %i.yv = phi i32 [ %i.yp, %jpeg2000_peek_bit.exit86.i.us.2.3 ], [ %i.xy, %bb.bv ] ; 2 uses
  %i.yw = phi i32 [ %i.yq, %jpeg2000_peek_bit.exit86.i.us.2.3 ], [ %i.xz, %bb.bv ] ; 3 uses
  %gep101.i.us.3.3 = getelementptr i8, ptr %invariant.gep100.i.us.3, i64 %i.av
  %i.yx = getelementptr inbounds nuw i8, ptr %gep101.i.us.3.3, i64 1
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !13
  %i.yz = and i8 %i.yy, 8
  %.not.i.us.3.3 = icmp eq i8 %i.yz, 0
  br i1 %.not.i.us.3.3, label %._crit_edge99.i.us.3, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %gep122.i.us.3.3 = getelementptr [4 x i8], ptr %invariant.gep121.i.us.3, i64 %i.ak ; 2 uses
  %i.za = icmp eq i32 %i.yw, 0
  br i1 %i.za, label %bb.cb, label %jpeg2000_peek_bit.exit86.i.us.3.3

bb.cb:                                            ; preds = %bb.ca
  %i.zb = icmp eq i32 %.sink.i85.i20.us.2.3, 255
  %i.zc = select i1 %i.zb, i32 7, i32 8           ; 2 uses
  %i.zd = icmp ult i32 %i.yu, %4
  br i1 %i.zd, label %bb.cc, label %jpeg2000_peek_bit.exit86.i.us.3.3

bb.cc:                                            ; preds = %bb.cb
  %i.ze = sext i32 %i.yu to i64
  %i.zf = getelementptr inbounds i8, ptr %3, i64 %i.ze
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !13
  %i.zh = zext i8 %i.zg to i32                    ; 2 uses
  %i.zi = add nuw nsw i32 %i.yu, 1
  br label %jpeg2000_peek_bit.exit86.i.us.3.3

jpeg2000_peek_bit.exit86.i.us.3.3:                ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.zj = phi i32 [ %i.yu, %bb.ca ], [ %i.zi, %bb.cc ], [ %i.yu, %bb.cb ]
  %.sink.i85.i19.us.3.3 = phi i32 [ %.sink.i85.i20.us.2.3, %bb.ca ], [ %i.zh, %bb.cc ], [ 0, %bb.cb ]
  %i.zk = phi i32 [ %i.yw, %bb.ca ], [ %i.zc, %bb.cc ], [ %i.zc, %bb.cb ]
  %i.zl = phi i32 [ %i.yv, %bb.ca ], [ %i.zh, %bb.cc ], [ 0, %bb.cb ] ; 2 uses
  %i.zm = lshr i32 %i.zl, 1
  %i.zn = add i32 %i.zk, -1
  %i.zo = shl i32 %i.zl, 31
  %i.zp = load i32, ptr %gep122.i.us.3.3, align 4, !tbaa !12
  %i.zq = or i32 %i.zp, %i.zo
  store i32 %i.zq, ptr %gep122.i.us.3.3, align 4, !tbaa !12
  br label %._crit_edge99.i.us.3

._crit_edge99.i.us.3:                             ; preds = %jpeg2000_peek_bit.exit86.i.us.3.3, %bb.bz
  %i.zr = phi i32 [ %i.zj, %jpeg2000_peek_bit.exit86.i.us.3.3 ], [ %i.yu, %bb.bz ] ; 3 uses
  %.sink.i85.i20.us.3.3 = phi i32 [ %.sink.i85.i19.us.3.3, %jpeg2000_peek_bit.exit86.i.us.3.3 ], [ %.sink.i85.i20.us.2.3, %bb.bz ] ; 2 uses
  %i.zs = phi i32 [ %i.zm, %jpeg2000_peek_bit.exit86.i.us.3.3 ], [ %i.yv, %bb.bz ] ; 2 uses
  %i.zt = phi i32 [ %i.zn, %jpeg2000_peek_bit.exit86.i.us.3.3 ], [ %i.yw, %bb.bz ] ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 4 ; 2 uses
  %i.zu = add nuw nsw i32 %.06336.us, 1           ; 2 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 4
  %exitcond98.not = icmp eq i32 %i.zu, %.pre
  br i1 %exitcond98.not, label %._crit_edge.us, label %bb.b, !llvm.loop !61

bb.cd:                                            ; preds = %._crit_edge.us
  %i.zv = trunc nuw nsw i64 %indvars.iv99 to i32
  %9 = trunc nuw nsw i64 %indvars.iv.next96 to i32
  call fastcc void @jpeg2000_process_stripes_block(ptr noundef %8, i32 noundef %i.zv, i32 noundef %9, i32 noundef %i.m, i32 noundef 4, i32 noundef %2, i32 noundef %i.g, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %i.d)
  %.promoted32.us.pre = load i32, ptr %8, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %._crit_edge.us
  %.promoted32.us111 = phi i32 [ %.promoted32.us.pre, %bb.cd ], [ %i.zr, %._crit_edge.us ]
  %i.zw = add nuw nsw i32 %.06444.us, 1           ; 2 uses
  %exitcond102.not = icmp eq i32 %i.zw, %i.f
  br i1 %exitcond102.not, label %._crit_edge45.loopexit59, label %.preheader.us, !llvm.loop !62

._crit_edge.us:                                   ; preds = %._crit_edge99.i.us.3
  store i32 %i.zt, ptr %i.i, align 4
  store i32 %i.zs, ptr %.phi.trans.insert.i.i, align 8
  store i32 %.sink.i85.i20.us.3.3, ptr %i.j, align 4
  store i32 %i.zr, ptr %8, align 8
  br i1 %.not69, label %bb.ce, label %bb.cd

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %.not69, label %.preheader.lr.ph.split.split.us, label %.preheader

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph.split
  %i.zx = and i16 %1, 2044
  br label %._crit_edge45.thread

.preheader:                                       ; preds = %.preheader.lr.ph.split, %.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %.preheader ], [ 0, %.preheader.lr.ph.split ] ; 2 uses
  %.06444 = phi i32 [ %i.zy, %.preheader ], [ 0, %.preheader.lr.ph.split ]
  call fastcc void @jpeg2000_process_stripes_block(ptr noundef %8, i32 noundef %indvars.iv, i32 noundef 0, i32 noundef %i.m, i32 noundef 4, i32 noundef %2, i32 noundef %i.g, ptr noundef %6, ptr noundef %7, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %i.d)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 4 ; 2 uses
  %i.zy = add nuw nsw i32 %.06444, 1              ; 2 uses
  %exitcond104.not = icmp eq i32 %i.zy, %i.f
  br i1 %exitcond104.not, label %._crit_edge45.loopexit, label %.preheader, !llvm.loop !62

._crit_edge45.loopexit:                           ; preds = %.preheader
  %i.zz = trunc nuw nsw i32 %indvars.iv.next to i16
  br label %._crit_edge45.thread

._crit_edge45.loopexit59:                         ; preds = %bb.ce
  %i.aaa = trunc nuw nsw i64 %indvars.iv.next.i.us.3 to i16
  br label %._crit_edge45

._crit_edge45.thread:                             ; preds = %._crit_edge45.loopexit, %.preheader.lr.ph.split.split.us
  %.066.lcssa.ph = phi i16 [ %i.zx, %.preheader.lr.ph.split.split.us ], [ %i.zz, %._crit_edge45.loopexit ]
  %i.aab = and i16 %1, 3
  %i.aac = zext nneg i16 %i.aab to i32
  br label %._crit_edge

._crit_edge45:                                    ; preds = %bb.a, %._crit_edge45.loopexit59
  %.066.lcssa = phi i16 [ %i.aaa, %._crit_edge45.loopexit59 ], [ 0, %bb.a ] ; 3 uses
  %i.aad = and i16 %1, 3
  %i.aae = zext nneg i16 %i.aad to i32            ; 3 uses
  %.not58 = icmp eq i16 %i.c, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge45
  %i.aaf = zext i16 %.066.lcssa to i32
  %i.aag = zext nneg i8 %5 to i32
  br label %bb.cf

._crit_edge:                                      ; preds = %bb.cf, %._crit_edge45.thread, %._crit_edge45
  %i.aah = phi i32 [ %i.aae, %._crit_edge45 ], [ %i.aac, %._crit_edge45.thread ], [ %i.aae, %bb.cf ]
  %.066.lcssa177 = phi i16 [ %.066.lcssa, %._crit_edge45 ], [ %.066.lcssa.ph, %._crit_edge45.thread ], [ %.066.lcssa, %bb.cf ]
  %.1.lcssa = phi i32 [ 0, %._crit_edge45 ], [ 0, %._crit_edge45.thread ], [ %indvars.iv.next106, %bb.cf ]
  %i.aai = and i32 %i.b, 3                        ; 2 uses
  %.not = icmp eq i32 %i.aai, 0
  br i1 %.not, label %bb.ch, label %bb.cg

bb.cf:                                            ; preds = %.lr.ph, %bb.cf
  %indvars.iv105 = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next106, %bb.cf ] ; 2 uses
  %.055 = phi i32 [ 0, %.lr.ph ], [ %i.aaj, %bb.cf ]
  call fastcc void @jpeg2000_process_stripes_block(ptr noundef %8, i32 noundef %i.aaf, i32 noundef %indvars.iv105, i32 noundef 4, i32 noundef %i.aae, i32 noundef %2, i32 noundef %i.aag, ptr noundef %6, ptr noundef %7, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %i.d)
  %indvars.iv.next106 = add nuw nsw i32 %indvars.iv105, 4 ; 2 uses
  %i.aaj = add nuw nsw i32 %.055, 1               ; 2 uses
  %exitcond108.not = icmp eq i32 %i.aaj, %.pre
  br i1 %exitcond108.not, label %._crit_edge, label %bb.cf, !llvm.loop !63

bb.cg:                                            ; preds = %._crit_edge
  %i.aak = zext i16 %.066.lcssa177 to i32
  %i.aal = zext nneg i8 %5 to i32
  call fastcc void @jpeg2000_process_stripes_block(ptr noundef %8, i32 noundef %i.aak, i32 noundef %.1.lcssa, i32 noundef %i.aai, i32 noundef %i.aah, i32 noundef %2, i32 noundef %i.aal, ptr noundef %6, ptr noundef %7, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %i.d)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @jpeg2000_decode_magref_segment(i16 noundef zeroext range(i16 0, 1025) %0, i16 noundef zeroext range(i16 0, 1025) %1, i32 noundef range(i32 -2147483644, -2147483648) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i8 noundef zeroext range(i8 1, 30) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) unnamed_addr #7 {
bb.a:
  %i.a = lshr i16 %1, 2                           ; 2 uses
  %i.b = add i32 %4, -1                           ; 2 uses
  %i.c = zext nneg i16 %i.a to i32
  %.not142 = icmp eq i16 %i.a, 0
  br i1 %.not142, label %._crit_edge121, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not143 = icmp eq i16 %0, 0
  %i.d = zext nneg i8 %5 to i32                   ; 5 uses
  %i.e = add nsw i32 %i.d, -1
  %i.f = shl nuw nsw i32 1, %i.e                  ; 4 uses
  br i1 %.not143, label %._crit_edge141.split, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.g = sext i32 %2 to i64                       ; 5 uses
  %wide.trip.count = zext nneg i16 %0 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next149.3, %._crit_edge.us ] ; 5 uses
  %.067120.us = phi i32 [ 0, %.preheader.us.preheader ], [ %i.na, %._crit_edge.us ]
  %.sroa.2694.0118.us = phi i64 [ 0, %.preheader.us.preheader ], [ %.sroa.2694.3.us.3, %._crit_edge.us ]
  %.sroa.15.0117.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.15.3.us.3, %._crit_edge.us ]
  %.sroa.0.0116.us = phi i32 [ %i.b, %.preheader.us.preheader ], [ %.sroa.0.3.us.3, %._crit_edge.us ]
  %indvars.iv.next149 = or disjoint i64 %indvars.iv, 1
  %i.h = mul nsw i64 %indvars.iv.next149, %i.g    ; 2 uses
  %invariant.gep = getelementptr i8, ptr %7, i64 %i.h
  %i.i = mul nsw i64 %indvars.iv, %i.g
  %i.j = getelementptr [4 x i8], ptr %6, i64 %i.i
  %indvars.iv.next149.1 = or disjoint i64 %indvars.iv, 2
  %i.k = mul nsw i64 %indvars.iv.next149.1, %i.g  ; 2 uses
  %invariant.gep168 = getelementptr i8, ptr %7, i64 %i.k
  %i.l = getelementptr [4 x i8], ptr %6, i64 %i.h
  %indvars.iv.next149.2 = or disjoint i64 %indvars.iv, 3
  %i.m = mul nsw i64 %indvars.iv.next149.2, %i.g  ; 2 uses
  %invariant.gep170 = getelementptr i8, ptr %7, i64 %i.m
  %i.n = getelementptr [4 x i8], ptr %6, i64 %i.k
  %indvars.iv.next149.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.o = mul nsw i64 %indvars.iv.next149.3, %i.g
  %invariant.gep172 = getelementptr i8, ptr %7, i64 %i.o
  %i.p = getelementptr [4 x i8], ptr %6, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.ax
  %indvars.iv152 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next153, %bb.ax ] ; 5 uses
  %.sroa.2694.1112.us = phi i64 [ %.sroa.2694.0118.us, %.preheader.us ], [ %.sroa.2694.3.us.3, %bb.ax ] ; 3 uses
  %.sroa.15.1111.us = phi i8 [ %.sroa.15.0117.us, %.preheader.us ], [ %.sroa.15.3.us.3, %bb.ax ] ; 3 uses
  %.sroa.0.1110.us = phi i32 [ %.sroa.0.0116.us, %.preheader.us ], [ %.sroa.0.3.us.3, %bb.ax ] ; 10 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 6 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next153 ; 2 uses
  %i.q = load i8, ptr %gep, align 1, !tbaa !13    ; 2 uses
  %i.r = and i8 %i.q, 1
  %.not69.us = icmp eq i8 %i.r, 0
  br i1 %.not69.us, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv152 ; 2 uses
  %i.t = or i8 %i.q, 4
  store i8 %i.t, ptr %gep, align 1, !tbaa !13
  %i.u = icmp eq i8 %.sroa.15.1111.us, 0
  br i1 %i.u, label %bb.d, label %jpeg2000_import_magref_bit.exit70.us

bb.d:                                             ; preds = %bb.c
  %i.v = sext i32 %.sroa.0.1110.us to i64
  %i.w = getelementptr i8, ptr %3, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13    ; 2 uses
  %i.z = icmp sgt i32 %.sroa.0.1110.us, 2
  br i1 %i.z, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp eq i32 %.sroa.0.1110.us, 2
  br i1 %i.aa, label %.thread.i.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp sgt i32 %.sroa.0.1110.us, 0
  br i1 %i.ab, label %.thread67.i.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i32 %.sroa.0.1110.us, -1
  br i1 %i.ac, label %._crit_edge.i.us, label %bb.h

.thread.i.us:                                     ; preds = %bb.e
  %i.ad = load i8, ptr %3, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 8
  br label %.thread67.i.us

.thread67.i.us:                                   ; preds = %.thread.i.us, %bb.f
  %.05466.i.us = phi i64 [ %i.af, %.thread.i.us ], [ 0, %bb.f ]
  %i.ag = zext nneg i32 %.sroa.0.1110.us to i64   ; 2 uses
  %i.ah = getelementptr i8, ptr %3, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = zext i8 %i.aj to i64
  %i.al = or disjoint i64 %.05466.i.us, %i.ak
  %i.am = shl nuw nsw i64 %i.al, 8
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.thread67.i.us, %bb.g
  %.pre-phi.i.us = phi i64 [ %i.ag, %.thread67.i.us ], [ 0, %bb.g ]
  %.15569.i.us = phi i64 [ %i.am, %.thread67.i.us ], [ 0, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %.pre-phi.i.us
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %.15569.i.us, %i.ap
  %i.ar = shl nuw nsw i64 %i.aq, 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.us, %bb.g
  %.256.i.us = phi i64 [ %i.ar, %._crit_edge.i.us ], [ 0, %bb.g ]
end_hunk_4
