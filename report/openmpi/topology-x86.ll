inline.NumInlined: 78
inline.NumDeleted: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@look_proc:bb.a
  store i32 %.pre166, ptr %i.sz, align 4, !tbaa !116
  br label %read_intel_caches.exit

bb.eg:                                            ; preds = %.loopexit.i335
  store ptr %i.vi, ptr %i.sy, align 8, !tbaa !105
  %i.vj = zext i32 %.pre166 to i64
  %i.vk = getelementptr inbounds nuw [48 x i8], ptr %i.vi, i64 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eu, %bb.eg
  %.1103.i = phi i32 [ %storemerge.i109.i, %bb.eg ], [ %storemerge.i71.i, %bb.eu ] ; 2 uses
  %.055.i = phi ptr [ %i.vk, %bb.eg ], [ %i.ya, %bb.eu ] ; 10 uses
  %.1.i337 = phi i32 [ 0, %bb.eg ], [ %i.yb, %bb.eu ] ; 4 uses
  br i1 %.not.i, label %bb.es, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.vm = load i32, ptr %6, align 8, !tbaa !80    ; 2 uses
  %.not42.i.i62.i = icmp eq i32 %i.vm, 0
  br i1 %.not42.i.i62.i, label %cpuid_or_from_dump.exit79.thread.loopexit150.i, label %.lr.ph.i.i63.i

.lr.ph.i.i63.i:                                   ; preds = %bb.ei
  %i.vn = load ptr, ptr %i.vl, align 8, !tbaa !83
  %wide.trip.count.i.i64.i = zext i32 %i.vm to i64
  %i.vo = load i32, ptr %i.a, align 4             ; 2 uses
  br label %bb.ej

bb.ej:                                            ; preds = %bb.er, %.lr.ph.i.i63.i
  %indvars.iv.i.i65.i = phi i64 [ 0, %.lr.ph.i.i63.i ], [ %indvars.iv.next.i.i68.i, %bb.er ] ; 2 uses
  %i.vp = getelementptr inbounds nuw [36 x i8], ptr %i.vn, i64 %indvars.iv.i.i65.i ; 9 uses
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !84 ; 4 uses
  %i.vr = and i32 %i.vq, 1
  %.not.i.i66.i = icmp eq i32 %i.vr, 0
  br i1 %.not.i.i66.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !86
  %.not34.i.i67.i = icmp eq i32 %i.vt, 4
  br i1 %.not34.i.i67.i, label %bb.el, label %bb.er

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.vu = and i32 %i.vq, 2
  %.not35.i.i72.i = icmp eq i32 %i.vu, 0
  br i1 %.not35.i.i72.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !87
  %.not36.i.i73.i = icmp eq i32 %i.vo, %i.vw
  br i1 %.not36.i.i73.i, label %bb.en, label %bb.er

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.vx = and i32 %i.vq, 4
  %.not37.i.i74.i = icmp eq i32 %i.vx, 0
  br i1 %.not37.i.i74.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vp, i64 12
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !88
  %.not38.i.i75.i = icmp eq i32 %.1.i337, %i.vz
  br i1 %.not38.i.i75.i, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.wa = and i32 %i.vq, 8
  %.not39.i.i76.i = icmp eq i32 %i.wa, 0
  br i1 %.not39.i.i76.i, label %.critedge.i.i78.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !95
  %.not40.i.i77.i = icmp eq i32 %.1103.i, %i.wc
  br i1 %.not40.i.i77.i, label %.critedge.i.i78.i, label %bb.er

.critedge.i.i78.i:                                ; preds = %bb.eq, %bb.ep
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vp, i64 20
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !89
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !90
  store i32 %i.wg, ptr %i.a, align 4, !tbaa !11
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vp, i64 28
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !91
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vp, i64 32
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !92
  br label %cpuid_or_from_dump.exit79.i

bb.er:                                            ; preds = %bb.eq, %bb.eo, %bb.em, %bb.ek
  %indvars.iv.next.i.i68.i = add nuw nsw i64 %indvars.iv.i.i65.i, 1 ; 2 uses
  %exitcond.not.i.i69.i = icmp eq i64 %indvars.iv.next.i.i68.i, %wide.trip.count.i.i64.i
  br i1 %exitcond.not.i.i69.i, label %cpuid_or_from_dump.exit79.thread.i, label %bb.ej, !llvm.loop !93

