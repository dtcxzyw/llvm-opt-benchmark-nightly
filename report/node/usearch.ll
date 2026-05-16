inline.NumInlined: 157
inline.NumDeleted: 35
begin_hunk_0_@usearch_search_78:bb.a

bb.am:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit239
  %i.go = load i64, ptr %.0.i237, align 8
  %.not186 = icmp eq i64 %i.go, 9223372036854775807
  br label %_ZL12compareCE64slls.exit255.thread320

bb.an:                                            ; preds = %.preheader, %_ZL12compareCE64slls.exit255.thread
  %i.gp = phi ptr [ %i.hn, %_ZL12compareCE64slls.exit255.thread ], [ %i.ey, %.preheader ] ; 3 uses
  %.4160 = phi i32 [ %i.il, %_ZL12compareCE64slls.exit255.thread ], [ %i.ea, %.preheader ] ; 2 uses
  %i.gq = add nsw i32 %.4160, %.0140              ; 5 uses
  %i.gr = load i32, ptr %i.z, align 8             ; 2 uses
  %i.gs = srem i32 %i.gq, %i.gr                   ; 2 uses
  %i.gt = load i32, ptr %i.aa, align 4            ; 3 uses
  %.not.i240 = icmp sge i32 %i.gq, %i.gt
  %i.gu = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.gv = icmp slt i32 %i.gq, %i.gu
  %or.cond.i241 = select i1 %.not.i240, i1 %i.gv, i1 false
  br i1 %or.cond.i241, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gw = sext i32 %i.gs to i64
  %i.gx = getelementptr inbounds [16 x i8], ptr %i.gp, i64 %i.gw
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245

bb.ap:                                            ; preds = %bb.an
  %.not12.i242 = icmp eq i32 %i.gq, %i.gu
  call void @llvm.assume(i1 %.not12.i242)
  %i.gy = add nsw i32 %i.gq, 1                    ; 2 uses
  store i32 %i.gy, ptr %i.ab, align 8
  %i.gz = sub nsw i32 %i.gy, %i.gt
  %.not13.i244 = icmp slt i32 %i.gz, %i.gr
  br i1 %.not13.i244, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ha = add nsw i32 %i.gt, 1
  store i32 %i.ha, ptr %i.aa, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4
  %i.hb = load ptr, ptr %i.ac, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 3152
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = sext i32 %i.gs to i64                   ; 3 uses
  %i.hf = getelementptr inbounds [16 x i8], ptr %i.gp, i64 %i.he ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  %i.hi = call noundef i64 @_ZN6icu_7813UCollationPCE13nextProcessedEPiS1_P10UErrorCode(ptr noundef nonnull align 8 dereferenceable(292) %i.hd, ptr noundef nonnull %i.hg, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.a) #14
  %i.hj = load ptr, ptr %i.ad, align 8
  %i.hk = getelementptr inbounds [16 x i8], ptr %i.hj, i64 %i.he
  store i64 %i.hi, ptr %i.hk, align 8
  %i.hl = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.hm = getelementptr inbounds [16 x i8], ptr %i.hl, i64 %i.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245

_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245: ; preds = %bb.ao, %bb.ar
  %i.hn = phi ptr [ %i.gp, %bb.ao ], [ %i.hl, %bb.ar ]
  %.0.i243 = phi ptr [ %i.gx, %bb.ao ], [ %i.hm, %bb.ar ] ; 9 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i243, i64 8
  %i.hp = load i32, ptr %i.ho, align 8            ; 7 uses
  %i.hq = load i64, ptr %.0.i243, align 8         ; 5 uses
  %i.hr = icmp eq i64 %i.hq, 9223372036854775807  ; 6 uses
  br i1 %i.hr, label %_ZL12compareCE64slls.exit255.thread320, label %bb.as

bb.as:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245
  %i.hs = icmp ult i64 %i.hq, 281474976710656
  br i1 %i.hs, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %bb.as
  %i.ht = load ptr, ptr %0, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 14
  %i.hv = load i16, ptr %i.hu, align 2            ; 3 uses
  %i.hw = icmp eq i64 %i.hq, %.0154.lcssa
  br i1 %i.hw, label %_ZL12compareCE64slls.exit255.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hx = icmp eq i16 %i.hv, 0
  br i1 %i.hx, label %_ZL12compareCE64slls.exit255.thread320, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hy = lshr i64 %i.hq, 32                      ; 3 uses
  br i1 %.not.i246, label %bb.aw, label %_ZL12compareCE64slls.exit255.thread

bb.aw:                                            ; preds = %bb.av
  %.not50.i250 = icmp eq i64 %i.hy, %i.fh
  br i1 %.not50.i250, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %_ZL12compareCE64slls.exit255.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ia = icmp eq i16 %i.hv, 4                    ; 2 uses
  %or.cond5.i251 = and i1 %i.fi, %i.ia
  br i1 %or.cond5.i251, label %_ZL12compareCE64slls.exit255.thread320, label %_ZL12compareCE64slls.exit255

