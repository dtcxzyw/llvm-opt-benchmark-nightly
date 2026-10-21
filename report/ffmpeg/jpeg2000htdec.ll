Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000htdec?download=true
inline.NumInlined: 26
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ff_jpeg2000_decode_htj2k:bb.a
  %.sroa.38.0626 = phi i32 [ %.sroa.38.24, %.lr.ph ], [ %.sroa.38.16.3, %recover_mag_sgn.exit ] ; 4 uses
  %.sroa.0320.0625 = phi i32 [ %.sroa.0320.24, %.lr.ph ], [ %.sroa.0320.16.3, %recover_mag_sgn.exit ] ; 4 uses
  %i.ey = or disjoint i16 %.0659.i631, 1
  %i.ez = icmp eq i16 %.0677.i630, 0
  br i1 %i.ez, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fa = call fastcc i32 @jpeg2000_decode_mel_sym(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef readonly %i.bc, i32 noundef range(i32 2, 0) %i.ar)
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %jpeg2000_decode_sig_emb.exit, label %.thread1.i

.thread1.i:                                       ; preds = %bb.y
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef readonly %i.ds)
  br label %jpeg2000_decode_ctx_vlc.exit.i

bb.z:                                             ; preds = %bb.x
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef readonly %i.ds)
  %i.fc = icmp samesign ult i16 %.0677.i630, 8
  br i1 %i.fc, label %jpeg2000_decode_ctx_vlc.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 318) #11
  tail call void @abort() #12
  unreachable

jpeg2000_decode_ctx_vlc.exit.i:                   ; preds = %bb.z, %.thread1.i
  %i.fd = load i64, ptr %i.eo, align 8, !tbaa !16 ; 2 uses
  %i.fe = and i64 %i.fd, 127
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr @dec_cxt_vlc_table0, i64 %i.fe
  %i.fg = shl nuw nsw i16 %.0677.i630, 8
  %.idx.i.i = zext nneg i16 %i.fg to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx.i.i
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !22 ; 3 uses
  %i.fj = trunc i16 %i.fi to i8                   ; 3 uses
  %i.fk = lshr i8 %i.fj, 1
  %i.fl = and i8 %i.fk, 7                         ; 2 uses
  %i.fm = and i8 %i.fj, 1
  %i.fn = lshr i8 %i.fj, 4
  %i.fo = lshr i16 %i.fi, 8
  %i.fp = trunc nuw i16 %i.fo to i8
  %i.fq = and i8 %i.fp, 15
  %i.fr = lshr i16 %i.fi, 12
  %i.fs = trunc nuw nsw i16 %i.fr to i8
  %i.ft = zext nneg i8 %i.fl to i64
  %i.fu = lshr i64 %i.fd, %i.ft
  store i64 %i.fu, ptr %i.eo, align 8, !tbaa !16
  %i.fv = load i8, ptr %i.ep, align 8, !tbaa !23
  %i.fw = sub i8 %i.fv, %i.fl
  store i8 %i.fw, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_decode_sig_emb.exit

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
  %.pre898.a = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit166

vlc_decode_u_prefix.exit166:                      ; preds = %bb.af, %bb.ag
  %i.jq = phi i8 [ %i.jo, %bb.af ], [ %.pre898.a, %bb.ag ]
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
  %.pre899.a = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre900.a = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit165

vlc_decode_u_prefix.exit165:                      ; preds = %vlc_decode_u_prefix.exit166, %bb.ah
  %i.kb = phi i8 [ %i.jx, %vlc_decode_u_prefix.exit166 ], [ %.pre900.a, %bb.ah ]
  %i.kc = phi i64 [ %i.jw, %vlc_decode_u_prefix.exit166 ], [ %.pre899.a, %bb.ah ] ; 3 uses
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
  %11 = and i64 %i.jr, 3
  %.not514 = icmp eq i64 %11, 0
  br i1 %.not514, label %bb.ai, label %vlc_decode_u_suffix.exit181

bb.ai:                                            ; preds = %vlc_decode_u_prefix.exit165
  %i.km = icmp ult i8 %i.ki, 5
  br i1 %i.km, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre901.a = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre902.a = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.kn = phi i8 [ %.pre902.a, %bb.aj ], [ %i.ki, %bb.ai ]
  %i.ko = phi i64 [ %.pre901.a, %bb.aj ], [ %i.kh, %bb.ai ] ; 2 uses
  %i.kp = trunc i64 %i.ko to i32
  %i.kq = and i32 %i.kp, 31
  %i.kr = zext i1 %i.kl to i64                    ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !12 ; 2 uses
  %i.ku = trunc i32 %i.kt to i8
  %.mask515 = and i32 %i.kt, 255
  %i.kv = zext nneg i32 %.mask515 to i64
  %i.kw = lshr i64 %i.ko, %i.kv                   ; 2 uses
  store i64 %i.kw, ptr %i.eo, align 8, !tbaa !16
  %i.kx = sub i8 %i.kn, %i.ku                     ; 2 uses
  store i8 %i.kx, ptr %i.ep, align 8, !tbaa !23
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.kr
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !12
  %i.la = and i32 %i.kq, %i.kz
  %i.lb = trunc nuw nsw i32 %i.la to i8
  br label %vlc_decode_u_suffix.exit181

vlc_decode_u_suffix.exit181:                      ; preds = %vlc_decode_u_prefix.exit165, %bb.ak
  %i.lc = phi i64 [ %i.kw, %bb.ak ], [ %i.kh, %vlc_decode_u_prefix.exit165 ] ; 2 uses
  %i.ld = phi i8 [ %i.kx, %bb.ak ], [ %i.ki, %vlc_decode_u_prefix.exit165 ] ; 3 uses
  %.0.i180 = phi i8 [ %i.lb, %bb.ak ], [ 0, %vlc_decode_u_prefix.exit165 ] ; 2 uses
  %i.le = icmp ne i64 %i.kd, 4
  %12 = and i64 %i.kc, 3
  %.not516 = icmp eq i64 %12, 0
  br i1 %.not516, label %bb.al, label %vlc_decode_u_suffix.exit179

bb.al:                                            ; preds = %vlc_decode_u_suffix.exit181
  %i.lf = icmp ult i8 %i.ld, 5
  br i1 %i.lf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre903.a = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre904.a = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.lg = phi i8 [ %.pre904.a, %bb.am ], [ %i.ld, %bb.al ]
  %i.lh = phi i64 [ %.pre903.a, %bb.am ], [ %i.lc, %bb.al ] ; 2 uses
  %i.li = trunc i64 %i.lh to i32
  %i.lj = and i32 %i.li, 31
  %i.lk = zext i1 %i.le to i64                    ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !12 ; 2 uses
  %i.ln = trunc i32 %i.lm to i8
  %.mask517 = and i32 %i.lm, 255
  %i.lo = zext nneg i32 %.mask517 to i64
  %i.lp = lshr i64 %i.lh, %i.lo                   ; 2 uses
  store i64 %i.lp, ptr %i.eo, align 8, !tbaa !16
  %i.lq = sub i8 %i.lg, %i.ln                     ; 2 uses
  store i8 %i.lq, ptr %i.ep, align 8, !tbaa !23
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.lk
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !12
  %i.lt = and i32 %i.lj, %i.ls
  %i.lu = trunc nuw nsw i32 %i.lt to i8
  br label %vlc_decode_u_suffix.exit179

vlc_decode_u_suffix.exit179:                      ; preds = %vlc_decode_u_suffix.exit181, %bb.an
  %i.lv = phi i64 [ %i.lp, %bb.an ], [ %i.lc, %vlc_decode_u_suffix.exit181 ]
  %i.lw = phi i8 [ %i.lq, %bb.an ], [ %i.ld, %vlc_decode_u_suffix.exit181 ] ; 2 uses
  %.0.i178 = phi i8 [ %i.lu, %bb.an ], [ 0, %vlc_decode_u_suffix.exit181 ] ; 2 uses
  %i.lx = icmp samesign ugt i8 %.0.i180, 27
  %i.ly = select i1 %i.lx, i8 4, i8 0             ; 3 uses
  %i.lz = icmp ult i8 %i.lw, %i.ly
  br i1 %i.lz, label %bb.ao, label %jpeg2000_bitbuf_get_bits_lsb.exit205

bb.ao:                                            ; preds = %vlc_decode_u_suffix.exit179
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre905.a = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre906.a = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit205

jpeg2000_bitbuf_get_bits_lsb.exit205:             ; preds = %vlc_decode_u_suffix.exit179, %bb.ao
  %i.ma = phi i8 [ %i.lw, %vlc_decode_u_suffix.exit179 ], [ %.pre906.a, %bb.ao ]
  %i.mb = phi i64 [ %i.lv, %vlc_decode_u_suffix.exit179 ], [ %.pre905.a, %bb.ao ] ; 2 uses
  %i.mc = zext nneg i8 %i.ly to i64               ; 2 uses
  %notmask.i204 = shl nsw i64 -1, %i.mc
  %i.md = xor i64 %notmask.i204, -1
  %i.me = and i64 %i.mb, %i.md
  %i.mf = lshr i64 %i.mb, %i.mc                   ; 2 uses
  store i64 %i.mf, ptr %i.eo, align 8, !tbaa !16
  %i.mg = sub i8 %i.ma, %i.ly                     ; 3 uses
  store i8 %i.mg, ptr %i.ep, align 8, !tbaa !23
  %i.mh = trunc nuw nsw i64 %i.me to i32
  %i.mi = icmp samesign ugt i8 %.0.i178, 27
  %i.mj = select i1 %i.mi, i8 4, i8 0             ; 3 uses
  %i.mk = icmp ult i8 %i.mg, %i.mj
  br i1 %i.mk, label %bb.ap, label %jpeg2000_bitbuf_get_bits_lsb.exit207

bb.ap:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit205
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre907.a = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre908.a = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit207

jpeg2000_bitbuf_get_bits_lsb.exit207:             ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit205, %bb.ap
  %i.ml = phi i8 [ %i.mg, %jpeg2000_bitbuf_get_bits_lsb.exit205 ], [ %.pre908.a, %bb.ap ]
  %i.mm = phi i64 [ %i.mf, %jpeg2000_bitbuf_get_bits_lsb.exit205 ], [ %.pre907.a, %bb.ap ] ; 2 uses
  %i.mn = zext nneg i8 %i.mj to i64               ; 2 uses
  %notmask.i206 = shl nsw i64 -1, %i.mn
  %i.mo = xor i64 %notmask.i206, -1
  %i.mp = and i64 %i.mm, %i.mo
  %i.mq = lshr i64 %i.mm, %i.mn
  store i64 %i.mq, ptr %i.eo, align 8, !tbaa !16
  %i.mr = sub i8 %i.ml, %i.mj
  store i8 %i.mr, ptr %i.ep, align 8, !tbaa !23
  %i.ms = trunc nuw nsw i64 %i.mp to i32
  %i.mt = zext i8 %i.jz to i32
  %i.mu = add nuw nsw i32 %i.mt, 2
  %i.mv = zext nneg i8 %.0.i180 to i32
  %i.mw = add nuw nsw i32 %i.mu, %i.mv
  %i.mx = shl nuw nsw i32 %i.mh, 2
  %i.my = add nuw nsw i32 %i.mw, %i.mx
  %i.mz = zext i8 %i.kk to i32
  %i.na = add nuw nsw i32 %i.mz, 2
  %i.nb = zext nneg i8 %.0.i178 to i32
  %i.nc = add nuw nsw i32 %i.na, %i.nb
  %i.nd = shl nuw nsw i32 %i.ms, 2
  %i.ne = add nuw nsw i32 %i.nc, %i.nd
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

bb.aq:                                            ; preds = %bb.ae
  br i1 %i.jp, label %bb.ar, label %vlc_decode_u_prefix.exit164

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre909.a = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit164

vlc_decode_u_prefix.exit164:                      ; preds = %bb.aq, %bb.ar
  %i.nf = phi i8 [ %i.jo, %bb.aq ], [ %.pre909.a, %bb.ar ] ; 2 uses
  %i.ng = load i64, ptr %i.eo, align 8, !tbaa !16 ; 3 uses
  %i.nh = and i64 %i.ng, 7                        ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.nh
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !13  ; 3 uses
  %i.nk = zext nneg i8 %i.nj to i64
  %i.nl = lshr i64 %i.ng, %i.nk                   ; 3 uses
  store i64 %i.nl, ptr %i.eo, align 8, !tbaa !16
  %i.nm = sub i8 %i.nf, %i.nj                     ; 4 uses
  store i8 %i.nm, ptr %i.ep, align 8, !tbaa !23
  %i.nn = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.nh
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !13
  %13 = and i64 %i.ng, 3
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %vlc_decode_u_prefix.exit164
  %i.np = icmp eq i8 %i.nf, %i.nj
  br i1 %i.np, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre916.a = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre917.a = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.nq = phi i8 [ %.pre917.a, %bb.at ], [ %i.nm, %bb.as ]
  %i.nr = phi i64 [ %.pre916.a, %bb.at ], [ %i.nl, %bb.as ] ; 2 uses
  %i.ns = lshr i64 %i.nr, 1                       ; 2 uses
  store i64 %i.ns, ptr %i.eo, align 8, !tbaa !16
  %i.nt = add i8 %i.nq, -1                        ; 3 uses
  store i8 %i.nt, ptr %i.ep, align 8, !tbaa !23
  %i.nu = trunc i64 %i.nr to i32
  %i.nv = and i32 %i.nu, 1
  %i.nw = add nuw nsw i32 %i.nv, 1
  %i.nx = icmp ne i64 %i.nh, 4
  %i.ny = icmp ult i8 %i.nt, 5
  br i1 %i.ny, label %bb.av, label %vlc_decode_u_suffix.exit

bb.av:                                            ; preds = %bb.au
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre918.a = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre919.a = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit

vlc_decode_u_suffix.exit:                         ; preds = %bb.au, %bb.av
  %i.nz = phi i8 [ %i.nt, %bb.au ], [ %.pre919.a, %bb.av ]
  %i.oa = phi i64 [ %i.ns, %bb.au ], [ %.pre918.a, %bb.av ] ; 2 uses
  %i.ob = trunc i64 %i.oa to i32
  %i.oc = and i32 %i.ob, 31
  %i.od = zext i1 %i.nx to i64                    ; 2 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !12 ; 2 uses
  %i.og = trunc i32 %i.of to i8
  %.mask520 = and i32 %i.of, 255
  %i.oh = zext nneg i32 %.mask520 to i64
  %i.oi = lshr i64 %i.oa, %i.oh                   ; 2 uses
  store i64 %i.oi, ptr %i.eo, align 8, !tbaa !16
  %i.oj = sub i8 %i.nz, %i.og                     ; 3 uses
  store i8 %i.oj, ptr %i.ep, align 8, !tbaa !23
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.od
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !12
  %i.om = and i32 %i.oc, %i.ol                    ; 2 uses
  %i.on = icmp samesign ugt i32 %i.om, 27
  %i.oo = select i1 %i.on, i8 4, i8 0             ; 3 uses
  %i.op = icmp ult i8 %i.oj, %i.oo
  br i1 %i.op, label %bb.aw, label %jpeg2000_bitbuf_get_bits_lsb.exit213

bb.aw:                                            ; preds = %vlc_decode_u_suffix.exit
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre920.a = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre921.a = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit213

jpeg2000_bitbuf_get_bits_lsb.exit213:             ; preds = %vlc_decode_u_suffix.exit, %bb.aw
  %i.oq = phi i8 [ %i.oj, %vlc_decode_u_suffix.exit ], [ %.pre921.a, %bb.aw ]
  %i.or = phi i64 [ %i.oi, %vlc_decode_u_suffix.exit ], [ %.pre920.a, %bb.aw ] ; 2 uses
  %i.os = zext nneg i8 %i.oo to i64               ; 2 uses
  %notmask.i212 = shl nsw i64 -1, %i.os
  %i.ot = xor i64 %notmask.i212, -1
  %i.ou = and i64 %i.or, %i.ot
  %i.ov = lshr i64 %i.or, %i.os
  store i64 %i.ov, ptr %i.eo, align 8, !tbaa !16
  %i.ow = sub i8 %i.oq, %i.oo
  store i8 %i.ow, ptr %i.ep, align 8, !tbaa !23
  %i.ox = trunc nuw nsw i64 %i.ou to i32
  %i.oy = shl nuw nsw i32 %i.ox, 2
  br label %bb.bd

bb.ax:                                            ; preds = %vlc_decode_u_prefix.exit164
  %i.oz = icmp ult i8 %i.nm, 3
  br i1 %i.oz, label %bb.ay, label %vlc_decode_u_suffix.exit177

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre910 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre911 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit177

vlc_decode_u_suffix.exit177:                      ; preds = %bb.ay, %bb.ax
  %i.pa = phi i8 [ %.pre911, %bb.ay ], [ %i.nm, %bb.ax ]
  %i.pb = phi i64 [ %.pre910, %bb.ay ], [ %i.nl, %bb.ax ] ; 3 uses
  %i.pc = and i64 %i.pb, 7                        ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !13  ; 2 uses
  %i.pf = zext nneg i8 %i.pe to i64
  %i.pg = lshr i64 %i.pb, %i.pf                   ; 3 uses
  store i64 %i.pg, ptr %i.eo, align 8, !tbaa !16
  %i.ph = sub i8 %i.pa, %i.pe                     ; 4 uses
  store i8 %i.ph, ptr %i.ep, align 8, !tbaa !23
  %i.pi = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.pc
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !13
  %i.pk = icmp ne i64 %i.pc, 4
  %15 = and i64 %i.pb, 3
  %.not518 = icmp eq i64 %15, 0
  br i1 %.not518, label %bb.az, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.az:                                            ; preds = %vlc_decode_u_suffix.exit177
  %i.pl = icmp ult i8 %i.ph, 5
  br i1 %i.pl, label %bb.ba, label %jpeg2000_bitbuf_get_bits_lsb.exit209

