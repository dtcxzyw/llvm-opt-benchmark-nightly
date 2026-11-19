Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vsprintf?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
begin_hunk_0_@vsnprintf:bb.a
bb.cs:                                            ; preds = %bb.cs, %put_dec_helper4.exit.i.i
  %.012.i.i38.i.i = phi ptr [ %i.f, %put_dec_helper4.exit.i.i ], [ %i.jr, %bb.cs ] ; 2 uses
  %.0811.i.i39.i.i = phi i32 [ 0, %put_dec_helper4.exit.i.i ], [ %i.js, %bb.cs ]
  %.0910.i.i40.i.i = phi i32 [ %i.jl, %put_dec_helper4.exit.i.i ], [ %i.jn, %bb.cs ] ; 2 uses
  %i.jm = mul i32 %.0910.i.i40.i.i, 3277
  %i.jn = lshr i32 %i.jm, 15                      ; 3 uses
  %.neg.i.i41.i.i = mul nuw nsw i32 %i.jn, 246
  %i.jo = add nsw i32 %.neg.i.i41.i.i, %.0910.i.i40.i.i
  %i.jp = trunc i32 %i.jo to i8
  %i.jq = add i8 %i.jp, 48
  %i.jr = getelementptr inbounds i8, ptr %.012.i.i38.i.i, i64 -1 ; 2 uses
  store i8 %i.jq, ptr %i.jr, align 1
  %i.js = add nuw nsw i32 %.0811.i.i39.i.i, 1     ; 2 uses
  %exitcond.not.i.i42.i.i = icmp eq i32 %i.js, 3
  br i1 %exitcond.not.i.i42.i.i, label %put_dec_helper4.exit43.i.i, label %bb.cs, !llvm.loop !6

put_dec_helper4.exit43.i.i:                       ; preds = %bb.cs
  %i.jt = trunc i32 %i.jn to i8
  %i.ju = add i8 %i.jt, 48
  %i.jv = getelementptr inbounds i8, ptr %.012.i.i38.i.i, i64 -2
  store i8 %i.ju, ptr %i.jv, align 1
  %i.jw = mul nuw nsw i32 %i.if, 4749
  %i.jx = mul nuw nsw i32 %i.ie, 42
  %i.jy = add nuw nsw i32 %i.jw, %i.jx
  %i.jz = add nuw nsw i32 %i.jy, %i.jk            ; 2 uses
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = mul nuw nsw i64 %i.ka, 879609303
  %i.kc = lshr i64 %i.kb, 43
  %i.kd = trunc nuw nsw i64 %i.kc to i32          ; 2 uses
  %.neg.i44.i.i = mul nsw i32 %i.kd, -10000
  %i.ke = add nsw i32 %.neg.i44.i.i, %i.jz
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ct, %put_dec_helper4.exit43.i.i
  %.012.i.i45.i.i = phi ptr [ %i.g, %put_dec_helper4.exit43.i.i ], [ %i.kk, %bb.ct ] ; 2 uses
  %.0811.i.i46.i.i = phi i32 [ 0, %put_dec_helper4.exit43.i.i ], [ %i.kl, %bb.ct ]
  %.0910.i.i47.i.i = phi i32 [ %i.ke, %put_dec_helper4.exit43.i.i ], [ %i.kg, %bb.ct ] ; 2 uses
  %i.kf = mul i32 %.0910.i.i47.i.i, 3277
  %i.kg = lshr i32 %i.kf, 15                      ; 3 uses
  %.neg.i.i48.i.i = mul nuw nsw i32 %i.kg, 246
  %i.kh = add nsw i32 %.neg.i.i48.i.i, %.0910.i.i47.i.i
  %i.ki = trunc i32 %i.kh to i8
  %i.kj = add i8 %i.ki, 48
  %i.kk = getelementptr inbounds i8, ptr %.012.i.i45.i.i, i64 -1 ; 2 uses
  store i8 %i.kj, ptr %i.kk, align 1
  %i.kl = add nuw nsw i32 %.0811.i.i46.i.i, 1     ; 2 uses
  %exitcond.not.i.i49.i.i = icmp eq i32 %i.kl, 3
  br i1 %exitcond.not.i.i49.i.i, label %put_dec_helper4.exit50.i.i, label %bb.ct, !llvm.loop !6