cpuid_or_from_dump.exit79.thread.loopexit150.i:   ; preds = %bb.ei
  %.pre.i340 = load i32, ptr %i.a, align 4, !tbaa !11
  br label %cpuid_or_from_dump.exit79.thread.i

cpuid_or_from_dump.exit79.thread.i:               ; preds = %bb.er, %cpuid_or_from_dump.exit79.thread.loopexit150.i
  %i.wl = phi i32 [ %.pre.i340, %cpuid_or_from_dump.exit79.thread.loopexit150.i ], [ %i.vo, %bb.er ]
  %i.wm = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.wn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wm, ptr noundef nonnull @.str.17, i32 noundef 4, i32 noundef %i.wl, i32 noundef %.1.i337, i32 noundef %.1103.i) #25 ; 0 uses
  br label %read_intel_caches.exit

bb.es:                                            ; preds = %bb.eh
  %i.wo = call { i32, i64, i32, i32 } asm "mov %rbx,$2\0A\09cpuid\0A\09xchg $2,%rbx\0A\09movl ${2:k},$1\0A\09", "={ax},=*m,=&r,={cx},=&{dx},0,3,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.a, i32 4, i32 %.1.i337) #21, !srcloc !94 ; 3 uses
  %i.wp = extractvalue { i32, i64, i32, i32 } %i.wo, 0
  %i.wq = extractvalue { i32, i64, i32, i32 } %i.wo, 2
  %i.wr = extractvalue { i32, i64, i32, i32 } %i.wo, 3
  br label %cpuid_or_from_dump.exit79.i

cpuid_or_from_dump.exit79.i:                      ; preds = %bb.es, %.critedge.i.i78.i
  %.1106.i = phi i32 [ %i.wp, %bb.es ], [ %i.we, %.critedge.i.i78.i ] ; 4 uses
  %.0104.i = phi i32 [ %i.wq, %bb.es ], [ %i.wi, %.critedge.i.i78.i ]
  %storemerge.i71.i = phi i32 [ %i.wr, %bb.es ], [ %i.wk, %.critedge.i.i78.i ] ; 2 uses
  %i.ws = and i32 %.1106.i, 31                    ; 3 uses
  %i.wt = icmp eq i32 %i.ws, 0
  br i1 %i.wt, label %read_intel_caches.exit, label %bb.et