bb.ba:                                            ; preds = %bb.az
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre912 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre913.a = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit209

jpeg2000_bitbuf_get_bits_lsb.exit209:             ; preds = %bb.az, %bb.ba
  %i.pm = phi i8 [ %.pre913.a, %bb.ba ], [ %i.ph, %bb.az ]
  %i.pn = phi i64 [ %.pre912, %bb.ba ], [ %i.pg, %bb.az ] ; 2 uses
  %i.po = trunc i64 %i.pn to i32
  %i.pp = and i32 %i.po, 31
  %i.pq = zext i1 %i.pk to i64                    ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !12 ; 2 uses
  %i.pt = trunc i32 %i.ps to i8
  %.mask519 = and i32 %i.ps, 255
  %i.pu = zext nneg i32 %.mask519 to i64
  %i.pv = lshr i64 %i.pn, %i.pu                   ; 3 uses
  store i64 %i.pv, ptr %i.eo, align 8, !tbaa !16
  %i.pw = sub i8 %i.pm, %i.pt                     ; 4 uses
  store i8 %i.pw, ptr %i.ep, align 8, !tbaa !23
  %i.px = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.pq
  %i.py = load i32, ptr %i.px, align 4, !tbaa !12
  %i.pz = and i32 %i.pp, %i.py
  %.fr1250 = freeze i32 %i.pz                     ; 4 uses
  %i.qa = icmp ugt i32 %.fr1250, 27
  br i1 %i.qa, label %bb.bb, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.bb:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit209
  %i.qb = icmp ult i8 %i.pw, 4
  br i1 %i.qb, label %bb.bc, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.bc:                                            ; preds = %bb.bb
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre914.a = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre915.a = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit211

jpeg2000_bitbuf_get_bits_lsb.exit211:             ; preds = %vlc_decode_u_suffix.exit177, %jpeg2000_bitbuf_get_bits_lsb.exit209, %bb.bb, %bb.bc
  %i.qc = phi i8 [ 4, %bb.bb ], [ 4, %bb.bc ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ 0, %vlc_decode_u_suffix.exit177 ] ; 2 uses
  %.0.i17411311134 = phi i32 [ %.fr1250, %bb.bb ], [ %.fr1250, %bb.bc ], [ %.fr1250, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ 0, %vlc_decode_u_suffix.exit177 ]
  %i.qd = phi i8 [ %i.pw, %bb.bb ], [ %.pre915.a, %bb.bc ], [ %i.pw, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ %i.ph, %vlc_decode_u_suffix.exit177 ]
  %i.qe = phi i64 [ %i.pv, %bb.bb ], [ %.pre914.a, %bb.bc ], [ %i.pv, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ %i.pg, %vlc_decode_u_suffix.exit177 ] ; 2 uses
  %i.qf = zext nneg i8 %i.qc to i64               ; 2 uses
  %notmask.i210 = shl nsw i64 -1, %i.qf
  %i.qg = xor i64 %notmask.i210, -1
  %i.qh = and i64 %i.qe, %i.qg
  %i.qi = lshr i64 %i.qe, %i.qf
  store i64 %i.qi, ptr %i.eo, align 8, !tbaa !16
  %i.qj = sub i8 %i.qd, %i.qc
  store i8 %i.qj, ptr %i.ep, align 8, !tbaa !23
  %i.qk = trunc nuw nsw i64 %i.qh to i32
  %i.ql = zext i8 %i.pj to i32
  %i.qm = add nuw nsw i32 %.0.i17411311134, %i.ql
  %i.qn = shl nuw nsw i32 %i.qk, 2
  %i.qo = and i32 %i.qn, 252
  %i.qp = add nuw nsw i32 %i.qm, %i.qo
  br label %bb.bd

