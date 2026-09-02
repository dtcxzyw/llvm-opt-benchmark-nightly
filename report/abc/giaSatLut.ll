Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSatLut?download=true
inline.NumInlined: 1157
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 62
begin_hunk_0_@Gia_ManSimpleCnf:bb.a
  %i.fn = and i64 %.val156.1, 2684354559
  %narrow.i231.not.1 = icmp eq i64 %i.fn, 2684354559
  br i1 %narrow.i231.not.1, label %bb.i, label %.preheader258.preheader

bb.i:                                             ; preds = %bb.h
  %i.fo = trunc nuw i64 %i.ev to i32
  %i.fp = xor i32 %i.fo, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.fp)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49)
  br label %.preheader258.preheader

.preheader258.preheader:                          ; preds = %bb.i, %bb.h
  %i.fq = trunc nuw i64 %i.el to i32
  %i.fr = xor i32 %i.bx, 1
  %i.fs = add nsw i32 %i.er, %i.fr
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.ds)
  %i.ft = ashr exact i32 %i.fq, 1
  %i.fu = add nsw i32 %i.ft, 1                    ; 2 uses
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.fu)
  %i.fv = add nsw i32 %i.fs, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.fv)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49)
  %i.fw = trunc nuw i64 %i.ew to i32
  %i.fx = xor i32 %i.ca, 1
  %i.fy = add nsw i32 %i.ey, %i.fx
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.ds)
  %i.fz = ashr exact i32 %i.fw, 1
  %i.ga = add nsw i32 %i.fz, 1                    ; 2 uses
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.ga)
  %i.gb = add nsw i32 %i.fy, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.gb)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49)
  %i.gc = trunc i64 %indvars.iv314 to i32
  %.neg402 = mul i32 %i.gc, -14
  %i.gd = and i32 %i.bw, 1
  %i.ge = add nsw i32 %i.er, %i.gd
  %i.gf = add i32 %.neg402, -8
  %i.gg = ashr exact i32 %i.gf, 1                 ; 2 uses
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.gg)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.fu)
  %i.gh = add nsw i32 %i.ge, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.gh)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49)
  %.not148.1.1 = trunc nuw nsw i64 %i.by to i32
  %i.gi = and i32 %.not148.1.1, 1
  %i.gj = add nsw i32 %i.ey, %i.gi
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.gg)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.ga)
  %i.gk = add nsw i32 %i.gj, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.gk)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49)
  %i.gl = trunc nuw i64 %i.do to i32              ; 4 uses
  %i.gm = ptrtoint ptr %i.cj to i64               ; 4 uses
  %i.gn = ptrtoint ptr %i.cm to i64               ; 4 uses
  %.val154 = load i64, ptr %i.cj, align 4         ; 3 uses
  %i.go = and i64 %.val154, 2147483648
  %.not.i239 = icmp ne i64 %i.go, 0
  %i.gp = and i64 %.val154, 536870911
  %i.gq = icmp eq i64 %i.gp, 536870911
  %narrow.i240.not = or i1 %.not.i239, %i.gq
  br i1 %narrow.i240.not, label %bb.j, label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.preheader258.preheader
  %.val160 = load ptr, ptr %i.as, align 8, !tbaa !124
  %i.gr = ptrtoint ptr %.val160 to i64
  %i.gs = sub i64 %i.gm, %i.gr
  %i.gt = sdiv exact i64 %i.gs, 12
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = trunc i64 %.val154 to i32               ; 2 uses
  %i.gw = and i32 %i.gv, 536870911
  %i.gx = sub nsw i32 %i.gu, %i.gw
  %i.gy = mul nsw i32 %i.gx, 7
  %i.gz = xor i32 %i.bv, %i.gv
  %i.ha = lshr i32 %i.gz, 29
  %.lobit = and i32 %i.ha, 1
  %i.hb = xor i32 %.lobit, 1
  %i.hc = add nsw i32 %i.gy, %i.hb
  %i.hd = xor i32 %i.gl, -1                       ; 2 uses
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.hd)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.eo)
  %i.he = add nsw i32 %i.hc, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.he)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49)
  %.val171 = load ptr, ptr %i.as, align 8, !tbaa !124
  %i.hf = ptrtoint ptr %.val171 to i64
  %i.hg = sub i64 %i.gm, %i.hf
  %i.hh = sdiv exact i64 %i.hg, 12
  %i.hi = trunc i64 %i.hh to i32
  %.val3.i248 = load i64, ptr %i.cj, align 4      ; 2 uses
  %i.hj = lshr i64 %.val3.i248, 32
  %i.hk = trunc nuw i64 %i.hj to i32
  %i.hl = and i32 %i.hk, 536870911
  %i.hm = sub nsw i32 %i.hi, %i.hl
  %i.hn = mul nsw i32 %i.hm, 7
  %i.ho = lshr i64 %.val3.i248, 61
  %i.hp = trunc nuw nsw i64 %i.ho to i32
  %i.hq = xor i32 %i.bw, %i.hp
  %i.hr = and i32 %i.hq, 1
  %i.hs = xor i32 %i.hr, 1
  %i.ht = add nsw i32 %i.hn, %i.hs
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.hd)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.eo)
  %i.hu = add nsw i32 %i.ht, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.hu)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49)
  br label %bb.j