put_dec_helper4.exit50.i.i:                       ; preds = %bb.ct
  %i.km = trunc i32 %i.kg to i8
  %i.kn = add i8 %i.km, 48
  %i.ko = getelementptr inbounds i8, ptr %.012.i.i45.i.i, i64 -2
  store i8 %i.kn, ptr %i.ko, align 1
  %i.kp = mul nuw nsw i32 %i.if, 281
  %i.kq = add nuw nsw i32 %i.kp, %i.kd            ; 2 uses
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = mul nuw nsw i64 %i.kr, 879609303
  %i.kt = lshr i64 %i.ks, 43
  %i.ku = trunc nuw nsw i64 %i.kt to i32          ; 2 uses
  %.neg.i51.i.i = mul nsw i32 %i.ku, -10000
  %i.kv = add nsw i32 %.neg.i51.i.i, %i.kq
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %put_dec_helper4.exit50.i.i
  %.012.i.i52.i.i = phi ptr [ %i.h, %put_dec_helper4.exit50.i.i ], [ %i.lb, %bb.cu ] ; 2 uses
  %.0811.i.i53.i.i = phi i32 [ 0, %put_dec_helper4.exit50.i.i ], [ %i.lc, %bb.cu ]
  %.0910.i.i54.i.i = phi i32 [ %i.kv, %put_dec_helper4.exit50.i.i ], [ %i.kx, %bb.cu ] ; 2 uses
  %i.kw = mul i32 %.0910.i.i54.i.i, 3277
  %i.kx = lshr i32 %i.kw, 15                      ; 3 uses
  %.neg.i.i55.i.i = mul nuw nsw i32 %i.kx, 246
  %i.ky = add nsw i32 %.neg.i.i55.i.i, %.0910.i.i54.i.i
  %i.kz = trunc i32 %i.ky to i8
  %i.la = add i8 %i.kz, 48
  %i.lb = getelementptr inbounds i8, ptr %.012.i.i52.i.i, i64 -1 ; 2 uses
  store i8 %i.la, ptr %i.lb, align 1
  %i.lc = add nuw nsw i32 %.0811.i.i53.i.i, 1     ; 2 uses
  %exitcond.not.i.i56.i.i = icmp eq i32 %i.lc, 3
  br i1 %exitcond.not.i.i56.i.i, label %put_dec_helper4.exit57.i.i, label %bb.cu, !llvm.loop !6

put_dec_helper4.exit57.i.i:                       ; preds = %bb.cu
  %i.ld = trunc i32 %i.kx to i8
  %i.le = add i8 %i.ld, 48
  %i.lf = getelementptr inbounds i8, ptr %.012.i.i52.i.i, i64 -2
  store i8 %i.le, ptr %i.lf, align 1
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %put_dec_helper4.exit57.i.i
  %.012.i.i.i = phi ptr [ %i.i, %put_dec_helper4.exit57.i.i ], [ %i.ll, %bb.cv ] ; 2 uses
  %.0811.i.i.i = phi i32 [ 0, %put_dec_helper4.exit57.i.i ], [ %i.lm, %bb.cv ]
  %.0910.i.i.i = phi i32 [ %i.ku, %put_dec_helper4.exit57.i.i ], [ %i.lh, %bb.cv ] ; 2 uses
  %i.lg = mul nuw nsw i32 %.0910.i.i.i, 3277
  %i.lh = lshr i32 %i.lg, 15                      ; 3 uses
  %.neg.i58.i.i = mul nuw nsw i32 %i.lh, 246
  %i.li = add nuw nsw i32 %.neg.i58.i.i, %.0910.i.i.i
  %i.lj = trunc i32 %i.li to i8
  %i.lk = add i8 %i.lj, 48
  %i.ll = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -1 ; 2 uses
  store i8 %i.lk, ptr %i.ll, align 1
  %i.lm = add nuw nsw i32 %.0811.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.lm, 3
  br i1 %exitcond.not.i.i.i, label %put_dec_full4.exit.i.i, label %bb.cv, !llvm.loop !6

put_dec_full4.exit.i.i:                           ; preds = %bb.cv
  %i.ln = trunc nuw i32 %i.lh to i8
  %i.lo = add nuw i8 %i.ln, 48
  %i.lp = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -2
  store i8 %i.lo, ptr %i.lp, align 1
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cx, %put_dec_full4.exit.i.i
  %.063.i.i.idx = phi i64 [ 2, %put_dec_full4.exit.i.i ], [ %.063.i.i.add, %bb.cx ] ; 3 uses
  %.063.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.063.i.i.idx
  %i.lq = load i8, ptr %.063.i.i.ptr, align 1
  %i.lr = icmp eq i8 %i.lq, 48
  br i1 %i.lr, label %bb.cx, label %number.exit.loopexit.split.loop.exit404

