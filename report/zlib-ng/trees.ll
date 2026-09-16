Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/trees?download=true
inline.NumInlined: 68
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@build_tree:bb.a
bb.ad:                                            ; preds = %bb.ac, %bb.aa
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %._crit_edge65.i121
  %.pre-phi.i123 = phi i64 [ %.pre.i122, %._crit_edge65.i121 ], [ %i.fk, %bb.ad ], [ %i.fq, %bb.ac ], [ %i.fq, %bb.ab ]
  %.1.i124 = phi i32 [ %.060.i119, %._crit_edge65.i121 ], [ %i.fj, %bb.ad ], [ %.060.i119, %bb.ac ], [ %.060.i119, %bb.ab ] ; 3 uses
  %i.gc = load i16, ptr %i.ew, align 2, !tbaa !24 ; 2 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre-phi.i123
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !32 ; 2 uses
  %i.gf = sext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !24 ; 2 uses
  %i.gi = icmp ult i16 %i.gc, %i.gh
  br i1 %i.gi, label %pqdownheap.exit130.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gj = icmp eq i16 %i.gc, %i.gh
  br i1 %i.gj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gk = load i8, ptr %i.fc, align 1, !tbaa !24
  %i.gl = getelementptr inbounds i8, ptr %i.a, i64 %i.gf
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !24
  %.not56.i128 = icmp ugt i8 %i.gk, %i.gm
  br i1 %.not56.i128, label %bb.ah, label %pqdownheap.exit130.loopexit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gn = sext i32 %.04959.i120 to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gn
  store i32 %i.ge, ptr %i.go, align 4, !tbaa !32
  %.0.i125 = shl i32 %.1.i124, 1                  ; 2 uses
  %.not.i126 = icmp sgt i32 %.0.i125, %i.fh
  br i1 %.not.i126, label %pqdownheap.exit130.loopexit, label %.lr.ph.i118, !llvm.loop !54

pqdownheap.exit130.loopexit:                      ; preds = %bb.ah, %bb.ag, %bb.ae
  %.049.lcssa.i127.ph = phi i32 [ %.04959.i120, %bb.ae ], [ %.04959.i120, %bb.ag ], [ %.1.i124, %bb.ah ]
  %i.gp = sext i32 %.049.lcssa.i127.ph to i64
  br label %pqdownheap.exit130

pqdownheap.exit130:                               ; preds = %pqdownheap.exit130.loopexit, %pqdownheap.exit116
  %.049.lcssa.i127 = phi i64 [ 1, %pqdownheap.exit116 ], [ %i.gp, %pqdownheap.exit130.loopexit ]
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.049.lcssa.i127
  store i32 %i.fd, ptr %i.gq, align 4, !tbaa !32
  %i.gr = load i32, ptr %i.i, align 4, !tbaa !68  ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.q, label %bb.ai, !llvm.loop !56

bb.ai:                                            ; preds = %pqdownheap.exit130
  %i.gt = load i32, ptr %i.au, align 4, !tbaa !32
  %i.gu = load i32, ptr %i.j, align 8, !tbaa !69
  %i.gv = add nsw i32 %i.gu, -1                   ; 2 uses
  store i32 %i.gv, ptr %i.j, align 8, !tbaa !69
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gw
  store i32 %i.gt, ptr %i.gx, align 4, !tbaa !32
  %i.gy = load ptr, ptr %1, align 8, !tbaa !62    ; 4 uses
  %i.gz = load i32, ptr %i.ar, align 8, !tbaa !70 ; 2 uses
  %i.ha = load ptr, ptr %i.d, align 8, !tbaa !63  ; 4 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !66 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !71
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !72 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !73 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 3024 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hi, i8 0, i64 32, i1 false), !tbaa !27
  %i.hj = load i32, ptr %i.j, align 8, !tbaa !69
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !32
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  store i16 0, ptr %i.hp, align 2, !tbaa !24
  %i.hq = load i32, ptr %i.j, align 8, !tbaa !69  ; 2 uses
  %i.hr = icmp slt i32 %i.hq, 572
  br i1 %i.hr, label %.lr.ph.i131, label %gen_bitlen.exit