bb.bd:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit211, %jpeg2000_bitbuf_get_bits_lsb.exit213
  %.sroa.0416.0 = phi i32 [ %i.om, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %.sroa.0399.0 = phi i32 [ %i.oy, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %.sroa.18.2 = phi i32 [ %i.nw, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ %i.qp, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %i.qq = zext i8 %i.no to i32
  %i.qr = add nuw nsw i32 %.sroa.0416.0, %i.qq
  %i.qs = add nuw nsw i32 %i.qr, %.sroa.0399.0
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

bb.be:                                            ; preds = %jpeg2000_decode_sig_emb.exit283
  %or.cond11.i = select i1 %i.jl, i1 true, i1 %i.jm
  br i1 %or.cond11.i, label %bb.bf, label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

bb.bf:                                            ; preds = %bb.be
  %i.qt = load i8, ptr %i.ep, align 8, !tbaa !23  ; 2 uses
  %i.qu = icmp ult i8 %i.qt, 3
  br i1 %i.qu, label %bb.bg, label %vlc_decode_u_prefix.exit167

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit167

vlc_decode_u_prefix.exit167:                      ; preds = %bb.bf, %bb.bg
  %i.qv = phi i8 [ %i.qt, %bb.bf ], [ %.pre, %bb.bg ]
  %i.qw = load i64, ptr %i.eo, align 8, !tbaa !16 ; 3 uses
  %i.qx = and i64 %i.qw, 7                        ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !13  ; 2 uses
  %i.ra = zext nneg i8 %i.qz to i64
  %i.rb = lshr i64 %i.qw, %i.ra                   ; 3 uses
  store i64 %i.rb, ptr %i.eo, align 8, !tbaa !16
  %i.rc = sub i8 %i.qv, %i.qz                     ; 4 uses
  store i8 %i.rc, ptr %i.ep, align 8, !tbaa !23
  %i.rd = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.qx
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !13
  %i.rf = icmp ne i64 %i.qx, 4
  %16 = and i64 %i.qw, 3
  %.not512 = icmp eq i64 %16, 0
  br i1 %.not512, label %bb.bh, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bh:                                            ; preds = %vlc_decode_u_prefix.exit167
  %i.rg = icmp ult i8 %i.rc, 5
  br i1 %i.rg, label %bb.bi, label %vlc_decode_u_suffix.exit183.cont

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre894 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre895 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit183.cont

vlc_decode_u_suffix.exit183.cont:                 ; preds = %bb.bh, %bb.bi
  %i.rh = phi i8 [ %.pre895, %bb.bi ], [ %i.rc, %bb.bh ]
  %i.ri = phi i64 [ %.pre894, %bb.bi ], [ %i.rb, %bb.bh ] ; 2 uses
  %i.rj = trunc i64 %i.ri to i32
  %i.rk = and i32 %i.rj, 31
  %i.rl = zext i1 %i.rf to i64                    ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !12 ; 2 uses
  %i.ro = trunc i32 %i.rn to i8
  %.mask513.a = and i32 %i.rn, 255
  %i.rp = zext nneg i32 %.mask513.a to i64
  %i.rq = lshr i64 %i.ri, %i.rp                   ; 3 uses
  store i64 %i.rq, ptr %i.eo, align 8, !tbaa !16
  %i.rr = sub i8 %i.rh, %i.ro                     ; 4 uses
  store i8 %i.rr, ptr %i.ep, align 8, !tbaa !23
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.rl
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !12
  %i.ru = and i32 %i.rk, %i.rt
  %.fr1249 = freeze i32 %i.ru                     ; 4 uses
  %i.rv = icmp ugt i32 %.fr1249, 27
  br i1 %i.rv, label %bb.bj, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bj:                                            ; preds = %vlc_decode_u_suffix.exit183.cont
  %i.rw = icmp ult i8 %i.rr, 4
  br i1 %i.rw, label %bb.bk, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre896 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre897 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203

jpeg2000_bitbuf_get_bits_lsb.exit203:             ; preds = %vlc_decode_u_prefix.exit167, %vlc_decode_u_suffix.exit183.cont, %bb.bj, %bb.bk
  %i.rx = phi i8 [ 4, %bb.bj ], [ 4, %bb.bk ], [ 0, %vlc_decode_u_suffix.exit183.cont ], [ 0, %vlc_decode_u_prefix.exit167 ] ; 2 uses
  %.0.i18211381144 = phi i32 [ %.fr1249, %bb.bj ], [ %.fr1249, %bb.bk ], [ %.fr1249, %vlc_decode_u_suffix.exit183.cont ], [ 0, %vlc_decode_u_prefix.exit167 ]
  %i.ry = phi i8 [ %i.rr, %bb.bj ], [ %.pre897, %bb.bk ], [ %i.rr, %vlc_decode_u_suffix.exit183.cont ], [ %i.rc, %vlc_decode_u_prefix.exit167 ]
  %i.rz = phi i64 [ %i.rq, %bb.bj ], [ %.pre896, %bb.bk ], [ %i.rq, %vlc_decode_u_suffix.exit183.cont ], [ %i.rb, %vlc_decode_u_prefix.exit167 ] ; 2 uses
  %i.sa = zext nneg i8 %i.rx to i64               ; 2 uses
  %notmask.i202 = shl nsw i64 -1, %i.sa
  %i.sb = xor i64 %notmask.i202, -1
  %i.sc = and i64 %i.rz, %i.sb
  %i.sd = lshr i64 %i.rz, %i.sa
  store i64 %i.sd, ptr %i.eo, align 8, !tbaa !16
  %i.se = sub i8 %i.ry, %i.rx
  store i8 %i.se, ptr %i.ep, align 8, !tbaa !23
  %i.sf = trunc nuw nsw i64 %i.sc to i32
  %i.sg = zext i8 %i.re to i32
  %i.sh = add nuw nsw i32 %.0.i18211381144, %i.sg
  %i.si = shl nuw nsw i32 %i.sf, 2
  %i.sj = and i32 %i.si, 252
  %i.sk = add nuw nsw i32 %i.sh, %i.sj            ; 2 uses
  %spec.select490 = select i1 %i.jl, i32 %i.sk, i32 0
  %spec.select491 = select i1 %i.jl, i32 0, i32 %i.sk
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

jpeg2000_bitbuf_get_bits_lsb.exit203.cont:        ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit203, %bb.be, %bb.bd, %jpeg2000_bitbuf_get_bits_lsb.exit207
  %.sroa.0386.3 = phi i32 [ %i.qs, %bb.bd ], [ %i.my, %jpeg2000_bitbuf_get_bits_lsb.exit207 ], [ 0, %bb.be ], [ %spec.select490, %jpeg2000_bitbuf_get_bits_lsb.exit203 ] ; 2 uses
  %.sroa.18.1 = phi i32 [ %.sroa.18.2, %bb.bd ], [ %i.ne, %jpeg2000_bitbuf_get_bits_lsb.exit207 ], [ 0, %bb.be ], [ %spec.select491, %jpeg2000_bitbuf_get_bits_lsb.exit203 ] ; 2 uses
  %.not749.i = icmp slt i32 %.sroa.0386.3, %i.du
  %.not750.i = icmp slt i32 %.sroa.18.1, %i.du
  %or.cond751.i = select i1 %.not749.i, i1 %.not750.i, i1 false
  br i1 %or.cond751.i, label %.preheader531, label %jpeg2000_decode_ht_cleanup_segment.exit

.preheader531:                                    ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit203.cont
  %i.sl = add nuw nsw i32 %.sroa.18.1, 1          ; 4 uses
  %i.sm = add nuw nsw i32 %.sroa.0386.3, 1        ; 4 uses
  %i.sn = zext nneg i8 %i.fy to i32               ; 4 uses
  %i.so = zext nneg i8 %i.ie to i32               ; 4 uses
  %i.sp = load i8, ptr %i.ge, align 1, !tbaa !13
  %i.sq = zext i8 %i.sp to i32
  %i.sr = mul nuw nsw i32 %i.sm, %i.sq            ; 2 uses
  %i.ss = and i32 %i.sn, 1                        ; 2 uses
  %i.st = sub nsw i32 %i.sr, %i.ss                ; 4 uses
  %i.su = zext i8 %i.iw to i32
  %i.sv = mul nuw nsw i32 %i.sl, %i.su            ; 2 uses
  %i.sw = and i32 %i.so, 1                        ; 2 uses
  %i.sx = sub nsw i32 %i.sv, %i.sw                ; 4 uses
  %i.sy = or disjoint i64 %i.gc, 1                ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.sy
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !13
  %i.tb = zext i8 %i.ta to i32
  %i.tc = mul nuw nsw i32 %i.sm, %i.tb            ; 2 uses
  %i.td = lshr i32 %i.sn, 1
  %i.te = and i32 %i.td, 1                        ; 2 uses
  %i.tf = sub nsw i32 %i.tc, %i.te                ; 4 uses
  %i.tg = or disjoint i64 %i.ii, 1                ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.tg
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !13
  %i.tj = zext i8 %i.ti to i32
  %i.tk = mul nuw nsw i32 %i.sl, %i.tj            ; 2 uses
  %i.tl = lshr i32 %i.so, 1
  %i.tm = and i32 %i.tl, 1                        ; 2 uses
  %i.tn = sub nsw i32 %i.tk, %i.tm                ; 4 uses
  %i.to = or disjoint i64 %i.gc, 2                ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.to
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !13
  %i.tr = zext i8 %i.tq to i32
  %i.ts = mul nuw nsw i32 %i.sm, %i.tr            ; 2 uses
  %i.tt = lshr i32 %i.sn, 2
  %i.tu = and i32 %i.tt, 1                        ; 2 uses
  %i.tv = sub nsw i32 %i.ts, %i.tu                ; 4 uses
  %i.tw = or disjoint i64 %i.ii, 2                ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.tw
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !13
  %i.tz = zext i8 %i.ty to i32
  %i.ua = mul nuw nsw i32 %i.sl, %i.tz            ; 2 uses
  %i.ub = lshr i32 %i.so, 2
  %i.uc = and i32 %i.ub, 1                        ; 2 uses
  %i.ud = sub nsw i32 %i.ua, %i.uc                ; 4 uses
  %i.ue = or disjoint i64 %i.gc, 3                ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ue
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !13
  %i.uh = zext i8 %i.ug to i32
  %i.ui = mul nuw nsw i32 %i.sm, %i.uh            ; 2 uses
  %i.uj = lshr i32 %i.sn, 3                       ; 2 uses
  %i.uk = sub nsw i32 %i.ui, %i.uj                ; 4 uses
  %i.ul = or disjoint i64 %i.ii, 3                ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !tbaa !13
  %i.uo = zext i8 %i.un to i32
  %i.up = mul nuw nsw i32 %i.sl, %i.uo            ; 2 uses
  %i.uq = lshr i32 %i.so, 3                       ; 2 uses
  %i.ur = sub nsw i32 %i.up, %i.uq                ; 4 uses
  %i.us = zext nneg i8 %i.fx to i32               ; 4 uses
  %i.ut = and i32 %i.us, 1
  %i.uu = icmp sgt i32 %i.st, 0
  br i1 %i.uu, label %bb.bl, label %jpeg2000_decode_mag_sgn.exit260

bb.bl:                                            ; preds = %.preheader531
  %i.uv = trunc i32 %i.st to i8                   ; 2 uses
  %.not.i265 = icmp ule i8 %.sroa.52.0629, %i.uv
  %i.uw = icmp ult i8 %.sroa.52.0629, 32
  %or.cond482 = and i1 %i.uw, %.not.i265
  br i1 %or.cond482, label %.lr.ph.i285, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267

.lr.ph.i285:                                      ; preds = %bb.bl, %bb.bn
  %.sroa.0320.26 = phi i32 [ %.sroa.0320.27, %bb.bn ], [ %.sroa.0320.0625, %bb.bl ]
  %.sroa.38.26 = phi i32 [ %.sroa.38.27, %bb.bn ], [ %.sroa.38.0626, %bb.bl ]
  %i.ux = phi i64 [ %i.vo, %bb.bn ], [ %.sroa.84339.0627, %bb.bl ]
  %i.uy = phi i32 [ %i.vj, %bb.bn ], [ %.sroa.0320.0625, %bb.bl ] ; 4 uses
  %i.uz = phi i32 [ %i.vk, %bb.bn ], [ %.sroa.38.0626, %bb.bl ] ; 2 uses
  %i.va = phi i8 [ %i.vq, %bb.bn ], [ %.sroa.52.0629, %bb.bl ] ; 2 uses
  %i.vb = icmp eq i32 %i.uz, 255
  %i.vc = icmp ult i32 %i.uy, %i.cl
  br i1 %i.vc, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i285
  %i.vd = sext i32 %i.uy to i64
  %i.ve = getelementptr inbounds i8, ptr %i.bc, i64 %i.vd
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !13  ; 2 uses
  %i.vg = zext i8 %i.vf to i32                    ; 2 uses
  %i.vh = add nuw nsw i32 %i.uy, 1                ; 2 uses
  %i.vi = zext i8 %i.vf to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.i285
  %.sroa.0320.27 = phi i32 [ %i.vh, %bb.bm ], [ %.sroa.0320.26, %.lr.ph.i285 ] ; 2 uses
  %.sroa.38.27 = phi i32 [ %i.vg, %bb.bm ], [ %.sroa.38.26, %.lr.ph.i285 ] ; 2 uses
  %i.vj = phi i32 [ %i.vh, %bb.bm ], [ %i.uy, %.lr.ph.i285 ]
  %i.vk = phi i32 [ %i.vg, %bb.bm ], [ %i.uz, %.lr.ph.i285 ]
  %i.vl = phi i64 [ %i.vi, %bb.bm ], [ 255, %.lr.ph.i285 ]
  %i.vm = zext nneg i8 %i.va to i64
  %i.vn = shl nuw nsw i64 %i.vl, %i.vm
  %i.vo = or i64 %i.vn, %i.ux                     ; 2 uses
  %i.vp = select i1 %i.vb, i8 7, i8 8
  %i.vq = add nuw nsw i8 %i.vp, %i.va             ; 3 uses
  %i.vr = icmp samesign ult i8 %i.vq, 32
  br i1 %i.vr, label %.lr.ph.i285, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit267:     ; preds = %bb.bn, %bb.bl
  %.sroa.0320.18 = phi i32 [ %.sroa.0320.0625, %bb.bl ], [ %.sroa.0320.27, %bb.bn ]
  %.sroa.38.18 = phi i32 [ %.sroa.38.0626, %bb.bl ], [ %.sroa.38.27, %bb.bn ]
  %.sroa.84339.18 = phi i64 [ %.sroa.84339.0627, %bb.bl ], [ %i.vo, %bb.bn ] ; 2 uses
  %.sroa.52.18 = phi i8 [ %.sroa.52.0629, %bb.bl ], [ %i.vq, %bb.bn ]
  %.mask522 = and i32 %i.st, 255
  %i.vs = zext nneg i32 %.mask522 to i64          ; 2 uses
  %notmask.i266 = shl nsw i64 -1, %i.vs
  %i.vt = xor i64 %notmask.i266, -1
  %i.vu = and i64 %.sroa.84339.18, %i.vt
  %i.vv = lshr i64 %.sroa.84339.18, %i.vs
  %i.vw = sub i8 %.sroa.52.18, %i.uv
  %i.vx = trunc i64 %i.vu to i32
  %i.vy = shl nuw i32 %i.ut, %i.st
  %i.vz = add nsw i32 %i.vy, %i.vx
  br label %jpeg2000_decode_mag_sgn.exit260

jpeg2000_decode_mag_sgn.exit260:                  ; preds = %.preheader531, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267
  %.sroa.0320.15 = phi i32 [ %.sroa.0320.18, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.0320.0625, %.preheader531 ] ; 4 uses
  %.sroa.38.15 = phi i32 [ %.sroa.38.18, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.38.0626, %.preheader531 ] ; 4 uses
end_hunk_0
begin_hunk_1_@ff_jpeg2000_decode_htj2k:bb.a
  %i.agh = zext nneg i32 %.mask521.2 to i64       ; 2 uses
  %notmask.i264.2 = shl nsw i64 -1, %i.agh
  %i.agi = xor i64 %notmask.i264.2, -1
  %i.agj = and i64 %.sroa.84339.17.2, %i.agi
  %i.agk = lshr i64 %.sroa.84339.17.2, %i.agh
  %i.agl = sub i8 %.sroa.52.17.2, %i.afk
  %i.agm = trunc i64 %i.agj to i32
  %i.agn = shl nuw i32 %i.afi, %i.ud
  %i.ago = add nsw i32 %i.agn, %i.agm
  br label %jpeg2000_decode_mag_sgn.exit262.2

jpeg2000_decode_mag_sgn.exit262.2:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2, %bb.ch
  %.sroa.0320.16.2 = phi i32 [ %.sroa.0320.17.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ %.sroa.0320.16.1, %bb.ch ] ; 4 uses
  %.sroa.38.16.2 = phi i32 [ %.sroa.38.17.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ %.sroa.38.16.1, %bb.ch ] ; 4 uses
  %.sroa.84339.16.2 = phi i64 [ %i.agk, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ %.sroa.84339.16.1, %bb.ch ] ; 3 uses
  %.sroa.52.16.2 = phi i8 [ %i.agl, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ %.sroa.52.16.1, %bb.ch ] ; 5 uses
  %.0.i261.2 = phi i32 [ %i.ago, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ 0, %bb.ch ] ; 3 uses
  %.not.i216.2 = icmp eq i32 %i.ua, %i.uc
  br i1 %.not.i216.2, label %bb.cl, label %ff_clz_c.exit.i.2

ff_clz_c.exit.i.2:                                ; preds = %jpeg2000_decode_mag_sgn.exit262.2
  %i.agp = lshr i32 %.0.i261.2, 1
  %i.agq = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.agp, i1 false)
  %i.agr = trunc nuw nsw i32 %i.agq to i8
  %i.ags = sub nuw nsw i8 33, %i.agr
  %i.agt = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.tw
  store i8 %i.ags, ptr %i.agt, align 1, !tbaa !13
  %i.agu = ashr i32 %.0.i261.2, 1
  %i.agv = add nsw i32 %i.agu, 1
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.tw
  %i.agx = shl i32 %i.agv, %i.eu
  %i.agy = shl i32 %.0.i261.2, 31
  %i.agz = or i32 %i.agy, %i.agx
  %i.aha = or i32 %i.agz, %i.ew
  store i32 %i.aha, ptr %i.agw, align 4, !tbaa !12
  br label %bb.cl

bb.cl:                                            ; preds = %ff_clz_c.exit.i.2, %jpeg2000_decode_mag_sgn.exit262.2
  %i.ahb = lshr i32 %i.abt, 3
  %i.ahc = icmp sgt i32 %i.ur, 0
  br i1 %i.ahc, label %bb.cm, label %jpeg2000_decode_mag_sgn.exit262.3

bb.cm:                                            ; preds = %bb.cl
  %i.ahd = trunc i32 %i.ur to i8                  ; 2 uses
  %.not.i263.3 = icmp ule i8 %.sroa.52.16.2, %i.ahd
  %i.ahe = icmp ult i8 %.sroa.52.16.2, 32
  %or.cond483.3 = and i1 %i.ahe, %.not.i263.3
  br i1 %or.cond483.3, label %.lr.ph.i291.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3

.lr.ph.i291.3:                                    ; preds = %bb.cm, %bb.co
  %.sroa.0320.29.3 = phi i32 [ %.sroa.0320.30.3, %bb.co ], [ %.sroa.0320.16.2, %bb.cm ]
  %.sroa.38.29.3 = phi i32 [ %.sroa.38.30.3, %bb.co ], [ %.sroa.38.16.2, %bb.cm ]
  %i.ahf = phi i64 [ %i.ahw, %bb.co ], [ %.sroa.84339.16.2, %bb.cm ]
  %i.ahg = phi i32 [ %i.ahr, %bb.co ], [ %.sroa.0320.16.2, %bb.cm ] ; 4 uses
  %i.ahh = phi i32 [ %i.ahs, %bb.co ], [ %.sroa.38.16.2, %bb.cm ] ; 2 uses
  %i.ahi = phi i8 [ %i.ahy, %bb.co ], [ %.sroa.52.16.2, %bb.cm ] ; 2 uses
  %i.ahj = icmp eq i32 %i.ahh, 255
  %i.ahk = icmp ult i32 %i.ahg, %i.cl
  br i1 %i.ahk, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph.i291.3
  %i.ahl = sext i32 %i.ahg to i64
  %i.ahm = getelementptr inbounds i8, ptr %i.bc, i64 %i.ahl
  %i.ahn = load i8, ptr %i.ahm, align 1, !tbaa !13 ; 2 uses
  %i.aho = zext i8 %i.ahn to i32                  ; 2 uses
  %i.ahp = add nuw nsw i32 %i.ahg, 1              ; 2 uses
  %i.ahq = zext i8 %i.ahn to i64
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.lr.ph.i291.3
  %.sroa.0320.30.3 = phi i32 [ %i.ahp, %bb.cn ], [ %.sroa.0320.29.3, %.lr.ph.i291.3 ] ; 2 uses
  %.sroa.38.30.3 = phi i32 [ %i.aho, %bb.cn ], [ %.sroa.38.29.3, %.lr.ph.i291.3 ] ; 2 uses
  %i.ahr = phi i32 [ %i.ahp, %bb.cn ], [ %i.ahg, %.lr.ph.i291.3 ]
  %i.ahs = phi i32 [ %i.aho, %bb.cn ], [ %i.ahh, %.lr.ph.i291.3 ]
  %i.aht = phi i64 [ %i.ahq, %bb.cn ], [ 255, %.lr.ph.i291.3 ]
  %i.ahu = zext nneg i8 %i.ahi to i64
  %i.ahv = shl nuw nsw i64 %i.aht, %i.ahu
  %i.ahw = or i64 %i.ahv, %i.ahf                  ; 2 uses
  %i.ahx = select i1 %i.ahj, i8 7, i8 8
  %i.ahy = add nuw nsw i8 %i.ahx, %i.ahi          ; 3 uses
  %i.ahz = icmp samesign ult i8 %i.ahy, 32
  br i1 %i.ahz, label %.lr.ph.i291.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit.3:      ; preds = %bb.co, %bb.cm
  %.sroa.0320.17.3 = phi i32 [ %.sroa.0320.16.2, %bb.cm ], [ %.sroa.0320.30.3, %bb.co ]
  %.sroa.38.17.3 = phi i32 [ %.sroa.38.16.2, %bb.cm ], [ %.sroa.38.30.3, %bb.co ]
  %.sroa.84339.17.3 = phi i64 [ %.sroa.84339.16.2, %bb.cm ], [ %i.ahw, %bb.co ] ; 2 uses
  %.sroa.52.17.3 = phi i8 [ %.sroa.52.16.2, %bb.cm ], [ %i.ahy, %bb.co ]
  %.mask521.3 = and i32 %i.ur, 255
  %i.aia = zext nneg i32 %.mask521.3 to i64       ; 2 uses
  %notmask.i264.3 = shl nsw i64 -1, %i.aia
  %i.aib = xor i64 %notmask.i264.3, -1
  %i.aic = and i64 %.sroa.84339.17.3, %i.aib
  %i.aid = lshr i64 %.sroa.84339.17.3, %i.aia
  %i.aie = sub i8 %.sroa.52.17.3, %i.ahd
  %i.aif = trunc i64 %i.aic to i32
  %i.aig = shl nuw i32 %i.ahb, %i.ur
  %i.aih = add nsw i32 %i.aig, %i.aif
  br label %jpeg2000_decode_mag_sgn.exit262.3

jpeg2000_decode_mag_sgn.exit262.3:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3, %bb.cl
  %.sroa.0320.16.3 = phi i32 [ %.sroa.0320.17.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.0320.16.2, %bb.cl ] ; 2 uses
  %.sroa.38.16.3 = phi i32 [ %.sroa.38.17.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.38.16.2, %bb.cl ] ; 2 uses
  %.sroa.84339.16.3 = phi i64 [ %i.aid, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.84339.16.2, %bb.cl ] ; 2 uses
  %.sroa.52.16.3 = phi i8 [ %i.aie, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.52.16.2, %bb.cl ] ; 2 uses
  %.0.i261.3 = phi i32 [ %i.aih, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ 0, %bb.cl ] ; 3 uses
  %.not.i216.3 = icmp eq i32 %i.up, %i.uq
  br i1 %.not.i216.3, label %recover_mag_sgn.exit, label %ff_clz_c.exit.i.3

ff_clz_c.exit.i.3:                                ; preds = %jpeg2000_decode_mag_sgn.exit262.3
  %i.aii = lshr i32 %.0.i261.3, 1
  %i.aij = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.aii, i1 false)
  %i.aik = trunc nuw nsw i32 %i.aij to i8
  %i.ail = sub nuw nsw i8 33, %i.aik
  %i.aim = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ul
  store i8 %i.ail, ptr %i.aim, align 1, !tbaa !13
  %i.ain = ashr i32 %.0.i261.3, 1
  %i.aio = add nsw i32 %i.ain, 1
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ul
  %i.aiq = shl i32 %i.aio, %i.eu
  %i.air = shl i32 %.0.i261.3, 31
  %i.ais = or i32 %i.air, %i.aiq
  %i.ait = or i32 %i.ais, %i.ew
  store i32 %i.ait, ptr %i.aip, align 4, !tbaa !12
  br label %recover_mag_sgn.exit

recover_mag_sgn.exit:                             ; preds = %ff_clz_c.exit.i.3, %jpeg2000_decode_mag_sgn.exit262.3
  %i.aiu = add i16 %.0659.i631, 2                 ; 3 uses
  %i.aiv = zext i16 %i.aiu to i32                 ; 3 uses
  %i.aiw = icmp sgt i32 %i.em, %i.aiv
  br i1 %i.aiw, label %bb.x, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %recover_mag_sgn.exit
  store i8 %i.ig, ptr %i.eq, align 1
  store i8 %i.if, ptr %i.er, align 1
  store i8 %i.ie, ptr %i.es, align 1
  store i8 %i.id, ptr %i.et, align 1
  %i.aix = shl nuw nsw i32 %i.aiv, 2
  %i.aiy = zext nneg i32 %i.aix to i64
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
  %.0659.i.lcssa = phi i16 [ %i.aiu, %._crit_edge ], [ 0, %.preheader532 ] ; 2 uses
  %.lcssa558 = phi i64 [ %i.aiy, %._crit_edge ], [ 0, %.preheader532 ] ; 6 uses
  store i8 %.lcssa605, ptr %i.b, align 2
  store i8 %.lcssa610, ptr %i.a, align 2
  store i8 %.lcssa615, ptr %i.c, align 2
  store i8 %.lcssa620, ptr %i.d, align 2
  %i.aiz = and i32 %i.dz, 1
  %.not.i = icmp eq i32 %i.aiz, 0                 ; 2 uses
  br i1 %.not.i, label %bb.dn, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call fastcc void @jpeg2000_decode_sig_emb(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dec_cxt_vlc_table0, ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i8 noundef zeroext 0, i16 noundef zeroext %.0677.i.lcssa, i32 noundef range(i32 2, 0) %i.ar, i32 noundef %i.cl)
  %i.aja = load i8, ptr %i.a, align 2, !tbaa !13  ; 4 uses
  %i.ajb = and i8 %i.aja, 1
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.lcssa558 ; 2 uses
  store i8 %i.ajb, ptr %i.ajc, align 1, !tbaa !13
  %i.ajd = lshr i8 %i.aja, 1
  %i.aje = and i8 %i.ajd, 1                       ; 2 uses
  %i.ajf = add nuw nsw i64 %.lcssa558, 1          ; 3 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ajf
  store i8 %i.aje, ptr %i.ajg, align 1, !tbaa !13
  %i.ajh = lshr i8 %i.aja, 2
  %i.aji = and i8 %i.ajh, 1                       ; 2 uses
  %i.ajj = add nuw nsw i64 %.lcssa558, 2          ; 3 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ajj
  store i8 %i.aji, ptr %i.ajk, align 1, !tbaa !13
  %i.ajl = lshr i8 %i.aja, 3
  %i.ajm = and i8 %i.ajl, 1                       ; 2 uses
  %i.ajn = add nuw nsw i64 %.lcssa558, 3          ; 3 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ajn
  store i8 %i.ajm, ptr %i.ajo, align 1, !tbaa !13
  %i.ajp = load i8, ptr %i.b, align 2, !tbaa !13
  %i.ajq = icmp eq i8 %i.ajp, 1
  br i1 %i.ajq, label %bb.cr, label %bb.cx

bb.cr:                                            ; preds = %bb.cq
  %i.ajr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ajs = load i8, ptr %i.ajr, align 8, !tbaa !23 ; 2 uses
  %i.ajt = icmp ult i8 %i.ajs, 3
  br i1 %i.ajt, label %bb.cs, label %vlc_decode_u_prefix.exit168

bb.cs:                                            ; preds = %bb.cr
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre922.a = load i8, ptr %i.ajr, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit168

vlc_decode_u_prefix.exit168:                      ; preds = %bb.cr, %bb.cs
  %i.aju = phi i8 [ %i.ajs, %bb.cr ], [ %.pre922.a, %bb.cs ]
  %i.ajv = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.ajw = load i64, ptr %i.ajv, align 8, !tbaa !16 ; 3 uses
  %i.ajx = and i64 %i.ajw, 7                      ; 3 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.ajx
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !13 ; 2 uses
  %i.aka = zext nneg i8 %i.ajz to i64
  %i.akb = lshr i64 %i.ajw, %i.aka                ; 3 uses
  store i64 %i.akb, ptr %i.ajv, align 8, !tbaa !16
  %i.akc = sub i8 %i.aju, %i.ajz                  ; 4 uses
  store i8 %i.akc, ptr %i.ajr, align 8, !tbaa !23
  %i.akd = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.ajx
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !13
  %i.akf = icmp ne i64 %i.ajx, 4
  %17 = and i64 %i.ajw, 3
  %.not495 = icmp eq i64 %17, 0
  br i1 %.not495, label %bb.ct, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.ct:                                            ; preds = %vlc_decode_u_prefix.exit168
  %i.akg = icmp ult i8 %i.akc, 5
  br i1 %i.akg, label %bb.cu, label %vlc_decode_u_suffix.exit185

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre923.a = load i64, ptr %i.ajv, align 8, !tbaa !16
  %.pre924.a = load i8, ptr %i.ajr, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit185

vlc_decode_u_suffix.exit185:                      ; preds = %bb.ct, %bb.cu
  %i.akh = phi i8 [ %i.akc, %bb.ct ], [ %.pre924.a, %bb.cu ]
  %i.aki = phi i64 [ %i.akb, %bb.ct ], [ %.pre923.a, %bb.cu ] ; 2 uses
  %i.akj = trunc i64 %i.aki to i32
  %i.akk = and i32 %i.akj, 31
  %i.akl = zext i1 %i.akf to i64                  ; 2 uses
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.akl
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !12 ; 2 uses
  %i.ako = trunc i32 %i.akn to i8
  %.mask = and i32 %i.akn, 255
  %i.akp = zext nneg i32 %.mask to i64
  %i.akq = lshr i64 %i.aki, %i.akp                ; 3 uses
  store i64 %i.akq, ptr %i.ajv, align 8, !tbaa !16
  %i.akr = sub i8 %i.akh, %i.ako                  ; 4 uses
  store i8 %i.akr, ptr %i.ajr, align 8, !tbaa !23
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.akl
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !12
  %i.aku = and i32 %i.akk, %i.akt
  %.fr = freeze i32 %i.aku                        ; 4 uses
  %i.akv = icmp ugt i32 %.fr, 27
  br i1 %i.akv, label %bb.cv, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.cv:                                            ; preds = %vlc_decode_u_suffix.exit185
  %i.akw = icmp ult i8 %i.akr, 4
  br i1 %i.akw, label %bb.cw, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.cw:                                            ; preds = %bb.cv
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre925.a = load i64, ptr %i.ajv, align 8, !tbaa !16
  %.pre926.a = load i8, ptr %i.ajr, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit201

jpeg2000_bitbuf_get_bits_lsb.exit201:             ; preds = %vlc_decode_u_prefix.exit168, %vlc_decode_u_suffix.exit185, %bb.cv, %bb.cw
  %i.akx = phi i8 [ %.pre926.a, %bb.cw ], [ %i.akr, %bb.cv ], [ %i.akr, %vlc_decode_u_suffix.exit185 ], [ %i.akc, %vlc_decode_u_prefix.exit168 ]
  %i.aky = phi i64 [ %.pre925.a, %bb.cw ], [ %i.akq, %bb.cv ], [ %i.akq, %vlc_decode_u_suffix.exit185 ], [ %i.akb, %vlc_decode_u_prefix.exit168 ] ; 2 uses
  %i.akz = phi i8 [ 4, %bb.cw ], [ 4, %bb.cv ], [ 0, %vlc_decode_u_suffix.exit185 ], [ 0, %vlc_decode_u_prefix.exit168 ] ; 2 uses
  %.0.i184453455 = phi i32 [ %.fr, %bb.cw ], [ %.fr, %bb.cv ], [ %.fr, %vlc_decode_u_suffix.exit185 ], [ 0, %vlc_decode_u_prefix.exit168 ]
  %i.ala = zext nneg i8 %i.akz to i64             ; 2 uses
  %notmask.i200 = shl nsw i64 -1, %i.ala
  %i.alb = xor i64 %notmask.i200, -1
  %i.alc = and i64 %i.aky, %i.alb
  %i.ald = lshr i64 %i.aky, %i.ala
  store i64 %i.ald, ptr %i.ajv, align 8, !tbaa !16
  %i.ale = sub i8 %i.akx, %i.akz
  store i8 %i.ale, ptr %i.ajr, align 8, !tbaa !23
  %i.alf = trunc nuw nsw i64 %i.alc to i32
  %i.alg = zext i8 %i.ake to i32
  %i.alh = add nuw nsw i32 %.0.i184453455, %i.alg
  %i.ali = shl nuw nsw i32 %i.alf, 2
  %i.alj = and i32 %i.ali, 252
  %i.alk = add nuw nsw i32 %i.alh, %i.alj
  br label %bb.cx

bb.cx:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit201, %bb.cq
  %.sroa.0386.0 = phi i32 [ %i.alk, %jpeg2000_bitbuf_get_bits_lsb.exit201 ], [ 0, %bb.cq ] ; 2 uses
  %.not732.i = icmp slt i32 %.sroa.0386.0, %i.du
  br i1 %.not732.i, label %.preheader530, label %jpeg2000_decode_ht_cleanup_segment.exit

.preheader530:                                    ; preds = %bb.cx
  %i.all = add nuw nsw i32 %.sroa.0386.0, 1       ; 4 uses
  %i.alm = load i8, ptr %i.c, align 2, !tbaa !13
  %i.aln = zext i8 %i.alm to i32                  ; 4 uses
  %i.alo = load i8, ptr %i.ajc, align 1, !tbaa !13
  %i.alp = zext i8 %i.alo to i32
  %i.alq = mul nsw i32 %i.all, %i.alp             ; 2 uses
  %i.alr = and i32 %i.aln, 1                      ; 2 uses
  %i.als = sub nsw i32 %i.alq, %i.alr             ; 4 uses
  %i.alt = zext nneg i8 %i.aje to i32
  %i.alu = mul nuw nsw i32 %i.all, %i.alt         ; 2 uses
  %i.alv = lshr i32 %i.aln, 1
  %i.alw = and i32 %i.alv, 1                      ; 2 uses
  %i.alx = sub nsw i32 %i.alu, %i.alw             ; 4 uses
  %i.aly = zext nneg i8 %i.aji to i32
  %i.alz = mul nuw nsw i32 %i.all, %i.aly         ; 2 uses
  %i.ama = lshr i32 %i.aln, 2
  %i.amb = and i32 %i.ama, 1                      ; 2 uses
  %i.amc = sub nsw i32 %i.alz, %i.amb             ; 4 uses
  %i.amd = zext nneg i8 %i.ajm to i32
  %i.ame = mul nuw nsw i32 %i.all, %i.amd         ; 2 uses
  %i.amf = lshr i32 %i.aln, 3
  %i.amg = and i32 %i.amf, 1                      ; 2 uses
  %i.amh = sub nsw i32 %i.ame, %i.amg             ; 4 uses
  %i.ami = zext i8 %i.bn to i32                   ; 5 uses
  %i.amj = load i8, ptr %i.d, align 2, !tbaa !13
  %i.amk = zext i8 %i.amj to i32                  ; 4 uses
  %i.aml = add nsw i32 %i.ami, -1
  %i.amm = shl nuw i32 1, %i.aml                  ; 4 uses
  %i.amn = and i32 %i.amk, 1
  %i.amo = icmp sgt i32 %i.als, 0
  br i1 %i.amo, label %bb.cy, label %jpeg2000_decode_mag_sgn.exit

bb.cy:                                            ; preds = %.preheader530
  %i.amp = trunc i32 %i.als to i8                 ; 2 uses
  %.not.i277 = icmp ule i8 %.sroa.52.0.lcssa, %i.amp
  %i.amq = icmp ult i8 %.sroa.52.0.lcssa, 32
  %or.cond484 = and i1 %i.amq, %.not.i277
  br i1 %or.cond484, label %.lr.ph.i297, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279

.lr.ph.i297:                                      ; preds = %bb.cy, %bb.da
  %.sroa.0320.32 = phi i32 [ %.sroa.0320.33, %bb.da ], [ %.sroa.0320.0.lcssa, %bb.cy ]
  %.sroa.38.32 = phi i32 [ %.sroa.38.33, %bb.da ], [ %.sroa.38.0.lcssa, %bb.cy ]
  %i.amr = phi i64 [ %i.ani, %bb.da ], [ %.sroa.84339.0.lcssa, %bb.cy ]
  %i.ams = phi i32 [ %i.and, %bb.da ], [ %.sroa.0320.0.lcssa, %bb.cy ] ; 4 uses
  %i.amt = phi i32 [ %i.ane, %bb.da ], [ %.sroa.38.0.lcssa, %bb.cy ] ; 2 uses
  %i.amu = phi i8 [ %i.ank, %bb.da ], [ %.sroa.52.0.lcssa, %bb.cy ] ; 2 uses
  %i.amv = icmp eq i32 %i.amt, 255
  %i.amw = icmp ult i32 %i.ams, %i.cl
  br i1 %i.amw, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.lr.ph.i297
  %i.amx = sext i32 %i.ams to i64
  %i.amy = getelementptr inbounds i8, ptr %i.bc, i64 %i.amx
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !13 ; 2 uses
  %i.ana = zext i8 %i.amz to i32                  ; 2 uses
  %i.anb = add nuw nsw i32 %i.ams, 1              ; 2 uses
  %i.anc = zext i8 %i.amz to i64
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %.lr.ph.i297
  %.sroa.0320.33 = phi i32 [ %i.anb, %bb.cz ], [ %.sroa.0320.32, %.lr.ph.i297 ] ; 2 uses
  %.sroa.38.33 = phi i32 [ %i.ana, %bb.cz ], [ %.sroa.38.32, %.lr.ph.i297 ] ; 2 uses
  %i.and = phi i32 [ %i.anb, %bb.cz ], [ %i.ams, %.lr.ph.i297 ]
  %i.ane = phi i32 [ %i.ana, %bb.cz ], [ %i.amt, %.lr.ph.i297 ]
  %i.anf = phi i64 [ %i.anc, %bb.cz ], [ 255, %.lr.ph.i297 ]
  %i.ang = zext nneg i8 %i.amu to i64
  %i.anh = shl nuw nsw i64 %i.anf, %i.ang
  %i.ani = or i64 %i.anh, %i.amr                  ; 2 uses
  %i.anj = select i1 %i.amv, i8 7, i8 8
  %i.ank = add nuw nsw i8 %i.anj, %i.amu          ; 3 uses
  %i.anl = icmp samesign ult i8 %i.ank, 32
  br i1 %i.anl, label %.lr.ph.i297, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit279:     ; preds = %bb.da, %bb.cy
  %.sroa.0320.22 = phi i32 [ %.sroa.0320.0.lcssa, %bb.cy ], [ %.sroa.0320.33, %bb.da ]
  %.sroa.38.22 = phi i32 [ %.sroa.38.0.lcssa, %bb.cy ], [ %.sroa.38.33, %bb.da ]
  %.sroa.84339.22 = phi i64 [ %.sroa.84339.0.lcssa, %bb.cy ], [ %i.ani, %bb.da ] ; 2 uses
  %.sroa.52.22 = phi i8 [ %.sroa.52.0.lcssa, %bb.cy ], [ %i.ank, %bb.da ]
  %.mask496 = and i32 %i.als, 255
  %i.anm = zext nneg i32 %.mask496 to i64         ; 2 uses
  %notmask.i278 = shl nsw i64 -1, %i.anm
  %i.ann = xor i64 %notmask.i278, -1
  %i.ano = and i64 %.sroa.84339.22, %i.ann
  %i.anp = lshr i64 %.sroa.84339.22, %i.anm
  %i.anq = sub i8 %.sroa.52.22, %i.amp
  %i.anr = trunc i64 %i.ano to i32
  %i.ans = shl nuw i32 %i.amn, %i.als
  %i.ant = add nsw i32 %i.ans, %i.anr
  br label %jpeg2000_decode_mag_sgn.exit

jpeg2000_decode_mag_sgn.exit:                     ; preds = %.preheader530, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279
  %.sroa.0320.11 = phi i32 [ %.sroa.0320.22, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.0320.0.lcssa, %.preheader530 ] ; 4 uses
  %.sroa.38.11 = phi i32 [ %.sroa.38.22, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.38.0.lcssa, %.preheader530 ] ; 4 uses
  %.sroa.84339.11 = phi i64 [ %i.anp, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.84339.0.lcssa, %.preheader530 ] ; 3 uses
  %.sroa.52.11 = phi i8 [ %i.anq, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.52.0.lcssa, %.preheader530 ] ; 5 uses
  %.0.i252 = phi i32 [ %i.ant, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ 0, %.preheader530 ] ; 3 uses
  %.not.i246 = icmp eq i32 %i.alq, %i.alr
  br i1 %.not.i246, label %bb.db, label %ff_clz_c.exit.i250

ff_clz_c.exit.i250:                               ; preds = %jpeg2000_decode_mag_sgn.exit
  %i.anu = lshr i32 %.0.i252, 1
  %i.anv = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.anu, i1 false)
  %i.anw = trunc nuw nsw i32 %i.anv to i8
  %i.anx = sub nuw nsw i8 33, %i.anw
  %i.any = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.lcssa558
  store i8 %i.anx, ptr %i.any, align 1, !tbaa !13
  %i.anz = ashr i32 %.0.i252, 1
  %i.aoa = add nsw i32 %i.anz, 1
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.lcssa558
  %i.aoc = shl i32 %i.aoa, %i.ami
  %i.aod = shl i32 %.0.i252, 31
  %i.aoe = or i32 %i.aod, %i.aoc
  %i.aof = or i32 %i.aoe, %i.amm
  store i32 %i.aof, ptr %i.aob, align 4, !tbaa !12
  br label %bb.db

