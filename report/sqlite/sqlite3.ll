Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10220
inline.NumDeleted: 1303
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 375
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3WhereBegin:bb.a
  %i.je = and i16 %i.jd, 3
  %or.cond.i = icmp eq i16 %i.je, 0
  br i1 %or.cond.i, label %bb.bn, label %whereShortCut.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 36
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !2054 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.pre625, i64 104 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre627, i64 48 ; 7 uses
  store i32 0, ptr %i.ji, align 8, !tbaa !2289
  %i.jj = getelementptr inbounds nuw i8, ptr %.pre627, i64 54
  store i16 0, ptr %i.jj, align 2, !tbaa !2297
  store ptr %i.jh, ptr %8, align 16, !tbaa !2299
  %i.jk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.jh, ptr %i.jk, align 8, !tbaa !2300
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i8 0, ptr %i.jl, align 8, !tbaa !2301
  %i.jm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  store i32 130, ptr %i.jn, align 4, !tbaa !2302
  %i.jo = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i32 0, ptr %i.jo, align 16, !tbaa !2303
  %i.jp = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  store i32 %i.jg, ptr %i.jp, align 4, !tbaa !568
  %i.jq = getelementptr inbounds nuw i8, ptr %8, i64 42 ; 2 uses
  store i8 1, ptr %i.jq, align 2, !tbaa !2304
  %i.jr = getelementptr inbounds nuw i8, ptr %8, i64 41 ; 3 uses
  store i8 1, ptr %i.jr, align 1, !tbaa !2305
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 3 uses
  store i16 -1, ptr %i.js, align 8, !tbaa !781
  %i.jt = call fastcc ptr @whereScanNext(ptr noundef nonnull %8), !inline_history !5107 ; 2 uses
  %.not8210.i = icmp eq ptr %i.jt, null
  br i1 %.not8210.i, label %.critedge95.i, label %.lr.ph.i479