bb.j:                                             ; preds = %.preheader258.preheader, %.lr.ph.i242
  %.val154.1 = load i64, ptr %i.cm, align 4       ; 3 uses
  %i.hv = and i64 %.val154.1, 2147483648
  %.not.i239.1 = icmp ne i64 %i.hv, 0
  %i.hw = and i64 %.val154.1, 536870911
  %i.hx = icmp eq i64 %i.hw, 536870911
  %narrow.i240.not.1 = or i1 %.not.i239.1, %i.hx
  br i1 %narrow.i240.not.1, label %.preheader.1, label %.lr.ph.i242.1

.lr.ph.i242.1:                                    ; preds = %bb.j
  %.val160.1 = load ptr, ptr %i.as, align 8, !tbaa !124
  %i.hy = ptrtoint ptr %.val160.1 to i64
  %i.hz = sub i64 %i.gn, %i.hy
  %i.ia = sdiv exact i64 %i.hz, 12
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = trunc i64 %.val154.1 to i32             ; 2 uses
  %i.id = and i32 %i.ic, 536870911
  %i.ie = sub nsw i32 %i.ib, %i.id
  %i.if = mul nsw i32 %i.ie, 7
  %i.ig = lshr i32 %i.ic, 29
  %i.ih = xor i32 %i.ig, %i.bz
  %i.ii = and i32 %i.ih, 1
  %i.ij = xor i32 %i.ii, 1
  %i.ik = add nsw i32 %i.if, %i.ij
  %i.il = xor i32 %i.gl, -1                       ; 2 uses
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.il)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.fb)
  %i.im = add nsw i32 %i.ik, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.im)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49)
  %.val171.1 = load ptr, ptr %i.as, align 8, !tbaa !124
  %i.in = ptrtoint ptr %.val171.1 to i64
  %i.io = sub i64 %i.gn, %i.in
  %i.ip = sdiv exact i64 %i.io, 12
  %i.iq = trunc i64 %i.ip to i32
  %.val3.i248.1 = load i64, ptr %i.cm, align 4    ; 2 uses
  %i.ir = lshr i64 %.val3.i248.1, 32
  %i.is = trunc nuw i64 %i.ir to i32
  %i.it = and i32 %i.is, 536870911
  %i.iu = sub nsw i32 %i.iq, %i.it
  %i.iv = mul nsw i32 %i.iu, 7
  %i.iw = xor i64 %.val3.i248.1, %.val155
  %i.ix = and i64 %i.iw, 2305843009213693952
  %.not147.1 = icmp eq i64 %i.ix, 0
  %i.iy = zext i1 %.not147.1 to i32
  %i.iz = add nsw i32 %i.iv, %i.iy
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.il)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.fb)
  %i.ja = add nsw i32 %i.iz, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.ja)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49)
  br label %.preheader.1

.preheader.1:                                     ; preds = %.lr.ph.i242.1, %bb.j
  %.val154.1403 = load i64, ptr %i.cj, align 4    ; 3 uses
  %i.jb = and i64 %.val154.1403, 2147483648
  %.not.i239.1404 = icmp ne i64 %i.jb, 0
  %i.jc = and i64 %.val154.1403, 536870911
  %i.jd = icmp eq i64 %i.jc, 536870911
  %narrow.i240.not.1405 = or i1 %.not.i239.1404, %i.jd
  br i1 %narrow.i240.not.1405, label %bb.k, label %.lr.ph.i242.1411