bb.db:                                            ; preds = %ff_clz_c.exit.i250, %jpeg2000_decode_mag_sgn.exit
  %i.aog = lshr i32 %i.amk, 1
  %i.aoh = and i32 %i.aog, 1
  %i.aoi = icmp sgt i32 %i.alx, 0
  br i1 %i.aoi, label %bb.dc, label %jpeg2000_decode_mag_sgn.exit.1

bb.dc:                                            ; preds = %bb.db
  %i.aoj = trunc i32 %i.alx to i8                 ; 2 uses
  %.not.i277.1 = icmp ule i8 %.sroa.52.11, %i.aoj
  %i.aok = icmp ult i8 %.sroa.52.11, 32
  %or.cond484.1 = and i1 %i.aok, %.not.i277.1
  br i1 %or.cond484.1, label %.lr.ph.i297.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1

.lr.ph.i297.1:                                    ; preds = %bb.dc, %bb.de
end_hunk_1
begin_hunk_2_@ff_jpeg2000_decode_htj2k:bb.a
  %i.auh = icmp eq i32 %i.dw, 0
  %i.aui = icmp eq i32 %i.dv, 0
  br i1 %.not745, label %jpeg2000_decode_ht_cleanup_segment.exit, label %.preheader523.preheader

.preheader523.preheader:                          ; preds = %.preheader523.lr.ph
  %i.auj = zext i32 %i.em to i64
  %i.auk = zext nneg i32 %i.n to i64              ; 3 uses
  %wide.trip.count841 = zext nneg i32 %i.ec to i64
  br label %.preheader523