bb.et:                                            ; preds = %cpuid_or_from_dump.exit79.i
  %i.wu = lshr i32 %.1106.i, 5
  %i.wv = and i32 %i.wu, 7                        ; 2 uses
  %i.ww = load i32, ptr %i.ta, align 8, !tbaa !21
  %i.wx = icmp ne i32 %i.ww, 0
  %i.wy = icmp eq i32 %i.wv, 3
  %or.cond3.i = and i1 %i.wy, %i.wx
  br i1 %or.cond3.i, label %read_intel_caches.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %switch.selectcmp.i = icmp eq i32 %i.ws, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  %switch.selectcmp188.i = icmp eq i32 %i.ws, 1
  %switch.select189.i = select i1 %switch.selectcmp188.i, i32 1, i32 %switch.select.i
  store i32 %switch.select189.i, ptr %.055.i, align 8, !tbaa !117
  %i.wz = getelementptr inbounds nuw i8, ptr %.055.i, i64 4
  store i32 %i.wv, ptr %i.wz, align 4, !tbaa !119
  %i.xa = lshr i32 %.1106.i, 14
  %i.xb = and i32 %i.xa, 4095
  %i.xc = add nuw nsw i32 %i.xb, 1
  %i.xd = getelementptr inbounds nuw i8, ptr %.055.i, i64 8
  store i32 %i.xc, ptr %i.xd, align 8, !tbaa !120
  %i.xe = load i32, ptr %i.a, align 4, !tbaa !11  ; 3 uses
  %i.xf = and i32 %i.xe, 4095
  %i.xg = add nuw nsw i32 %i.xf, 1                ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.055.i, i64 16
  store i32 %i.xg, ptr %i.xh, align 8, !tbaa !121
  %i.xi = lshr i32 %i.xe, 12
  %i.xj = and i32 %i.xi, 1023
  %i.xk = add nuw nsw i32 %i.xj, 1                ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.055.i, i64 20
  store i32 %i.xk, ptr %i.xl, align 4, !tbaa !122
  %i.xm = lshr i32 %i.xe, 22
  %i.xn = add nuw nsw i32 %i.xm, 1                ; 2 uses
  %i.xo = zext nneg i32 %i.xn to i64
  %i.xp = and i32 %.1106.i, 512
  %.not60.i = icmp eq i32 %i.xp, 0
  %.sink.i338 = select i1 %.not60.i, i32 %i.xn, i32 -1
  %i.xq = getelementptr inbounds nuw i8, ptr %.055.i, i64 28
  store i32 %.sink.i338, ptr %i.xq, align 4, !tbaa !123
  %i.xr = add i32 %.0104.i, 1                     ; 2 uses
  %i.xs = zext i32 %i.xr to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %.055.i, i64 32
  store i32 %i.xr, ptr %i.xt, align 8, !tbaa !124
  %narrow.i339 = mul nuw nsw i32 %i.xk, %i.xg
  %i.xu = zext nneg i32 %narrow.i339 to i64
  %i.xv = mul nuw nsw i64 %i.xo, %i.xs
  %i.xw = mul nuw i64 %i.xv, %i.xu
  %i.xx = getelementptr inbounds nuw i8, ptr %.055.i, i64 40
  store i64 %i.xw, ptr %i.xx, align 8, !tbaa !125
  %i.xy = and i32 %storemerge.i71.i, 2
  %i.xz = getelementptr inbounds nuw i8, ptr %.055.i, i64 24
  store i32 %i.xy, ptr %i.xz, align 8, !tbaa !126
  %i.ya = getelementptr inbounds nuw i8, ptr %.055.i, i64 48
  %i.yb = add i32 %.1.i337, 1
  br label %bb.eh

read_intel_caches.exit:                           ; preds = %cpuid_or_from_dump.exit79.i, %bb.et, %bb.ef, %cpuid_or_from_dump.exit79.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pre165 = load i32, ptr %i.sz, align 4, !tbaa !116
  br label %bb.ev

bb.ev:                                            ; preds = %read_intel_caches.exit, %.thread46
  %i.yc = phi i32 [ %.pre165, %read_intel_caches.exit ], [ %.pre166, %.thread46 ] ; 2 uses
  %.not110 = icmp eq i32 %i.yc, 0
  %.pre167 = load i32, ptr %i.ay, align 4, !tbaa !111 ; 8 uses
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ev
  %i.yd = load ptr, ptr %i.sy, align 8, !tbaa !105
  %i.ye = lshr i32 %.pre167, 3
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.yg = and i32 %.pre167, %i.bd                 ; 2 uses
  %i.yh = udiv i32 %i.yg, 6
  %i.yi = lshr i32 %.pre167, %i.ba
  %i.yj = shl i32 %i.yi, 1                        ; 2 uses
  %i.yk = add i32 %i.yh, %i.yj
  %wide.trip.count = zext i32 %i.yc to i64
  br label %bb.ew