.lr.ph.i242.1411:                                 ; preds = %.preheader.1
  %.val160.1406 = load ptr, ptr %i.as, align 8, !tbaa !124
  %i.je = ptrtoint ptr %.val160.1406 to i64
  %i.jf = sub i64 %i.gm, %i.je
  %i.jg = sdiv exact i64 %i.jf, 12
  %i.jh = trunc i64 %i.jg to i32
  %i.ji = trunc i64 %.val154.1403 to i32          ; 2 uses
  %i.jj = and i32 %i.ji, 536870911
  %i.jk = sub nsw i32 %i.jh, %i.jj
  %i.jl = mul nsw i32 %i.jk, 7
  %i.jm = xor i32 %i.bv, %i.ji
  %i.jn = lshr i32 %i.jm, 29
  %.lobit412 = and i32 %i.jn, 1
  %i.jo = add nsw i32 %i.jl, %.lobit412
  %i.jp = sub i32 -2, %i.gl                       ; 2 uses
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.jp)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.eo)
  %i.jq = add nsw i32 %i.jo, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.jq)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49)
  %.val171.1408 = load ptr, ptr %i.as, align 8, !tbaa !124
  %i.jr = ptrtoint ptr %.val171.1408 to i64
  %i.js = sub i64 %i.gm, %i.jr
  %i.jt = sdiv exact i64 %i.js, 12
  %i.ju = trunc i64 %i.jt to i32
  %.val3.i248.1409 = load i64, ptr %i.cj, align 4 ; 2 uses
  %i.jv = lshr i64 %.val3.i248.1409, 32
  %i.jw = trunc nuw i64 %i.jv to i32
  %i.jx = and i32 %i.jw, 536870911
  %i.jy = sub nsw i32 %i.ju, %i.jx
  %i.jz = mul nsw i32 %i.jy, 7
  %2 = and i64 %.val3.i248.1409, 2305843009213693952
  %3 = icmp ne i64 %2, 0
  %4 = trunc i32 %i.bw to i1
  %.not147.1410 = xor i1 %3, %4
  %5 = zext i1 %.not147.1410 to i32
  %i.ka = add nsw i32 %i.jz, %5
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.jp)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.eo)
  %i.kb = add nsw i32 %i.ka, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.kb)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49)
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.i242.1411, %.preheader.1
  %.val154.1.1 = load i64, ptr %i.cm, align 4     ; 3 uses
  %i.kc = and i64 %.val154.1.1, 2147483648
  %.not.i239.1.1 = icmp ne i64 %i.kc, 0
  %i.kd = and i64 %.val154.1.1, 536870911
  %i.ke = icmp eq i64 %i.kd, 536870911
  %narrow.i240.not.1.1 = or i1 %.not.i239.1.1, %i.ke
  br i1 %narrow.i240.not.1.1, label %bb.l, label %.lr.ph.i242.1.1

.lr.ph.i242.1.1:                                  ; preds = %bb.k
  %.val160.1.1 = load ptr, ptr %i.as, align 8, !tbaa !124
  %i.kf = ptrtoint ptr %.val160.1.1 to i64
  %i.kg = sub i64 %i.gn, %i.kf
  %i.kh = sdiv exact i64 %i.kg, 12
  %i.ki = trunc i64 %i.kh to i32
  %i.kj = trunc i64 %.val154.1.1 to i32           ; 2 uses
  %i.kk = and i32 %i.kj, 536870911
  %i.kl = sub nsw i32 %i.ki, %i.kk
  %i.km = mul nsw i32 %i.kl, 7
  %i.kn = lshr i32 %i.kj, 29
  %i.ko = xor i32 %i.kn, %i.bz
  %i.kp = and i32 %i.ko, 1
  %i.kq = add nsw i32 %i.km, %i.kp
  %i.kr = sub i32 -2, %i.gl                       ; 2 uses
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.kr)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.fb)
  %i.ks = add nsw i32 %i.kq, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.ks)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49)
  %.val171.1.1 = load ptr, ptr %i.as, align 8, !tbaa !124
  %i.kt = ptrtoint ptr %.val171.1.1 to i64
  %i.ku = sub i64 %i.gn, %i.kt
  %i.kv = sdiv exact i64 %i.ku, 12
  %i.kw = trunc i64 %i.kv to i32
  %.val3.i248.1.1 = load i64, ptr %i.cm, align 4  ; 2 uses
  %i.kx = lshr i64 %.val3.i248.1.1, 32
  %i.ky = trunc nuw i64 %i.kx to i32
  %i.kz = and i32 %i.ky, 536870911
  %i.la = sub nsw i32 %i.kw, %i.kz
  %i.lb = mul nsw i32 %i.la, 7
  %i.lc = xor i64 %.val3.i248.1.1, %.val155
  %i.ld = lshr i64 %i.lc, 61
  %i.le = trunc nuw nsw i64 %i.ld to i32
  %i.lf = and i32 %i.le, 1
  %i.lg = add nsw i32 %i.lb, %i.lf
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.kr)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.fb)
  %i.lh = add nsw i32 %i.lg, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48, i32 noundef %i.lh)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49)
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.i242.1.1, %bb.k
  %.pre = load i32, ptr %i.g, align 8, !tbaa !123
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %i.li = phi i32 [ %.pre, %bb.l ], [ %i.bq, %bb.e ] ; 2 uses
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %i.lj = sext i32 %i.li to i64
  %i.lk = icmp slt i64 %indvars.iv.next315, %i.lj
  br i1 %i.lk, label %.lr.ph283, label %.critedge4, !llvm.loop !258