bb.cx:                                            ; preds = %bb.cw
  %.063.i.i.add = add nuw nsw i64 %.063.i.i.idx, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %.063.i.i.add, 22
  br i1 %exitcond.not, label %number.exit, label %bb.cw, !llvm.loop !7

.lr.ph31.i:                                       ; preds = %.preheader.i, %.lr.ph31.i
  %.030.i = phi ptr [ %i.lv, %.lr.ph31.i ], [ %i.c, %.preheader.i ]
  %.01329.i = phi i64 [ %i.lw, %.lr.ph31.i ], [ %.0246261, %.preheader.i ] ; 2 uses
  %i.ls = trunc i64 %.01329.i to i8
  %i.lt = and i8 %i.ls, 7
  %i.lu = or disjoint i8 %i.lt, 48
  %i.lv = getelementptr inbounds i8, ptr %.030.i, i64 -1 ; 3 uses
  store i8 %i.lu, ptr %i.lv, align 1
  %i.lw = lshr i64 %.01329.i, 3                   ; 2 uses
  %.not16.i = icmp eq i64 %i.lw, 0
  br i1 %.not16.i, label %number.exit, label %.lr.ph31.i, !llvm.loop !8

.lr.ph.i239:                                      ; preds = %.preheader19.i, %.lr.ph.i239
  %.127.i = phi ptr [ %i.mb, %.lr.ph.i239 ], [ %i.c, %.preheader19.i ]
  %.11426.i = phi i64 [ %i.mc, %.lr.ph.i239 ], [ %.0246261, %.preheader19.i ] ; 2 uses
  %i.lx = and i64 %.11426.i, 15
  %i.ly = getelementptr inbounds nuw i8, ptr @number.digits, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1
  %i.ma = or i8 %i.lz, %i.hz
  %i.mb = getelementptr inbounds i8, ptr %.127.i, i64 -1 ; 3 uses
  store i8 %i.ma, ptr %i.mb, align 1
  %i.mc = lshr i64 %.11426.i, 4                   ; 2 uses
  %.not.i240 = icmp eq i64 %i.mc, 0
  br i1 %.not.i240, label %number.exit, label %.lr.ph.i239, !llvm.loop !9

bb.cy:                                            ; preds = %get_sign.exit.thread263
  unreachable

number.exit.loopexit.split.loop.exit404:          ; preds = %bb.cw
  %.063.i.i.ptr.le = getelementptr inbounds nuw i8, ptr %i.b, i64 %.063.i.i.idx
  br label %number.exit