bb.az:                                            ; preds = %bb.aw
  %i.ib = trunc i64 %i.hq to i32
  %i.ic = and i32 %i.ib, -65536                   ; 2 uses
  %.not51.i253 = icmp eq i32 %i.ic, %i.fl
  br i1 %.not51.i253, label %_ZL12compareCE64slls.exit255.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.id = icmp eq i16 %i.hv, 4
  %i.ie = icmp eq i32 %i.ic, 327680
  %i.if = and i1 %i.ie, %i.id
  %narrow52.i254 = or i1 %i.fm, %i.if
  br i1 %narrow52.i254, label %_ZL12compareCE64slls.exit255.thread, label %_ZL12compareCE64slls.exit255.thread320

_ZL12compareCE64slls.exit255:                     ; preds = %bb.ay
  %i.ig = icmp eq i64 %i.hy, 5
  %i.ih = and i1 %i.ig, %i.ia
  %narrow.i252 = or i1 %i.fj, %i.ih
  br i1 %narrow.i252, label %_ZL12compareCE64slls.exit255.thread, label %_ZL12compareCE64slls.exit255.thread320

bb.bb:                                            ; preds = %bb.as
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i243, i64 12
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = icmp ne i32 %i.hp, %i.ij
  br label %_ZL12compareCE64slls.exit255.thread320

_ZL12compareCE64slls.exit255.thread:              ; preds = %bb.ba, %bb.ax, %bb.av, %bb.az, %bb.at, %_ZL12compareCE64slls.exit255
  %i.il = add nsw i32 %.4160, 1
  br label %bb.an, !llvm.loop !10

_ZL12compareCE64slls.exit255.thread320:           ; preds = %bb.ay, %bb.au, %_ZL12compareCE64slls.exit255, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245, %bb.ba, %bb.bb, %bb.am, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit239
  %.0161 = phi i32 [ %i.gk, %bb.am ], [ %i.hp, %bb.bb ], [ %i.gk, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit239 ], [ %i.hp, %bb.ba ], [ %i.hp, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245 ], [ %i.hp, %_ZL12compareCE64slls.exit255 ], [ %i.hp, %bb.au ], [ %i.hp, %bb.ay ] ; 12 uses
  %.5.shrunk = phi i1 [ %.not186, %bb.am ], [ %i.ik, %bb.bb ], [ true, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit239 ], [ %i.hr, %bb.ba ], [ %i.hr, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245 ], [ %i.hr, %_ZL12compareCE64slls.exit255 ], [ %i.hr, %bb.au ], [ %i.hr, %bb.ay ]
  %.0141 = phi ptr [ %.0.i237, %bb.am ], [ %.0.i243, %bb.bb ], [ %.0.i237, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit239 ], [ %.0.i243, %bb.ba ], [ %.0.i243, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245 ], [ %.0.i243, %_ZL12compareCE64slls.exit255 ], [ %.0.i243, %bb.au ], [ %.0.i243, %bb.ay ] ; 2 uses
  %.5 = zext i1 %.5.shrunk to i8                  ; 3 uses
  %i.im = load i32, ptr %4, align 4
  %i.in = icmp slt i32 %i.im, 1
  br i1 %i.in, label %bb.bc, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread.thread.loopexit