.lr.ph699:                                        ; preds = %.lr.ph699.preheader, %recover_mag_sgn.exit230
  %i.aul = phi i32 [ %i.bxg, %recover_mag_sgn.exit230 ], [ %i.aud, %.lr.ph699.preheader ] ; 4 uses
  %.3.i698 = phi i16 [ %i.bxf, %recover_mag_sgn.exit230 ], [ %.2.i724, %.lr.ph699.preheader ] ; 2 uses
  %.sroa.52.3697 = phi i8 [ %.sroa.52.14.3, %recover_mag_sgn.exit230 ], [ %.sroa.52.2722, %.lr.ph699.preheader ] ; 5 uses
  %.sroa.84339.3695 = phi i64 [ %.sroa.84339.14.3, %recover_mag_sgn.exit230 ], [ %.sroa.84339.2720, %.lr.ph699.preheader ] ; 3 uses
  %.sroa.38.3694 = phi i32 [ %.sroa.38.14.3, %recover_mag_sgn.exit230 ], [ %.sroa.38.2719, %.lr.ph699.preheader ] ; 4 uses
  %.sroa.0320.3693 = phi i32 [ %.sroa.0320.14.3, %recover_mag_sgn.exit230 ], [ %.sroa.0320.2718, %.lr.ph699.preheader ] ; 4 uses
  %i.aum = add nuw nsw i32 %i.aul, 1              ; 3 uses
  %i.aun = add nsw i32 %i.aul, %i.dy              ; 2 uses
  %i.auo = shl nsw i32 %i.aun, 2                  ; 6 uses
  %i.aup = or disjoint i32 %i.auo, 1
  %i.auq = sext i32 %i.aup to i64                 ; 2 uses
  %i.aur = getelementptr inbounds i8, ptr %.pre927.a, i64 %i.auq
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !13
  %i.aut = or disjoint i32 %i.auo, 3
  %i.auu = sext i32 %i.aut to i64                 ; 2 uses
  %i.auv = getelementptr inbounds i8, ptr %.pre927.a, i64 %i.auu
  %i.auw = load i8, ptr %i.auv, align 1, !tbaa !13
  %i.aux = zext i8 %i.auw to i16
  %i.auy = shl nuw nsw i16 %i.aux, 2
  %i.auz = zext i8 %i.aus to i16
  %i.ava = add nuw nsw i16 %i.auy, %i.auz         ; 2 uses
  %i.avb = zext i16 %.3.i698 to i64
  %i.avc = mul i64 %i.atr, %i.avb
  %i.avd = icmp ugt i64 %i.avc, %i.atq            ; 2 uses
  br i1 %i.avd, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %.lr.ph699
  %i.ave = sext i32 %i.auo to i64
  %i.avf = getelementptr i8, ptr %.pre927.a, i64 %i.ave
  %i.avg = getelementptr i8, ptr %i.avf, i64 -1
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !13
  %i.avi = zext i8 %i.avh to i16
  %i.avj = or i16 %i.ava, %i.avi
  %i.avk = shl nuw nsw i32 %i.aul, 2
  %i.avl = zext nneg i32 %i.avk to i64
  %i.avm = getelementptr i8, ptr %.pre927.a, i64 %i.avl ; 2 uses
  %i.avn = getelementptr i8, ptr %i.avm, i64 -1
  %i.avo = load i8, ptr %i.avn, align 1, !tbaa !13
  %i.avp = getelementptr i8, ptr %i.avm, i64 -2
  %i.avq = load i8, ptr %i.avp, align 1, !tbaa !13
  %i.avr = or i8 %i.avq, %i.avo
  %i.avs = zext i8 %i.avr to i16
  %i.avt = shl nuw nsw i16 %i.avs, 1
  %i.avu = add nuw nsw i16 %i.avt, %i.avj
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.lr.ph699
  %.0660.i = phi i16 [ %i.ava, %.lr.ph699 ], [ %i.avu, %bb.do ] ; 2 uses
  %i.avv = zext nneg i32 %i.aum to i64
  %i.avw = mul i64 %i.atr, %i.avv
  %i.avx = icmp ugt i64 %i.avw, %i.atq            ; 2 uses
  br i1 %i.avx, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.avy = sext i32 %i.auo to i64
  %i.avz = getelementptr i8, ptr %.pre927.a, i64 %i.avy
  %i.awa = getelementptr i8, ptr %i.avz, i64 5
  %i.awb = load i8, ptr %i.awa, align 1, !tbaa !13
  %i.awc = zext i8 %i.awb to i16
  %i.awd = shl nuw nsw i16 %i.awc, 2
  %i.awe = or i16 %i.awd, %.0660.i
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.1661.i = phi i16 [ %.0660.i, %bb.dp ], [ %i.awe, %bb.dq ]
  call fastcc void @jpeg2000_decode_sig_emb(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dec_cxt_vlc_table1, ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i8 noundef zeroext 0, i16 noundef zeroext %.1661.i, i32 noundef range(i32 2, 0) %i.ar, i32 noundef %i.cl)
  %i.awf = load i8, ptr %i.a, align 2, !tbaa !13  ; 4 uses
  %i.awg = shl nuw nsw i32 %i.aul, 2
  %i.awh = zext nneg i32 %i.awg to i64            ; 6 uses
  %i.awi = and i8 %i.awf, 1
  %i.awj = getelementptr inbounds nuw i8, ptr %.pre927.a, i64 %i.awh ; 2 uses
  store i8 %i.awi, ptr %i.awj, align 1, !tbaa !13
  %i.awk = lshr i8 %i.awf, 1
  %i.awl = and i8 %i.awk, 1
  %i.awm = or disjoint i64 %i.awh, 1              ; 3 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %.pre927.a, i64 %i.awm ; 2 uses
  store i8 %i.awl, ptr %i.awn, align 1, !tbaa !13
  %i.awo = lshr i8 %i.awf, 2
  %i.awp = and i8 %i.awo, 1
  %i.awq = or disjoint i64 %i.awh, 2              ; 3 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %.pre927.a, i64 %i.awq ; 2 uses
  store i8 %i.awp, ptr %i.awr, align 1, !tbaa !13
  %i.aws = lshr i8 %i.awf, 3
  %i.awt = and i8 %i.aws, 1
  %i.awu = or disjoint i64 %i.awh, 3              ; 3 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %.pre927.a, i64 %i.awu ; 2 uses
  store i8 %i.awt, ptr %i.awv, align 1, !tbaa !13
  %i.aww = and i32 %i.aum, 65535                  ; 5 uses
  %i.awx = add nsw i32 %i.aww, %i.dy              ; 2 uses
  %i.awy = shl nsw i32 %i.awx, 2                  ; 6 uses
  %i.awz = or disjoint i32 %i.awy, 1
  %i.axa = sext i32 %i.awz to i64                 ; 2 uses
  %i.axb = getelementptr inbounds i8, ptr %.pre927.a, i64 %i.axa
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !13
  %i.axd = or disjoint i32 %i.awy, 3
  %i.axe = sext i32 %i.axd to i64                 ; 2 uses
  %i.axf = getelementptr inbounds i8, ptr %.pre927.a, i64 %i.axe
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !13
  %i.axh = zext i8 %i.axg to i16
  %i.axi = shl nuw nsw i16 %i.axh, 2
  %i.axj = zext i8 %i.axc to i16
  %i.axk = add nuw nsw i16 %i.axi, %i.axj         ; 2 uses
  %i.axl = zext nneg i32 %i.aww to i64
  %i.axm = mul i64 %i.atr, %i.axl
  %i.axn = icmp ugt i64 %i.axm, %i.atq            ; 2 uses
  br i1 %i.axn, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.axo = sext i32 %i.awy to i64
  %i.axp = getelementptr i8, ptr %.pre927.a, i64 %i.axo
  %i.axq = getelementptr i8, ptr %i.axp, i64 -1
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !13
  %i.axs = zext i8 %i.axr to i16
  %i.axt = or i16 %i.axk, %i.axs
  %i.axu = shl nuw nsw i32 %i.aww, 2
  %i.axv = zext nneg i32 %i.axu to i64
  %i.axw = getelementptr i8, ptr %.pre927.a, i64 %i.axv ; 2 uses
  %i.axx = getelementptr i8, ptr %i.axw, i64 -1
  %i.axy = load i8, ptr %i.axx, align 1, !tbaa !13
  %i.axz = getelementptr i8, ptr %i.axw, i64 -2
  %i.aya = load i8, ptr %i.axz, align 1, !tbaa !13
  %i.ayb = or i8 %i.aya, %i.axy
  %i.ayc = zext i8 %i.ayb to i16
  %i.ayd = shl nuw nsw i16 %i.ayc, 1
  %i.aye = add nuw nsw i16 %i.ayd, %i.axt
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.0669.i = phi i16 [ %i.axk, %bb.dr ], [ %i.aye, %bb.ds ] ; 2 uses
  %i.ayf = add nuw nsw i32 %i.aww, 1
  %i.ayg = zext nneg i32 %i.ayf to i64
  %i.ayh = mul i64 %i.atr, %i.ayg
  %i.ayi = icmp ugt i64 %i.ayh, %i.atq            ; 2 uses
  br i1 %i.ayi, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ayj = sext i32 %i.awy to i64
  %i.ayk = getelementptr i8, ptr %.pre927.a, i64 %i.ayj
  %i.ayl = getelementptr i8, ptr %i.ayk, i64 5
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !13
  %i.ayn = zext i8 %i.aym to i16
  %i.ayo = shl nuw nsw i16 %i.ayn, 2
  %i.ayp = or i16 %i.ayo, %.0669.i
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.1670.i = phi i16 [ %.0669.i, %bb.dt ], [ %i.ayp, %bb.du ]
  call fastcc void @jpeg2000_decode_sig_emb(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dec_cxt_vlc_table1, ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i8 noundef zeroext 1, i16 noundef zeroext %.1670.i, i32 noundef range(i32 2, 0) %i.ar, i32 noundef %i.cl)
  %i.ayq = load i8, ptr %i.atu, align 1, !tbaa !13 ; 6 uses
  %i.ayr = shl nuw nsw i32 %i.aww, 2
  %i.ays = zext nneg i32 %i.ayr to i64            ; 4 uses
  %i.ayt = and i8 %i.ayq, 1
  %i.ayu = getelementptr inbounds nuw i8, ptr %.pre927.a, i64 %i.ays ; 2 uses
  store i8 %i.ayt, ptr %i.ayu, align 1, !tbaa !13
  %i.ayv = lshr i8 %i.ayq, 1
  %i.ayw = and i8 %i.ayv, 1
  %i.ayx = getelementptr inbounds nuw i8, ptr %.pre927.a, i64 %i.ays
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 1 ; 2 uses
  store i8 %i.ayw, ptr %i.ayy, align 1, !tbaa !13
  %i.ayz = lshr i8 %i.ayq, 2
  %i.aza = and i8 %i.ayz, 1
  %i.azb = getelementptr inbounds nuw i8, ptr %.pre927.a, i64 %i.ays
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 2 ; 2 uses
  store i8 %i.aza, ptr %i.azc, align 1, !tbaa !13
  %i.azd = lshr i8 %i.ayq, 3
  %i.aze = and i8 %i.azd, 1
  %i.azf = getelementptr inbounds nuw i8, ptr %.pre927.a, i64 %i.ays
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 3 ; 2 uses
  store i8 %i.aze, ptr %i.azg, align 1, !tbaa !13
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %i.azh = load i8, ptr %i.b, align 2, !tbaa !13
  %i.azi = icmp eq i8 %i.azh, 1                   ; 4 uses
  %i.azj = load i8, ptr %i.atv, align 1
  %i.azk = icmp eq i8 %i.azj, 1                   ; 2 uses
  %or.cond15.i = select i1 %i.azi, i1 %i.azk, i1 false
  br i1 %or.cond15.i, label %bb.dw, label %bb.eh

bb.dw:                                            ; preds = %bb.dv
  %i.azl = load i8, ptr %i.atw, align 8, !tbaa !23 ; 2 uses
  %i.azm = icmp ult i8 %i.azl, 3
  br i1 %i.azm, label %bb.dx, label %vlc_decode_u_prefix.exit170

bb.dx:                                            ; preds = %bb.dw
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre933.a = load i8, ptr %i.atw, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit170

vlc_decode_u_prefix.exit170:                      ; preds = %bb.dw, %bb.dx
  %i.azn = phi i8 [ %i.azl, %bb.dw ], [ %.pre933.a, %bb.dx ]
  %i.azo = load i64, ptr %i.atx, align 8, !tbaa !16 ; 3 uses
  %i.azp = and i64 %i.azo, 7                      ; 3 uses
  %i.azq = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.azp
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !13 ; 2 uses
  %i.azs = zext nneg i8 %i.azr to i64
  %i.azt = lshr i64 %i.azo, %i.azs                ; 2 uses
  store i64 %i.azt, ptr %i.atx, align 8, !tbaa !16
  %i.azu = sub i8 %i.azn, %i.azr                  ; 3 uses
  store i8 %i.azu, ptr %i.atw, align 8, !tbaa !23
  %i.azv = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.azp
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !13
  %i.azx = icmp ult i8 %i.azu, 3
  br i1 %i.azx, label %bb.dy, label %vlc_decode_u_prefix.exit169

bb.dy:                                            ; preds = %vlc_decode_u_prefix.exit170
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre934.a = load i64, ptr %i.atx, align 8, !tbaa !16
  %.pre935.a = load i8, ptr %i.atw, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit169

vlc_decode_u_prefix.exit169:                      ; preds = %vlc_decode_u_prefix.exit170, %bb.dy
  %i.azy = phi i8 [ %i.azu, %vlc_decode_u_prefix.exit170 ], [ %.pre935.a, %bb.dy ]
  %i.azz = phi i64 [ %i.azt, %vlc_decode_u_prefix.exit170 ], [ %.pre934.a, %bb.dy ] ; 3 uses
  %i.baa = and i64 %i.azz, 7                      ; 3 uses
  %i.bab = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.baa
  %i.bac = load i8, ptr %i.bab, align 1, !tbaa !13 ; 2 uses
  %i.bad = zext nneg i8 %i.bac to i64
  %i.bae = lshr i64 %i.azz, %i.bad                ; 3 uses
  store i64 %i.bae, ptr %i.atx, align 8, !tbaa !16
  %i.baf = sub i8 %i.azy, %i.bac                  ; 4 uses
  store i8 %i.baf, ptr %i.atw, align 8, !tbaa !23
  %i.bag = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.baa
  %i.bah = load i8, ptr %i.bag, align 1, !tbaa !13
  %i.bai = icmp ne i64 %i.azp, 4
  %18 = and i64 %i.azo, 3
  %.not504 = icmp eq i64 %18, 0
  br i1 %.not504, label %bb.dz, label %vlc_decode_u_suffix.exit189

bb.dz:                                            ; preds = %vlc_decode_u_prefix.exit169
  %i.baj = icmp ult i8 %i.baf, 5
  br i1 %i.baj, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre936.a = load i64, ptr %i.atx, align 8, !tbaa !16
  %.pre937.a = load i8, ptr %i.atw, align 8, !tbaa !23
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.bak = phi i8 [ %.pre937.a, %bb.ea ], [ %i.baf, %bb.dz ]
  %i.bal = phi i64 [ %.pre936.a, %bb.ea ], [ %i.bae, %bb.dz ] ; 2 uses
  %i.bam = trunc i64 %i.bal to i32
  %i.ban = and i32 %i.bam, 31
  %i.bao = zext i1 %i.bai to i64                  ; 2 uses
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.bao
  %i.baq = load i32, ptr %i.bap, align 4, !tbaa !12 ; 2 uses
  %i.bar = trunc i32 %i.baq to i8
  %.mask505.a = and i32 %i.baq, 255
  %i.bas = zext nneg i32 %.mask505.a to i64
  %i.bat = lshr i64 %i.bal, %i.bas                ; 2 uses
  store i64 %i.bat, ptr %i.atx, align 8, !tbaa !16
  %i.bau = sub i8 %i.bak, %i.bar                  ; 2 uses
  store i8 %i.bau, ptr %i.atw, align 8, !tbaa !23
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.bao
  %i.baw = load i32, ptr %i.bav, align 4, !tbaa !12
  %i.bax = and i32 %i.ban, %i.baw
  %i.bay = trunc nuw nsw i32 %i.bax to i8
  br label %vlc_decode_u_suffix.exit189

vlc_decode_u_suffix.exit189:                      ; preds = %vlc_decode_u_prefix.exit169, %bb.eb
  %i.baz = phi i64 [ %i.bat, %bb.eb ], [ %i.bae, %vlc_decode_u_prefix.exit169 ] ; 2 uses
  %i.bba = phi i8 [ %i.bau, %bb.eb ], [ %i.baf, %vlc_decode_u_prefix.exit169 ] ; 3 uses
  %.0.i188 = phi i8 [ %i.bay, %bb.eb ], [ 0, %vlc_decode_u_prefix.exit169 ] ; 2 uses
  %i.bbb = icmp ne i64 %i.baa, 4
  %19 = and i64 %i.azz, 3
  %.not506 = icmp eq i64 %19, 0
  br i1 %.not506, label %bb.ec, label %vlc_decode_u_suffix.exit187

bb.ec:                                            ; preds = %vlc_decode_u_suffix.exit189
  %i.bbc = icmp ult i8 %i.bba, 5
  br i1 %i.bbc, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre938.a = load i64, ptr %i.atx, align 8, !tbaa !16
  %.pre939.a = load i8, ptr %i.atw, align 8, !tbaa !23
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.bbd = phi i8 [ %.pre939.a, %bb.ed ], [ %i.bba, %bb.ec ]
  %i.bbe = phi i64 [ %.pre938.a, %bb.ed ], [ %i.baz, %bb.ec ] ; 2 uses
  %i.bbf = trunc i64 %i.bbe to i32
  %i.bbg = and i32 %i.bbf, 31
  %i.bbh = zext i1 %i.bbb to i64                  ; 2 uses
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.bbh
  %i.bbj = load i32, ptr %i.bbi, align 4, !tbaa !12 ; 2 uses
  %i.bbk = trunc i32 %i.bbj to i8
  %.mask507 = and i32 %i.bbj, 255
  %i.bbl = zext nneg i32 %.mask507 to i64
  %i.bbm = lshr i64 %i.bbe, %i.bbl                ; 2 uses
  store i64 %i.bbm, ptr %i.atx, align 8, !tbaa !16
  %i.bbn = sub i8 %i.bbd, %i.bbk                  ; 2 uses
  store i8 %i.bbn, ptr %i.atw, align 8, !tbaa !23
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.bbh
  %i.bbp = load i32, ptr %i.bbo, align 4, !tbaa !12
  %i.bbq = and i32 %i.bbg, %i.bbp
  %i.bbr = trunc nuw nsw i32 %i.bbq to i8
  br label %vlc_decode_u_suffix.exit187

vlc_decode_u_suffix.exit187:                      ; preds = %vlc_decode_u_suffix.exit189, %bb.ee
  %i.bbs = phi i64 [ %i.bbm, %bb.ee ], [ %i.baz, %vlc_decode_u_suffix.exit189 ]
  %i.bbt = phi i8 [ %i.bbn, %bb.ee ], [ %i.bba, %vlc_decode_u_suffix.exit189 ] ; 2 uses
  %.0.i186 = phi i8 [ %i.bbr, %bb.ee ], [ 0, %vlc_decode_u_suffix.exit189 ] ; 2 uses
  %i.bbu = icmp samesign ugt i8 %.0.i188, 27
  %i.bbv = select i1 %i.bbu, i8 4, i8 0           ; 3 uses
  %i.bbw = icmp ult i8 %i.bbt, %i.bbv
  br i1 %i.bbw, label %bb.ef, label %jpeg2000_bitbuf_get_bits_lsb.exit197

bb.ef:                                            ; preds = %vlc_decode_u_suffix.exit187
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre940 = load i64, ptr %i.atx, align 8, !tbaa !16
  %.pre941 = load i8, ptr %i.atw, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit197