number.exit:                                      ; preds = %.lr.ph.i239, %.lr.ph31.i, %bb.cx, %number.exit.loopexit.split.loop.exit404, %.preheader19.i, %.preheader.i, %bb.cp
  %.2.i = phi ptr [ %i.c, %.preheader19.i ], [ %i.c, %bb.cp ], [ %i.lv, %.lr.ph31.i ], [ %i.c, %bb.cx ], [ %i.c, %.preheader.i ], [ %.063.i.i.ptr.le, %number.exit.loopexit.split.loop.exit404 ], [ %i.mb, %.lr.ph.i239 ] ; 2 uses
  %i.md = ptrtoint ptr %.2.i to i64
  %i.me = sub i64 %i.j, %i.md                     ; 3 uses
  %i.mf = icmp slt i32 %.4163253, 0
  %spec.store.select2 = select i1 %i.mf, i32 1, i32 %.4163253
  %i.mg = sext i32 %spec.store.select2 to i64
  %.5287 = call i64 @llvm.umax.i64(i64 %i.me, i64 %i.mg) ; 2 uses
  %.5 = trunc i64 %.5287 to i32                   ; 2 uses
  %i.mh = and i32 %.6177251.fr, 64
  %.not218 = icmp eq i32 %i.mh, 0
  br i1 %.not218, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %number.exit
  %sext288 = shl i64 %.5287, 32
  %i.mi = ashr exact i64 %sext288, 32
  %i.mj = icmp eq i64 %i.me, %i.mi
  %or.cond232 = select i1 %i.hn, i1 %i.mj, i1 false
  %i.mk = zext i1 %or.cond232 to i32
  %.6 = add nsw i32 %i.mk, %.5                    ; 3 uses
  %i.ml = icmp sgt i32 %.6, 0
  %or.cond = select i1 %i.hm, i1 %i.ml, i1 false
  br i1 %or.cond, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.mm = add nsw i32 %i.hx, -2
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.mn = and i32 %.6177251.fr, -65
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db, %number.exit
  %.7178 = phi i32 [ %.6177251.fr, %bb.da ], [ %i.mn, %bb.db ], [ %.6177251.fr, %number.exit ] ; 2 uses
  %.2166 = phi i32 [ %i.mm, %bb.da ], [ %i.hx, %bb.db ], [ %i.hx, %number.exit ] ; 2 uses
  %.7 = phi i32 [ %.6, %bb.da ], [ %.6, %bb.db ], [ %.5, %number.exit ] ; 2 uses
  %.not219 = trunc i32 %.7178 to i1
  %i.mo = call i32 @llvm.smax.i32(i32 %.2166, i32 %.7)
  %spec.select234 = select i1 %.not219, i32 %i.mo, i32 %.7
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.al, %utf16s_utf8nlen.exit, %bb.x
  %.0191 = phi i64 [ %.020.lcssa.i, %utf16s_utf8nlen.exit ], [ 1, %bb.x ], [ %i.db, %bb.al ], [ %i.me, %bb.dc ] ; 5 uses
  %.0180 = phi i8 [ 0, %utf16s_utf8nlen.exit ], [ 0, %bb.x ], [ 0, %bb.al ], [ %.0.i238262, %bb.dc ] ; 2 uses
  %.8179 = phi i32 [ %i.cy, %utf16s_utf8nlen.exit ], [ %i.ar, %bb.x ], [ %i.bo, %bb.al ], [ %.7178, %bb.dc ] ; 4 uses
  %.3167 = phi i32 [ %.0164, %utf16s_utf8nlen.exit ], [ %.0164, %bb.x ], [ %.0164, %bb.al ], [ %.2166, %bb.dc ]
  %.8 = phi i32 [ %i.cz, %utf16s_utf8nlen.exit ], [ 1, %bb.x ], [ %i.dc, %bb.al ], [ %spec.select234, %bb.dc ] ; 3 uses
  %.2 = phi ptr [ %.0154386, %utf16s_utf8nlen.exit ], [ %i.b, %bb.x ], [ %.1, %bb.al ], [ %.2.i, %bb.dc ] ; 2 uses
  %i.mp = sub nsw i32 %.3167, %.8                 ; 3 uses
  %i.mq = and i32 %.8179, 16
  %.not221 = icmp eq i32 %i.mq, 0
  br i1 %.not221, label %.preheader292, label %.loopexit293

.preheader292:                                    ; preds = %bb.dd
  %i.mr = add nsw i32 %i.mp, -1                   ; 2 uses
  %i.ms = icmp sgt i32 %i.mp, 0
  br i1 %i.ms, label %.lr.ph, label %.loopexit293

.lr.ph:                                           ; preds = %.preheader292, %bb.df
  %i.mt = phi i32 [ %i.mx, %bb.df ], [ %i.mr, %.preheader292 ] ; 2 uses
  %.1182308 = phi i64 [ %i.mw, %bb.df ], [ %.0181, %.preheader292 ] ; 3 uses
  %i.mu = icmp ult i64 %.1182308, %1
  br i1 %i.mu, label %bb.de, label %bb.df

bb.de:                                            ; preds = %.lr.ph
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 %.1182308
  store i8 32, ptr %i.mv, align 1
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.lr.ph
  %i.mw = add i64 %.1182308, 1                    ; 2 uses
  %i.mx = add nsw i32 %i.mt, -1
  %i.my = icmp sgt i32 %i.mt, 0
  br i1 %i.my, label %.lr.ph, label %.loopexit293, !llvm.loop !10