.lr.ph.i479:                                      ; preds = %bb.bn, %bb.bo
  %.07711.i = phi ptr [ %i.jw, %bb.bo ], [ %i.jt, %bb.bn ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.07711.i, i64 40
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !2306
  %.not83.i = icmp eq i64 %i.jv, 0
  br i1 %.not83.i, label %.critedge.i482, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i479
  %i.jw = call fastcc ptr @whereScanNext(ptr noundef %8), !inline_history !5108 ; 2 uses
  %.not82.i = icmp eq ptr %i.jw, null
  br i1 %.not82.i, label %.critedge95.i, label %.lr.ph.i479, !llvm.loop !5109

.critedge.i482:                                   ; preds = %.lr.ph.i479
  store i32 4353, ptr %i.ji, align 8, !tbaa !2289
  %i.jx = getelementptr inbounds nuw i8, ptr %.pre627, i64 64
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !2286
  store ptr %.07711.i, ptr %i.jy, align 8, !tbaa !2307
  %i.jz = getelementptr inbounds nuw i8, ptr %.pre627, i64 52
  store i16 1, ptr %i.jz, align 4, !tbaa !2287
  %i.ka = getelementptr inbounds nuw i8, ptr %.pre627, i64 24
  store i16 1, ptr %i.ka, align 8, !tbaa !731
  br label %.loopexit3.sink.split.i

.critedge95.i:                                    ; preds = %bb.bo, %bb.bn
  %i.kb = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %.07519.i = load ptr, ptr %i.kb, align 8, !tbaa !1155 ; 2 uses
  %.not8420.i = icmp eq ptr %.07519.i, null
  br i1 %.not8420.i, label %.loopexit3.i, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.critedge95.i
  %i.kc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %.pre627, i64 64
  %i.ke = insertelement <2 x ptr> poison, ptr %i.jh, i64 0
  %i.kf = shufflevector <2 x ptr> %i.ke, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.bp

bb.bp:                                            ; preds = %bb.cd, %.lr.ph22.i
  %.07521.i = phi ptr [ %.07519.i, %.lr.ph22.i ], [ %.075.i, %bb.cd ] ; 12 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.07521.i, i64 98
  %i.kh = load i8, ptr %i.kg, align 2, !tbaa !1813
  %.not85.i = icmp eq i8 %i.kh, 0
  br i1 %.not85.i, label %bb.cd, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ki = getelementptr inbounds nuw i8, ptr %.07521.i, i64 72
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !1755
  %.not86.i = icmp eq ptr %i.kj, null
  br i1 %.not86.i, label %bb.br, label %bb.cd

bb.br:                                            ; preds = %bb.bq
  %i.kk = getelementptr inbounds nuw i8, ptr %.07521.i, i64 94 ; 3 uses
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !1158 ; 2 uses
  %i.km = icmp ugt i16 %i.kl, 3
  br i1 %i.km, label %bb.cd, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kn = getelementptr inbounds nuw i8, ptr %.07521.i, i64 99
  %i.ko = load i16, ptr %i.kn, align 1
  %i.kp = and i16 %i.ko, 8
  %.not87.i = icmp eq i16 %i.kp, 0
  %i.kq = select i1 %.not87.i, i32 2, i32 130
  %.not23.i = icmp eq i16 %i.kl, 0
  br i1 %.not23.i, label %.loopexit.i, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %bb.bs
  %i.kr = getelementptr inbounds nuw i8, ptr %.07521.i, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %.07521.i, i64 24
  %i.kt = getelementptr inbounds nuw i8, ptr %.07521.i, i64 80
  %i.ku = getelementptr inbounds nuw i8, ptr %.07521.i, i64 64 ; 2 uses
  br label %bb.bt

bb.bt:                                            ; preds = %.critedge2.i, %.lr.ph17.i
  %indvars.iv.i480 = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next.i481, %.critedge2.i ] ; 8 uses
  store <2 x ptr> %i.kf, ptr %8, align 16, !tbaa !1279
  store i8 0, ptr %i.jl, align 8, !tbaa !2301
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  store i32 %i.kq, ptr %i.jn, align 4, !tbaa !2302
  store i32 0, ptr %i.jo, align 16, !tbaa !2303
  store i32 %i.jg, ptr %i.jp, align 4, !tbaa !568
  store i8 1, ptr %i.jq, align 2, !tbaa !2304
  store i8 1, ptr %i.jr, align 1, !tbaa !2305
  %i.kv = load ptr, ptr %i.kr, align 8, !tbaa !1159
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %indvars.iv.i480
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !781 ; 6 uses
  %i.ky = zext nneg i16 %i.kx to i64
  %i.kz = load ptr, ptr %i.ks, align 8, !tbaa !1255 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 52
  %i.lb = load i16, ptr %i.la, align 4, !tbaa !1188
  %i.lc = icmp eq i16 %i.kx, %i.lb
  br i1 %i.lc, label %.thread.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ld = icmp sgt i16 %i.kx, -1
  br i1 %i.ld, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !1148
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.lf, i64 %i.ky
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 9
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !1714
  store i8 %i.li, ptr %i.jl, align 8, !tbaa !2301
  %i.lj = load ptr, ptr %i.ku, align 8, !tbaa !1758
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.i480
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !739
  store ptr %i.ll, ptr %i.jm, align 16, !tbaa !2308
  br label %.thread.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.lm = icmp eq i16 %i.kx, -2
  br i1 %i.lm, label %bb.bx, label %.thread.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.ln = load ptr, ptr %i.kt, align 8, !tbaa !1756
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = getelementptr inbounds nuw [24 x i8], ptr %i.lo, i64 %indvars.iv.i480
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !1996
  store ptr %i.lq, ptr %i.kc, align 8, !tbaa !2309
  %i.lr = load ptr, ptr %i.ku, align 8, !tbaa !1758
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %indvars.iv.i480
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !739
  store ptr %i.lt, ptr %i.jm, align 16, !tbaa !2308
  store i16 -2, ptr %i.js, align 8, !tbaa !781
  %i.lu = call fastcc ptr @whereScanInitIndexExpr(ptr noundef nonnull %8), !inline_history !5107
  br label %whereScanInit.exit.i

.thread.i.i:                                      ; preds = %bb.bw, %bb.bv, %bb.bt
  %.2.i.i = phi i16 [ %i.kx, %bb.bw ], [ -1, %bb.bt ], [ %i.kx, %bb.bv ]
  store i16 %.2.i.i, ptr %i.js, align 8, !tbaa !781
  %i.lv = call fastcc ptr @whereScanNext(ptr noundef nonnull %8), !inline_history !5107
  br label %whereScanInit.exit.i