.lr.ph.i131:                                      ; preds = %bb.ai
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 5960 ; 5 uses
  %.not106.i = icmp eq ptr %i.hb, null
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 5968 ; 2 uses
  %i.hu = sext i32 %i.hq to i64
  %i.hv = add nsw i64 %i.hu, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ao, %.lr.ph.i131
  %indvars.iv.i = phi i64 [ %i.hv, %.lr.ph.i131 ], [ %indvars.iv.next.i, %bb.ao ] ; 2 uses
  %.0116.i = phi i32 [ 0, %.lr.ph.i131 ], [ %spec.select107.i, %bb.ao ]
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !32 ; 4 uses
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 2 ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !24
  %i.ic = zext i16 %i.ib to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !24
  %i.ig = zext i16 %i.if to i32                   ; 2 uses
  %i.ih = add nuw nsw i32 %i.ig, 1
  %.not104.i = icmp ule i32 %i.hh, %i.ig          ; 2 uses
  %spec.select.i = select i1 %.not104.i, i32 %i.hh, i32 %i.ih ; 3 uses
  %i.ii = zext i1 %.not104.i to i32
  %spec.select107.i = add nuw nsw i32 %.0116.i, %i.ii ; 3 uses
  %i.ij = trunc i32 %spec.select.i to i16
  store i16 %i.ij, ptr %i.ia, align 2, !tbaa !24
  %i.ik = icmp sgt i32 %i.hx, %i.gz
  br i1 %i.ik, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.il = zext nneg i32 %spec.select.i to i64
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.il ; 2 uses
  %i.in = load i16, ptr %i.im, align 2, !tbaa !27
  %i.io = add i16 %i.in, 1
  store i16 %i.io, ptr %i.im, align 2, !tbaa !27
  %.not105.i = icmp slt i32 %i.hx, %i.hf
  br i1 %.not105.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ip = sub nsw i32 %i.hx, %i.hf
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.087.i = phi i32 [ %i.is, %bb.al ], [ 0, %bb.ak ] ; 2 uses
  %i.it = load i16, ptr %i.hz, align 2, !tbaa !24
  %i.iu = zext i16 %i.it to i64                   ; 2 uses
  %i.iv = add i32 %.087.i, %spec.select.i
  %i.iw = zext i32 %i.iv to i64
  %i.ix = mul nuw nsw i64 %i.iu, %i.iw
  %i.iy = load i64, ptr %i.hs, align 8, !tbaa !31
  %i.iz = add i64 %i.ix, %i.iy
  store i64 %i.iz, ptr %i.hs, align 8, !tbaa !31
  br i1 %.not106.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.hy
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !24
  %i.jd = zext i16 %i.jc to i32
  %i.je = add nsw i32 %.087.i, %i.jd
  %i.jf = zext i32 %i.je to i64
  %i.jg = mul nuw nsw i64 %i.jf, %i.iu
  %i.jh = load i64, ptr %i.ht, align 16, !tbaa !30
  %i.ji = add i64 %i.jg, %i.jh
  store i64 %i.ji, ptr %i.ht, align 16, !tbaa !30
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.aj
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jj = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.jj, 573
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.aj, !llvm.loop !57

._crit_edge.i:                                    ; preds = %bb.ao
  %i.jk = icmp eq i32 %spec.select107.i, 0
  br i1 %i.jk, label %gen_bitlen.exit, label %.preheader108.i

.preheader108.i:                                  ; preds = %._crit_edge.i
  %i.jl = zext i32 %i.hh to i64                   ; 2 uses
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.jl ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.preheader108.i
  %.2.i = phi i32 [ %i.jz, %bb.ar ], [ %spec.select107.i, %.preheader108.i ] ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.290.in.i = phi i32 [ %i.hh, %bb.ap ], [ %.290.i, %bb.aq ] ; 2 uses
  %.290.i = add i32 %.290.in.i, -1                ; 2 uses
  %i.jn = zext i32 %.290.i to i64                 ; 2 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !27 ; 2 uses
  %i.jq = icmp eq i16 %i.jp, 0
  br i1 %i.jq, label %bb.aq, label %bb.ar, !llvm.loop !58