.loopexit293:                                     ; preds = %bb.df, %.preheader292, %bb.dd
  %.2183 = phi i64 [ %.0181, %bb.dd ], [ %.0181, %.preheader292 ], [ %i.mw, %bb.df ] ; 4 uses
  %.5169 = phi i32 [ %i.mp, %bb.dd ], [ %i.mr, %.preheader292 ], [ -1, %bb.df ] ; 2 uses
  %.not222 = icmp eq i8 %.0180, 0
  br i1 %.not222, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %.loopexit293
  %i.mz = icmp ult i64 %.2183, %1
  br i1 %i.mz, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 %.2183
  store i8 %.0180, ptr %i.na, align 1
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.nb = add i64 %.2183, 1
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.loopexit293
  %.3184 = phi i64 [ %i.nb, %bb.di ], [ %.2183, %.loopexit293 ] ; 5 uses
  %i.nc = and i32 %.8179, 64
  %.not223 = icmp eq i32 %i.nc, 0
  br i1 %.not223, label %bb.dp, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.nd = icmp ult i64 %.3184, %1
  br i1 %i.nd, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 %.3184
  store i8 48, ptr %i.ne, align 1
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.nf = add i64 %.3184, 1                       ; 2 uses
  %i.ng = icmp ult i64 %i.nf, %1
  br i1 %i.ng, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.nh = trunc i32 %.8179 to i8
  %i.ni = and i8 %i.nh, 32
  %i.nj = or disjoint i8 %i.ni, 88
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 %i.nf
  store i8 %i.nj, ptr %i.nk, align 1
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.nl = add i64 %.3184, 2
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dj
  %.4185 = phi i64 [ %i.nl, %bb.do ], [ %.3184, %bb.dj ] ; 2 uses
  %i.nm = sext i32 %.8 to i64
  %i.nn = icmp ult i64 %.0191, %i.nm
  br i1 %i.nn, label %.lr.ph311, label %._crit_edge

.lr.ph311:                                        ; preds = %bb.dp, %bb.dr
  %.in = phi i32 [ %5, %bb.dr ], [ %.8, %bb.dp ]
  %.5186310 = phi i64 [ %i.nq, %bb.dr ], [ %.4185, %bb.dp ] ; 3 uses
  %5 = add nsw i32 %.in, -1                       ; 2 uses
  %i.no = icmp ult i64 %.5186310, %1
  br i1 %i.no, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.lr.ph311
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 %.5186310
  store i8 48, ptr %i.np, align 1
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.lr.ph311
  %i.nq = add i64 %.5186310, 1                    ; 2 uses
  %6 = sext i32 %5 to i64
  %i.nr = icmp ult i64 %.0191, %6
  br i1 %i.nr, label %.lr.ph311, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.dr, %bb.dp
  %.5186.lcssa = phi i64 [ %.4185, %bb.dp ], [ %i.nq, %bb.dr ] ; 4 uses
  %i.ns = and i32 %.8179, 128
  %.not224 = icmp eq i32 %i.ns, 0
  %.not225321 = icmp eq i64 %.0191, 0             ; 2 uses
  br i1 %.not224, label %.preheader, label %.preheader290

.preheader290:                                    ; preds = %._crit_edge
  br i1 %.not225321, label %.loopexit289, label %.lr.ph319

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not225321, label %.loopexit289, label %.lr.ph324

.lr.ph319:                                        ; preds = %.preheader290, %bb.ed
  %.in330 = phi i64 [ %.2193, %bb.ed ], [ %.0191, %.preheader290 ]
  %.6187318 = phi i64 [ %.7188, %bb.ed ], [ %.5186.lcssa, %.preheader290 ] ; 6 uses
  %.0244317 = phi ptr [ %.1245272, %bb.ed ], [ %.2, %.preheader290 ] ; 3 uses
  %i.nt = add i64 %.in330, -1                     ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.0244317, i64 2 ; 5 uses
  %i.nv = load i16, ptr %.0244317, align 2
  %.fr = freeze i16 %i.nv                         ; 4 uses
  %i.nw = zext i16 %.fr to i32                    ; 4 uses
  %i.nx = and i32 %i.nw, 63488
  %.not.i241 = icmp eq i32 %i.nx, 55296
  br i1 %.not.i241, label %bb.ds, label %utf16_to_utf32.exit

bb.ds:                                            ; preds = %.lr.ph319
  %i.ny = and i32 %i.nw, 1024
  %.not9.i = icmp eq i32 %i.ny, 0
  br i1 %.not9.i, label %bb.dt, label %utf16_to_utf32.exit.thread.thread

bb.dt:                                            ; preds = %bb.ds
  %i.nz = load i16, ptr %i.nu, align 2
  %i.oa = zext i16 %i.nz to i32                   ; 2 uses
  %i.ob = and i32 %i.oa, 64512
  %.not10.i = icmp eq i32 %i.ob, 56320
  br i1 %.not10.i, label %bb.du, label %utf16_to_utf32.exit.thread.thread

