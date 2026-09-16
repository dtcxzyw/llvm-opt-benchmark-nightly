Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/deftree?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@build_tree:bb.a
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %._crit_edge65.i111
  %.pre-phi.i113 = phi i64 [ %.pre.i112, %._crit_edge65.i111 ], [ %i.fy, %bb.af ], [ %i.ge, %bb.ae ], [ %i.ge, %bb.ad ]
  %.1.i114 = phi i32 [ %.060.i109, %._crit_edge65.i111 ], [ %i.fx, %bb.af ], [ %.060.i109, %bb.ae ], [ %.060.i109, %bb.ad ] ; 3 uses
  %i.gq = load i16, ptr %i.fi, align 2            ; 2 uses
  %i.gr = getelementptr [4 x i8], ptr %i.ba, i64 %.pre-phi.i113
  %i.gs = load i32, ptr %i.gr, align 4            ; 2 uses
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr [4 x i8], ptr %i.a, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2            ; 2 uses
  %i.gw = icmp ult i16 %i.gq, %i.gv
  br i1 %i.gw, label %pqdownheap.exit120.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gx = icmp eq i16 %i.gq, %i.gv
  br i1 %i.gx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gy = load i8, ptr %i.fp, align 1
  %i.gz = getelementptr i8, ptr %i.bc, i64 %i.gt
  %i.ha = load i8, ptr %i.gz, align 1
  %.not56.i118 = icmp ugt i8 %i.gy, %i.ha
  br i1 %.not56.i118, label %bb.aj, label %pqdownheap.exit120.loopexit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hb = sext i32 %.04959.i110 to i64
  %i.hc = getelementptr [4 x i8], ptr %i.ba, i64 %i.hb
  store i32 %i.gs, ptr %i.hc, align 4
  %.0.i115 = shl i32 %.1.i114, 1                  ; 2 uses
  %i.hd = load i32, ptr %i.g, align 4             ; 2 uses
  %.not.i116 = icmp sgt i32 %.0.i115, %i.hd
  br i1 %.not.i116, label %pqdownheap.exit120.loopexit, label %.lr.ph.i108, !llvm.loop !31

pqdownheap.exit120.loopexit:                      ; preds = %bb.aj, %bb.ai, %bb.ag
  %.049.lcssa.i117.ph = phi i32 [ %.04959.i110, %bb.ag ], [ %.04959.i110, %bb.ai ], [ %.1.i114, %bb.aj ]
  %i.he = sext i32 %.049.lcssa.i117.ph to i64
  br label %pqdownheap.exit120

pqdownheap.exit120:                               ; preds = %pqdownheap.exit120.loopexit, %pqdownheap.exit106
  %.049.lcssa.i117 = phi i64 [ 1, %pqdownheap.exit106 ], [ %i.he, %pqdownheap.exit120.loopexit ]
  %i.hf = getelementptr [4 x i8], ptr %i.ba, i64 %.049.lcssa.i117
  store i32 %.0, ptr %i.hf, align 4
  %i.hg = load i32, ptr %i.g, align 4             ; 2 uses
  %i.hh = icmp sgt i32 %i.hg, 1
  br i1 %i.hh, label %bb.s, label %bb.ak, !llvm.loop !33

bb.ak:                                            ; preds = %pqdownheap.exit120
  %i.hi = load i32, ptr %i.bb, align 4
  %i.hj = load i32, ptr %i.h, align 8
  %i.hk = add i32 %i.hj, -1                       ; 2 uses
  store i32 %i.hk, ptr %i.h, align 8
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [4 x i8], ptr %i.ba, i64 %i.hl
  store i32 %i.hi, ptr %i.hm, align 4
  %i.hn = load ptr, ptr %1, align 8               ; 4 uses
  %i.ho = load i32, ptr %i.at, align 8            ; 2 uses
  %i.hp = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.hq = load ptr, ptr %i.hp, align 8            ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hp, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = getelementptr i8, ptr %i.hp, i64 16
  %i.hu = load i32, ptr %i.ht, align 8            ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hp, i64 24
  %i.hw = load i32, ptr %i.hv, align 8            ; 6 uses
  %i.hx = getelementptr i8, ptr %0, i64 2952      ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %i.hx, i8 0, i64 32, i1 false)
  %i.hy = load i32, ptr %i.h, align 8
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr [4 x i8], ptr %i.ba, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr [4 x i8], ptr %i.hn, i64 %i.ic
  %i.ie = getelementptr i8, ptr %i.id, i64 2
  store i16 0, ptr %i.ie, align 2
  %i.if = load i32, ptr %i.h, align 8
  %.089112.i = add i32 %i.if, 1                   ; 2 uses
  %i.ig = icmp slt i32 %.089112.i, 573
  br i1 %i.ig, label %.lr.ph.i121, label %gen_bitlen.exit