bb.ew:                                            ; preds = %.lr.ph, %.thread50
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread50 ] ; 2 uses
  %i.yl = getelementptr inbounds nuw [48 x i8], ptr %i.yd, i64 %indvars.iv ; 8 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8 ; 2 uses
  %i.yn = load i32, ptr %i.ym, align 8, !tbaa !120 ; 12 uses
  %i.yo = udiv i32 %.pre167, %i.yn
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yl, i64 12 ; 2 uses
  store i32 %i.yo, ptr %i.yp, align 4, !tbaa !127
  br i1 %i.bj, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.yq = add i32 %i.yn, -1                       ; 2 uses
  %.not.i350 = icmp eq i32 %i.yq, 0
  br i1 %.not.i350, label %hwloc_flsl_manual.exit365, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.yr = zext i32 %i.yq to i64                   ; 2 uses
  %.not28.i351 = icmp ult i32 %i.yn, 65537        ; 2 uses
  %i.ys = lshr i64 %i.yr, 16
  %spec.select.i352 = select i1 %.not28.i351, i64 %i.yr, i64 %i.ys ; 3 uses
  %spec.select33.i353 = select i1 %.not28.i351, i32 1, i32 17 ; 2 uses
  %.not29.i354 = icmp samesign ult i64 %spec.select.i352, 256 ; 2 uses
  %i.yt = lshr i64 %spec.select.i352, 8
  %i.yu = or disjoint i32 %spec.select33.i353, 8
  %.223.i355 = select i1 %.not29.i354, i64 %spec.select.i352, i64 %i.yt ; 3 uses
  %.2.i356 = select i1 %.not29.i354, i32 %spec.select33.i353, i32 %i.yu ; 2 uses
  %.not30.i357 = icmp samesign ult i64 %.223.i355, 16 ; 2 uses
  %i.yv = lshr i64 %.223.i355, 4
  %i.yw = or disjoint i32 %.2.i356, 4
  %.324.i358 = select i1 %.not30.i357, i64 %.223.i355, i64 %i.yv ; 3 uses
  %.3.i359 = select i1 %.not30.i357, i32 %.2.i356, i32 %i.yw ; 2 uses
  %.not31.i360 = icmp samesign ult i64 %.324.i358, 4 ; 2 uses
  %i.yx = lshr i64 %.324.i358, 2
  %i.yy = or disjoint i32 %.3.i359, 2
  %.425.i361 = select i1 %.not31.i360, i64 %.324.i358, i64 %i.yx
  %.4.i362 = select i1 %.not31.i360, i32 %.3.i359, i32 %i.yy
  %i.yz = trunc nuw nsw i64 %.425.i361 to i32
  %i.za = lshr i32 %i.yz, 1
  %i.zb = and i32 %i.za, 1
  %.5.i363 = add nuw nsw i32 %i.zb, %.4.i362
  br label %hwloc_flsl_manual.exit365

hwloc_flsl_manual.exit365:                        ; preds = %bb.ex, %bb.ey
  %.026.i364 = phi i32 [ %.5.i363, %bb.ey ], [ 0, %bb.ex ]
  %notmask = shl nsw i32 -1, %.026.i364
  %i.zc = and i32 %notmask, %.pre167
  br label %.thread50.sink.split

bb.ez:                                            ; preds = %bb.ew
  br i1 %i.bk, label %bb.fa, label %bb.fm

bb.fa:                                            ; preds = %bb.ez
  %i.zd = load i32, ptr %i.br, align 8, !tbaa !112 ; 2 uses
  %i.ze = icmp ugt i32 %i.zd, 22
  br i1 %i.ze, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yl, i64 4
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !119
  %i.zh = icmp eq i32 %i.zg, 3
  br i1 %i.zh, label %bb.fc, label %.thread50

bb.fc:                                            ; preds = %bb.fb
  %i.zi = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.yn)
  %.not238 = icmp samesign ult i32 %i.zi, 2
  %neg = sub i32 0, %i.yn
  %7 = and i32 %i.yn, %neg
  %i.zj = shl i32 %7, 2
  %.0 = select i1 %.not238, i32 %i.yn, i32 %i.zj
  %i.zk = udiv i32 %.pre167, %.0
  br label %.thread50.sink.split

bb.fd:                                            ; preds = %bb.fa
  switch i32 %i.zd, label %.thread50 [
    i32 16, label %bb.fe
    i32 21, label %bb.fk
  ]

bb.fe:                                            ; preds = %bb.fd
  %i.zl = load i32, ptr %i.yf, align 4, !tbaa !113
  %i.zm = icmp eq i32 %i.zl, 9
  br i1 %i.zm, label %bb.ff, label %.thread50

bb.ff:                                            ; preds = %bb.fe
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yl, i64 4
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !119
  %i.zp = icmp eq i32 %i.zo, 3
  br i1 %i.zp, label %bb.fg, label %.thread50

