Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acbFunc?download=true
inline.NumInlined: 1282
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 43
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@Gia_FileSimpleParse:bb.a
  %i.go = sext i32 %i.gm to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %.val248, i64 %i.go
  store i32 0, ptr %i.gp, align 4, !tbaa !33
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.gq = tail call i32 @Abc_NamStrFind(ptr noundef %1, ptr noundef nonnull @.str.10) #34 ; 2 uses
  %.not209 = icmp eq i32 %i.gq, 0
  br i1 %.not209, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gr = getelementptr i8, ptr %i.w, i64 8
  %.val247 = load ptr, ptr %i.gr, align 8, !tbaa !32
  %i.gs = sext i32 %i.gq to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %.val247, i64 %i.gs
  store i32 0, ptr %i.gt, align 4, !tbaa !33
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.val223 = load i32, ptr %i.c, align 4, !tbaa !30 ; 6 uses
  %i.gu = icmp sgt i32 %.val223, 0                ; 2 uses
  br i1 %i.gu, label %.lr.ph369, label %.critedge9.preheader

.lr.ph371:                                        ; preds = %.lr.ph369
  %.val237 = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.gv = getelementptr i8, ptr %i.ft, i64 32
  %i.gw = getelementptr i8, ptr %i.ft, i64 64
  %i.gx = getelementptr i8, ptr %i.w, i64 8
  %wide.trip.count = zext nneg i32 %.val223 to i64
  br label %.critedge7

.lr.ph369:                                        ; preds = %bb.bl, %.lr.ph369
  %.2367 = phi i32 [ %i.gz, %.lr.ph369 ], [ 0, %bb.bl ]
  %i.gy = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.ft) ; 0 uses
  %i.gz = add nuw nsw i32 %.2367, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gz, %.val223
  br i1 %exitcond.not, label %.lr.ph371, label %.lr.ph369, !llvm.loop !170

.critedge9.preheader:                             ; preds = %.critedge7, %bb.bl
  %.val221 = load i32, ptr %i.g, align 4, !tbaa !30 ; 6 uses
  %i.ha = icmp sgt i32 %.val221, 0                ; 2 uses
  br i1 %i.ha, label %.lr.ph373, label %.critedge13

.lr.ph373:                                        ; preds = %.critedge9.preheader
  %.val236 = load ptr, ptr %i.i, align 8, !tbaa !32
  %wide.trip.count397 = zext nneg i32 %.val221 to i64
  br label %.critedge9

.critedge7:                                       ; preds = %.lr.ph371, %.critedge7
  %indvars.iv390 = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next391, %.critedge7 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.val237, i64 %indvars.iv390
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !33
  %.val254 = load ptr, ptr %i.gv, align 8, !tbaa !60 ; 2 uses
  %.val255 = load ptr, ptr %i.gw, align 8, !tbaa !63
  %i.hd = getelementptr i8, ptr %.val255, i64 8
  %.val255.val = load ptr, ptr %i.hd, align 8, !tbaa !32
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.val255.val, i64 %indvars.iv390
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !33
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [12 x i8], ptr %.val254, i64 %i.hg
  %i.hi = ptrtoint ptr %i.hh to i64               ; 2 uses
  %i.hj = and i64 %i.hi, -2
  %i.hk = ptrtoint ptr %.val254 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = sdiv exact i64 %i.hl, 12
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = trunc i64 %i.hi to i32
  %i.hp = and i32 %i.ho, 1
  %i.hq = shl nsw i32 %i.hn, 1
  %i.hr = or disjoint i32 %i.hq, %i.hp            ; 2 uses
  %i.hs = tail call fastcc i32 @Gia_ManAppendAnd2(ptr noundef nonnull %i.ft, i32 noundef %i.hr, i32 noundef %i.hr)
  %.val246 = load ptr, ptr %i.gx, align 8, !tbaa !32
  %i.ht = sext i32 %i.hc to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %.val246, i64 %i.ht
  store i32 %i.hs, ptr %i.hu, align 4, !tbaa !33
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next391, %wide.trip.count
  br i1 %exitcond393.not, label %.critedge9.preheader, label %.critedge7, !llvm.loop !171

.lr.ph376:                                        ; preds = %.critedge9
  %.val235 = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.hv = getelementptr i8, ptr %i.w, i64 8
  %.val234 = load ptr, ptr %i.hv, align 8, !tbaa !32
  %wide.trip.count402 = zext nneg i32 %.val221 to i64
  br label %.critedge11