.lr.ph.i121:                                      ; preds = %bb.ak
  %i.ih = getelementptr i8, ptr %0, i64 5888      ; 4 uses
  %.not103.i = icmp eq ptr %i.hq, null
  %i.ii = getelementptr i8, ptr %0, i64 5896      ; 2 uses
  %i.ij = sext i32 %.089112.i to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.aq, %.lr.ph.i121
  %indvars.iv.i = phi i64 [ %i.ij, %.lr.ph.i121 ], [ %indvars.iv.next.i, %bb.aq ] ; 2 uses
  %.0113.i = phi i32 [ 0, %.lr.ph.i121 ], [ %spec.select104.i, %bb.aq ]
  %i.ik = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.il = load i32, ptr %i.ik, align 4            ; 4 uses
  %i.im = sext i32 %i.il to i64                   ; 2 uses
  %i.in = getelementptr [4 x i8], ptr %i.hn, i64 %i.im ; 2 uses
  %i.io = getelementptr i8, ptr %i.in, i64 2      ; 2 uses
  %i.ip = load i16, ptr %i.io, align 2
  %i.iq = zext i16 %i.ip to i64
  %i.ir = getelementptr [4 x i8], ptr %i.hn, i64 %i.iq
  %i.is = getelementptr i8, ptr %i.ir, i64 2
  %i.it = load i16, ptr %i.is, align 2
  %i.iu = zext i16 %i.it to i32                   ; 2 uses
  %i.iv = add nuw nsw i32 %i.iu, 1
  %.not101.i = icmp sle i32 %i.hw, %i.iu          ; 2 uses
  %spec.select.i = select i1 %.not101.i, i32 %i.hw, i32 %i.iv ; 3 uses
  %i.iw = zext i1 %.not101.i to i32
  %spec.select104.i = add i32 %.0113.i, %i.iw     ; 3 uses
  %i.ix = trunc i32 %spec.select.i to i16
  store i16 %i.ix, ptr %i.io, align 2
  %i.iy = icmp sgt i32 %i.il, %i.ho
  br i1 %i.iy, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iz = sext i32 %spec.select.i to i64
  %i.ja = getelementptr [2 x i8], ptr %i.hx, i64 %i.iz ; 2 uses
  %i.jb = load i16, ptr %i.ja, align 2
  %i.jc = add i16 %i.jb, 1
  store i16 %i.jc, ptr %i.ja, align 2
  %.not102.i = icmp slt i32 %i.il, %i.hu
  br i1 %.not102.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jd = sub i32 %i.il, %i.hu
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr [4 x i8], ptr %i.hs, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.084.i = phi i32 [ %i.jg, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %i.jh = load i16, ptr %i.in, align 2
  %i.ji = zext i16 %i.jh to i64                   ; 2 uses
  %i.jj = add i32 %.084.i, %spec.select.i
  %i.jk = sext i32 %i.jj to i64
  %i.jl = mul nsw i64 %i.ji, %i.jk
  %i.jm = load i64, ptr %i.ih, align 8
  %i.jn = add i64 %i.jl, %i.jm
  store i64 %i.jn, ptr %i.ih, align 8
  br i1 %.not103.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jo = getelementptr [4 x i8], ptr %i.hq, i64 %i.im
  %i.jp = getelementptr i8, ptr %i.jo, i64 2
  %i.jq = load i16, ptr %i.jp, align 2
  %i.jr = zext i16 %i.jq to i32
  %i.js = add i32 %.084.i, %i.jr
  %i.jt = sext i32 %i.js to i64
  %i.ju = mul nsw i64 %i.jt, %i.ji
  %i.jv = load i64, ptr %i.ii, align 8
  %i.jw = add i64 %i.ju, %i.jv
  store i64 %i.jw, ptr %i.ii, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.al
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jx = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.jx, 573
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.al, !llvm.loop !34

._crit_edge.i:                                    ; preds = %bb.aq
  %i.jy = icmp eq i32 %spec.select104.i, 0
  br i1 %i.jy, label %gen_bitlen.exit, label %.preheader105.i

.preheader105.i:                                  ; preds = %._crit_edge.i
  %i.jz = sext i32 %i.hw to i64
  %i.ka = getelementptr [2 x i8], ptr %i.hx, i64 %i.jz ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.preheader105.i
  %.2.i = phi i32 [ %i.kn, %bb.at ], [ %spec.select104.i, %.preheader105.i ]
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %.287.in.i = phi i32 [ %i.hw, %bb.ar ], [ %.287.i, %bb.as ] ; 2 uses
  %.287.i = add i32 %.287.in.i, -1                ; 2 uses
  %i.kb = sext i32 %.287.i to i64                 ; 2 uses
  %i.kc = getelementptr [2 x i8], ptr %i.hx, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2            ; 2 uses
  %i.ke = icmp eq i16 %i.kd, 0
  br i1 %i.ke, label %bb.as, label %bb.at, !llvm.loop !35

bb.at:                                            ; preds = %bb.as
  %i.kf = getelementptr [2 x i8], ptr %i.hx, i64 %i.kb
  %i.kg = add i16 %i.kd, -1
  store i16 %i.kg, ptr %i.kf, align 2
  %i.kh = sext i32 %.287.in.i to i64
  %i.ki = getelementptr [2 x i8], ptr %i.hx, i64 %i.kh ; 2 uses
  %i.kj = load i16, ptr %i.ki, align 2
  %i.kk = add i16 %i.kj, 2
  store i16 %i.kk, ptr %i.ki, align 2
  %i.kl = load i16, ptr %i.ka, align 2
  %i.km = add i16 %i.kl, -1
  store i16 %i.km, ptr %i.ka, align 2
  %i.kn = add i32 %.2.i, -2                       ; 2 uses
  %i.ko = icmp sgt i32 %i.kn, 0
  br i1 %i.ko, label %bb.ar, label %.preheader.i, !llvm.loop !36

.preheader.i:                                     ; preds = %bb.at
  %.not122.i = icmp eq i32 %i.hw, 0
  br i1 %.not122.i, label %gen_bitlen.exit, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.preheader.i, %.outer.split.us.i
  %.3124.i = phi i32 [ %2, %.outer.split.us.i ], [ %i.hw, %.preheader.i ] ; 4 uses
  %.190123.i = phi i32 [ %.291.ph.lcssa.i, %.outer.split.us.i ], [ 573, %.preheader.i ] ; 2 uses
  %i.kp = sext i32 %.3124.i to i64                ; 2 uses
  %i.kq = getelementptr [2 x i8], ptr %i.hx, i64 %i.kp
  %i.kr = load i16, ptr %i.kq, align 2            ; 2 uses
  %.not99118.i = icmp eq i16 %i.kr, 0
  br i1 %.not99118.i, label %.outer.split.us.i, label %.outer.split.lr.ph.i

.outer.split.lr.ph.i:                             ; preds = %.lr.ph125.i
  %i.ks = zext i16 %i.kr to i32
  %i.kt = trunc i32 %.3124.i to i16
  br label %.outer.split.i

.outer.split.us.i:                                ; preds = %.outer.i.a, %.lr.ph125.i
  %.291.ph.lcssa.i = phi i32 [ %.190123.i, %.lr.ph125.i ], [ %i.ku, %.outer.i.a ]
  %2 = add i32 %.3124.i, -1                       ; 2 uses
  %.not.i122 = icmp eq i32 %2, 0
  br i1 %.not.i122, label %gen_bitlen.exit, label %.lr.ph125.i, !llvm.loop !37

.outer.split.i:                                   ; preds = %.outer.i.a, %.outer.split.lr.ph.i
  %.088.ph120.i = phi i32 [ %i.ks, %.outer.split.lr.ph.i ], [ %i.ll, %.outer.i.a ]
  %.291.ph119.i = phi i32 [ %.190123.i, %.outer.split.lr.ph.i ], [ %i.ku, %.outer.i.a ]
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.outer.split.i
  %.291.i = phi i32 [ %i.ku, %bb.au ], [ %.291.ph119.i, %.outer.split.i ]
  %i.ku = add i32 %.291.i, -1                     ; 4 uses
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr [4 x i8], ptr %i.ba, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4            ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, %i.ho
  br i1 %i.ky, label %bb.au, label %bb.av, !llvm.loop !38

bb.av:                                            ; preds = %bb.au
  %i.kz = sext i32 %i.kx to i64
  %i.la = getelementptr [4 x i8], ptr %i.hn, i64 %i.kz ; 2 uses
  %i.lb = getelementptr i8, ptr %i.la, i64 2      ; 2 uses
  %i.lc = load i16, ptr %i.lb, align 2            ; 2 uses
  %i.ld = zext i16 %i.lc to i32
  %.not100.i = icmp eq i32 %.3124.i, %i.ld
  br i1 %.not100.i, label %.outer.i.a, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.le = zext i16 %i.lc to i64
  %i.lf = sub nsw i64 %i.kp, %i.le
  %i.lg = load i16, ptr %i.la, align 2
  %i.lh = zext i16 %i.lg to i64
  %i.li = mul nsw i64 %i.lf, %i.lh
  %i.lj = load i64, ptr %i.ih, align 8
  %i.lk = add i64 %i.li, %i.lj
  store i64 %i.lk, ptr %i.ih, align 8
  store i16 %i.kt, ptr %i.lb, align 2
  br label %.outer.i.a

.outer.i.a:                                       ; preds = %bb.aw, %bb.av
  %i.ll = add nsw i32 %.088.ph120.i, -1           ; 2 uses
  %.not99.i.a = icmp eq i32 %i.ll, 0
  br i1 %.not99.i.a, label %.outer.split.us.i, label %.outer.split.i, !llvm.loop !38

gen_bitlen.exit:                                  ; preds = %.outer.split.us.i, %bb.ak, %._crit_edge.i, %.preheader.i
  tail call fastcc void @gen_codes(ptr noundef %i.a, i32 noundef %.2.lcssa, ptr noundef %i.hx) #12, !srcloc !39
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @compress_block(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 5876       ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %..loopexit_crit_edge, label %.preheader

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 5924
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 5880
  %i.d = getelementptr i8, ptr %0, i64 5864
  %i.e = getelementptr i8, ptr %0, i64 5924       ; 11 uses
  %i.f = getelementptr i8, ptr %0, i64 5920       ; 17 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 10 uses
  %i.h = getelementptr i8, ptr %0, i64 40         ; 20 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr [2 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2              ; 3 uses
  %i.l = zext i16 %i.k to i32
  %i.m = load ptr, ptr %i.d, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = icmp eq i16 %i.k, 0
  %i.r = zext i8 %i.o to i64                      ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr [4 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2
  %i.v = zext i16 %i.u to i32                     ; 3 uses
  %i.w = load i32, ptr %i.e, align 4              ; 3 uses
  %i.x = sub nsw i32 16, %i.v
  %i.y = icmp sgt i32 %i.w, %i.x
  %i.z = load i16, ptr %i.s, align 2
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = shl i32 %i.aa, %i.w
  %i.ac = load i16, ptr %i.f, align 8
  %i.ad = trunc i32 %i.ab to i16
  %i.ae = or i16 %i.ac, %i.ad                     ; 2 uses
  store i16 %i.ae, ptr %i.f, align 8
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = trunc i16 %i.ae to i8
  %i.ag = load ptr, ptr %i.g, align 8
  %i.ah = load i32, ptr %i.h, align 8             ; 2 uses
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.h, align 8
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr i8, ptr %i.ag, i64 %i.aj
  store i8 %i.af, ptr %i.ak, align 1
  %i.al = load i16, ptr %i.f, align 8
  %i.am = lshr i16 %i.al, 8
  %i.an = trunc nuw i16 %i.am to i8
  %i.ao = load ptr, ptr %i.g, align 8
  %i.ap = load i32, ptr %i.h, align 8             ; 2 uses
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.h, align 8
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr i8, ptr %i.ao, i64 %i.ar
  store i8 %i.an, ptr %i.as, align 1
  %i.at = load i32, ptr %i.e, align 4             ; 2 uses
  %i.au = sub i32 16, %i.at
  %i.av = lshr i32 %i.aa, %i.au
  %i.aw = trunc nuw i32 %i.av to i16
  store i16 %i.aw, ptr %i.f, align 8
  %i.ax = add nsw i32 %i.v, -16
  %i.ay = add i32 %i.ax, %i.at
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.az = add nsw i32 %i.w, %i.v
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.ba = getelementptr i8, ptr @length_code, i64 %i.r
  %i.bb = load i8, ptr %i.ba, align 1             ; 2 uses
  %i.bc = zext i8 %i.bb to i64                    ; 3 uses
  %i.bd = getelementptr [4 x i8], ptr %1, i64 %i.bc ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 1028
  %i.bf = getelementptr i8, ptr %i.bd, i64 1030
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = zext i16 %i.bg to i32                   ; 3 uses
  %i.bi = load i32, ptr %i.e, align 4             ; 3 uses
  %i.bj = sub nsw i32 16, %i.bh
  %i.bk = icmp sgt i32 %i.bi, %i.bj
  %i.bl = load i16, ptr %i.be, align 2
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = shl i32 %i.bm, %i.bi
  %i.bo = load i16, ptr %i.f, align 8
  %i.bp = trunc i32 %i.bn to i16
  %i.bq = or i16 %i.bo, %i.bp                     ; 3 uses
  store i16 %i.bq, ptr %i.f, align 8
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.br = trunc i16 %i.bq to i8
  %i.bs = load ptr, ptr %i.g, align 8
  %i.bt = load i32, ptr %i.h, align 8             ; 2 uses
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.h, align 8
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr i8, ptr %i.bs, i64 %i.bv
  store i8 %i.br, ptr %i.bw, align 1
  %i.bx = load i16, ptr %i.f, align 8
  %i.by = lshr i16 %i.bx, 8
  %i.bz = trunc nuw i16 %i.by to i8
  %i.ca = load ptr, ptr %i.g, align 8
  %i.cb = load i32, ptr %i.h, align 8             ; 2 uses
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.h, align 8
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr i8, ptr %i.ca, i64 %i.cd
  store i8 %i.bz, ptr %i.ce, align 1
  %i.cf = load i32, ptr %i.e, align 4             ; 2 uses
  %i.cg = sub i32 16, %i.cf
  %i.ch = lshr i32 %i.bm, %i.cg
  %i.ci = trunc nuw i32 %i.ch to i16              ; 2 uses
  store i16 %i.ci, ptr %i.f, align 8
  %i.cj = add nsw i32 %i.bh, -16
  %i.ck = add i32 %i.cj, %i.cf
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cl = add nsw i32 %i.bi, %i.bh
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cm = phi i16 [ %i.bq, %bb.h ], [ %i.ci, %bb.g ] ; 2 uses
  %storemerge = phi i32 [ %i.cl, %bb.h ], [ %i.ck, %bb.g ] ; 5 uses
  store i32 %storemerge, ptr %i.e, align 4
  %i.cn = getelementptr [4 x i8], ptr @extra_lbits, i64 %i.bc
  %i.co = load i32, ptr %i.cn, align 4            ; 3 uses
  %i.cp = add i8 %i.bb, -28
  %.not186 = icmp ult i8 %i.cp, -20
  br i1 %.not186, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = getelementptr [4 x i8], ptr @base_length, i64 %i.bc
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = sub i32 %i.p, %i.cr                     ; 2 uses
  %i.ct = sub i32 16, %i.co
  %i.cu = icmp sgt i32 %storemerge, %i.ct
  %i.cv = shl i32 %i.cs, %storemerge
  %i.cw = trunc i32 %i.cv to i16
  %i.cx = or i16 %i.cm, %i.cw                     ; 3 uses
  store i16 %i.cx, ptr %i.f, align 8
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = trunc i16 %i.cx to i8
  %i.cz = load ptr, ptr %i.g, align 8
  %i.da = load i32, ptr %i.h, align 8             ; 2 uses
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.h, align 8
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr i8, ptr %i.cz, i64 %i.dc
  store i8 %i.cy, ptr %i.dd, align 1
  %i.de = load i16, ptr %i.f, align 8
  %i.df = lshr i16 %i.de, 8
  %i.dg = trunc nuw i16 %i.df to i8
  %i.dh = load ptr, ptr %i.g, align 8
  %i.di = load i32, ptr %i.h, align 8             ; 2 uses
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.h, align 8
  %i.dk = sext i32 %i.di to i64
  %i.dl = getelementptr i8, ptr %i.dh, i64 %i.dk
  store i8 %i.dg, ptr %i.dl, align 1
  %i.dm = and i32 %i.cs, 65535
  %i.dn = load i32, ptr %i.e, align 4             ; 2 uses
  %i.do = sub i32 16, %i.dn
  %i.dp = lshr i32 %i.dm, %i.do
  %i.dq = trunc nuw i32 %i.dp to i16              ; 2 uses
  store i16 %i.dq, ptr %i.f, align 8
  %i.dr = add i32 %i.co, -16
  %i.ds = add i32 %i.dr, %i.dn
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.dt = add i32 %i.co, %storemerge
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.du = phi i16 [ %i.cx, %bb.l ], [ %i.dq, %bb.k ]
end_hunk_0