bb.bc:                                            ; preds = %_ZL12compareCE64slls.exit255.thread320
  %i.io = load ptr, ptr %0, align 8               ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8            ; 2 uses
  %.not15.i.i = icmp eq ptr %i.iq, null
  br i1 %.not15.i.i, label %bb.bd, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.is = load ptr, ptr %i.ir, align 8            ; 2 uses
  %.not16.i.i = icmp eq ptr %i.is, null
  br i1 %.not16.i.i, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit.thread

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i: ; preds = %bb.bd
  %i.it = load ptr, ptr %i.af, align 8
  %i.iu = call ptr @ucol_getLocaleByType_78(ptr noundef %i.it, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.iv = load ptr, ptr %0, align 8               ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.iy = load i32, ptr %i.ix, align 8
  %i.iz = call ptr @ubrk_open_78(i32 noundef 0, ptr noundef %i.iu, ptr noundef %i.iw, i32 noundef %i.iy, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.ja = load ptr, ptr %0, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store ptr %i.iz, ptr %i.jb, align 8
  %i.jc = load ptr, ptr %0, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  %.pre.i = load i32, ptr %4, align 4
  %i.jf = icmp slt i32 %.pre.i, 1
  br i1 %i.jf, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit.thread, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread.thread.loopexit

_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit.thread: ; preds = %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i, %bb.bd, %bb.bc
  %.0.i10.i = phi ptr [ %i.je, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i ], [ %i.iq, %bb.bc ], [ %i.is, %bb.bd ]
  %i.jg = call signext i8 @ubrk_isBoundary_78(ptr noundef %.0.i10.i, i32 noundef %i.fa) #14
  %.fr = freeze i8 %i.jg
  %.not187 = icmp eq i8 %.fr, 0
  %spec.select346 = select i1 %.not187, i8 0, i8 %.5 ; 2 uses
  %.pre = load i32, ptr %4, align 4
  %i.jh = icmp slt i32 %.pre, 1
  br i1 %i.jh, label %bb.be, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread.thread.loopexit

bb.be:                                            ; preds = %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit.thread
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = icmp eq i32 %i.fa, %i.jj
  %spec.select208 = select i1 %i.jk, i8 0, i8 %spec.select346 ; 5 uses
  %i.jl = load ptr, ptr %0, align 8               ; 3 uses
  %i.jm = load ptr, ptr %i.jl, align 8            ; 2 uses
  %.not189 = icmp eq ptr %i.jm, null
  br i1 %.not189, label %bb.bp, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = load i32, ptr %i.jn, align 8            ; 2 uses
  %i.jp = icmp sgt i32 %i.jo, %.0161
  br i1 %i.jp, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %bb.bh, label %bb.bp

bb.bh:                                            ; preds = %bb.bg
  %.shift = getelementptr inbounds nuw i8, ptr %.0141, i64 4
  %6 = load i32, ptr %.shift, align 4
  %.not190 = icmp ult i32 %6, 65536
  br i1 %.not190, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i231, i64 12
  %i.ju = load i32, ptr %i.jt, align 4
  %.not191 = icmp slt i32 %.0161, %i.ju
  br i1 %.not191, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jv = getelementptr inbounds nuw i8, ptr %.0141, i64 12
  %i.jw = load i32, ptr %i.jv, align 4
  %i.jx = icmp sgt i32 %i.jw, %.0161
  br i1 %i.jx, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.jy = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.jz = call fastcc noundef i32 @_ZN12_GLOBAL__N_111codePointAtERK7USearchi(ptr nonnull %i.jm, i32 %i.jo, i32 noundef %.0161)
  %i.ka = load ptr, ptr %i.jy, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 120
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = call noundef signext i8 %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, i32 noundef %i.jz) #14
  %.not192 = icmp eq i8 %i.kd, 0
  br i1 %.not192, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.ke = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.kf = icmp sgt i32 %.0161, 0
  br i1 %i.kf, label %bb.bm, label %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit

bb.bm:                                            ; preds = %bb.bl
  %i.kg = load ptr, ptr %0, align 8
  %.val219 = load ptr, ptr %i.kg, align 8
  %i.kh = zext nneg i32 %.0161 to i64
  %i.ki = getelementptr [2 x i8], ptr %.val219, i64 %i.kh ; 2 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 -2
  %i.kk = load i16, ptr %i.kj, align 2
  %i.kl = zext i16 %i.kk to i32                   ; 4 uses
  %i.km = and i32 %i.kl, 64512
  %i.kn = icmp ne i32 %i.km, 56320
  %.not.i257 = icmp eq i32 %.0161, 1
  %or.cond.i258 = or i1 %.not.i257, %i.kn
  br i1 %or.cond.i258, label %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ko = getelementptr i8, ptr %i.ki, i64 -4
  %i.kp = load i16, ptr %i.ko, align 2
  %i.kq = zext i16 %i.kp to i32                   ; 2 uses
  %i.kr = and i32 %i.kq, 64512
  %i.ks = icmp eq i32 %i.kr, 55296
  br i1 %i.ks, label %bb.bo, label %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit

bb.bo:                                            ; preds = %bb.bn
  %i.kt = shl nuw nsw i32 %i.kq, 10
  %i.ku = add nuw nsw i32 %i.kl, -56613888
  %i.kv = add nsw i32 %i.ku, %i.kt
  br label %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit

_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit: ; preds = %bb.bl, %bb.bm, %bb.bn, %bb.bo
  %.0.i256 = phi i32 [ -1, %bb.bl ], [ %i.kl, %bb.bm ], [ %i.kv, %bb.bo ], [ %i.kl, %bb.bn ]
  %i.kw = load ptr, ptr %i.ke, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 128
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = call noundef signext i8 %i.ky(ptr noundef nonnull align 8 dereferenceable(8) %i.ke, i32 noundef %.0.i256) #14
  %.not198 = icmp eq i8 %i.kz, 0
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.bj, %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit, %bb.bk, %bb.bf, %bb.be
  %.0137 = phi i1 [ true, %bb.be ], [ true, %bb.bf ], [ true, %bb.bj ], [ true, %bb.bi ], [ true, %bb.bh ], [ true, %bb.bg ], [ false, %bb.bk ], [ %.not198, %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit ] ; 2 uses
  %i.la = icmp slt i32 %i.fc, %.0161
  %.pr.pre372 = load i32, ptr %4, align 4         ; 3 uses
  br i1 %i.la, label %bb.bq, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread

bb.bq:                                            ; preds = %bb.bp
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.i231, i64 12 ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4
  %i.ld = icmp eq i32 %i.fc, %i.lc
  br i1 %i.ld, label %bb.br, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266._crit_edge

bb.br:                                            ; preds = %bb.bq
  %i.le = icmp slt i32 %.pr.pre372, 1
  br i1 %i.le, label %bb.bs, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread.thread.loopexit

bb.bs:                                            ; preds = %bb.br
  %i.lf = load ptr, ptr %0, align 8               ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8            ; 2 uses
  %.not15.i.i260 = icmp eq ptr %i.lh, null
  br i1 %.not15.i.i260, label %bb.bt, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266

bb.bt:                                            ; preds = %bb.bs
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lj = load ptr, ptr %i.li, align 8            ; 2 uses
  %.not16.i.i263 = icmp eq ptr %i.lj, null
  br i1 %.not16.i.i263, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i264, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i264: ; preds = %bb.bt
  %i.lk = load ptr, ptr %i.af, align 8
  %i.ll = call ptr @ucol_getLocaleByType_78(ptr noundef %i.lk, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.lm = load ptr, ptr %0, align 8               ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lp = load i32, ptr %i.lo, align 8
  %i.lq = call ptr @ubrk_open_78(i32 noundef 0, ptr noundef %i.ll, ptr noundef %i.ln, i32 noundef %i.lp, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.lr = load ptr, ptr %0, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store ptr %i.lq, ptr %i.ls, align 8
  %i.lt = load ptr, ptr %0, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8
  %.pre.i265 = load i32, ptr %4, align 4
  %i.lw = icmp slt i32 %.pre.i265, 1
  br i1 %i.lw, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread.thread.loopexit

_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266: ; preds = %bb.bs, %bb.bt, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i264
  %.0.i10.i262 = phi ptr [ %i.lv, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i264 ], [ %i.lh, %bb.bs ], [ %i.lj, %bb.bt ]
  %i.lx = call signext i8 @ubrk_isBoundary_78(ptr noundef %.0.i10.i262, i32 noundef %i.fc) #14
  %.not193 = icmp eq i8 %i.lx, 0
  %.pr.pre371 = load i32, ptr %4, align 4         ; 2 uses
  br i1 %.not193, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266._crit_edge, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread

_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266._crit_edge: ; preds = %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266, %bb.bq
  %i.ly = phi i32 [ %.pr.pre372, %bb.bq ], [ %.pr.pre371, %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266 ] ; 2 uses
  %i.lz = icmp slt i32 %i.ly, 1
  br i1 %i.lz, label %bb.bu, label %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit

bb.bu:                                            ; preds = %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266._crit_edge
  %i.ma = load ptr, ptr %0, align 8               ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  %i.mc = load ptr, ptr %i.mb, align 8            ; 2 uses
  %.not15.i.i268 = icmp eq ptr %i.mc, null
  br i1 %.not15.i.i268, label %bb.bv, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i269

bb.bv:                                            ; preds = %bb.bu
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.me = load ptr, ptr %i.md, align 8            ; 2 uses
  %.not16.i.i270 = icmp eq ptr %i.me, null
  br i1 %.not16.i.i270, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i271, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i269

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i271: ; preds = %bb.bv
  %i.mf = load ptr, ptr %i.af, align 8
  %i.mg = call ptr @ucol_getLocaleByType_78(ptr noundef %i.mf, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.mh = load ptr, ptr %0, align 8               ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mk = load i32, ptr %i.mj, align 8
  %i.ml = call ptr @ubrk_open_78(i32 noundef 0, ptr noundef %i.mg, ptr noundef %i.mi, i32 noundef %i.mk, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.mm = load ptr, ptr %0, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store ptr %i.ml, ptr %i.mn, align 8
  %i.mo = load ptr, ptr %0, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8
  %.pre.i272 = load i32, ptr %4, align 4          ; 2 uses
  %i.mr = icmp slt i32 %.pre.i272, 1
  br i1 %i.mr, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i269, label %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i269: ; preds = %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i271, %bb.bv, %bb.bu
  %.0.i12.i = phi ptr [ %i.mq, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i271 ], [ %i.mc, %bb.bu ], [ %i.me, %bb.bv ]
  %i.ms = call i32 @ubrk_following_78(ptr noundef %.0.i12.i, i32 noundef %i.fc) #14
  %.pr.pre.pre = load i32, ptr %4, align 4
  br label %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit

_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit: ; preds = %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266._crit_edge, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i271, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i269
  %.pr.pre = phi i32 [ %i.ly, %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266._crit_edge ], [ %.pr.pre.pre, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i269 ], [ %.pre.i272, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i271 ]
  %.1.i267 = phi i32 [ %i.fc, %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266._crit_edge ], [ %i.ms, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i269 ], [ %i.fc, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i271 ] ; 3 uses
  %i.mt = load i32, ptr %i.lb, align 4
  %.not194 = icmp sge i32 %.1.i267, %i.mt
  %i.mu = icmp slt i32 %.1.i267, %.0161
  %or.cond209 = select i1 %.0137, i1 true, i1 %i.mu
  %or.cond214 = select i1 %.not194, i1 %or.cond209, i1 false
  %spec.select217 = select i1 %or.cond214, i32 %.1.i267, i32 %.0161
  br label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread

_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread: ; preds = %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit, %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266, %bb.bp
  %.pr = phi i32 [ %.pr.pre, %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit ], [ %.pr.pre371, %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266 ], [ %.pr.pre372, %bb.bp ]
  %.2167.ph = phi i32 [ %spec.select217, %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit ], [ %i.fc, %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266 ], [ %.0161, %bb.bp ] ; 8 uses
  %i.mv = icmp slt i32 %.pr, 1
  br i1 %i.mv, label %bb.bw, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread.thread.loopexit

bb.bw:                                            ; preds = %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread
  br i1 %.0137, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.mw = icmp sgt i32 %.2167.ph, %.0161
  %spec.select210 = select i1 %i.mw, i8 0, i8 %spec.select208 ; 2 uses
  %i.mx = load ptr, ptr %0, align 8               ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  %i.mz = load ptr, ptr %i.my, align 8            ; 2 uses
  %.not15.i.i274 = icmp eq ptr %i.mz, null
  br i1 %.not15.i.i274, label %bb.by, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit280.thread

bb.by:                                            ; preds = %bb.bx
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.nb = load ptr, ptr %i.na, align 8            ; 2 uses
  %.not16.i.i277 = icmp eq ptr %i.nb, null
  br i1 %.not16.i.i277, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i278, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit280.thread

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i278: ; preds = %bb.by
  %i.nc = load ptr, ptr %i.af, align 8
  %i.nd = call ptr @ucol_getLocaleByType_78(ptr noundef %i.nc, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
end_hunk_0
begin_hunk_1_@usearch_searchBackwards_78:bb.a
.critedge:                                        ; preds = %.critedge.loopexit, %bb.x
  %i.ge = phi ptr [ %i.dm, %bb.x ], [ %i.ev, %.critedge.loopexit ] ; 2 uses
  %i.gf = phi i32 [ %i.do, %bb.x ], [ %.pre357, %.critedge.loopexit ]
  %.0158.lcssa = phi i32 [ 0, %bb.x ], [ %.2160, %.critedge.loopexit ] ; 2 uses
  %i.gg = add nsw i32 %i.gf, %.3                  ; 2 uses
  %i.gh = add i32 %.0158.lcssa, -1
  %i.gi = add i32 %i.gh, %i.gg                    ; 4 uses
  %i.gj = load i32, ptr %i.cg, align 8            ; 2 uses
  %i.gk = srem i32 %i.gi, %i.gj                   ; 2 uses
  %i.gl = load i32, ptr %i.ch, align 4            ; 3 uses
  %.not.i238 = icmp sge i32 %i.gi, %i.gl
  %i.gm = load i32, ptr %i.ci, align 8            ; 2 uses
  %i.gn = icmp slt i32 %i.gi, %i.gm
  %or.cond.i239 = select i1 %.not.i238, i1 %i.gn, i1 false
  br i1 %or.cond.i239, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge
  %i.go = sext i32 %i.gk to i64
  %i.gp = getelementptr inbounds [16 x i8], ptr %i.ge, i64 %i.go
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit243

bb.an:                                            ; preds = %.critedge
  %.not12.i240 = icmp eq i32 %i.gi, %i.gm
  call void @llvm.assume(i1 %.not12.i240)
  %i.gq = add i32 %i.gg, %.0158.lcssa             ; 2 uses
  store i32 %i.gq, ptr %i.ci, align 8
  %i.gr = sub nsw i32 %i.gq, %i.gl
  %.not13.i242 = icmp slt i32 %i.gr, %i.gj
  br i1 %.not13.i242, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gs = add nsw i32 %i.gl, 1
  store i32 %i.gs, ptr %i.ch, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4
  %i.gt = load ptr, ptr %i.cj, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 3152
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = sext i32 %i.gk to i64                   ; 3 uses
  %i.gx = getelementptr inbounds [16 x i8], ptr %i.ge, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.ha = call noundef i64 @_ZN6icu_7813UCollationPCE17previousProcessedEPiS1_P10UErrorCode(ptr noundef nonnull align 8 dereferenceable(292) %i.gv, ptr noundef nonnull %i.gy, ptr noundef nonnull %i.gz, ptr noundef nonnull %i.b) #14
  %i.hb = load ptr, ptr %i.ck, align 8
  %i.hc = getelementptr inbounds [16 x i8], ptr %i.hb, i64 %i.gw
  store i64 %i.ha, ptr %i.hc, align 8
  %i.hd = load ptr, ptr %i.ck, align 8
  %i.he = getelementptr inbounds [16 x i8], ptr %i.hd, i64 %i.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit243

_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit243: ; preds = %bb.am, %bb.ap
  %.0.i241 = phi ptr [ %i.gp, %bb.am ], [ %i.he, %bb.ap ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i241, i64 8
  %i.hg = load i32, ptr %i.hf, align 8            ; 11 uses
  %i.hh = load i32, ptr %4, align 4
  %i.hi = icmp slt i32 %i.hh, 1
  br i1 %i.hi, label %bb.aq, label %.thread319.loopexit

bb.aq:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit243
  %i.hj = load ptr, ptr %0, align 8               ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8            ; 2 uses
  %.not15.i.i = icmp eq ptr %i.hl, null
  br i1 %.not15.i.i, label %bb.ar, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit

bb.ar:                                            ; preds = %bb.aq
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8            ; 2 uses
  %.not16.i.i = icmp eq ptr %i.hn, null
  br i1 %.not16.i.i, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i: ; preds = %bb.ar
  %i.ho = load ptr, ptr %i.cm, align 8
  %i.hp = call ptr @ucol_getLocaleByType_78(ptr noundef %i.ho, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.hq = load ptr, ptr %0, align 8               ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.ht = load i32, ptr %i.hs, align 8
  %i.hu = call ptr @ubrk_open_78(i32 noundef 0, ptr noundef %i.hp, ptr noundef %i.hr, i32 noundef %i.ht, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.hv = load ptr, ptr %0, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store ptr %i.hu, ptr %i.hw, align 8
  %i.hx = load ptr, ptr %0, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  %.pre.i = load i32, ptr %4, align 4
  %i.ia = icmp slt i32 %.pre.i, 1
  br i1 %i.ia, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit, label %.thread319.loopexit

_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit: ; preds = %bb.aq, %bb.ar, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i
  %.0.i10.i = phi ptr [ %i.hz, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i ], [ %i.hl, %bb.aq ], [ %i.hn, %bb.ar ]
  %i.ib = call signext i8 @ubrk_isBoundary_78(ptr noundef %.0.i10.i, i32 noundef %i.hg) #14
  %.fr = freeze i8 %i.ib
  %.not189 = icmp ne i8 %.fr, 0
  %spec.select = zext i1 %.not189 to i8           ; 2 uses
  %.pr = load i32, ptr %4, align 4
  %i.ic = icmp slt i32 %.pr, 1
  br i1 %i.ic, label %bb.as, label %.thread319.loopexit

bb.as:                                            ; preds = %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i241, i64 12
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = icmp eq i32 %i.hg, %i.ie
  %spec.select207 = select i1 %i.if, i8 0, i8 %spec.select ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i227, i64 8
  %i.ih = load i32, ptr %i.ig, align 8            ; 6 uses
  %.not = icmp eq i32 %.3, 0
  br i1 %.not, label %bb.bs, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ii = add nsw i32 %.3, -1                     ; 2 uses
  %i.ij = load i32, ptr %i.cg, align 8            ; 2 uses
  %i.ik = srem i32 %i.ii, %i.ij                   ; 2 uses
  %i.il = load i32, ptr %i.ch, align 4            ; 3 uses
  %.not.i244 = icmp sgt i32 %.3, %i.il
  %i.im = load i32, ptr %i.ci, align 8            ; 2 uses
  %i.in = icmp sle i32 %.3, %i.im
  %or.cond.i245 = select i1 %.not.i244, i1 %i.in, i1 false
  br i1 %or.cond.i245, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.io = load ptr, ptr %i.ck, align 8
  %i.ip = zext nneg i32 %i.ik to i64
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %i.ip
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit249

bb.av:                                            ; preds = %bb.at
  %.not12.i246 = icmp eq i32 %i.ii, %i.im
  br i1 %.not12.i246, label %bb.aw, label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit249

bb.aw:                                            ; preds = %bb.av
  store i32 %.3, ptr %i.ci, align 8
  %i.ir = sub nsw i32 %.3, %i.il
  %.not13.i248 = icmp slt i32 %i.ir, %i.ij
  br i1 %.not13.i248, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.is = add nsw i32 %i.il, 1
  store i32 %i.is, ptr %i.ch, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4
  %i.it = load ptr, ptr %i.cj, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 3152
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = load ptr, ptr %i.ck, align 8
  %i.ix = zext nneg i32 %i.ik to i64              ; 3 uses
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %i.ix ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  %i.jb = call noundef i64 @_ZN6icu_7813UCollationPCE17previousProcessedEPiS1_P10UErrorCode(ptr noundef nonnull align 8 dereferenceable(292) %i.iv, ptr noundef nonnull %i.iz, ptr noundef nonnull %i.ja, ptr noundef nonnull %i.a) #14
  %i.jc = load ptr, ptr %i.ck, align 8
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.jc, i64 %i.ix
  store i64 %i.jb, ptr %i.jd, align 8
  %i.je = load ptr, ptr %i.ck, align 8
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %i.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit249

_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit249: ; preds = %bb.au, %bb.av, %bb.ay
  %.0.i247 = phi ptr [ %i.iq, %bb.au ], [ %i.jf, %bb.ay ], [ null, %bb.av ] ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i247, i64 8
  %i.jh = load i32, ptr %i.jg, align 8            ; 13 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i247, i64 12
  %i.jj = load i32, ptr %i.ji, align 4            ; 2 uses
  %i.jk = icmp eq i32 %i.jh, %i.jj
  br i1 %i.jk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit249
  %i.jl = load i64, ptr %.0.i247, align 8
  %.not191 = icmp eq i64 %i.jl, 9223372036854775807
  %spec.select208 = select i1 %.not191, i8 %spec.select207, i8 0
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit249
  %.5157 = phi i8 [ %spec.select207, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit249 ], [ %spec.select208, %bb.az ] ; 2 uses
  %i.jm = load ptr, ptr %0, align 8               ; 3 uses
  %i.jn = load ptr, ptr %i.jm, align 8            ; 2 uses
  %.not192 = icmp eq ptr %i.jn, null
  br i1 %.not192, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jp = load i32, ptr %i.jo, align 8            ; 2 uses
  %i.jq = icmp sgt i32 %i.jp, %i.jh
  br i1 %i.jq, label %bb.bc, label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %.shift = getelementptr inbounds nuw i8, ptr %.0.i247, i64 4
  %6 = load i32, ptr %.shift, align 4
  %.not193 = icmp ult i32 %6, 65536
  br i1 %.not193, label %bb.bk, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.i227, i64 12
  %i.jv = load i32, ptr %i.ju, align 4
  %.not194 = icmp sge i32 %i.jh, %i.jv
  %i.jw = icmp sgt i32 %i.jj, %i.jh
  %or.cond343 = and i1 %i.jw, %.not194
  br i1 %or.cond343, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.jx = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.jy = call fastcc noundef i32 @_ZN12_GLOBAL__N_111codePointAtERK7USearchi(ptr nonnull %i.jn, i32 %i.jp, i32 noundef %i.jh)
  %i.jz = load ptr, ptr %i.jx, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 120
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = call noundef signext i8 %i.kb(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, i32 noundef %i.jy) #14
  %.not195 = icmp eq i8 %i.kc, 0
  br i1 %.not195, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.kd = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.ke = icmp sgt i32 %i.jh, 0
  br i1 %i.ke, label %bb.bh, label %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit

bb.bh:                                            ; preds = %bb.bg
  %i.kf = load ptr, ptr %0, align 8
  %.val222 = load ptr, ptr %i.kf, align 8
  %i.kg = zext nneg i32 %i.jh to i64
  %i.kh = getelementptr [2 x i8], ptr %.val222, i64 %i.kg ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kh, i64 -2
  %i.kj = load i16, ptr %i.ki, align 2
  %i.kk = zext i16 %i.kj to i32                   ; 4 uses
  %i.kl = and i32 %i.kk, 64512
  %i.km = icmp ne i32 %i.kl, 56320
  %.not.i251 = icmp eq i32 %i.jh, 1
  %or.cond.i252 = or i1 %.not.i251, %i.km
  br i1 %or.cond.i252, label %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kn = getelementptr i8, ptr %i.kh, i64 -4
  %i.ko = load i16, ptr %i.kn, align 2
  %i.kp = zext i16 %i.ko to i32                   ; 2 uses
  %i.kq = and i32 %i.kp, 64512
  %i.kr = icmp eq i32 %i.kq, 55296
  br i1 %i.kr, label %bb.bj, label %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit

bb.bj:                                            ; preds = %bb.bi
  %i.ks = shl nuw nsw i32 %i.kp, 10
  %i.kt = add nuw nsw i32 %i.kk, -56613888
  %i.ku = add nsw i32 %i.kt, %i.ks
  br label %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit

_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit: ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.bj
  %.0.i250 = phi i32 [ -1, %bb.bg ], [ %i.kk, %bb.bh ], [ %i.ku, %bb.bj ], [ %i.kk, %bb.bi ]
  %i.kv = load ptr, ptr %i.kd, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 128
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = call noundef signext i8 %i.kx(ptr noundef nonnull align 8 dereferenceable(8) %i.kd, i32 noundef %.0.i250) #14
  %.not199 = icmp eq i8 %i.ky, 0
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bc, %bb.bd, %bb.be, %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit, %bb.bf, %bb.bb, %bb.ba
  %.0140 = phi i1 [ true, %bb.ba ], [ true, %bb.bb ], [ %.not199, %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit ], [ true, %bb.be ], [ true, %bb.bd ], [ true, %bb.bc ], [ false, %bb.bf ] ; 2 uses
  %i.kz = icmp slt i32 %i.ih, %i.jh
  br i1 %i.kz, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.la = load i32, ptr %4, align 4
  %i.lb = icmp slt i32 %i.la, 1
  br i1 %i.lb, label %bb.bm, label %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit

bb.bm:                                            ; preds = %bb.bl
  %i.lc = load ptr, ptr %0, align 8               ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load ptr, ptr %i.ld, align 8            ; 2 uses
  %.not15.i.i254 = icmp eq ptr %i.le, null
  br i1 %.not15.i.i254, label %bb.bn, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i255

bb.bn:                                            ; preds = %bb.bm
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8            ; 2 uses
  %.not16.i.i256 = icmp eq ptr %i.lg, null
  br i1 %.not16.i.i256, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i257, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i255

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i257: ; preds = %bb.bn
  %i.lh = load ptr, ptr %i.cm, align 8
  %i.li = call ptr @ucol_getLocaleByType_78(ptr noundef %i.lh, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.lj = load ptr, ptr %0, align 8               ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lm = load i32, ptr %i.ll, align 8
  %i.ln = call ptr @ubrk_open_78(i32 noundef 0, ptr noundef %i.li, ptr noundef %i.lk, i32 noundef %i.lm, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.lo = load ptr, ptr %0, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store ptr %i.ln, ptr %i.lp, align 8
  %i.lq = load ptr, ptr %0, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8
  %.pre.i258 = load i32, ptr %4, align 4
  %i.lt = icmp slt i32 %.pre.i258, 1
  br i1 %i.lt, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i255, label %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i255: ; preds = %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i257, %bb.bn, %bb.bm
  %.0.i12.i = phi ptr [ %i.ls, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i257 ], [ %i.le, %bb.bm ], [ %i.lg, %bb.bn ]
  %i.lu = call i32 @ubrk_following_78(ptr noundef %.0.i12.i, i32 noundef %i.ih) #14
  br label %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit

_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit: ; preds = %bb.bl, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i257, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i255
  %.1.i253 = phi i32 [ %i.ih, %bb.bl ], [ %i.lu, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i255 ], [ %i.ih, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i257 ] ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.0.i227, i64 12
  %i.lw = load i32, ptr %i.lv, align 4
  %.not196 = icmp sge i32 %.1.i253, %i.lw
  %i.lx = icmp slt i32 %.1.i253, %i.jh
  %or.cond209 = select i1 %.0140, i1 true, i1 %i.lx
  %or.cond215 = and i1 %.not196, %or.cond209
  %spec.select218 = select i1 %or.cond215, i32 %.1.i253, i32 %i.jh
  br label %bb.bo

bb.bo:                                            ; preds = %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit, %bb.bk
  %.2168 = phi i32 [ %i.jh, %bb.bk ], [ %spec.select218, %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit ] ; 7 uses
  br i1 %.0140, label %bb.bp, label %.thread313

bb.bp:                                            ; preds = %bb.bo
  %i.ly = icmp sgt i32 %.2168, %i.jh
  %spec.select210 = select i1 %i.ly, i8 0, i8 %.5157 ; 3 uses
  %i.lz = load i32, ptr %4, align 4
  %i.ma = icmp slt i32 %i.lz, 1
  br i1 %i.ma, label %bb.bq, label %.thread319.loopexit

bb.bq:                                            ; preds = %bb.bp
  %i.mb = load ptr, ptr %0, align 8               ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.md = load ptr, ptr %i.mc, align 8            ; 2 uses
  %.not15.i.i260 = icmp eq ptr %i.md, null
  br i1 %.not15.i.i260, label %bb.br, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread

bb.br:                                            ; preds = %bb.bq
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.mf = load ptr, ptr %i.me, align 8            ; 2 uses
  %.not16.i.i263 = icmp eq ptr %i.mf, null
  br i1 %.not16.i.i263, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i264, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i264: ; preds = %bb.br
  %i.mg = load ptr, ptr %i.cm, align 8
  %i.mh = call ptr @ucol_getLocaleByType_78(ptr noundef %i.mg, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.mi = load ptr, ptr %0, align 8               ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ml = load i32, ptr %i.mk, align 8
  %i.mm = call ptr @ubrk_open_78(i32 noundef 0, ptr noundef %i.mh, ptr noundef %i.mj, i32 noundef %i.ml, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.mn = load ptr, ptr %0, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store ptr %i.mm, ptr %i.mo, align 8
  %i.mp = load ptr, ptr %0, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8
  %.pre.i265 = load i32, ptr %4, align 4
  %i.ms = icmp slt i32 %.pre.i265, 1
  br i1 %i.ms, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread, label %.thread319.loopexit

_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread: ; preds = %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i264, %bb.br, %bb.bq
  %.0.i10.i262 = phi ptr [ %i.mr, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i264 ], [ %i.md, %bb.bq ], [ %i.mf, %bb.br ]
  %i.mt = call signext i8 @ubrk_isBoundary_78(ptr noundef %.0.i10.i262, i32 noundef %.2168) #14
  %.fr345 = freeze i8 %i.mt
  %.not200 = icmp eq i8 %.fr345, 0
  %spec.select344 = select i1 %.not200, i8 0, i8 %spec.select210 ; 2 uses
  %.pre358 = load i32, ptr %4, align 4
  %i.mu = icmp slt i32 %.pre358, 1
  br i1 %i.mu, label %.thread313, label %.thread319.loopexit

bb.bs:                                            ; preds = %bb.as
  %i.mv = load ptr, ptr %0, align 8               ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8            ; 2 uses
  %.not15.i.i268 = icmp eq ptr %i.mx, null
  br i1 %.not15.i.i268, label %bb.bt, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i269

bb.bt:                                            ; preds = %bb.bs
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.mz = load ptr, ptr %i.my, align 8            ; 2 uses
  %.not16.i.i271 = icmp eq ptr %i.mz, null
  br i1 %.not16.i.i271, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i272, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i269

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i272: ; preds = %bb.bt
  %i.na = load ptr, ptr %i.cm, align 8
  %i.nb = call ptr @ucol_getLocaleByType_78(ptr noundef %i.na, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.nc = load ptr, ptr %0, align 8               ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.nf = load i32, ptr %i.ne, align 8
  %i.ng = call ptr @ubrk_open_78(i32 noundef 0, ptr noundef %i.nb, ptr noundef %i.nd, i32 noundef %i.nf, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.nh = load ptr, ptr %0, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  store ptr %i.ng, ptr %i.ni, align 8
  %i.nj = load ptr, ptr %0, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8
  %.pre.i273 = load i32, ptr %4, align 4
  %i.nm = icmp slt i32 %.pre.i273, 1
end_hunk_1