bb.ar:                                            ; preds = %bb.aq
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.jn
  %i.js = add i16 %i.jp, -1
  store i16 %i.js, ptr %i.jr, align 2, !tbaa !27
  %i.jt = zext i32 %.290.in.i to i64
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.jt ; 2 uses
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !27
  %i.jw = add i16 %i.jv, 2
  store i16 %i.jw, ptr %i.ju, align 2, !tbaa !27
  %i.jx = load i16, ptr %i.jm, align 2, !tbaa !27
  %i.jy = add i16 %i.jx, -1
  store i16 %i.jy, ptr %i.jm, align 2, !tbaa !27
  %i.jz = add nsw i32 %.2.i, -2
  %i.ka = icmp sgt i32 %.2.i, 2
  br i1 %i.ka, label %bb.ap, label %.preheader.i, !llvm.loop !59

.preheader.i:                                     ; preds = %bb.ar
  %.not125.i = icmp eq i32 %i.hh, 0
  br i1 %.not125.i, label %gen_bitlen.exit, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %.preheader.i, %.outer._crit_edge.i
  %indvars.iv138.i = phi i64 [ %indvars.iv.next139.i, %.outer._crit_edge.i ], [ %i.jl, %.preheader.i ] ; 5 uses
  %.193126.i = phi i32 [ %.294.lcssa.i, %.outer._crit_edge.i ], [ 573, %.preheader.i ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %indvars.iv138.i
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !27 ; 2 uses
  %.not102121.i = icmp eq i16 %i.kc, 0
  br i1 %.not102121.i, label %.outer._crit_edge.i, label %.outer.split.lr.ph.i

.outer.split.lr.ph.i:                             ; preds = %.lr.ph128.i
  %i.kd = zext i16 %i.kc to i32
  %i.ke = trunc i64 %indvars.iv138.i to i16
  %i.kf = sext i32 %.193126.i to i64
  br label %.outer.split.i

.outer.split.i:                                   ; preds = %.outer.i, %.outer.split.lr.ph.i
  %.091.ph123.i = phi i32 [ %i.kd, %.outer.split.lr.ph.i ], [ %i.la, %.outer.i ]
  %.294.ph122.i = phi i64 [ %i.kf, %.outer.split.lr.ph.i ], [ %indvars.iv.next136.i, %.outer.i ]
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.outer.split.i
  %indvars.iv135.i = phi i64 [ %.294.ph122.i, %.outer.split.i ], [ %indvars.iv.next136.i, %bb.as ]
  %indvars.iv.next136.i = add nsw i64 %indvars.iv135.i, -1 ; 4 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next136.i
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !32 ; 2 uses
  %i.ki = icmp sgt i32 %i.kh, %i.gz
  br i1 %i.ki, label %bb.as, label %bb.at, !llvm.loop !60

bb.at:                                            ; preds = %bb.as
  %i.kj = sext i32 %i.kh to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.kj ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 2 ; 3 uses
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !24
  %i.kn = zext i16 %i.km to i64
  %.not103.i = icmp eq i64 %indvars.iv138.i, %i.kn
  br i1 %.not103.i, label %.outer.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ko = load i16, ptr %i.kk, align 2, !tbaa !24
  %i.kp = zext i16 %i.ko to i64
  %i.kq = mul i64 %indvars.iv138.i, %i.kp
  %i.kr = and i64 %i.kq, 4294967295
  %i.ks = load i64, ptr %i.hs, align 8, !tbaa !31
  %i.kt = add i64 %i.kr, %i.ks                    ; 2 uses
  store i64 %i.kt, ptr %i.hs, align 8, !tbaa !31
  %i.ku = load i16, ptr %i.kl, align 2, !tbaa !24
  %i.kv = zext i16 %i.ku to i64
  %i.kw = load i16, ptr %i.kk, align 2, !tbaa !24
  %i.kx = zext i16 %i.kw to i64
  %i.ky = mul nuw nsw i64 %i.kx, %i.kv
  %i.kz = sub i64 %i.kt, %i.ky
  store i64 %i.kz, ptr %i.hs, align 8, !tbaa !31
  store i16 %i.ke, ptr %i.kl, align 2, !tbaa !24
  br label %.outer.i

.outer.i:                                         ; preds = %bb.au, %bb.at
  %i.la = add nsw i32 %.091.ph123.i, -1           ; 2 uses
  %.not102.i = icmp eq i32 %i.la, 0
  br i1 %.not102.i, label %.outer._crit_edge.loopexit.i, label %.outer.split.i, !llvm.loop !60

.outer._crit_edge.loopexit.i:                     ; preds = %.outer.i
  %2 = trunc nsw i64 %indvars.iv.next136.i to i32
  br label %.outer._crit_edge.i

.outer._crit_edge.i:                              ; preds = %.outer._crit_edge.loopexit.i, %.lr.ph128.i
  %.294.lcssa.i = phi i32 [ %.193126.i, %.lr.ph128.i ], [ %2, %.outer._crit_edge.loopexit.i ]
  %indvars.iv.next139.i = add nsw i64 %indvars.iv138.i, -1 ; 2 uses
  %3 = and i64 %indvars.iv.next139.i, 4294967295
  %.not.i132 = icmp eq i64 %3, 0
  br i1 %.not.i132, label %gen_bitlen.exit, label %.lr.ph128.i, !llvm.loop !61

gen_bitlen.exit:                                  ; preds = %.outer._crit_edge.i, %bb.ai, %._crit_edge.i, %.preheader.i
  tail call void @gen_codes(ptr noundef %i.c, i32 noundef %.2.lcssa, ptr noundef nonnull %i.hi)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @compress_block(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %i.b = load i32, ptr %i.a, align 64, !tbaa !26  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5944
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %.not = icmp eq i32 %i.b, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 6016 ; 4 uses
  br i1 %.not, label %..loopexit_crit_edge, label %.preheader

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre = load i32, ptr %.phi.trans.insert, align 64, !tbaa !23
  %.phi.trans.insert28 = getelementptr inbounds nuw i8, ptr %0, i64 6008
  %.pre29 = load i64, ptr %.phi.trans.insert28, align 8, !tbaa !22
  br label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6008 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 12 uses
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %zng_emit_lit.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %zng_emit_lit.exit ] ; 3 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !27   ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24    ; 3 uses
  %i.n = zext i8 %i.m to i32
  %i.o = icmp eq i16 %i.k, 0
  br i1 %i.o, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %.phi.trans.insert, align 64, !tbaa !23 ; 6 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  %i.r = zext i8 %i.m to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !24
  %i.u = zext i16 %i.t to i64                     ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !24
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %i.y = add i32 %i.p, %i.x                       ; 3 uses
  %i.z = or i32 %i.y, %i.p
  %or.cond.i = icmp ult i32 %i.z, 64
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = zext nneg i32 %i.p to i64
  %i.ab = shl i64 %i.u, %i.aa
  %i.ac = or i64 %i.ab, %i.q
  br label %zng_emit_lit.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = icmp ugt i32 %i.p, 63
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.af = load i32, ptr %i.i, align 4, !tbaa !29
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  store i64 %i.q, ptr %i.ah, align 1, !tbaa !24
  %i.ai = load i32, ptr %i.i, align 4, !tbaa !29
  %i.aj = add i32 %i.ai, 8
  store i32 %i.aj, ptr %i.i, align 4, !tbaa !29
  br label %zng_emit_lit.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = zext nneg i32 %i.p to i64
  %i.al = shl i64 %i.u, %i.ak
  %i.am = or i64 %i.al, %i.q
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ao = load i32, ptr %i.i, align 4, !tbaa !29
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  store i64 %i.am, ptr %i.aq, align 1, !tbaa !24
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !29
  %i.as = add i32 %i.ar, 8
  store i32 %i.as, ptr %i.i, align 4, !tbaa !29
  %i.at = sub nuw nsw i32 64, %i.p
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %i.u, %i.au
  %i.aw = add nsw i32 %i.y, -64
  br label %zng_emit_lit.exit

bb.h:                                             ; preds = %bb.b
  %i.ax = zext i16 %i.k to i32
  %i.ay = load i32, ptr %.phi.trans.insert, align 64, !tbaa !23 ; 6 uses
  %i.az = load i64, ptr %i.g, align 8, !tbaa !22  ; 3 uses
  %i.ba = zext i8 %i.m to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @zng_length_code, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !24  ; 2 uses
  %i.bd = zext i8 %i.bc to i64                    ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1028
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !24
  %i.bh = zext i16 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1030
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !24 ; 2 uses
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = add i8 %i.bc, -28
  %.not.i = icmp ult i8 %i.bl, -20
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %i.bd
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %i.bd
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !32
  %i.bq = sub i32 %i.n, %i.bp
  %i.br = zext i32 %i.bq to i64
  %i.bs = zext nneg i16 %i.bj to i64
  %i.bt = shl i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %i.bh
  %i.bv = add i32 %i.bn, %i.bk
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.067.i = phi i64 [ %i.bu, %bb.i ], [ %i.bh, %bb.h ]
  %.066.i = phi i32 [ %i.bv, %bb.i ], [ %i.bk, %bb.h ] ; 2 uses
  %i.bw = add nsw i32 %i.ax, -1                   ; 3 uses
  %i.bx = icmp ult i16 %i.k, 257
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @zng_dist_code, i64 %i.by
  %i.ca = lshr i32 %i.bw, 7
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @zng_dist_code, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 256
  %.in.in.i = select i1 %i.bx, ptr %i.bz, ptr %i.cd
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !24 ; 2 uses
  %i.ce = zext i8 %.in.i to i64                   ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ce ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !24
  %i.ch = zext i16 %i.cg to i64
  %i.ci = zext nneg i32 %.066.i to i64
  %i.cj = shl i64 %i.ch, %i.ci
  %i.ck = or i64 %i.cj, %.067.i                   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !24
  %i.cn = zext i16 %i.cm to i32
  %i.co = add i32 %.066.i, %i.cn                  ; 3 uses
  %.not76.i = icmp ult i8 %.in.i, 4
  br i1 %.not76.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %i.ce
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !32
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %i.ce
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.ct = sub i32 %i.bw, %i.cs
  %i.cu = zext i32 %i.ct to i64
  %i.cv = zext nneg i32 %i.co to i64
  %i.cw = shl i64 %i.cu, %i.cv
  %i.cx = or i64 %i.cw, %i.ck
  %i.cy = add i32 %i.cq, %i.co
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.168.i = phi i64 [ %i.cx, %bb.k ], [ %i.ck, %bb.j ] ; 4 uses
  %.1.i = phi i32 [ %i.cy, %bb.k ], [ %i.co, %bb.j ] ; 2 uses
  %i.cz = add i32 %.1.i, %i.ay                    ; 3 uses
  %i.da = or i32 %i.cz, %i.ay
  %or.cond.i23 = icmp ult i32 %i.da, 64
  br i1 %or.cond.i23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.db = zext nneg i32 %i.ay to i64
  %i.dc = shl i64 %.168.i, %i.db
  %i.dd = or i64 %i.dc, %i.az
  br label %zng_emit_lit.exit

bb.n:                                             ; preds = %bb.l
  %i.de = icmp ugt i32 %i.ay, 63
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.df = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.dg = load i32, ptr %i.i, align 4, !tbaa !29
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh
  store i64 %i.az, ptr %i.di, align 1, !tbaa !24
  %i.dj = load i32, ptr %i.i, align 4, !tbaa !29
  %i.dk = add i32 %i.dj, 8
  store i32 %i.dk, ptr %i.i, align 4, !tbaa !29
  br label %zng_emit_lit.exit

bb.p:                                             ; preds = %bb.n
  %i.dl = zext nneg i32 %i.ay to i64
  %i.dm = shl i64 %.168.i, %i.dl
  %i.dn = or i64 %i.dm, %i.az
end_hunk_0