bb.fg:                                            ; preds = %bb.ff
  %i.zq = getelementptr inbounds nuw i8, ptr %i.yl, i64 28 ; 2 uses
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !123 ; 3 uses
  %i.zs = icmp eq i32 %i.zr, -1                   ; 2 uses
  %i.zt = and i32 %i.zr, 1
  %i.zu = icmp eq i32 %i.zt, 0
  %or.cond242 = or i1 %i.zs, %i.zu
  %i.zv = icmp ugt i32 %i.yn, 7
  %or.cond51 = and i1 %i.zv, %or.cond242
  br i1 %or.cond51, label %bb.fh, label %.thread50

bb.fh:                                            ; preds = %bb.fg
  %i.zw = icmp eq i32 %i.yn, 16
  %i.zx = lshr i32 %i.yn, 1
  %i.zy = select i1 %i.zw, i32 6, i32 %i.zx       ; 2 uses
  store i32 %i.zy, ptr %i.ym, align 8, !tbaa !120
  %i.zz = getelementptr inbounds nuw i8, ptr %i.yl, i64 40 ; 2 uses
  %i.aaa = load i64, ptr %i.zz, align 8, !tbaa !125
  %i.aab = lshr i64 %i.aaa, 1
  store i64 %i.aab, ptr %i.zz, align 8, !tbaa !125
  br i1 %i.zs, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aac = sdiv i32 %i.zr, 2
  store i32 %i.aac, ptr %i.zq, align 4, !tbaa !123
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.aad = udiv i32 %i.yg, %i.zy
  %i.aae = add i32 %i.aad, %i.yj
  br label %.thread50.sink.split

bb.fk:                                            ; preds = %bb.fd
  %i.aaf = load i32, ptr %i.yf, align 4, !tbaa !113
  %.off = add i32 %i.aaf, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.fl, label %.thread50

bb.fl:                                            ; preds = %bb.fk
  %i.aag = getelementptr inbounds nuw i8, ptr %i.yl, i64 4
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !119
  %i.aai = icmp eq i32 %i.aah, 3
  %i.aaj = icmp eq i32 %i.yn, 6
  %or.cond52 = and i1 %i.aaj, %i.aai
  br i1 %or.cond52, label %.thread50.sink.split, label %.thread50

bb.fm:                                            ; preds = %bb.ez
  br i1 %i.bl, label %bb.fn, label %.thread50

bb.fn:                                            ; preds = %bb.fm
  %i.aak = load i32, ptr %i.br, align 8, !tbaa !112
  %i.aal = icmp eq i32 %i.aak, 24
  br i1 %i.aal, label %bb.fo, label %.thread50

bb.fo:                                            ; preds = %bb.fn
  %i.aam = getelementptr inbounds nuw i8, ptr %i.yl, i64 4
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !119
  %i.aao = icmp eq i32 %i.aan, 3
  %i.aap = icmp eq i32 %i.yn, 6
  %or.cond53 = and i1 %i.aap, %i.aao
  br i1 %or.cond53, label %.thread50.sink.split, label %.thread50

.thread50.sink.split:                             ; preds = %bb.fo, %bb.fl, %bb.fj, %bb.fc, %hwloc_flsl_manual.exit365
  %.sink249 = phi i32 [ %i.zc, %hwloc_flsl_manual.exit365 ], [ %i.yk, %bb.fl ], [ %i.zk, %bb.fc ], [ %i.aae, %bb.fj ], [ %i.ye, %bb.fo ]
  store i32 %.sink249, ptr %i.yp, align 4, !tbaa !127
  br label %.thread50

.thread50:                                        ; preds = %.thread50.sink.split, %bb.fd, %bb.fb, %bb.fe, %bb.ff, %bb.fg, %bb.fk, %bb.fm, %bb.fo, %bb.fn, %bb.fl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ew, !llvm.loop !128

._crit_edge:                                      ; preds = %.thread50, %bb.ev
  %i.aaq = getelementptr inbounds nuw i8, ptr %.56.val, i64 8
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !25 ; 2 uses
  %i.aas = call i32 @hwloc_bitmap_isset(ptr noundef %i.aar, i32 noundef %.pre167) #24
  %.not236 = icmp eq i32 %i.aas, 0
  br i1 %.not236, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %._crit_edge
  %i.aat = getelementptr inbounds nuw i8, ptr %.56.val, i64 16
  store i32 0, ptr %i.aat, align 8, !tbaa !26
  br label %bb.fr