.critedge4:                                       ; preds = %.lr.ph283, %bb.m, %.critedge2
  %i.ll = load i32, ptr %i.b, align 4, !tbaa !155 ; 7 uses
  %i.lm = load i32, ptr %i.a, align 8, !tbaa !156
  %i.ln = icmp eq i32 %i.ll, %i.lm
  br i1 %i.ln, label %bb.n, label %.critedge4.Vec_StrPush.exit_crit_edge

.critedge4.Vec_StrPush.exit_crit_edge:            ; preds = %.critedge4
  %.pre394 = load ptr, ptr %i.d, align 8, !tbaa !157
  br label %Vec_StrPush.exit

bb.n:                                             ; preds = %.critedge4
  %i.lo = icmp slt i32 %i.ll, 16
  br i1 %i.lo, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.lp = load ptr, ptr %i.d, align 8, !tbaa !157 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.lp, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.lq = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.lp, i64 noundef 16) #32
  br label %Vec_StrGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.lr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.ls = icmp samesign ult i32 %i.ll, 1073741823
  %i.lt = shl nuw nsw i32 %i.ll, 1
  %spec.select.i = select i1 %i.ls, i32 %i.lt, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ll, %spec.select.i
  %.pre395 = load ptr, ptr %i.d, align 8, !tbaa !157 ; 3 uses
  br i1 %.not.i9.i, label %bb.s, label %Vec_StrPush.exit

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i = icmp eq ptr %.pre395, null
  %i.lu = zext nneg i32 %spec.select.i to i64     ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.lv = tail call ptr @realloc(ptr noundef nonnull %.pre395, i64 noundef %i.lu) #32
  br label %Vec_StrGrow.exit11.sink.split.i

bb.u:                                             ; preds = %bb.s
  %i.lw = tail call noalias ptr @malloc(i64 noundef %i.lu) #31
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %storemerge = phi ptr [ %i.lr, %bb.q ], [ %i.lq, %bb.p ], [ %i.lv, %bb.t ], [ %i.lw, %bb.u ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i, %bb.t ], [ %spec.select.i, %bb.u ]
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !157
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !156
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %.critedge4.Vec_StrPush.exit_crit_edge, %bb.r, %Vec_StrGrow.exit11.sink.split.i
  %i.lx = phi ptr [ %.pre394, %.critedge4.Vec_StrPush.exit_crit_edge ], [ %.pre395, %bb.r ], [ %storemerge, %Vec_StrGrow.exit11.sink.split.i ]
  %i.ly = add nsw i32 %i.ll, 1
  store i32 %i.ly, ptr %i.b, align 4, !tbaa !155
  %i.lz = sext i32 %i.ll to i64
  %i.ma = getelementptr inbounds i8, ptr %i.lx, i64 %i.lz
  store i8 0, ptr %i.ma, align 1, !tbaa !133
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Gia_ManDeriveSimpleMapping(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val163 = load i32, ptr %i.a, align 8, !tbaa !123 ; 2 uses
  %i.b = shl nsw i32 %.val163, 1                  ; 5 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 40 uses
  %i.d = add i32 %i.b, -1
  %or.cond.i.i = icmp ult i32 %i.d, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.b ; 3 uses
  %i.e = getelementptr i8, ptr %i.c, i64 4        ; 53 uses
  store i32 %spec.store.select.i.i, ptr %i.c, align 8, !tbaa !60
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !61
  store i32 %i.b, ptr %i.e, align 4, !tbaa !59
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #31 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !61
  store i32 %i.b, ptr %i.e, align 4, !tbaa !59
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.k = sext i32 %i.b to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.l, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val169 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.i, %bb.b ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134  ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4        ; 2 uses
  %.val162417 = load i32, ptr %i.o, align 4, !tbaa !59 ; 2 uses
  %i.p = icmp sgt i32 %.val162417, 0
  br i1 %i.p, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStart.exit
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val177.val = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.r = getelementptr i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.val162428 = phi i32 [ %.val162417, %.lr.ph ], [ %.val162, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val177.val, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !49   ; 3 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = mul nsw i32 %i.t, 7
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.v = sext i32 %i.u to i64
end_hunk_0