jpeg2000_bitbuf_get_bits_lsb.exit197:             ; preds = %vlc_decode_u_suffix.exit187, %bb.ef
  %i.bbx = phi i8 [ %i.bbt, %vlc_decode_u_suffix.exit187 ], [ %.pre941, %bb.ef ]
  %i.bby = phi i64 [ %i.bbs, %vlc_decode_u_suffix.exit187 ], [ %.pre940, %bb.ef ] ; 2 uses
  %i.bbz = zext nneg i8 %i.bbv to i64             ; 2 uses
  %notmask.i196 = shl nsw i64 -1, %i.bbz
  %i.bca = xor i64 %notmask.i196, -1
  %i.bcb = and i64 %i.bby, %i.bca
  %i.bcc = lshr i64 %i.bby, %i.bbz                ; 2 uses
  store i64 %i.bcc, ptr %i.atx, align 8, !tbaa !16
  %i.bcd = sub i8 %i.bbx, %i.bbv                  ; 3 uses
  store i8 %i.bcd, ptr %i.atw, align 8, !tbaa !23
  %i.bce = trunc nuw nsw i64 %i.bcb to i32
  %i.bcf = icmp samesign ugt i8 %.0.i186, 27
  %i.bcg = select i1 %i.bcf, i8 4, i8 0           ; 3 uses
  %i.bch = icmp ult i8 %i.bcd, %i.bcg
  br i1 %i.bch, label %bb.eg, label %jpeg2000_bitbuf_get_bits_lsb.exit199

bb.eg:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit197
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre942 = load i64, ptr %i.atx, align 8, !tbaa !16
  %.pre943 = load i8, ptr %i.atw, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit199

jpeg2000_bitbuf_get_bits_lsb.exit199:             ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit197, %bb.eg
  %i.bci = phi i8 [ %i.bcd, %jpeg2000_bitbuf_get_bits_lsb.exit197 ], [ %.pre943, %bb.eg ]
  %i.bcj = phi i64 [ %i.bcc, %jpeg2000_bitbuf_get_bits_lsb.exit197 ], [ %.pre942, %bb.eg ] ; 2 uses
  %i.bck = zext nneg i8 %i.bcg to i64             ; 2 uses
  %notmask.i198 = shl nsw i64 -1, %i.bck
  %i.bcl = xor i64 %notmask.i198, -1
  %i.bcm = and i64 %i.bcj, %i.bcl
  %i.bcn = lshr i64 %i.bcj, %i.bck
  store i64 %i.bcn, ptr %i.atx, align 8, !tbaa !16
  %i.bco = sub i8 %i.bci, %i.bcg
  store i8 %i.bco, ptr %i.atw, align 8, !tbaa !23
  %i.bcp = trunc nuw nsw i64 %i.bcm to i32
  %i.bcq = zext i8 %i.azw to i32
  %i.bcr = zext nneg i8 %.0.i188 to i32
  %i.bcs = add nuw nsw i32 %i.bcr, %i.bcq
  %i.bct = shl nuw nsw i32 %i.bce, 2
  %i.bcu = add nuw nsw i32 %i.bcs, %i.bct
  %i.bcv = zext i8 %i.bah to i32
  %i.bcw = zext nneg i8 %.0.i186 to i32
  %i.bcx = add nuw nsw i32 %i.bcw, %i.bcv
  %i.bcy = shl nuw nsw i32 %i.bcp, 2
  %i.bcz = add nuw nsw i32 %i.bcx, %i.bcy
  br label %jpeg2000_bitbuf_get_bits_lsb.exit195.cont

bb.eh:                                            ; preds = %bb.dv
  %or.cond19.i = select i1 %i.azi, i1 true, i1 %i.azk
  br i1 %or.cond19.i, label %bb.ei, label %jpeg2000_bitbuf_get_bits_lsb.exit195.cont

bb.ei:                                            ; preds = %bb.eh
  %i.bda = load i8, ptr %i.atw, align 8, !tbaa !23 ; 2 uses
  %i.bdb = icmp ult i8 %i.bda, 3
  br i1 %i.bdb, label %bb.ej, label %vlc_decode_u_prefix.exit171

bb.ej:                                            ; preds = %bb.ei
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre928 = load i8, ptr %i.atw, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit171

vlc_decode_u_prefix.exit171:                      ; preds = %bb.ei, %bb.ej
  %i.bdc = phi i8 [ %i.bda, %bb.ei ], [ %.pre928, %bb.ej ]
  %i.bdd = load i64, ptr %i.atx, align 8, !tbaa !16 ; 3 uses
  %i.bde = and i64 %i.bdd, 7                      ; 3 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.bde
  %i.bdg = load i8, ptr %i.bdf, align 1, !tbaa !13 ; 2 uses
  %i.bdh = zext nneg i8 %i.bdg to i64
  %i.bdi = lshr i64 %i.bdd, %i.bdh                ; 3 uses
  store i64 %i.bdi, ptr %i.atx, align 8, !tbaa !16
  %i.bdj = sub i8 %i.bdc, %i.bdg                  ; 4 uses
  store i8 %i.bdj, ptr %i.atw, align 8, !tbaa !23
  %i.bdk = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.bde
  %i.bdl = load i8, ptr %i.bdk, align 1, !tbaa !13
  %i.bdm = icmp ne i64 %i.bde, 4
  %20 = and i64 %i.bdd, 3
  %.not502 = icmp eq i64 %20, 0
  br i1 %.not502, label %bb.ek, label %jpeg2000_bitbuf_get_bits_lsb.exit195

bb.ek:                                            ; preds = %vlc_decode_u_prefix.exit171
  %i.bdn = icmp ult i8 %i.bdj, 5
  br i1 %i.bdn, label %bb.el, label %vlc_decode_u_suffix.exit191.cont

bb.el:                                            ; preds = %bb.ek
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre929 = load i64, ptr %i.atx, align 8, !tbaa !16
  %.pre930 = load i8, ptr %i.atw, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit191.cont

vlc_decode_u_suffix.exit191.cont:                 ; preds = %bb.ek, %bb.el
  %i.bdo = phi i8 [ %.pre930, %bb.el ], [ %i.bdj, %bb.ek ]
  %i.bdp = phi i64 [ %.pre929, %bb.el ], [ %i.bdi, %bb.ek ] ; 2 uses
  %i.bdq = trunc i64 %i.bdp to i32
  %i.bdr = and i32 %i.bdq, 31
  %i.bds = zext i1 %i.bdm to i64                  ; 2 uses
  %i.bdt = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.bds
  %i.bdu = load i32, ptr %i.bdt, align 4, !tbaa !12 ; 2 uses
  %i.bdv = trunc i32 %i.bdu to i8
  %.mask503 = and i32 %i.bdu, 255
  %i.bdw = zext nneg i32 %.mask503 to i64
  %i.bdx = lshr i64 %i.bdp, %i.bdw                ; 3 uses
  store i64 %i.bdx, ptr %i.atx, align 8, !tbaa !16
  %i.bdy = sub i8 %i.bdo, %i.bdv                  ; 4 uses
  store i8 %i.bdy, ptr %i.atw, align 8, !tbaa !23
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.bds
  %i.bea = load i32, ptr %i.bdz, align 4, !tbaa !12
  %i.beb = and i32 %i.bdr, %i.bea
  %.fr1251 = freeze i32 %i.beb                    ; 4 uses
  %i.bec = icmp ugt i32 %.fr1251, 27
  br i1 %i.bec, label %bb.em, label %jpeg2000_bitbuf_get_bits_lsb.exit195

bb.em:                                            ; preds = %vlc_decode_u_suffix.exit191.cont
  %i.bed = icmp ult i8 %i.bdy, 4
  br i1 %i.bed, label %bb.en, label %jpeg2000_bitbuf_get_bits_lsb.exit195

bb.en:                                            ; preds = %bb.em
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre931 = load i64, ptr %i.atx, align 8, !tbaa !16
  %.pre932 = load i8, ptr %i.atw, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit195

jpeg2000_bitbuf_get_bits_lsb.exit195:             ; preds = %vlc_decode_u_prefix.exit171, %vlc_decode_u_suffix.exit191.cont, %bb.em, %bb.en
  %i.bee = phi i8 [ 4, %bb.em ], [ 4, %bb.en ], [ 0, %vlc_decode_u_suffix.exit191.cont ], [ 0, %vlc_decode_u_prefix.exit171 ] ; 2 uses
  %.0.i19011481154 = phi i32 [ %.fr1251, %bb.em ], [ %.fr1251, %bb.en ], [ %.fr1251, %vlc_decode_u_suffix.exit191.cont ], [ 0, %vlc_decode_u_prefix.exit171 ]
  %i.bef = phi i8 [ %i.bdy, %bb.em ], [ %.pre932, %bb.en ], [ %i.bdy, %vlc_decode_u_suffix.exit191.cont ], [ %i.bdj, %vlc_decode_u_prefix.exit171 ]
  %i.beg = phi i64 [ %i.bdx, %bb.em ], [ %.pre931, %bb.en ], [ %i.bdx, %vlc_decode_u_suffix.exit191.cont ], [ %i.bdi, %vlc_decode_u_prefix.exit171 ] ; 2 uses
  %i.beh = zext nneg i8 %i.bee to i64             ; 2 uses
  %notmask.i194 = shl nsw i64 -1, %i.beh
  %i.bei = xor i64 %notmask.i194, -1
  %i.bej = and i64 %i.beg, %i.bei
  %i.bek = lshr i64 %i.beg, %i.beh
  store i64 %i.bek, ptr %i.atx, align 8, !tbaa !16
  %i.bel = sub i8 %i.bef, %i.bee
  store i8 %i.bel, ptr %i.atw, align 8, !tbaa !23
  %i.bem = trunc nuw nsw i64 %i.bej to i32
  %i.ben = zext i8 %i.bdl to i32
  %i.beo = add nuw nsw i32 %.0.i19011481154, %i.ben
  %i.bep = shl nuw nsw i32 %i.bem, 2
  %i.beq = and i32 %i.bep, 252
  %i.ber = add nuw nsw i32 %i.beo, %i.beq         ; 2 uses
  %spec.select492 = select i1 %i.azi, i32 %i.ber, i32 0
  %spec.select493 = select i1 %i.azi, i32 0, i32 %i.ber
  br label %jpeg2000_bitbuf_get_bits_lsb.exit195.cont

jpeg2000_bitbuf_get_bits_lsb.exit195.cont:        ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit195, %bb.eh, %jpeg2000_bitbuf_get_bits_lsb.exit199
  %.sroa.0386.2 = phi i32 [ %i.bcu, %jpeg2000_bitbuf_get_bits_lsb.exit199 ], [ 0, %bb.eh ], [ %spec.select492, %jpeg2000_bitbuf_get_bits_lsb.exit195 ]
  %.sroa.18.0 = phi i32 [ %i.bcz, %jpeg2000_bitbuf_get_bits_lsb.exit199 ], [ 0, %bb.eh ], [ %spec.select493, %jpeg2000_bitbuf_get_bits_lsb.exit195 ]
  %i.bes = load i8, ptr %i.a, align 2, !tbaa !13  ; 2 uses
  %i.bet = icmp ult i8 %i.bes, 9
  br i1 %i.bet, label %switch.lookup, label %bb.eo

switch.lookup:                                    ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit195.cont
  %i.beu = zext nneg i8 %i.bes to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ff_jpeg2000_decode_htj2k.4, i64 %i.beu
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %bb.eo

bb.eo:                                            ; preds = %switch.lookup, %jpeg2000_bitbuf_get_bits_lsb.exit195.cont
  %.sroa.0414.0.i = phi i16 [ %switch.ext, %switch.lookup ], [ 1, %jpeg2000_bitbuf_get_bits_lsb.exit195.cont ]
  %i.bev = icmp ult i8 %i.ayq, 9
  br i1 %i.bev, label %switch.lookup1333, label %bb.ep

switch.lookup1333:                                ; preds = %bb.eo
  %i.bew = zext nneg i8 %i.ayq to i64
  %switch.gep1334 = getelementptr inbounds nuw i8, ptr @switch.table.ff_jpeg2000_decode_htj2k.4, i64 %i.bew
  %switch.load1335 = load i8, ptr %switch.gep1334, align 1
  %switch.ext1336 = zext i8 %switch.load1335 to i16
  br label %bb.ep

bb.ep:                                            ; preds = %switch.lookup1333, %bb.eo
  %.sroa.11.0.i = phi i16 [ %switch.ext1336, %switch.lookup1333 ], [ 1, %bb.eo ]
  %i.bex = load ptr, ptr %i.f, align 8, !tbaa !39 ; 16 uses
  %i.bey = getelementptr inbounds i8, ptr %i.bex, i64 %i.auq
  %i.bez = load i8, ptr %i.bey, align 1, !tbaa !13
  %i.bfa = getelementptr inbounds i8, ptr %i.bex, i64 %i.axa
  %i.bfb = load i8, ptr %i.bfa, align 1, !tbaa !13
  %i.bfc = getelementptr inbounds i8, ptr %i.bex, i64 %i.auu
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !13
  %i.bfe = getelementptr inbounds i8, ptr %i.bex, i64 %i.axe
  %i.bff = load i8, ptr %i.bfe, align 1, !tbaa !13
  %i.bfg = icmp sgt i32 %i.aun, 0
  %i.bfh = add nsw i32 %i.auo, -1
  %narrow508 = select i1 %i.bfg, i32 %i.bfh, i32 0
  %i.bfi = zext i32 %narrow508 to i64
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bex, i64 %i.bfi
  %i.bfk = load i8, ptr %i.bfj, align 1, !tbaa !13
  %i.bfl = icmp sgt i32 %i.awx, 0
  %i.bfm = add nsw i32 %i.awy, -1
  %narrow509 = select i1 %i.bfl, i32 %i.bfm, i32 0
  %i.bfn = zext i32 %narrow509 to i64
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bex, i64 %i.bfn
  %i.bfp = load i8, ptr %i.bfo, align 1, !tbaa !13
  %i.bfq = sext i32 %i.auo to i64
  %i.bfr = getelementptr i8, ptr %i.bex, i64 %i.bfq
  %i.bfs = getelementptr i8, ptr %i.bfr, i64 5
  %i.bft = load i8, ptr %i.bfs, align 1, !tbaa !13
  %i.bfu = sext i32 %i.awy to i64
  %i.bfv = getelementptr i8, ptr %i.bex, i64 %i.bfu
  %i.bfw = getelementptr i8, ptr %i.bfv, i64 5
  %i.bfx = load i8, ptr %i.bfw, align 1, !tbaa !13
  %i.bfy = tail call i8 @llvm.umax.i8(i8 %i.bez, i8 %i.bfd) ; 2 uses
  %i.bfz = tail call i8 @llvm.umax.i8(i8 %i.bfy, i8 %i.bft)
  %.in745.i = select i1 %i.avx, i8 %i.bfz, i8 %i.bfy ; 2 uses
  %i.bga = tail call i8 @llvm.umax.i8(i8 %.in745.i, i8 %i.bfk)
  %i.bgb = select i1 %i.avd, i8 %i.bga, i8 %.in745.i
  %i.bgc = tail call i8 @llvm.umax.i8(i8 %i.bfb, i8 %i.bff) ; 2 uses
  %i.bgd = tail call i8 @llvm.umax.i8(i8 %i.bgc, i8 %i.bfx)
  %.in746.i = select i1 %i.ayi, i8 %i.bgd, i8 %i.bgc ; 2 uses
  %i.bge = tail call i8 @llvm.umax.i8(i8 %.in746.i, i8 %i.bfp)
  %i.bgf = select i1 %i.axn, i8 %i.bge, i8 %.in746.i
  %i.bgg = zext i8 %i.bgb to i16
  %i.bgh = add nsw i16 %i.bgg, -1
  %i.bgi = mul nuw nsw i16 %i.bgh, %.sroa.0414.0.i
  %i.bgj = tail call i16 @llvm.smax.i16(i16 %i.bgi, i16 1)
  %i.bgk = zext i8 %i.bgf to i16
  %i.bgl = add nsw i16 %i.bgk, -1
  %i.bgm = mul nuw nsw i16 %i.bgl, %.sroa.11.0.i
  %i.bgn = tail call i16 @llvm.smax.i16(i16 %i.bgm, i16 1)
  %i.bgo = zext nneg i16 %i.bgj to i32
  %i.bgp = add nuw nsw i32 %.sroa.0386.2, %i.bgo  ; 5 uses
  %i.bgq = zext nneg i16 %i.bgn to i32
  %i.bgr = add nuw nsw i32 %.sroa.18.0, %i.bgq    ; 5 uses
  %i.bgs = icmp sgt i32 %i.bgp, %i.du
  %i.bgt = icmp sgt i32 %i.bgr, %i.du
  %or.cond755.i = select i1 %i.bgs, i1 true, i1 %i.bgt
  br i1 %or.cond755.i, label %jpeg2000_decode_ht_cleanup_segment.exit, label %.preheader525