bb.fq:                                            ; preds = %._crit_edge
  %i.aau = call i32 @hwloc_bitmap_set(ptr noundef %i.aar, i32 noundef %.pre167) #21 ; 0 uses
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @summarize(ptr %.8.val, i32 %.56.val.0.val, ptr noundef nonnull %0, i64 noundef range(i64 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = tail call noalias ptr @hwloc_bitmap_alloc() #21 ; 12 uses
  %.not122 = icmp eq i32 %.56.val.0.val, 0
  br i1 %.not122, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %.56.val.0.val to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.038636 = phi i32 [ -1, %.lr.ph.preheader ], [ %.1387, %bb.c ]
  %i.g = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 8, !tbaa !110
  %.not430 = icmp eq i32 %i.h, 0
  br i1 %.not430, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.j = tail call i32 @hwloc_bitmap_set(ptr noundef %i.f, i32 noundef %i.i) #21 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1387 = phi i32 [ %i.i, %bb.b ], [ %.038636, %.lr.ph ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.c
  %i.k = icmp eq i32 %.1387, -1
  br i1 %i.k, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @hwloc_bitmap_free(ptr noundef %i.f) #21
  br label %bb.bs

bb.d:                                             ; preds = %._crit_edge
  %i.l = tail call noalias ptr @hwloc_bitmap_alloc() #21 ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i32 1, ptr %i.e, align 4, !tbaa !11
  %i.m = call i32 @hwloc_topology_get_type_filter(ptr noundef %.8.val, i32 noundef 1, ptr noundef nonnull %i.e) #21 ; 0 uses
  %i.n = load i32, ptr %i.e, align 4, !tbaa !11   ; 2 uses
  %.not.i = icmp eq i32 %i.n, 3
  br i1 %.not.i, label %bb.e, label %hwloc_filter_check_keep_object_type.exit

bb.e:                                             ; preds = %bb.d
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 529, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_filter_check_keep_object_type) #26
  unreachable

hwloc_filter_check_keep_object_type.exit:         ; preds = %bb.d
  %.not10 = icmp eq i32 %i.n, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br i1 %.not10, label %.loopexit22, label %bb.f

bb.f:                                             ; preds = %hwloc_filter_check_keep_object_type.exit
  %i.o = call i32 @hwloc_bitmap_copy(ptr noundef %i.l, ptr noundef %i.f) #21 ; 0 uses
  %i.p = call i32 @hwloc_bitmap_first(ptr noundef %i.l) #24 ; 3 uses
  %.not41042 = icmp eq i32 %i.p, -1
  br i1 %.not41042, label %.loopexit22, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.f
  %i.q = and i64 %1, 1
  %.not411 = icmp eq i64 %i.q, 0
  br i1 %.not411, label %.lr.ph44.split.us, label %.lr.ph44.split

.lr.ph44.split.us:                                ; preds = %.lr.ph44, %.thread.us
  %i.r = phi i32 [ %i.ag, %.thread.us ], [ %i.p, %.lr.ph44 ] ; 3 uses
  %i.s = call noalias ptr @hwloc_bitmap_alloc() #21 ; 4 uses
  %i.t = call i32 @hwloc_bitmap_set(ptr noundef %i.s, i32 noundef %i.r) #21 ; 0 uses
  %i.u = call i32 @hwloc_get_type_depth(ptr noundef %.8.val, i32 noundef 1) #21 ; 2 uses
  %or.cond.i.us = icmp ugt i32 %i.u, -3
  br i1 %or.cond.i.us, label %.loopexit21, label %bb.g

bb.g:                                             ; preds = %.lr.ph44.split.us
  %i.v = call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %.8.val, i32 noundef range(i32 0, -2) %i.u, i32 noundef 0) #24 ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.v, null
  br i1 %.not.i.i.us, label %.loopexit21, label %.preheader.i.i.us

end_hunk_0