whereScanInit.exit.i:                             ; preds = %.thread.i.i, %bb.bx
  %.1.i.i = phi ptr [ %i.lv, %.thread.i.i ], [ %i.lu, %bb.bx ] ; 2 uses
  %cond12.i = icmp eq ptr %.1.i.i, null
  br i1 %cond12.i, label %.loopexit.loopexit35.i, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %whereScanInit.exit.i, %bb.by
  %.113.i = phi ptr [ %i.ly, %bb.by ], [ %.1.i.i, %whereScanInit.exit.i ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.113.i, i64 40
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !2306
  %.not89.i = icmp eq i64 %i.lx, 0
  br i1 %.not89.i, label %.critedge2.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph14.i
  %i.ly = call fastcc ptr @whereScanNext(ptr noundef %8), !inline_history !5108 ; 2 uses
  %cond.i = icmp eq ptr %i.ly, null
  br i1 %cond.i, label %.loopexit.loopexit.i, label %.lr.ph14.i, !llvm.loop !5110

.critedge2.i:                                     ; preds = %.lr.ph14.i
  %i.lz = load ptr, ptr %i.kd, align 8, !tbaa !2286
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv.i480
  store ptr %.113.i, ptr %i.ma, align 8, !tbaa !2307
  %indvars.iv.next.i481 = add nuw nsw i64 %indvars.iv.i480, 1 ; 3 uses
  %i.mb = load i16, ptr %i.kk, align 2, !tbaa !1158
  %i.mc = zext i16 %i.mb to i64
  %i.md = icmp samesign ult i64 %indvars.iv.next.i481, %i.mc
  br i1 %i.md, label %bb.bt, label %.loopexit.loopexit35.i, !llvm.loop !5111

.loopexit.loopexit.i:                             ; preds = %bb.by
  %i.me = trunc nuw nsw i64 %indvars.iv.i480 to i32
  br label %.loopexit.i

.loopexit.loopexit35.i:                           ; preds = %.critedge2.i, %whereScanInit.exit.i
  %indvars.iv.next.lcssa.sink.i = phi i64 [ %indvars.iv.i480, %whereScanInit.exit.i ], [ %indvars.iv.next.i481, %.critedge2.i ]
  %indvars.le.i = trunc nsw i64 %indvars.iv.next.lcssa.sink.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit35.i, %.loopexit.loopexit.i, %bb.bs
  %.0766.i = phi i32 [ 0, %bb.bs ], [ %i.me, %.loopexit.loopexit.i ], [ %indvars.le.i, %.loopexit.loopexit35.i ] ; 2 uses
  %i.mf = load i16, ptr %i.kk, align 2, !tbaa !1158
  %i.mg = zext i16 %i.mf to i32
  %.not90.i = icmp eq i32 %.0766.i, %i.mg
  br i1 %.not90.i, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %.loopexit.i
  %i.mh = getelementptr inbounds nuw i8, ptr %.07521.i, i64 99
  store i32 4609, ptr %i.ji, align 8, !tbaa !2289
  %i.mi = load i16, ptr %i.mh, align 1
  %i.mj = and i16 %i.mi, 32
  %.not91.i = icmp eq i16 %i.mj, 0
  br i1 %.not91.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.mk = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !2129
  %i.mm = getelementptr inbounds nuw i8, ptr %.07521.i, i64 104
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !2235
  %i.mo = and i64 %i.mn, %i.ml
  %i.mp = icmp eq i64 %i.mo, 0
  br i1 %i.mp, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store i32 4673, ptr %i.ji, align 8, !tbaa !2289
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.mq = trunc nuw i32 %.0766.i to i16           ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.pre627, i64 52
  store i16 %i.mq, ptr %i.mr, align 4, !tbaa !2287
  %i.ms = getelementptr inbounds nuw i8, ptr %.pre627, i64 24
  store i16 %i.mq, ptr %i.ms, align 8, !tbaa !731
  %i.mt = getelementptr inbounds nuw i8, ptr %.pre627, i64 32
  store ptr %.07521.i, ptr %i.mt, align 8, !tbaa !731
  br label %.loopexit3.sink.split.i

bb.cd:                                            ; preds = %.loopexit.i, %bb.br, %bb.bq, %bb.bp
  %i.mu = getelementptr inbounds nuw i8, ptr %.07521.i, i64 40
  %.075.i = load ptr, ptr %i.mu, align 8, !tbaa !1155 ; 2 uses
  %.not84.i = icmp eq ptr %.075.i, null
  br i1 %.not84.i, label %.loopexit3.i, label %bb.bp, !llvm.loop !5112

.loopexit3.sink.split.i:                          ; preds = %bb.cc, %.critedge.i482
  %.sink.i = phi i16 [ 39, %bb.cc ], [ 33, %.critedge.i482 ]
  %i.mv = getelementptr inbounds nuw i8, ptr %.pre627, i64 20
  store i16 %.sink.i, ptr %i.mv, align 4, !tbaa !2310
  br label %.loopexit3.i

.loopexit3.i:                                     ; preds = %bb.cd, %.loopexit3.sink.split.i, %.critedge95.i
  %i.mw = load i32, ptr %i.ji, align 8, !tbaa !2289
  %.not92.i = icmp eq i32 %i.mw, 0
  br i1 %.not92.i, label %.loopexit3.i.whereShortCut.exit.thread_crit_edge, label %bb.ce

.loopexit3.i.whereShortCut.exit.thread_crit_edge: ; preds = %.loopexit3.i
  %.pre.pre = load ptr, ptr %10, align 8, !tbaa !2281
  %.pre626.pre = load ptr, ptr %i.bx, align 8, !tbaa !2283
  br label %whereShortCut.exit.thread

bb.ce:                                            ; preds = %.loopexit3.i
  %i.mx = getelementptr inbounds nuw i8, ptr %.pre627, i64 22
  store i16 1, ptr %i.mx, align 2, !tbaa !2311
  %i.my = getelementptr inbounds nuw i8, ptr %.pre625, i64 960
  store ptr %.pre627, ptr %i.my, align 8, !tbaa !2312
  %i.mz = getelementptr inbounds nuw i8, ptr %.pre627, i64 8
  store i64 1, ptr %i.mz, align 8, !tbaa !2313
  %i.na = getelementptr inbounds nuw i8, ptr %.pre625, i64 860
  store i32 %i.jg, ptr %i.na, align 4, !tbaa !2314
  %i.nb = getelementptr inbounds nuw i8, ptr %.pre625, i64 70
  store i16 1, ptr %i.nb, align 2, !tbaa !781
  %i.nc = getelementptr inbounds nuw i8, ptr %.pre625, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !2093 ; 2 uses
  %.not93.i = icmp eq ptr %i.nd, null
  br i1 %.not93.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !568
  %i.nf = trunc i32 %i.ne to i8
  %i.ng = getelementptr inbounds nuw i8, ptr %.pre625, i64 65
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !731
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.nh = load i16, ptr %i.is, align 4, !tbaa !781
  %i.ni = and i16 %i.nh, 256
  %.not94.i = icmp eq i16 %i.ni, 0
  br i1 %.not94.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nj = getelementptr inbounds nuw i8, ptr %.pre625, i64 67
  store i8 1, ptr %i.nj, align 1, !tbaa !731
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.nk = load i8, ptr %i.jr, align 1, !tbaa !2305
  %i.nl = icmp ugt i8 %i.nk, 1
  br i1 %i.nl, label %bb.cj, label %whereShortCut.exit

bb.cj:                                            ; preds = %bb.ci
  %i.nm = load i32, ptr %i.ji, align 8, !tbaa !2289
  %i.nn = or i32 %i.nm, 2097152
  store i32 %i.nn, ptr %i.ji, align 8, !tbaa !2289
  br label %whereShortCut.exit

whereShortCut.exit.thread:                        ; preds = %.loopexit3.i.whereShortCut.exit.thread_crit_edge, %bb.bk, %bb.bl, %bb.bm
  %.pre626 = phi ptr [ %.pre626.pre, %.loopexit3.i.whereShortCut.exit.thread_crit_edge ], [ %.pre627, %bb.bk ], [ %.pre627, %bb.bl ], [ %.pre627, %bb.bm ]
  %.pre = phi ptr [ %.pre.pre, %.loopexit3.i.whereShortCut.exit.thread_crit_edge ], [ %.pre625, %bb.bk ], [ %.pre625, %bb.bl ], [ %.pre625, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #57
  br label %bb.ck

whereShortCut.exit:                               ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #57
  br label %bb.dk

bb.ck:                                            ; preds = %whereShortCut.exit.thread, %bb.bj
  %i.no = phi ptr [ %.pre626, %whereShortCut.exit.thread ], [ %.pre627, %bb.bj ] ; 8 uses
  %i.np = phi ptr [ %.pre, %whereShortCut.exit.thread ], [ %.pre625, %bb.bj ] ; 7 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !2255
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 64
  %i.nu = load i8, ptr %i.nt, align 8, !tbaa !731 ; 2 uses
  %i.nv = zext i8 %i.nu to i64
  %.idx.i = mul nuw nsw i64 %i.nv, 72
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 %.idx.i ; 3 uses
  %i.nx = load ptr, ptr %i.np, align 8, !tbaa !1105
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !979 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 3 uses
  store i32 20000, ptr %i.nz, align 4, !tbaa !2315
  %.not138.i = icmp eq i8 %i.nu, 0
  br i1 %.not138.i, label %._crit_edge132.i, label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.ck
  %i.oa = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.np, i64 600 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.np, i64 596 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.np, i64 132
  %i.of = getelementptr inbounds nuw i8, ptr %i.np, i64 136
  %i.og = getelementptr inbounds nuw i8, ptr %i.ny, i64 103
  br label %bb.cl

bb.cl:                                            ; preds = %bb.dd, %.lr.ph131.i
  %.069129.i = phi i32 [ 0, %.lr.ph131.i ], [ %.271.i, %bb.dd ] ; 5 uses
  %.072128.i = phi i32 [ 0, %.lr.ph131.i ], [ %.173.i, %bb.dd ]
  %.077126.i = phi ptr [ %i.ns, %.lr.ph131.i ], [ %i.rk, %bb.dd ] ; 7 uses
  %.078125.i = phi i8 [ 0, %.lr.ph131.i ], [ %i.rj, %bb.dd ] ; 2 uses
  %.079124.i = phi i64 [ 0, %.lr.ph131.i ], [ %.ph.i, %bb.dd ] ; 3 uses
  %.080123.i = phi i64 [ 0, %.lr.ph131.i ], [ %.383.i, %bb.dd ] ; 5 uses
  store i8 %.078125.i, ptr %i.oa, align 8, !tbaa !2316
  %i.oh = load i32, ptr %i.nz, align 4, !tbaa !2315
  %i.oi = add i32 %i.oh, 1000
  store i32 %i.oi, ptr %i.nz, align 4, !tbaa !2315
  %i.oj = getelementptr inbounds nuw i8, ptr %.077126.i, i64 28
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !2054 ; 2 uses
  %i.ol = load i32, ptr %i.ob, align 8, !tbaa !568 ; 2 uses
  %i.om = icmp eq i32 %i.ol, %i.ok
  br i1 %i.om, label %sqlite3WhereGetMask.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.cl
  %i.on = load i32, ptr %i.oc, align 4, !tbaa !2278 ; 2 uses
  %i.oo = icmp sgt i32 %i.on, 1
  br i1 %i.oo, label %.lr.ph.preheader.i.i, label %sqlite3WhereGetMask.exit.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.on to i64
  br label %.lr.ph.i.i

bb.cm:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %sqlite3WhereGetMask.exit.i, label %.lr.ph.i.i, !llvm.loop !402

.lr.ph.i.i:                                       ; preds = %bb.cm, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.cm ] ; 3 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %indvars.iv.i.i
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !568
  %i.or = icmp eq i32 %i.oq, %i.ok
  br i1 %i.or, label %bb.cn, label %bb.cm

bb.cn:                                            ; preds = %.lr.ph.i.i
  %i.os = shl nuw i64 1, %indvars.iv.i.i
  br label %sqlite3WhereGetMask.exit.i

sqlite3WhereGetMask.exit.i:                       ; preds = %bb.cm, %bb.cn, %.preheader.i.i, %bb.cl
  %.09.i.i = phi i64 [ 1, %bb.cl ], [ %i.os, %bb.cn ], [ 0, %.preheader.i.i ], [ 0, %bb.cm ] ; 5 uses
  store i64 %.09.i.i, ptr %i.od, align 8, !tbaa !2313
  %.not.i483 = icmp eq i32 %.072128.i, 0
  %i.ot = getelementptr inbounds nuw i8, ptr %.077126.i, i64 24
  %i.ou = load i8, ptr %i.ot, align 8, !tbaa !2007 ; 3 uses
  %i.ov = and i8 %i.ou, 98
  %.not85.i484 = icmp eq i8 %i.ov, 0
  %or.cond.i485 = select i1 %.not.i483, i1 %.not85.i484, i1 false
  br i1 %or.cond.i485, label %bb.co, label %sqlite3WhereGetMask.exit._crit_edge.i

sqlite3WhereGetMask.exit._crit_edge.i:            ; preds = %sqlite3WhereGetMask.exit.i
  %i.ow = and i8 %i.ou, 66
end_hunk_0
begin_hunk_1_@isDistinctRedundant:bb.a
  %.not4271 = icmp eq ptr %.03770, null
  br i1 %.not4271, label %.loopexit, label %.lr.ph75

.lr.ph75:                                         ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph75, %bb.ac
  %.03772 = phi ptr [ %.03770, %.lr.ph75 ], [ %.037, %bb.ac ] ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03772, i64 98
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !1813
  %.not43 = icmp eq i8 %i.ae, 0
  br i1 %.not43, label %bb.ac, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.03772, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1755
  %.not44 = icmp eq ptr %i.ag, null
  br i1 %.not44, label %.preheader, label %bb.ac

.preheader:                                       ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.03772, i64 94 ; 3 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !1158
  %.not78 = icmp eq i16 %i.ai, 0
  br i1 %.not78, label %findIndexCol.exit.thread, label %.lr.ph66

.lr.ph66:                                         ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %.03772, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %.03772, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.03772, i64 24
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph66, %bb.ab
  %indvars.iv89 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next90, %bb.ab ] ; 5 uses
  %i.am = trunc nuw nsw i64 %indvars.iv89 to i32  ; 5 uses
  %i.an = tail call fastcc ptr @sqlite3WhereFindTerm(ptr noundef %2, i32 noundef %i.c, i32 noundef %i.am, i64 noundef -1, i32 noundef 2, ptr noundef nonnull %.03772)
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !1758
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv89
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !739
  %i.as = load i32, ptr %3, align 8, !tbaa !568   ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i47, label %findIndexCol.exit.thread