bb.du:                                            ; preds = %bb.dt
  %i.oc = getelementptr inbounds nuw i8, ptr %.0244317, i64 4
  %i.od = shl nuw nsw i32 %i.nw, 10
  %i.oe = add nsw i32 %i.od, -56613888
  %i.of = add nuw nsw i32 %i.oe, %i.oa
  br label %utf16_to_utf32.exit.thread.thread

utf16_to_utf32.exit:                              ; preds = %.lr.ph319
  %i.og = icmp ult i16 %.fr, 128
  br i1 %i.og, label %bb.dv, label %utf16_to_utf32.exit.thread

bb.dv:                                            ; preds = %utf16_to_utf32.exit
  %i.oh = icmp ult i64 %.6187318, %1
  br i1 %i.oh, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.oi = trunc nuw nsw i16 %.fr to i8
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 %.6187318
  store i8 %i.oi, ptr %i.oj, align 1
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.ok = add i64 %.6187318, 1
  br label %bb.ed, !llvm.loop !12

utf16_to_utf32.exit.thread:                       ; preds = %utf16_to_utf32.exit
  %i.ol = icmp ugt i16 %.fr, 2047
  %spec.select284 = select i1 %i.ol, i32 2, i32 1
  br label %utf16_to_utf32.exit.thread.thread

utf16_to_utf32.exit.thread.thread:                ; preds = %utf16_to_utf32.exit.thread, %bb.du, %bb.ds, %bb.dt
  %.1245273281 = phi ptr [ %i.nu, %utf16_to_utf32.exit.thread ], [ %i.nu, %bb.ds ], [ %i.oc, %bb.du ], [ %i.nu, %bb.dt ] ; 2 uses
  %.0.i242274279 = phi i32 [ %i.nw, %utf16_to_utf32.exit.thread ], [ 65533, %bb.ds ], [ %i.of, %bb.du ], [ 65533, %bb.dt ] ; 2 uses
  %i.om = phi i32 [ %spec.select284, %utf16_to_utf32.exit.thread ], [ 2, %bb.ds ], [ 2, %bb.du ], [ 2, %bb.dt ]
  %i.on = icmp samesign ugt i32 %.0.i242274279, 65535
  %i.oo = zext i1 %i.on to i32
  %i.op = add nuw nsw i32 %i.om, %i.oo            ; 2 uses
  %i.oq = zext nneg i32 %i.op to i64              ; 4 uses
  %i.or = sub i64 %i.nt, %i.oq                    ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 %.6187318 ; 3 uses
  %i.ot = icmp ult i64 %.6187318, %1
  br i1 %i.ot, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %utf16_to_utf32.exit.thread.thread
  store i8 0, ptr %i.os, align 1
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %utf16_to_utf32.exit.thread.thread
  %i.ou = add i64 %.6187318, 1
  %i.ov = add i64 %i.ou, %i.oq                    ; 3 uses
  %.not227 = icmp ult i64 %i.ov, %1
  br i1 %.not227, label %bb.ea, label %bb.ed, !llvm.loop !12

bb.ea:                                            ; preds = %bb.dz
  %i.ow = lshr exact i32 1920, %i.op
  %i.ox = trunc i32 %i.ow to i8
  store i8 %i.ox, ptr %i.os, align 1
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.oq
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.eb
  %.0155315 = phi i64 [ %i.oq, %bb.ea ], [ %i.pd, %bb.eb ]
  %.0156314 = phi ptr [ %i.oy, %bb.ea ], [ %i.pc, %bb.eb ] ; 2 uses
  %.0157313 = phi i32 [ %.0.i242274279, %bb.ea ], [ %i.pe, %bb.eb ] ; 2 uses
  %i.oz = trunc i32 %.0157313 to i8
  %i.pa = and i8 %i.oz, 63
  %i.pb = or disjoint i8 %i.pa, -128
  %i.pc = getelementptr inbounds i8, ptr %.0156314, i64 -1 ; 3 uses
  store i8 %i.pb, ptr %.0156314, align 1
  %i.pd = add nsw i64 %.0155315, -1               ; 2 uses
  %i.pe = lshr i32 %.0157313, 6                   ; 2 uses
  %.not228 = icmp eq i64 %i.pd, 0
  br i1 %.not228, label %bb.ec, label %bb.eb, !llvm.loop !13