.critedge9:                                       ; preds = %.lr.ph373, %.critedge9
  %indvars.iv394 = phi i64 [ 0, %.lr.ph373 ], [ %indvars.iv.next395, %.critedge9 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.val236, i64 %indvars.iv394
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !33
  %i.hy = tail call i32 @Gia_FileSimpleParse_rec(ptr noundef nonnull %i.ft, i32 noundef %i.hx, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.n, ptr noundef nonnull %i.r, ptr noundef nonnull %i.w) ; 0 uses
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 1 ; 2 uses
  %exitcond398.not = icmp eq i64 %indvars.iv.next395, %wide.trip.count397
  br i1 %exitcond398.not, label %.lr.ph376, label %.critedge9, !llvm.loop !172

.critedge11:                                      ; preds = %.lr.ph376, %.critedge11
  %indvars.iv399 = phi i64 [ 0, %.lr.ph376 ], [ %indvars.iv.next400, %.critedge11 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.val235, i64 %indvars.iv399
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !33
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %.val234, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !33
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.ft, i32 noundef %i.id)
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %exitcond403.not = icmp eq i64 %indvars.iv.next400, %wide.trip.count402
  br i1 %exitcond403.not, label %.critedge13, label %.critedge11, !llvm.loop !173

.critedge13:                                      ; preds = %.critedge11, %.critedge9.preheader
  %i.ie = icmp ne i32 %2, 0                       ; 2 uses
  br i1 %i.ie, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %.critedge13
  %i.if = getelementptr i8, ptr %i.ft, i64 24     ; 2 uses
  %.val257 = load i32, ptr %i.if, align 8, !tbaa !64 ; 2 uses
  %i.ig = ashr i32 %.val257, 5
  %i.ih = and i32 %.val257, 31
  %i.ii = icmp ne i32 %i.ih, 0
  %i.ij = zext i1 %i.ii to i32
  %i.ik = add nsw i32 %i.ig, %i.ij                ; 3 uses
  %i.il = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.im = shl nsw i32 %i.ik, 5                    ; 2 uses
  store i32 %i.im, ptr %i.il, align 8, !tbaa !66
  %.not.i.i308 = icmp eq i32 %i.ik, 0
  br i1 %.not.i.i308, label %Vec_BitStart.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.in = sext i32 %i.ik to i64
  %i.io = shl nsw i64 %i.in, 2                    ; 2 uses
  %i.ip = tail call noalias ptr @malloc(i64 noundef %i.io) #31
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.bm, %bb.bn
  %.pre-phi8.i = phi i64 [ %i.io, %bb.bn ], [ 0, %bb.bm ]
  %i.iq = phi ptr [ %i.ip, %bb.bn ], [ null, %bb.bm ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %i.iq, ptr %i.is, align 8, !tbaa !67
  store i32 %i.im, ptr %i.ir, align 4, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iq, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.it = getelementptr inbounds nuw i8, ptr %i.ft, i64 912 ; 2 uses
  store ptr %i.il, ptr %i.it, align 8, !tbaa !178
  %.val256 = load i32, ptr %i.if, align 8, !tbaa !64 ; 4 uses
  %i.iu = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.iv = add i32 %.val256, -1
  %or.cond.i.i309 = icmp ult i32 %i.iv, 7
  %spec.store.select.i.i310 = select i1 %or.cond.i.i309, i32 8, i32 %.val256 ; 3 uses
  store i32 %spec.store.select.i.i310, ptr %i.iu, align 8, !tbaa !71
  %.not.i.i311 = icmp eq i32 %spec.store.select.i.i310, 0
  br i1 %.not.i.i311, label %Vec_PtrStart.exit, label %bb.bo

bb.bo:                                            ; preds = %Vec_BitStart.exit
  %i.iw = sext i32 %spec.store.select.i.i310 to i64
  %i.ix = shl nsw i64 %i.iw, 3
  %i.iy = tail call noalias ptr @malloc(i64 noundef %i.ix) #31
  br label %Vec_PtrStart.exit

Vec_PtrStart.exit:                                ; preds = %Vec_BitStart.exit, %bb.bo
  %i.iz = phi ptr [ %i.iy, %bb.bo ], [ null, %Vec_BitStart.exit ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store ptr %i.iz, ptr %i.jb, align 8, !tbaa !72
  store i32 %.val256, ptr %i.ja, align 4, !tbaa !73
  %i.jc = sext i32 %.val256 to i64
  %i.jd = shl nsw i64 %i.jc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.iz, i8 0, i64 %i.jd, i1 false)
  %i.je = getelementptr inbounds nuw i8, ptr %i.ft, i64 656 ; 2 uses
  store ptr %i.iu, ptr %i.je, align 8, !tbaa !179
  %.val219 = load i32, ptr %i.y, align 4, !tbaa !30 ; 2 uses
  %i.jf = icmp sgt i32 %.val219, 0
  br i1 %i.jf, label %.lr.ph378, label %.critedge15

.lr.ph378:                                        ; preds = %Vec_PtrStart.exit
  %i.jg = getelementptr i8, ptr %i.w, i64 8
  %.val233 = load ptr, ptr %i.jg, align 8, !tbaa !32
  %i.jh = getelementptr i8, ptr %i.ft, i64 32
  %wide.trip.count407 = zext nneg i32 %.val219 to i64
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph378, %Vec_BitWriteEntry.exit
  %indvars.iv404 = phi i64 [ 0, %.lr.ph378 ], [ %indvars.iv.next405, %Vec_BitWriteEntry.exit ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.val233, i64 %indvars.iv404
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !33 ; 5 uses
  %i.jk = icmp eq i32 %i.jj, -1
  br i1 %i.jk, label %Vec_BitWriteEntry.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jl = ashr i32 %i.jj, 1                       ; 2 uses
  %.val244 = load ptr, ptr %i.jh, align 8, !tbaa !60
  %i.jm = sext i32 %i.jl to i64                   ; 2 uses
  %i.jn = getelementptr inbounds [12 x i8], ptr %.val244, i64 %i.jm
  %.val258 = load i64, ptr %i.jn, align 4         ; 2 uses
  %i.jo = and i64 %.val258, 2147483648
  %.not.i312 = icmp ne i64 %i.jo, 0
  %i.jp = and i64 %.val258, 536870911
  %i.jq = icmp eq i64 %i.jp, 536870911
  %narrow.i.not = or i1 %.not.i312, %i.jq
  br i1 %narrow.i.not, label %Vec_BitWriteEntry.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jr = and i32 %i.jj, 1                        ; 2 uses
  %.not213 = icmp eq i32 %i.jr, 0
  %i.js = sub nuw nsw i32 100, %i.jr
  %i.jt = trunc nuw nsw i64 %indvars.iv404 to i32
  %i.ju = tail call ptr @Abc_NamStr(ptr noundef %1, i32 noundef %i.jt) #34
  %i.jv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.js, ptr noundef %i.ju) #34 ; 0 uses
  %i.jw = load ptr, ptr %i.je, align 8, !tbaa !179
  %i.jx = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #32
  %i.jy = add i64 %i.jx, 1
  %i.jz = tail call noalias ptr @malloc(i64 noundef %i.jy) #31 ; 2 uses
  %i.ka = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.jz, ptr noundef nonnull readonly dereferenceable(1) %i.a) #34 ; 0 uses
  %i.kb = getelementptr i8, ptr %i.jw, i64 8
  %.val259 = load ptr, ptr %i.kb, align 8, !tbaa !72
  %i.kc = getelementptr inbounds [8 x i8], ptr %.val259, i64 %i.jm
  store ptr %i.jz, ptr %i.kc, align 8, !tbaa !74
  %i.kd = load ptr, ptr %i.it, align 8, !tbaa !178 ; 2 uses
  %i.ke = and i32 %i.jl, 31
  %i.kf = shl nuw i32 1, %i.ke                    ; 2 uses
  br i1 %.not213, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !67
  %i.ki = ashr i32 %i.jj, 6
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.kj ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !33
  %i.km = or i32 %i.kl, %i.kf
  store i32 %i.km, ptr %i.kk, align 4, !tbaa !33
  br label %Vec_BitWriteEntry.exit

bb.bt:                                            ; preds = %bb.br
  %i.kn = xor i32 %i.kf, -1
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !67
  %i.kq = ashr i32 %i.jj, 6
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.kr ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !33
  %i.ku = and i32 %i.kt, %i.kn
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !33
  br label %Vec_BitWriteEntry.exit

Vec_BitWriteEntry.exit:                           ; preds = %bb.bt, %bb.bs, %bb.bp, %bb.bq
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %exitcond408.not = icmp eq i64 %indvars.iv.next405, %wide.trip.count407
  br i1 %exitcond408.not, label %.critedge15, label %bb.bp, !llvm.loop !174

bb.bu:                                            ; preds = %.critedge13
  %i.kv = tail call ptr @Gia_ManDupDfsRehash(ptr noundef nonnull %i.ft) #34
  tail call void @Gia_ManStop(ptr noundef nonnull %i.ft) #34
  br label %.critedge15

.critedge15:                                      ; preds = %Vec_BitWriteEntry.exit, %Vec_PtrStart.exit, %bb.bu
  %.0 = phi ptr [ %i.kv, %bb.bu ], [ %i.ft, %Vec_PtrStart.exit ], [ %i.ft, %Vec_BitWriteEntry.exit ] ; 5 uses
  %i.kw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.kx = add i32 %.val223, -1
  %or.cond.i = icmp ult i32 %i.kx, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %.val223 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  store i32 0, ptr %i.ky, align 4, !tbaa !73
  store i32 %spec.store.select.i, ptr %i.kw, align 8, !tbaa !71
  %.not.i315 = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i315, label %Vec_PtrAlloc.exit, label %bb.bv

bb.bv:                                            ; preds = %.critedge15
  %i.kz = sext i32 %spec.store.select.i to i64
  %i.la = shl nsw i64 %i.kz, 3
  %i.lb = tail call noalias ptr @malloc(i64 noundef %i.la) #31
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %.critedge15, %bb.bv
  %i.lc = phi ptr [ %i.lb, %bb.bv ], [ null, %.critedge15 ]
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !72
  %i.le = getelementptr inbounds nuw i8, ptr %.0, i64 640 ; 2 uses
  store ptr %i.kw, ptr %i.le, align 8, !tbaa !75
  br i1 %i.gu, label %.lr.ph380, label %.critedge17

.lr.ph380:                                        ; preds = %Vec_PtrAlloc.exit
  %.val232 = load ptr, ptr %i.e, align 8, !tbaa !32
  %wide.trip.count412 = zext nneg i32 %.val223 to i64
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph380, %Vec_PtrPush.exit
  %indvars.iv409 = phi i64 [ 0, %.lr.ph380 ], [ %indvars.iv.next410, %Vec_PtrPush.exit ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.val232, i64 %indvars.iv409
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !33
  %i.lh = load ptr, ptr %i.le, align 8, !tbaa !75 ; 6 uses
  %i.li = tail call ptr @Abc_NamStr(ptr noundef %1, i32 noundef %i.lg) #34 ; 3 uses
  %.not.i316 = icmp eq ptr %i.li, null
  br i1 %.not.i316, label %Abc_UtilStrsav.exit317, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lj = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.li) #32
  %i.lk = add i64 %i.lj, 1
  %i.ll = tail call noalias ptr @malloc(i64 noundef %i.lk) #31 ; 2 uses
  %i.lm = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ll, ptr noundef nonnull readonly dereferenceable(1) %i.li) #34 ; 0 uses
  br label %Abc_UtilStrsav.exit317