.lr.ph.i47:                                       ; preds = %bb.n, %.thread.i
  %i.au = phi i32 [ %i.cj, %.thread.i ], [ %i.as, %bb.n ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.thread.i ], [ 0, %bb.n ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1996 ; 3 uses
  %.not9.i.i = icmp eq ptr %i.aw, null
  br i1 %.not9.i.i, label %.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i47, %bb.s
  %.010.i.i = phi ptr [ %.1.i.i, %bb.s ], [ %i.aw, %.lr.ph.i47 ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !793 ; 2 uses
  %i.az = and i32 %i.ay, 532480
  %.not7.i.i = icmp eq i32 %i.az, 0
  br i1 %.not7.i.i, label %sqlite3ExprSkipCollateAndLikely.exitthread-pre-split.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.ba = and i32 %i.ay, 524288
  %.not8.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not8.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !731
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.be = load i8, ptr %.010.i.i, align 8, !tbaa !1826 ; 2 uses
  %i.bf = icmp eq i8 %i.be, 114
  br i1 %i.bf, label %bb.r, label %sqlite3ExprSkipCollateAndLikely.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.1.in.i.i = phi ptr [ %i.bd, %bb.p ], [ %i.bg, %bb.r ]
  %.1.i.i = load ptr, ptr %.1.in.i.i, align 8, !tbaa !790 ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !348

sqlite3ExprSkipCollateAndLikely.exitthread-pre-split.i: ; preds = %.lr.ph.i.i
  %.pr.i = load i8, ptr %.010.i.i, align 8, !tbaa !1826
  br label %sqlite3ExprSkipCollateAndLikely.exit.i

sqlite3ExprSkipCollateAndLikely.exit.i:           ; preds = %bb.q, %sqlite3ExprSkipCollateAndLikely.exitthread-pre-split.i
  %i.bh = phi i8 [ %.pr.i, %sqlite3ExprSkipCollateAndLikely.exitthread-pre-split.i ], [ %i.be, %bb.q ]
  switch i8 %i.bh, label %.thread.i [
    i8 -88, label %bb.t
    i8 -86, label %bb.t
  ]

bb.t:                                             ; preds = %sqlite3ExprSkipCollateAndLikely.exit.i, %sqlite3ExprSkipCollateAndLikely.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 48
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !1999
  %i.bk = load ptr, ptr %i.ak, align 8, !tbaa !1159
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv89
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !781
  %i.bn = icmp eq i16 %i.bj, %i.bm
  br i1 %i.bn, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !2070
  %i.bq = icmp eq i32 %i.bp, %i.c
  br i1 %i.bq, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
  %i.br = tail call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %0, ptr noundef nonnull readonly %i.aw), !inline_history !5191 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.w, label %sqlite3ExprNNCollSeq.exit.i

bb.w:                                             ; preds = %bb.v
  %i.bt = load ptr, ptr %0, align 8, !tbaa !979
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1356
  br label %sqlite3ExprNNCollSeq.exit.i

sqlite3ExprNNCollSeq.exit.i:                      ; preds = %bb.w, %bb.v
  %.0.i.i = phi ptr [ %i.bv, %bb.w ], [ %i.br, %bb.v ]
  %i.bw = load ptr, ptr %.0.i.i, align 8, !tbaa !1288
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %sqlite3ExprNNCollSeq.exit.i
  %.013.i.i = phi ptr [ %i.bw, %sqlite3ExprNNCollSeq.exit.i ], [ %i.ch, %bb.aa ] ; 2 uses
  %.012.i.i = phi ptr [ %i.ar, %sqlite3ExprNNCollSeq.exit.i ], [ %i.ci, %bb.aa ] ; 2 uses
  %i.bx = load i8, ptr %.013.i.i, align 1, !tbaa !731 ; 3 uses
  %i.by = load i8, ptr %.012.i.i, align 1, !tbaa !731 ; 2 uses
  %i.bz = icmp eq i8 %i.bx, %i.by
  br i1 %i.bz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ca = icmp eq i8 %i.bx, 0
  br i1 %i.ca, label %findIndexCol.exit, label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cb = zext i8 %i.bx to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !731
  %i.ce = zext i8 %i.by to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !731
  %.not.i30.i = icmp eq i8 %i.cd, %i.cg
  br i1 %.not.i30.i, label %bb.aa, label %.thread.loopexit.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  br label %bb.x

.thread.loopexit.i:                               ; preds = %bb.z
  %.pre.i = load i32, ptr %3, align 8, !tbaa !568
  br label %.thread.i

.thread.i:                                        ; preds = %bb.s, %.thread.loopexit.i, %bb.u, %bb.t, %sqlite3ExprSkipCollateAndLikely.exit.i, %.lr.ph.i47
  %i.cj = phi i32 [ %i.au, %sqlite3ExprSkipCollateAndLikely.exit.i ], [ %.pre.i, %.thread.loopexit.i ], [ %i.au, %.lr.ph.i47 ], [ %i.au, %bb.t ], [ %i.au, %bb.u ], [ %i.au, %bb.s ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next.i, %i.ck
  br i1 %i.cl, label %.lr.ph.i47, label %findIndexCol.exit.thread, !llvm.loop !5192

findIndexCol.exit:                                ; preds = %bb.y
  %i.cm = load ptr, ptr %i.ak, align 8, !tbaa !1159
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv89
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !781 ; 3 uses
  %i.cp = icmp sgt i16 %i.co, -1
  br i1 %i.cp, label %.split, label %indexColumnNotNull.exit

.split:                                           ; preds = %findIndexCol.exit
  %i.cq = load ptr, ptr %i.al, align 8, !tbaa !1255
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1148
  %i.ct = zext nneg i16 %i.co to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i8, ptr %i.cv, align 8
  %i.cx = and i8 %i.cw, 15
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %findIndexCol.exit.thread, label %bb.ab

indexColumnNotNull.exit:                          ; preds = %findIndexCol.exit
  %.not119 = icmp eq i16 %i.co, -1
  br i1 %.not119, label %bb.ab, label %findIndexCol.exit.thread

bb.ab:                                            ; preds = %.split, %bb.m, %indexColumnNotNull.exit
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 3 uses
  %i.cz = load i16, ptr %i.ah, align 2, !tbaa !1158
  %i.da = zext i16 %i.cz to i64
  %i.db = icmp samesign ult i64 %indvars.iv.next90, %i.da
  br i1 %i.db, label %bb.m, label %findIndexCol.exit.thread.loopexit102.split.loop.exit115, !llvm.loop !5193

findIndexCol.exit.thread.loopexit102.split.loop.exit115: ; preds = %bb.ab
  %indvars.le = trunc nsw i64 %indvars.iv.next90 to i32
  br label %findIndexCol.exit.thread

findIndexCol.exit.thread:                         ; preds = %bb.n, %indexColumnNotNull.exit, %.split, %.thread.i, %findIndexCol.exit.thread.loopexit102.split.loop.exit115, %.preheader
  %.159 = phi i32 [ %i.am, %.thread.i ], [ 0, %.preheader ], [ %indvars.le, %findIndexCol.exit.thread.loopexit102.split.loop.exit115 ], [ %i.am, %.split ], [ %i.am, %indexColumnNotNull.exit ], [ %i.am, %bb.n ]
  %i.dc = load i16, ptr %i.ah, align 2, !tbaa !1158
  %i.dd = zext i16 %i.dc to i32
  %i.de = icmp eq i32 %.159, %i.dd
  br i1 %i.de, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %findIndexCol.exit.thread, %bb.l, %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %.03772, i64 40
  %.037 = load ptr, ptr %i.df, align 8, !tbaa !1155 ; 2 uses
  %.not42 = icmp eq ptr %.037, null
  br i1 %.not42, label %.loopexit, label %bb.k, !llvm.loop !5194

.loopexit:                                        ; preds = %bb.j, %findIndexCol.exit.thread, %bb.ac, %._crit_edge, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %._crit_edge ], [ 0, %bb.ac ], [ 1, %findIndexCol.exit.thread ], [ 1, %bb.j ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @wherePathSolver(ptr noundef %0, i16 noundef signext range(i16 0, -32767) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !1105   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i8, ptr %i.f, align 8, !tbaa !731   ; 11 uses
  %i.h = zext i8 %i.g to i32                      ; 5 uses
  %i.i = icmp ult i8 %i.g, 2
  br i1 %i.i, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i8 %i.g, 2
  br i1 %i.j, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !778
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ugt i8 %i.g, 3
  br i1 %i.m, label %bb.e, label %computeMxChoice.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %i.o = load i8, ptr %i.n, align 4               ; 2 uses
  %i.p = and i8 %i.o, 16
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %bb.f, label %computeMxChoice.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !979
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1372
  %i.t = and i32 %i.s, 536870912
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %computeMxChoice.exit

bb.g:                                             ; preds = %bb.f
  %i.v = or disjoint i8 %i.o, 16
  store i8 %i.v, ptr %i.n, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2255
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2387
  %i.ab = zext i8 %i.g to i64                     ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %bb.g
  %indvars.iv.i = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i, %.loopexit.i ] ; 6 uses
  %.069136.i = phi ptr [ %i.aa, %bb.g ], [ %.271144156.i, %.loopexit.i ] ; 4 uses
  %.072135.i = phi i64 [ 0, %bb.g ], [ %.173.lcssa157.i, %.loopexit.i ] ; 4 uses
  %.076134.i = phi i64 [ 1, %bb.g ], [ %i.ck, %.loopexit.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %indvars.iv.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !2007
  %i.af = and i8 %i.ae, 34
  %.not83.i = icmp eq i8 %i.af, 0
  br i1 %.not83.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = add nuw nsw i64 %indvars.iv.i, 3
  %i.ah = icmp samesign ugt i64 %i.ag, %i.ab
  br i1 %i.ah, label %computeMxChoice.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %.not84102.i = icmp eq ptr %.069136.i, null
  br i1 %.not84102.i, label %.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ai = trunc i64 %indvars.iv.i to i8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.170103.i = phi ptr [ %i.am, %bb.j ], [ %.069136.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.170103.i, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !2316
  %.not85.i = icmp ugt i8 %i.ak, %i.ai
  br i1 %.not85.i, label %.lr.ph111.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %.170103.i, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2388 ; 2 uses
  %.not84.i = icmp eq ptr %i.am, null
  br i1 %.not84.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !5195

.critedge.i:                                      ; preds = %bb.h
  %.not86106.i = icmp eq ptr %.069136.i, null
  br i1 %.not86106.i, label %.loopexit.i, label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %.lr.ph.i, %.critedge.i
  %.271149.i = phi ptr [ %.069136.i, %.critedge.i ], [ %.170103.i, %.lr.ph.i ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %.lr.ph111.i
  %.064110.i = phi i64 [ 0, %.lr.ph111.i ], [ %.1.i, %bb.q ] ; 6 uses
  %.067109.i = phi i32 [ 0, %.lr.ph111.i ], [ %.168.i, %bb.q ] ; 5 uses
  %.173108.i = phi i64 [ %.072135.i, %.lr.ph111.i ], [ %.274.i, %bb.q ] ; 6 uses
  %.078107.i = phi ptr [ %.271149.i, %.lr.ph111.i ], [ %i.bl, %bb.q ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.078107.i, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !2316
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i8, ptr %i.as, align 8, !tbaa !2007
  %i.au = and i8 %i.at, 34
  %.not87.i = icmp eq i8 %i.au, 0
  br i1 %.not87.i, label %bb.l, label %._crit_edge.i

bb.l:                                             ; preds = %bb.k
  %i.av = load i64, ptr %.078107.i, align 8, !tbaa !2389
  %i.aw = and i64 %i.av, %.076134.i
  %.not88.i = icmp eq i64 %i.aw, 0
  br i1 %.not88.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.078107.i, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !2313 ; 3 uses
  %i.az = and i64 %i.ay, %.064110.i
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = and i64 %i.ay, %.173108.i
  %i.bc = icmp eq i64 %i.bb, 0
  %or.cond.i = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1823
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !1823
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = or i64 %.173108.i, %.076134.i
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bi = add nsw i32 %.067109.i, 1
  %i.bj = or i64 %i.ay, %.064110.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %.274.i = phi i64 [ %i.bh, %bb.o ], [ %.173108.i, %bb.p ], [ %.173108.i, %bb.l ], [ %.173108.i, %bb.m ] ; 2 uses
  %.168.i = phi i32 [ %.067109.i, %bb.o ], [ %i.bi, %bb.p ], [ %.067109.i, %bb.l ], [ %.067109.i, %bb.m ] ; 2 uses
  %.1.i = phi i64 [ %.064110.i, %bb.o ], [ %i.bj, %bb.p ], [ %.064110.i, %bb.l ], [ %.064110.i, %bb.m ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.078107.i, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2388 ; 2 uses
  %.not86.i = icmp eq ptr %i.bl, null
  br i1 %.not86.i, label %._crit_edge.i, label %bb.k, !llvm.loop !5196

._crit_edge.i:                                    ; preds = %bb.q, %bb.k
  %.173.lcssa.ph.i = phi i64 [ %.274.i, %bb.q ], [ %.173108.i, %bb.k ] ; 2 uses
  %.067.lcssa.ph.i = phi i32 [ %.168.i, %bb.q ], [ %.067109.i, %bb.k ]
  %.064.lcssa.ph.i = phi i64 [ %.1.i, %bb.q ], [ %.064110.i, %bb.k ]
  %i.bm = icmp slt i32 %.067.lcssa.ph.i, 3
  br i1 %i.bm, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.bn = load i8, ptr %i.n, align 4
  %i.bo = or i8 %i.bn, 32
  store i8 %i.bo, ptr %i.n, align 4
  br label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %bb.u, %bb.r
  %.065121.i = phi i16 [ %.166.i, %bb.u ], [ -32768, %bb.r ] ; 3 uses
  %.179120.i = phi ptr [ %i.bx, %bb.u ], [ %.271149.i, %bb.r ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.179120.i, i64 16
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !2316
  %i.br = zext i8 %i.bq to i64                    ; 2 uses
  %i.bs = icmp samesign ugt i64 %indvars.iv.i, %i.br
  br i1 %i.bs, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph123.i
end_hunk_1