.preheader525:                                    ; preds = %bb.ep
  %i.bgu = load i8, ptr %i.c, align 2, !tbaa !13
  %i.bgv = zext i8 %i.bgu to i32                  ; 4 uses
  %i.bgw = load i8, ptr %i.aty, align 1, !tbaa !13
  %i.bgx = zext i8 %i.bgw to i32                  ; 4 uses
  %i.bgy = load i8, ptr %i.awj, align 1, !tbaa !13
  %i.bgz = zext i8 %i.bgy to i32
  %i.bha = mul nuw nsw i32 %i.bgp, %i.bgz         ; 2 uses
  %i.bhb = and i32 %i.bgv, 1                      ; 2 uses
  %i.bhc = sub nsw i32 %i.bha, %i.bhb             ; 4 uses
  %i.bhd = load i8, ptr %i.ayu, align 1, !tbaa !13
  %i.bhe = zext i8 %i.bhd to i32
  %i.bhf = mul nuw nsw i32 %i.bgr, %i.bhe         ; 2 uses
  %i.bhg = and i32 %i.bgx, 1                      ; 2 uses
  %i.bhh = sub nsw i32 %i.bhf, %i.bhg             ; 4 uses
  %i.bhi = load i8, ptr %i.awn, align 1, !tbaa !13
  %i.bhj = zext i8 %i.bhi to i32
  %i.bhk = mul nuw nsw i32 %i.bgp, %i.bhj         ; 2 uses
  %i.bhl = lshr i32 %i.bgv, 1
  %i.bhm = and i32 %i.bhl, 1                      ; 2 uses
  %i.bhn = sub nsw i32 %i.bhk, %i.bhm             ; 4 uses
  %i.bho = load i8, ptr %i.ayy, align 1, !tbaa !13
  %i.bhp = zext i8 %i.bho to i32
  %i.bhq = mul nuw nsw i32 %i.bgr, %i.bhp         ; 2 uses
  %i.bhr = lshr i32 %i.bgx, 1
  %i.bhs = and i32 %i.bhr, 1                      ; 2 uses
  %i.bht = sub nsw i32 %i.bhq, %i.bhs             ; 4 uses
  %i.bhu = load i8, ptr %i.awr, align 1, !tbaa !13
  %i.bhv = zext i8 %i.bhu to i32
  %i.bhw = mul nuw nsw i32 %i.bgp, %i.bhv         ; 2 uses
  %i.bhx = lshr i32 %i.bgv, 2
  %i.bhy = and i32 %i.bhx, 1                      ; 2 uses
  %i.bhz = sub nsw i32 %i.bhw, %i.bhy             ; 4 uses
  %i.bia = load i8, ptr %i.azc, align 1, !tbaa !13
  %i.bib = zext i8 %i.bia to i32
  %i.bic = mul nuw nsw i32 %i.bgr, %i.bib         ; 2 uses
  %i.bid = lshr i32 %i.bgx, 2
  %i.bie = and i32 %i.bid, 1                      ; 2 uses
  %i.bif = sub nsw i32 %i.bic, %i.bie             ; 4 uses
  %i.big = load i8, ptr %i.awv, align 1, !tbaa !13
  %i.bih = zext i8 %i.big to i32
  %i.bii = mul nuw nsw i32 %i.bgp, %i.bih         ; 2 uses
  %i.bij = lshr i32 %i.bgv, 3
  %i.bik = and i32 %i.bij, 1                      ; 2 uses
  %i.bil = sub nsw i32 %i.bii, %i.bik             ; 4 uses
  %i.bim = load i8, ptr %i.azg, align 1, !tbaa !13
  %i.bin = zext i8 %i.bim to i32
  %i.bio = mul nuw nsw i32 %i.bgr, %i.bin         ; 2 uses
  %i.bip = lshr i32 %i.bgx, 3
  %i.biq = and i32 %i.bip, 1                      ; 2 uses
end_hunk_2
begin_hunk_3_@ff_jpeg2000_decode_htj2k:bb.a
  %.not.i268.3 = icmp ule i8 %.sroa.52.14.2, %i.bvn
  %i.bvo = icmp ult i8 %.sroa.52.14.2, 32
  %or.cond488.3 = and i1 %i.bvo, %.not.i268.3
  br i1 %or.cond488.3, label %.lr.ph.i309.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3

.lr.ph.i309.3:                                    ; preds = %bb.fr, %bb.ft
  %.sroa.0320.38.3 = phi i32 [ %.sroa.0320.39.3, %bb.ft ], [ %.sroa.0320.14.2, %bb.fr ]
  %.sroa.38.38.3 = phi i32 [ %.sroa.38.39.3, %bb.ft ], [ %.sroa.38.14.2, %bb.fr ]
  %i.bvp = phi i64 [ %i.bwg, %bb.ft ], [ %.sroa.84339.14.2, %bb.fr ]
  %i.bvq = phi i32 [ %i.bwb, %bb.ft ], [ %.sroa.0320.14.2, %bb.fr ] ; 4 uses
  %i.bvr = phi i32 [ %i.bwc, %bb.ft ], [ %.sroa.38.14.2, %bb.fr ] ; 2 uses
  %i.bvs = phi i8 [ %i.bwi, %bb.ft ], [ %.sroa.52.14.2, %bb.fr ] ; 2 uses
  %i.bvt = icmp eq i32 %i.bvr, 255
  %i.bvu = icmp ult i32 %i.bvq, %i.cl
  br i1 %i.bvu, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %.lr.ph.i309.3
  %i.bvv = sext i32 %i.bvq to i64
  %i.bvw = getelementptr inbounds i8, ptr %i.bc, i64 %i.bvv
  %i.bvx = load i8, ptr %i.bvw, align 1, !tbaa !13 ; 2 uses
  %i.bvy = zext i8 %i.bvx to i32                  ; 2 uses
  %i.bvz = add nuw nsw i32 %i.bvq, 1              ; 2 uses
  %i.bwa = zext i8 %i.bvx to i64
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.lr.ph.i309.3
  %.sroa.0320.39.3 = phi i32 [ %i.bvz, %bb.fs ], [ %.sroa.0320.38.3, %.lr.ph.i309.3 ] ; 2 uses
  %.sroa.38.39.3 = phi i32 [ %i.bvy, %bb.fs ], [ %.sroa.38.38.3, %.lr.ph.i309.3 ] ; 2 uses
  %i.bwb = phi i32 [ %i.bvz, %bb.fs ], [ %i.bvq, %.lr.ph.i309.3 ]
  %i.bwc = phi i32 [ %i.bvy, %bb.fs ], [ %i.bvr, %.lr.ph.i309.3 ]
  %i.bwd = phi i64 [ %i.bwa, %bb.fs ], [ 255, %.lr.ph.i309.3 ]
  %i.bwe = zext nneg i8 %i.bvs to i64
  %i.bwf = shl nuw nsw i64 %i.bwd, %i.bwe
  %i.bwg = or i64 %i.bwf, %i.bvp                  ; 2 uses
  %i.bwh = select i1 %i.bvt, i8 7, i8 8
  %i.bwi = add nuw nsw i8 %i.bwh, %i.bvs          ; 3 uses
  %i.bwj = icmp samesign ult i8 %i.bwi, 32
  br i1 %i.bwj, label %.lr.ph.i309.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3:   ; preds = %bb.ft, %bb.fr
  %.sroa.0320.19.3 = phi i32 [ %.sroa.0320.14.2, %bb.fr ], [ %.sroa.0320.39.3, %bb.ft ]
  %.sroa.38.19.3 = phi i32 [ %.sroa.38.14.2, %bb.fr ], [ %.sroa.38.39.3, %bb.ft ]
  %.sroa.84339.19.3 = phi i64 [ %.sroa.84339.14.2, %bb.fr ], [ %i.bwg, %bb.ft ] ; 2 uses
  %.sroa.52.19.3 = phi i8 [ %.sroa.52.14.2, %bb.fr ], [ %i.bwi, %bb.ft ]
  %.mask510.3 = and i32 %i.bir, 255
  %i.bwk = zext nneg i32 %.mask510.3 to i64       ; 2 uses
  %notmask.i269.3 = shl nsw i64 -1, %i.bwk
  %i.bwl = xor i64 %notmask.i269.3, -1
  %i.bwm = and i64 %.sroa.84339.19.3, %i.bwl
  %i.bwn = lshr i64 %.sroa.84339.19.3, %i.bwk
  %i.bwo = sub i8 %.sroa.52.19.3, %i.bvn
  %i.bwp = trunc i64 %i.bwm to i32
  %i.bwq = shl nuw i32 %i.bvl, %i.bir
  %i.bwr = add nsw i32 %i.bwq, %i.bwp
  br label %jpeg2000_decode_mag_sgn.exit258.3

jpeg2000_decode_mag_sgn.exit258.3:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3, %bb.fq
  %.sroa.0320.14.3 = phi i32 [ %.sroa.0320.19.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ %.sroa.0320.14.2, %bb.fq ] ; 2 uses
  %.sroa.38.14.3 = phi i32 [ %.sroa.38.19.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ %.sroa.38.14.2, %bb.fq ] ; 2 uses
  %.sroa.84339.14.3 = phi i64 [ %i.bwn, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ %.sroa.84339.14.2, %bb.fq ] ; 2 uses
  %.sroa.52.14.3 = phi i8 [ %i.bwo, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ %.sroa.52.14.2, %bb.fq ] ; 2 uses
  %.0.i257.3 = phi i32 [ %i.bwr, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ 0, %bb.fq ] ; 3 uses
  %.not.i225.3 = icmp eq i32 %i.bio, %i.biq
  br i1 %.not.i225.3, label %recover_mag_sgn.exit230, label %ff_clz_c.exit.i229.3

ff_clz_c.exit.i229.3:                             ; preds = %jpeg2000_decode_mag_sgn.exit258.3
  %i.bws = lshr i32 %.0.i257.3, 1
  %i.bwt = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.bws, i1 false)
  %i.bwu = trunc nuw nsw i32 %i.bwt to i8
  %i.bwv = or disjoint i64 %i.bqa, 3              ; 2 uses
  %i.bww = sub nuw nsw i8 33, %i.bwu
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bex, i64 %i.bwv
  store i8 %i.bww, ptr %i.bwx, align 1, !tbaa !13
  %i.bwy = ashr i32 %.0.i257.3, 1
  %i.bwz = add nsw i32 %i.bwy, 1
  %i.bxa = getelementptr inbounds nuw [4 x i8], ptr %i.bis, i64 %i.bwv
  %i.bxb = shl i32 %i.bwz, %i.atz
  %i.bxc = shl i32 %.0.i257.3, 31
  %i.bxd = or i32 %i.bxc, %i.bxb
  %i.bxe = or i32 %i.bxd, %i.aub
  store i32 %i.bxe, ptr %i.bxa, align 4, !tbaa !12
  br label %recover_mag_sgn.exit230

recover_mag_sgn.exit230:                          ; preds = %ff_clz_c.exit.i229.3, %jpeg2000_decode_mag_sgn.exit258.3
  %i.bxf = add i16 %.3.i698, 2                    ; 3 uses
  %i.bxg = zext i16 %i.bxf to i32                 ; 4 uses
  %i.bxh = add i32 %.neg497, %i.bxg
  %i.bxi = icmp slt i32 %i.bxh, %i.em
  %i.bxj = icmp samesign ugt i32 %i.att, %i.bxg
  %or.cond753.i = select i1 %i.bxi, i1 %i.bxj, i1 false
  br i1 %or.cond753.i, label %.lr.ph699, label %.critedge.i, !llvm.loop !29

.critedge.i:                                      ; preds = %recover_mag_sgn.exit230, %.preheader527
  %.sroa.0320.3.lcssa = phi i32 [ %.sroa.0320.2718, %.preheader527 ], [ %.sroa.0320.14.3, %recover_mag_sgn.exit230 ] ; 5 uses
  %.sroa.38.3.lcssa = phi i32 [ %.sroa.38.2719, %.preheader527 ], [ %.sroa.38.14.3, %recover_mag_sgn.exit230 ] ; 5 uses
  %.sroa.84339.3.lcssa = phi i64 [ %.sroa.84339.2720, %.preheader527 ], [ %.sroa.84339.14.3, %recover_mag_sgn.exit230 ] ; 4 uses
  %.sroa.52.3.lcssa = phi i8 [ %.sroa.52.2722, %.preheader527 ], [ %.sroa.52.14.3, %recover_mag_sgn.exit230 ] ; 6 uses
  %.3.i.lcssa = phi i16 [ %.2.i724, %.preheader527 ], [ %i.bxf, %recover_mag_sgn.exit230 ] ; 2 uses
  %.lcssa537 = phi i32 [ %i.aud, %.preheader527 ], [ %i.bxg, %recover_mag_sgn.exit230 ] ; 4 uses
  br i1 %.not.i, label %bb.gw, label %bb.fu

bb.fu:                                            ; preds = %.critedge.i
  %i.bxk = load ptr, ptr %i.e, align 8, !tbaa !39 ; 9 uses
  %i.bxl = add nsw i32 %.lcssa537, %i.dy          ; 2 uses
  %i.bxm = shl nsw i32 %i.bxl, 2                  ; 6 uses
  %i.bxn = or disjoint i32 %i.bxm, 1
  %i.bxo = sext i32 %i.bxn to i64                 ; 2 uses
  %i.bxp = getelementptr inbounds i8, ptr %i.bxk, i64 %i.bxo
  %i.bxq = load i8, ptr %i.bxp, align 1, !tbaa !13
  %i.bxr = or disjoint i32 %i.bxm, 3
  %i.bxs = sext i32 %i.bxr to i64                 ; 2 uses
  %i.bxt = getelementptr inbounds i8, ptr %i.bxk, i64 %i.bxs
  %i.bxu = load i8, ptr %i.bxt, align 1, !tbaa !13
  %i.bxv = zext i8 %i.bxu to i16
  %i.bxw = shl nuw nsw i16 %i.bxv, 2
  %i.bxx = zext i8 %i.bxq to i16
  %i.bxy = add nuw nsw i16 %i.bxw, %i.bxx         ; 2 uses
  %i.bxz = zext i16 %.3.i.lcssa to i64
  %i.bya = mul i64 %i.atr, %i.bxz
  %i.byb = icmp ugt i64 %i.bya, %i.atq            ; 2 uses
  br i1 %i.byb, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.byc = sext i32 %i.bxm to i64
  %i.byd = getelementptr i8, ptr %i.bxk, i64 %i.byc
  %i.bye = getelementptr i8, ptr %i.byd, i64 -1
  %i.byf = load i8, ptr %i.bye, align 1, !tbaa !13
  %i.byg = zext i8 %i.byf to i16
  %i.byh = or i16 %i.bxy, %i.byg
  %i.byi = shl nuw nsw i32 %.lcssa537, 2
  %i.byj = zext nneg i32 %i.byi to i64
  %i.byk = getelementptr i8, ptr %i.bxk, i64 %i.byj ; 2 uses
  %i.byl = getelementptr i8, ptr %i.byk, i64 -1
  %i.bym = load i8, ptr %i.byl, align 1, !tbaa !13
  %i.byn = getelementptr i8, ptr %i.byk, i64 -2
  %i.byo = load i8, ptr %i.byn, align 1, !tbaa !13
  %i.byp = or i8 %i.byo, %i.bym
  %i.byq = zext i8 %i.byp to i16
  %i.byr = shl nuw nsw i16 %i.byq, 1
  %i.bys = add nuw nsw i16 %i.byr, %i.byh
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.2662.i = phi i16 [ %i.bxy, %bb.fu ], [ %i.bys, %bb.fv ] ; 2 uses
  %i.byt = add nuw nsw i32 %.lcssa537, 1          ; 2 uses
  %i.byu = zext nneg i32 %i.byt to i64
  %i.byv = mul i64 %i.atr, %i.byu
  %i.byw = icmp ugt i64 %i.byv, %i.atq            ; 2 uses
  br i1 %i.byw, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.byx = sext i32 %i.bxm to i64
  %i.byy = getelementptr i8, ptr %i.bxk, i64 %i.byx
  %i.byz = getelementptr i8, ptr %i.byy, i64 5
  %i.bza = load i8, ptr %i.byz, align 1, !tbaa !13
  %i.bzb = zext i8 %i.bza to i16
  %i.bzc = shl nuw nsw i16 %i.bzb, 2
  %i.bzd = or i16 %i.bzc, %.2662.i
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.3663.i = phi i16 [ %.2662.i, %bb.fw ], [ %i.bzd, %bb.fx ]
  call fastcc void @jpeg2000_decode_sig_emb(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dec_cxt_vlc_table1, ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i8 noundef zeroext 0, i16 noundef zeroext %.3663.i, i32 noundef range(i32 2, 0) %i.ar, i32 noundef %i.cl)
  %i.bze = load i8, ptr %i.a, align 2, !tbaa !13  ; 6 uses
  %i.bzf = shl nuw nsw i32 %.lcssa537, 2
  %i.bzg = zext nneg i32 %i.bzf to i64            ; 6 uses
  %i.bzh = and i8 %i.bze, 1
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bxk, i64 %i.bzg ; 2 uses
  store i8 %i.bzh, ptr %i.bzi, align 1, !tbaa !13
  %i.bzj = lshr i8 %i.bze, 1
  %i.bzk = and i8 %i.bzj, 1
  %i.bzl = or disjoint i64 %i.bzg, 1              ; 3 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bxk, i64 %i.bzl ; 2 uses
  store i8 %i.bzk, ptr %i.bzm, align 1, !tbaa !13
  %i.bzn = lshr i8 %i.bze, 2
  %i.bzo = and i8 %i.bzn, 1
  %i.bzp = or disjoint i64 %i.bzg, 2              ; 3 uses
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bxk, i64 %i.bzp ; 2 uses
  store i8 %i.bzo, ptr %i.bzq, align 1, !tbaa !13
  %i.bzr = lshr i8 %i.bze, 3
  %i.bzs = and i8 %i.bzr, 1
  %i.bzt = or disjoint i64 %i.bzg, 3              ; 3 uses
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bxk, i64 %i.bzt ; 2 uses
  store i8 %i.bzs, ptr %i.bzu, align 1, !tbaa !13
  %i.bzv = load i8, ptr %i.b, align 2, !tbaa !13
  %i.bzw = icmp eq i8 %i.bzv, 1
  br i1 %i.bzw, label %bb.fz, label %bb.gf