Abc_UtilStrsav.exit317:                           ; preds = %bb.bw, %bb.bx
  %i.ln = phi ptr [ %i.ll, %bb.bx ], [ null, %bb.bw ]
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 4 ; 3 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !73 ; 7 uses
  %i.lq = load i32, ptr %i.lh, align 8, !tbaa !71
  %i.lr = icmp eq i32 %i.lp, %i.lq
  br i1 %i.lr, label %bb.by, label %Vec_PtrPush.exit

bb.by:                                            ; preds = %Abc_UtilStrsav.exit317
  %i.ls = icmp slt i32 %i.lp, 16
  br i1 %i.ls, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !72 ; 2 uses
  %.not9.i.i320 = icmp eq ptr %i.lu, null
  br i1 %.not9.i.i320, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lv = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.lu, i64 noundef 128) #33
  br label %Vec_PtrGrow.exit.i

bb.cb:                                            ; preds = %bb.bz
  %i.lw = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.cb, %bb.ca
  %i.lx = phi ptr [ %i.lv, %bb.ca ], [ %i.lw, %bb.cb ]
  store ptr %i.lx, ptr %i.lt, align 8, !tbaa !72
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.cc:                                            ; preds = %bb.by
  %i.ly = icmp samesign ult i32 %i.lp, 1073741823
  %i.lz = shl nuw nsw i32 %i.lp, 1
  %spec.select.i318 = select i1 %i.ly, i32 %i.lz, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.lp, %spec.select.i318
  br i1 %.not.i10.i, label %bb.cd, label %Vec_PtrPush.exit