bb.ec:                                            ; preds = %bb.eb
  %i.pf = load i8, ptr %i.pc, align 1
  %i.pg = trunc i32 %i.pe to i8
  %i.ph = or i8 %i.pf, %i.pg
  store i8 %i.ph, ptr %i.pc, align 1
  br label %bb.ed

bb.ed:                                            ; preds = %bb.dz, %bb.ec, %bb.dx
  %.1245272 = phi ptr [ %i.nu, %bb.dx ], [ %.1245273281, %bb.ec ], [ %.1245273281, %bb.dz ]
  %.2193 = phi i64 [ %i.nt, %bb.dx ], [ %i.or, %bb.ec ], [ %i.or, %bb.dz ] ; 2 uses
  %.7188 = phi i64 [ %i.ok, %bb.dx ], [ %i.ov, %bb.ec ], [ %i.ov, %bb.dz ] ; 2 uses
  %.not226 = icmp eq i64 %.2193, 0
  br i1 %.not226, label %.loopexit289, label %.lr.ph319

.lr.ph324:                                        ; preds = %.preheader, %bb.ef
  %.in331 = phi i64 [ %i.pi, %bb.ef ], [ %.0191, %.preheader ]
  %.3323 = phi ptr [ %.4, %bb.ef ], [ %.2, %.preheader ] ; 3 uses
  %.8189322 = phi i64 [ %i.pn, %bb.ef ], [ %.5186.lcssa, %.preheader ] ; 3 uses
  %i.pi = add i64 %.in331, -1                     ; 2 uses
  %i.pj = icmp ult i64 %.8189322, %1
  br i1 %i.pj, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.lr.ph324
  %i.pk = getelementptr inbounds nuw i8, ptr %.3323, i64 1
  %i.pl = load i8, ptr %.3323, align 1
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 %.8189322
  store i8 %i.pl, ptr %i.pm, align 1
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %.lr.ph324
  %.4 = phi ptr [ %i.pk, %bb.ee ], [ %.3323, %.lr.ph324 ]
  %i.pn = add i64 %.8189322, 1                    ; 2 uses
  %.not225 = icmp eq i64 %i.pi, 0
  br i1 %.not225, label %.loopexit289, label %.lr.ph324, !llvm.loop !14

.loopexit289:                                     ; preds = %bb.ed, %bb.ef, %.preheader290, %.preheader
  %.9190 = phi i64 [ %i.pn, %bb.ef ], [ %.5186.lcssa, %.preheader ], [ %.5186.lcssa, %.preheader290 ], [ %.7188, %bb.ed ] ; 2 uses
  %i.po = icmp sgt i32 %.5169, 0
  br i1 %i.po, label %.lr.ph328, label %.loopexit

.lr.ph328:                                        ; preds = %.loopexit289, %bb.eh
  %.in332 = phi i32 [ %i.pp, %bb.eh ], [ %.5169, %.loopexit289 ] ; 2 uses
  %.10326 = phi i64 [ %i.ps, %bb.eh ], [ %.9190, %.loopexit289 ] ; 3 uses
  %i.pp = add nsw i32 %.in332, -1
  %i.pq = icmp ult i64 %.10326, %1
  br i1 %i.pq, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.lr.ph328
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 %.10326
  store i8 32, ptr %i.pr, align 1
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %.lr.ph328
  %i.ps = add i64 %.10326, 1                      ; 2 uses
  %i.pt = icmp samesign ugt i32 %.in332, 1
  br i1 %i.pt, label %.lr.ph328, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %bb.eh, %.loopexit289, %bb.f
  %.11 = phi i64 [ %i.s, %bb.f ], [ %.9190, %.loopexit289 ], [ %i.ps, %bb.eh ]
  %i.pu = load ptr, ptr %i.a, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 1 ; 2 uses
  store ptr %i.pv, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !16

bb.ei:                                            ; preds = %bb.b, %bb.p
  call void @llvm.va_end.p0(ptr nonnull %4)
  %.not229 = icmp eq i64 %1, 0
  br i1 %.not229, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.pw = add i64 %1, -1
  %i.px = call i64 @llvm.umin.i64(i64 %.0181, i64 %i.pw)
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 %i.px
  store i8 0, ptr %i.py, align 1
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.pz = trunc i64 %.0181 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %i.pz
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

end_hunk_0