bb.fz:                                            ; preds = %bb.fy
  %i.bzx = load i8, ptr %i.atw, align 8, !tbaa !23 ; 2 uses
  %i.bzy = icmp ult i8 %i.bzx, 3
  br i1 %i.bzy, label %bb.ga, label %vlc_decode_u_prefix.exit172

bb.ga:                                            ; preds = %bb.fz
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre944 = load i8, ptr %i.atw, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit172

vlc_decode_u_prefix.exit172:                      ; preds = %bb.fz, %bb.ga
  %i.bzz = phi i8 [ %i.bzx, %bb.fz ], [ %.pre944, %bb.ga ]
  %i.caa = load i64, ptr %i.atx, align 8, !tbaa !16 ; 3 uses
  %i.cab = and i64 %i.caa, 7                      ; 3 uses
  %i.cac = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.cab
  %i.cad = load i8, ptr %i.cac, align 1, !tbaa !13 ; 2 uses
  %i.cae = zext nneg i8 %i.cad to i64
  %i.caf = lshr i64 %i.caa, %i.cae                ; 3 uses
  store i64 %i.caf, ptr %i.atx, align 8, !tbaa !16
  %i.cag = sub i8 %i.bzz, %i.cad                  ; 4 uses
  store i8 %i.cag, ptr %i.atw, align 8, !tbaa !23
  %i.cah = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.cab
  %i.cai = load i8, ptr %i.cah, align 1, !tbaa !13
  %i.caj = icmp ne i64 %i.cab, 4
  %21 = and i64 %i.caa, 3
  %.not498 = icmp eq i64 %21, 0
  br i1 %.not498, label %bb.gb, label %jpeg2000_bitbuf_get_bits_lsb.exit

bb.gb:                                            ; preds = %vlc_decode_u_prefix.exit172
  %i.cak = icmp ult i8 %i.cag, 5
  br i1 %i.cak, label %bb.gc, label %vlc_decode_u_suffix.exit193

bb.gc:                                            ; preds = %bb.gb
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre945 = load i64, ptr %i.atx, align 8, !tbaa !16
  %.pre946 = load i8, ptr %i.atw, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit193

vlc_decode_u_suffix.exit193:                      ; preds = %bb.gb, %bb.gc
  %i.cal = phi i8 [ %i.cag, %bb.gb ], [ %.pre946, %bb.gc ]
  %i.cam = phi i64 [ %i.caf, %bb.gb ], [ %.pre945, %bb.gc ] ; 2 uses
  %i.can = trunc i64 %i.cam to i32
  %i.cao = and i32 %i.can, 31
  %i.cap = zext i1 %i.caj to i64                  ; 2 uses
  %i.caq = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.cap
  %i.car = load i32, ptr %i.caq, align 4, !tbaa !12 ; 2 uses
  %i.cas = trunc i32 %i.car to i8
  %.mask499.a = and i32 %i.car, 255
  %i.cat = zext nneg i32 %.mask499.a to i64
  %i.cau = lshr i64 %i.cam, %i.cat                ; 3 uses
  store i64 %i.cau, ptr %i.atx, align 8, !tbaa !16
  %i.cav = sub i8 %i.cal, %i.cas                  ; 4 uses
  store i8 %i.cav, ptr %i.atw, align 8, !tbaa !23
  %i.caw = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.cap
  %i.cax = load i32, ptr %i.caw, align 4, !tbaa !12
  %i.cay = and i32 %i.cao, %i.cax
  %.fr500 = freeze i32 %i.cay                     ; 4 uses
  %i.caz = icmp ugt i32 %.fr500, 27
  br i1 %i.caz, label %bb.gd, label %jpeg2000_bitbuf_get_bits_lsb.exit

bb.gd:                                            ; preds = %vlc_decode_u_suffix.exit193
  %i.cba = icmp ult i8 %i.cav, 4
  br i1 %i.cba, label %bb.ge, label %jpeg2000_bitbuf_get_bits_lsb.exit

bb.ge:                                            ; preds = %bb.gd
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre947 = load i64, ptr %i.atx, align 8, !tbaa !16
  %.pre948 = load i8, ptr %i.atw, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit

jpeg2000_bitbuf_get_bits_lsb.exit:                ; preds = %vlc_decode_u_prefix.exit172, %vlc_decode_u_suffix.exit193, %bb.gd, %bb.ge
  %i.cbb = phi i8 [ %.pre948, %bb.ge ], [ %i.cav, %bb.gd ], [ %i.cav, %vlc_decode_u_suffix.exit193 ], [ %i.cag, %vlc_decode_u_prefix.exit172 ]
  %i.cbc = phi i64 [ %.pre947, %bb.ge ], [ %i.cau, %bb.gd ], [ %i.cau, %vlc_decode_u_suffix.exit193 ], [ %i.caf, %vlc_decode_u_prefix.exit172 ] ; 2 uses
  %i.cbd = phi i8 [ 4, %bb.ge ], [ 4, %bb.gd ], [ 0, %vlc_decode_u_suffix.exit193 ], [ 0, %vlc_decode_u_prefix.exit172 ] ; 2 uses
  %.0.i192459463 = phi i32 [ %.fr500, %bb.ge ], [ %.fr500, %bb.gd ], [ %.fr500, %vlc_decode_u_suffix.exit193 ], [ 0, %vlc_decode_u_prefix.exit172 ]
  %i.cbe = zext nneg i8 %i.cbd to i64             ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.cbe
  %i.cbf = xor i64 %notmask.i, -1
  %i.cbg = and i64 %i.cbc, %i.cbf
  %i.cbh = lshr i64 %i.cbc, %i.cbe
  store i64 %i.cbh, ptr %i.atx, align 8, !tbaa !16
  %i.cbi = sub i8 %i.cbb, %i.cbd
  store i8 %i.cbi, ptr %i.atw, align 8, !tbaa !23
  %i.cbj = trunc nuw nsw i64 %i.cbg to i32
  %i.cbk = zext i8 %i.cai to i32
  %i.cbl = add nuw nsw i32 %.0.i192459463, %i.cbk
  %i.cbm = shl nuw nsw i32 %i.cbj, 2
  %i.cbn = and i32 %i.cbm, 252
  %i.cbo = add nuw nsw i32 %i.cbl, %i.cbn
  br label %bb.gf

bb.gf:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit, %bb.fy
  %.sroa.0386.1 = phi i32 [ %i.cbo, %jpeg2000_bitbuf_get_bits_lsb.exit ], [ 0, %bb.fy ]
  %i.cbp = icmp ult i8 %i.bze, 9
  br i1 %i.cbp, label %switch.lookup1337, label %bb.gg

switch.lookup1337:                                ; preds = %bb.gf
  %i.cbq = zext nneg i8 %i.bze to i64
  %switch.gep1338 = getelementptr inbounds nuw i8, ptr @switch.table.ff_jpeg2000_decode_htj2k.4, i64 %i.cbq
  %switch.load1339 = load i8, ptr %switch.gep1338, align 1
  %switch.ext1340 = zext i8 %switch.load1339 to i16
  br label %bb.gg

bb.gg:                                            ; preds = %switch.lookup1337, %bb.gf
  %.sroa.0414.1.i = phi i16 [ %switch.ext1340, %switch.lookup1337 ], [ 1, %bb.gf ]
  %i.cbr = load ptr, ptr %i.f, align 8, !tbaa !39 ; 8 uses
  %i.cbs = getelementptr inbounds i8, ptr %i.cbr, i64 %i.bxo
  %i.cbt = load i8, ptr %i.cbs, align 1, !tbaa !13
  %i.cbu = getelementptr inbounds i8, ptr %i.cbr, i64 %i.bxs
  %i.cbv = load i8, ptr %i.cbu, align 1, !tbaa !13
  %i.cbw = icmp sgt i32 %i.bxl, 0
  %i.cbx = add nsw i32 %i.bxm, -1
  %narrow = select i1 %i.cbw, i32 %i.cbx, i32 0
  %i.cby = zext i32 %narrow to i64
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cbr, i64 %i.cby
  %i.cca = load i8, ptr %i.cbz, align 1, !tbaa !13
  %i.ccb = sext i32 %i.bxm to i64
  %i.ccc = getelementptr i8, ptr %i.cbr, i64 %i.ccb
  %i.ccd = getelementptr i8, ptr %i.ccc, i64 5
  %i.cce = load i8, ptr %i.ccd, align 1, !tbaa !13
  %i.ccf = tail call i8 @llvm.umax.i8(i8 %i.cbt, i8 %i.cbv) ; 2 uses
  %i.ccg = tail call i8 @llvm.umax.i8(i8 %i.ccf, i8 %i.cce)
  %.in.i = select i1 %i.byw, i8 %i.ccg, i8 %i.ccf ; 2 uses
  %i.cch = tail call i8 @llvm.umax.i8(i8 %.in.i, i8 %i.cca)
  %i.cci = select i1 %i.byb, i8 %i.cch, i8 %.in.i
  %i.ccj = zext i8 %i.cci to i16
  %i.cck = add nsw i16 %i.ccj, -1
  %i.ccl = mul nuw nsw i16 %i.cck, %.sroa.0414.1.i
  %i.ccm = tail call i16 @llvm.smax.i16(i16 %i.ccl, i16 1)
  %i.ccn = zext nneg i16 %i.ccm to i32
  %i.cco = add nuw nsw i32 %.sroa.0386.1, %i.ccn  ; 5 uses
  %i.ccp = icmp sgt i32 %i.cco, %i.du
  br i1 %i.ccp, label %jpeg2000_decode_ht_cleanup_segment.exit, label %.preheader526

.preheader526:                                    ; preds = %bb.gg
  %i.ccq = load i8, ptr %i.c, align 2, !tbaa !13
  %i.ccr = zext i8 %i.ccq to i32                  ; 4 uses
  %i.ccs = load i8, ptr %i.bzi, align 1, !tbaa !13
  %i.cct = zext i8 %i.ccs to i32
  %i.ccu = mul nsw i32 %i.cco, %i.cct             ; 2 uses
  %i.ccv = and i32 %i.ccr, 1                      ; 2 uses
  %i.ccw = sub nsw i32 %i.ccu, %i.ccv             ; 4 uses
  %i.ccx = load i8, ptr %i.bzm, align 1, !tbaa !13
  %i.ccy = zext i8 %i.ccx to i32
  %i.ccz = mul nsw i32 %i.cco, %i.ccy             ; 2 uses
  %i.cda = lshr i32 %i.ccr, 1
  %i.cdb = and i32 %i.cda, 1                      ; 2 uses
  %i.cdc = sub nsw i32 %i.ccz, %i.cdb             ; 4 uses
  %i.cdd = load i8, ptr %i.bzq, align 1, !tbaa !13
  %i.cde = zext i8 %i.cdd to i32
  %i.cdf = mul nsw i32 %i.cco, %i.cde             ; 2 uses
  %i.cdg = lshr i32 %i.ccr, 2
  %i.cdh = and i32 %i.cdg, 1                      ; 2 uses
  %i.cdi = sub nsw i32 %i.cdf, %i.cdh             ; 4 uses
  %i.cdj = load i8, ptr %i.bzu, align 1, !tbaa !13
  %i.cdk = zext i8 %i.cdj to i32
  %i.cdl = mul nsw i32 %i.cco, %i.cdk             ; 2 uses
  %i.cdm = lshr i32 %i.ccr, 3
  %i.cdn = and i32 %i.cdm, 1                      ; 2 uses
  %i.cdo = sub nsw i32 %i.cdl, %i.cdn             ; 4 uses
  %i.cdp = load ptr, ptr %i.g, align 8, !tbaa !37 ; 4 uses
  %i.cdq = load i8, ptr %i.d, align 2, !tbaa !13
  %i.cdr = zext i8 %i.cdq to i32                  ; 4 uses
  %i.cds = and i32 %i.cdr, 1
  %i.cdt = icmp sgt i32 %i.ccw, 0
  br i1 %i.cdt, label %bb.gh, label %jpeg2000_decode_mag_sgn.exit254

bb.gh:                                            ; preds = %.preheader526
  %i.cdu = trunc i32 %i.ccw to i8                 ; 2 uses
  %.not.i274 = icmp ule i8 %.sroa.52.3.lcssa, %i.cdu
  %i.cdv = icmp ult i8 %.sroa.52.3.lcssa, 32
  %or.cond489 = and i1 %i.cdv, %.not.i274
  br i1 %or.cond489, label %.lr.ph.i315, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit276

.lr.ph.i315:                                      ; preds = %bb.gh, %bb.gj
  %.sroa.0320.41 = phi i32 [ %.sroa.0320.42, %bb.gj ], [ %.sroa.0320.3.lcssa, %bb.gh ]
  %.sroa.38.41 = phi i32 [ %.sroa.38.42, %bb.gj ], [ %.sroa.38.3.lcssa, %bb.gh ]
  %i.cdw = phi i64 [ %i.cen, %bb.gj ], [ %.sroa.84339.3.lcssa, %bb.gh ]
  %i.cdx = phi i32 [ %i.cei, %bb.gj ], [ %.sroa.0320.3.lcssa, %bb.gh ] ; 4 uses
  %i.cdy = phi i32 [ %i.cej, %bb.gj ], [ %.sroa.38.3.lcssa, %bb.gh ] ; 2 uses
  %i.cdz = phi i8 [ %i.cep, %bb.gj ], [ %.sroa.52.3.lcssa, %bb.gh ] ; 2 uses
  %i.cea = icmp eq i32 %i.cdy, 255
  %i.ceb = icmp ult i32 %i.cdx, %i.cl
  br i1 %i.ceb, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %.lr.ph.i315
  %i.cec = sext i32 %i.cdx to i64
  %i.ced = getelementptr inbounds i8, ptr %i.bc, i64 %i.cec
  %i.cee = load i8, ptr %i.ced, align 1, !tbaa !13 ; 2 uses
  %i.cef = zext i8 %i.cee to i32                  ; 2 uses
  %i.ceg = add nuw nsw i32 %i.cdx, 1              ; 2 uses
  %i.ceh = zext i8 %i.cee to i64
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph.i315
  %.sroa.0320.42 = phi i32 [ %i.ceg, %bb.gi ], [ %.sroa.0320.41, %.lr.ph.i315 ] ; 2 uses
  %.sroa.38.42 = phi i32 [ %i.cef, %bb.gi ], [ %.sroa.38.41, %.lr.ph.i315 ] ; 2 uses
  %i.cei = phi i32 [ %i.ceg, %bb.gi ], [ %i.cdx, %.lr.ph.i315 ]
  %i.cej = phi i32 [ %i.cef, %bb.gi ], [ %i.cdy, %.lr.ph.i315 ]
  %i.cek = phi i64 [ %i.ceh, %bb.gi ], [ 255, %.lr.ph.i315 ]
  %i.cel = zext nneg i8 %i.cdz to i64
  %i.cem = shl nuw nsw i64 %i.cek, %i.cel
  %i.cen = or i64 %i.cem, %i.cdw                  ; 2 uses
  %i.ceo = select i1 %i.cea, i8 7, i8 8
  %i.cep = add nuw nsw i8 %i.ceo, %i.cdz          ; 3 uses
  %i.ceq = icmp samesign ult i8 %i.cep, 32
  br i1 %i.ceq, label %.lr.ph.i315, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit276, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit276:     ; preds = %bb.gj, %bb.gh
  %.sroa.0320.21 = phi i32 [ %.sroa.0320.3.lcssa, %bb.gh ], [ %.sroa.0320.42, %bb.gj ]
  %.sroa.38.21 = phi i32 [ %.sroa.38.3.lcssa, %bb.gh ], [ %.sroa.38.42, %bb.gj ]
  %.sroa.84339.21 = phi i64 [ %.sroa.84339.3.lcssa, %bb.gh ], [ %i.cen, %bb.gj ] ; 2 uses
  %.sroa.52.21 = phi i8 [ %.sroa.52.3.lcssa, %bb.gh ], [ %i.cep, %bb.gj ]
  %.mask501 = and i32 %i.ccw, 255
  %i.cer = zext nneg i32 %.mask501 to i64         ; 2 uses
  %notmask.i275 = shl nsw i64 -1, %i.cer
  %i.ces = xor i64 %notmask.i275, -1
  %i.cet = and i64 %.sroa.84339.21, %i.ces
  %i.ceu = lshr i64 %.sroa.84339.21, %i.cer
  %i.cev = sub i8 %.sroa.52.21, %i.cdu
  %i.cew = trunc i64 %i.cet to i32
  %i.cex = shl nuw i32 %i.cds, %i.ccw
  %i.cey = add nsw i32 %i.cex, %i.cew
  br label %jpeg2000_decode_mag_sgn.exit254

jpeg2000_decode_mag_sgn.exit254:                  ; preds = %.preheader526, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276
  %.sroa.0320.12 = phi i32 [ %.sroa.0320.21, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276 ], [ %.sroa.0320.3.lcssa, %.preheader526 ] ; 4 uses
end_hunk_3