bb.cd:                                            ; preds = %bb.cc
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !72 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.mb, null
  %i.mc = zext nneg i32 %spec.select.i318 to i64
  %i.md = shl nuw nsw i64 %i.mc, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.me = tail call ptr @realloc(ptr noundef nonnull %i.mb, i64 noundef %i.md) #33
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.mf = tail call noalias ptr @malloc(i64 noundef %i.md) #31
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.mg = phi ptr [ %i.me, %bb.ce ], [ %i.mf, %bb.cf ]
  store ptr %i.mg, ptr %i.ma, align 8, !tbaa !72
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.cg, %Vec_PtrGrow.exit.i
  %spec.select.sink.i319 = phi i32 [ %spec.select.i318, %bb.cg ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i319, ptr %i.lh, align 8, !tbaa !71
  %.pre432 = load i32, ptr %i.lo, align 4, !tbaa !73
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %Abc_UtilStrsav.exit317, %bb.cc, %Vec_PtrGrow.exit12.sink.split.i
  %i.mh = phi i32 [ %i.lp, %Abc_UtilStrsav.exit317 ], [ %i.lp, %bb.cc ], [ %.pre432, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !72
  %i.mk = add nsw i32 %i.mh, 1
  store i32 %i.mk, ptr %i.lo, align 4, !tbaa !73
  %i.ml = sext i32 %i.mh to i64
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.ml
  store ptr %i.ln, ptr %i.mm, align 8, !tbaa !74
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %exitcond413.not = icmp eq i64 %indvars.iv.next410, %wide.trip.count412
  br i1 %exitcond413.not, label %.critedge17, label %bb.bw, !llvm.loop !175

.critedge17:                                      ; preds = %Vec_PtrPush.exit, %Vec_PtrAlloc.exit
  %i.mn = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.mo = add i32 %.val221, -1
  %or.cond.i321 = icmp ult i32 %i.mo, 7
  %spec.store.select.i322 = select i1 %or.cond.i321, i32 8, i32 %.val221 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  store i32 0, ptr %i.mp, align 4, !tbaa !73
  store i32 %spec.store.select.i322, ptr %i.mn, align 8, !tbaa !71
  %.not.i323 = icmp eq i32 %spec.store.select.i322, 0
  br i1 %.not.i323, label %Vec_PtrAlloc.exit324, label %bb.ch

bb.ch:                                            ; preds = %.critedge17
  %i.mq = sext i32 %spec.store.select.i322 to i64
  %i.mr = shl nsw i64 %i.mq, 3
  %i.ms = tail call noalias ptr @malloc(i64 noundef %i.mr) #31
  br label %Vec_PtrAlloc.exit324

Vec_PtrAlloc.exit324:                             ; preds = %.critedge17, %bb.ch
  %i.mt = phi ptr [ %i.ms, %bb.ch ], [ null, %.critedge17 ]
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store ptr %i.mt, ptr %i.mu, align 8, !tbaa !72
  %i.mv = getelementptr inbounds nuw i8, ptr %.0, i64 648 ; 2 uses
  store ptr %i.mn, ptr %i.mv, align 8, !tbaa !76
  br i1 %i.ha, label %.lr.ph382, label %.critedge19

.lr.ph382:                                        ; preds = %Vec_PtrAlloc.exit324
  %.val231 = load ptr, ptr %i.i, align 8, !tbaa !32
  %wide.trip.count417 = zext nneg i32 %.val221 to i64
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph382, %Vec_PtrPush.exit334
  %indvars.iv414 = phi i64 [ 0, %.lr.ph382 ], [ %indvars.iv.next415, %Vec_PtrPush.exit334 ] ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.val231, i64 %indvars.iv414
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !33
  %i.my = load ptr, ptr %i.mv, align 8, !tbaa !76 ; 6 uses
  %i.mz = tail call ptr @Abc_NamStr(ptr noundef %1, i32 noundef %i.mx) #34 ; 3 uses
  %.not.i325 = icmp eq ptr %i.mz, null
  br i1 %.not.i325, label %Abc_UtilStrsav.exit326, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.na = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.mz) #32
end_hunk_0
