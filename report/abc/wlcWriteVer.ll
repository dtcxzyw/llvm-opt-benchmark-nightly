Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcWriteVer?download=true
inline.NumInlined: 214
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Wlc_WriteVerInt:bb.a
  store i8 0, ptr %i.a, align 16, !tbaa !26
  %.pre = load i16, ptr %i.cd, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.dr = phi i16 [ %.pre, %bb.ab ], [ %.val978, %bb.z ] ; 4 uses
  %i.ds = and i16 %i.dr, 512
  %.not777 = icmp eq i16 %i.ds, 0
  br i1 %.not777, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dt = and i16 %i.dr, 1024
  %.not779 = icmp eq i16 %i.dt, 0
  %i.du = and i16 %i.dr, 63                       ; 2 uses
  %.not780 = icmp eq i16 %i.du, 5
  %i.dv = or i1 %.not779, %.not780
  %or.cond1179 = or i1 %i.dv, %.not766
  br i1 %or.cond1179, label %bb.ah, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %.old = and i16 %i.dr, 63
  %.not780.old = icmp eq i16 %.old, 5
  br i1 %.not780.old, label %.thread1169, label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.dw = getelementptr i8, ptr %i.cd, i64 4
  %.val965 = load i32, ptr %i.dw, align 4, !tbaa !29
  %i.dx = icmp eq i32 %.val965, 0
  br i1 %i.dx, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %fwrite781 = call i64 @fwrite(ptr nonnull @.str.26, i64 33, i64 1, ptr %0) ; 0 uses
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ad
  switch i16 %i.du, label %.thread1169 [
    i16 8, label %bb.ai
    i16 57, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.dy = getelementptr i8, ptr %i.cd, i64 4
  %.val964 = load i32, ptr %i.dy, align 4, !tbaa !29
  %i.dz = icmp sgt i32 %.val964, 3
  br i1 %i.dz, label %bb.aj, label %.thread1169

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %bb.ak

.thread1169:                                      ; preds = %bb.ae, %bb.ah, %bb.ai
  %i.eb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread1169, %bb.ag
  %i.ec = load i16, ptr %i.cd, align 8
  %i.ed = and i16 %i.ec, 63                       ; 2 uses
  switch i16 %i.ed, label %.thread1173 [
    i16 53, label %bb.al
    i16 59, label %bb.ao
    i16 6, label %bb.au
    i16 13, label %bb.ay
    i16 14, label %bb.ay
    i16 8, label %bb.bj
    i16 57, label %bb.bq
    i16 58, label %bb.by
    i16 56, label %bb.ch
    i16 54, label %bb.cw
    i16 55, label %bb.cw
    i16 5, label %bb.di
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ee = trunc nuw nsw i64 %indvars.iv1342 to i32 ; 3 uses
  %i.ef = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.ee) #16
  %i.eg = getelementptr i8, ptr %i.cd, i64 20
  %.val882 = load i32, ptr %i.eg, align 4, !tbaa !26
  %i.eh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %i.ef, i32 noundef %.val882) #16 ; 0 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !29
  %i.ek = icmp ugt i32 %i.ej, 2
  br i1 %i.ek, label %Wlc_ObjHasArray.exit.thread.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.el = load i16, ptr %i.cd, align 8
  %i.em = and i16 %i.el, 63
  switch i16 %i.em, label %bb.an [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i
  ]

Wlc_ObjHasArray.exit.thread.i.i:                  ; preds = %bb.am, %bb.am, %bb.al
  %i.en = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !26
  br label %Wlc_ObjFaninId0.exit

bb.an:                                            ; preds = %bb.am
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  br label %Wlc_ObjFaninId0.exit

Wlc_ObjFaninId0.exit:                             ; preds = %Wlc_ObjHasArray.exit.thread.i.i, %bb.an
  %i.eq = phi ptr [ %i.eo, %Wlc_ObjHasArray.exit.thread.i.i ], [ %i.ep, %bb.an ]
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !27
  %i.es = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.er) #16
  %i.et = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %i.ee, ptr noundef %i.es) #16 ; 0 uses
  %i.eu = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.ee) #16
  %i.ev = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %i.eu) #16 ; 0 uses
  br label %Abc_TtPrintHexArrayRev.exit

bb.ao:                                            ; preds = %bb.ak
  %i.ew = trunc nuw nsw i64 %indvars.iv1342 to i32 ; 3 uses
  %i.ex = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.ew) #16
  %i.ey = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %i.ex) #16 ; 0 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 4 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !29
  %i.fb = icmp ugt i32 %i.fa, 2
  br i1 %i.fb, label %Wlc_ObjHasArray.exit.thread.i.i1017, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fc = load i16, ptr %i.cd, align 8
  %i.fd = and i16 %i.fc, 63
  switch i16 %i.fd, label %bb.aq [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1017
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1017
  ]

Wlc_ObjHasArray.exit.thread.i.i1017:              ; preds = %bb.ap, %bb.ap, %bb.ao
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !26
  br label %Wlc_ObjFaninId0.exit1018

bb.aq:                                            ; preds = %bb.ap
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  br label %Wlc_ObjFaninId0.exit1018

Wlc_ObjFaninId0.exit1018:                         ; preds = %Wlc_ObjHasArray.exit.thread.i.i1017, %bb.aq
  %i.fh = phi ptr [ %i.ff, %Wlc_ObjHasArray.exit.thread.i.i1017 ], [ %i.fg, %bb.aq ]
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !27
  %i.fj = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.fi) #16
  %i.fk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %i.ew, ptr noundef %i.fj) #16 ; 0 uses
  %.val9631243 = load i32, ptr %i.ez, align 4, !tbaa !29 ; 2 uses
  %i.fl = icmp sgt i32 %.val9631243, 1
  br i1 %i.fl, label %.lr.ph1246, label %._crit_edge1247

.lr.ph1246:                                       ; preds = %Wlc_ObjFaninId0.exit1018
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph1246, %Wlc_ObjFaninId.exit
  %indvars.iv1336 = phi i64 [ 1, %.lr.ph1246 ], [ %indvars.iv.next1337, %Wlc_ObjFaninId.exit ] ; 2 uses
  %.val9631245 = phi i32 [ %.val9631243, %.lr.ph1246 ], [ %.val963, %Wlc_ObjFaninId.exit ]
  %i.fn = icmp ugt i32 %.val9631245, 2
  br i1 %i.fn, label %Wlc_ObjHasArray.exit.thread.i.i1019, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fo = load i16, ptr %i.cd, align 8
  %i.fp = and i16 %i.fo, 63
  switch i16 %i.fp, label %Wlc_ObjFaninId.exit [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1019
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1019
  ]

Wlc_ObjHasArray.exit.thread.i.i1019:              ; preds = %bb.as, %bb.as, %bb.ar
  %i.fq = load ptr, ptr %i.fm, align 8, !tbaa !26
  br label %Wlc_ObjFaninId.exit

Wlc_ObjFaninId.exit:                              ; preds = %bb.as, %Wlc_ObjHasArray.exit.thread.i.i1019
  %i.fr = phi ptr [ %i.fq, %Wlc_ObjHasArray.exit.thread.i.i1019 ], [ %i.fm, %bb.as ]
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv1336
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !27
  %i.fu = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.ft) #16
  %i.fv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %i.fu) #16 ; 0 uses
  %indvars.iv.next1337 = add nuw nsw i64 %indvars.iv1336, 1 ; 2 uses
  %.val963 = load i32, ptr %i.ez, align 4, !tbaa !29 ; 2 uses
  %i.fw = sext i32 %.val963 to i64
  %i.fx = icmp slt i64 %indvars.iv.next1337, %i.fw
  br i1 %i.fx, label %bb.ar, label %._crit_edge1247, !llvm.loop !48

._crit_edge1247:                                  ; preds = %Wlc_ObjFaninId.exit, %Wlc_ObjFaninId0.exit1018
  %i.fy = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.ew) #16
  %i.fz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %i.fy) #16 ; 0 uses
  %i.ga = load ptr, ptr %i.bl, align 8, !tbaa !73 ; 2 uses
  %.not872 = icmp eq ptr %i.ga, null
  br i1 %.not872, label %Abc_TtPrintHexArrayRev.exit, label %bb.at

bb.at:                                            ; preds = %._crit_edge1247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %.val948 = load ptr, ptr %i.bi, align 8, !tbaa !25
  %i.gb = ptrtoint ptr %i.cd to i64
  %i.gc = ptrtoint ptr %.val948 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = sdiv exact i64 %i.gd, 24
  %i.gf = getelementptr i8, ptr %i.ga, i64 8
  %.val979 = load ptr, ptr %i.gf, align 8, !tbaa !76
  %i.gg = shl i64 %i.ge, 32
  %i.gh = ashr exact i64 %i.gg, 29
  %i.gi = getelementptr inbounds i8, ptr %.val979, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !11
  store i64 %i.gj, ptr %i.b, align 8, !tbaa !11
  %fwrite873 = call i64 @fwrite(ptr nonnull @.str.35, i64 11, i64 1, ptr %0) ; 0 uses
  %.val11.i = load i32, ptr %i.ez, align 4, !tbaa !29 ; 8 uses
  %i.gk = icmp sgt i32 %.val11.i, 0
  br i1 %i.gk, label %.lr.ph.i1020, label %Wlc_ObjFaninBitNum.exit

.lr.ph.i1020:                                     ; preds = %bb.at
  %i.gl = icmp samesign ugt i32 %.val11.i, 2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 3 uses
  %.val.i1021 = load ptr, ptr %i.bi, align 8, !tbaa !25 ; 8 uses
  br i1 %i.gl, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i1020
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !26 ; 3 uses
  %wide.trip.count35.i = zext nneg i32 %.val11.i to i64 ; 2 uses
  %xtraiter1410 = and i64 %wide.trip.count35.i, 1
  %unroll_iter1414 = and i64 %wide.trip.count35.i, 2147483646
  br label %Wlc_ObjHasArray.exit.thread.i.i.us.i

Wlc_ObjHasArray.exit.thread.i.i.us.i:             ; preds = %Wlc_ObjHasArray.exit.thread.i.i.us.i, %.lr.ph.split.us.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph.split.us.i ], [ %indvars.iv.next33.i.1, %Wlc_ObjHasArray.exit.thread.i.i.us.i ] ; 3 uses
  %.013.us.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %i.hi, %Wlc_ObjHasArray.exit.thread.i.i.us.i ]
  %niter1415 = phi i64 [ 0, %.lr.ph.split.us.i ], [ %niter1415.next.1, %Wlc_ObjHasArray.exit.thread.i.i.us.i ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv32.i
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !27
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [24 x i8], ptr %.val.i1021, i64 %i.gq ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  %.val9.us.i = load i32, ptr %i.gs, align 8, !tbaa !30
  %i.gt = getelementptr i8, ptr %i.gr, i64 12
  %.val10.us.i = load i32, ptr %i.gt, align 4, !tbaa !31
  %i.gu = sub nsw i32 %.val9.us.i, %.val10.us.i
  %i.gv = call i32 @llvm.abs.i32(i32 %i.gu, i1 true)
  %i.gw = add nuw nsw i32 %.013.us.i, 1
  %i.gx = add nuw nsw i32 %i.gw, %i.gv
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv32.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !27
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [24 x i8], ptr %.val.i1021, i64 %i.hb ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 8
  %.val9.us.i.1 = load i32, ptr %i.hd, align 8, !tbaa !30
  %i.he = getelementptr i8, ptr %i.hc, i64 12
  %.val10.us.i.1 = load i32, ptr %i.he, align 4, !tbaa !31
  %i.hf = sub nsw i32 %.val9.us.i.1, %.val10.us.i.1
  %i.hg = call i32 @llvm.abs.i32(i32 %i.hf, i1 true)
  %i.hh = add nuw nsw i32 %i.gx, 1
  %i.hi = add nuw nsw i32 %i.hh, %i.hg            ; 3 uses
  %indvars.iv.next33.i.1 = add nuw nsw i64 %indvars.iv32.i, 2 ; 2 uses
  %niter1415.next.1 = add nuw nsw i64 %niter1415, 2 ; 2 uses
  %niter1415.ncmp.1 = icmp eq i64 %niter1415.next.1, %unroll_iter1414
  br i1 %niter1415.ncmp.1, label %Wlc_ObjFaninBitNum.exit.loopexit.unr-lcssa, label %Wlc_ObjHasArray.exit.thread.i.i.us.i, !llvm.loop !1

.lr.ph.split.i:                                   ; preds = %.lr.ph.i1020
  %i.hj = load i16, ptr %i.cd, align 8
  %i.hk = and i16 %i.hj, 63
  switch i16 %i.hk, label %Wlc_ObjFaninId.exit.i.a [
    i16 6, label %.lr.ph.split.split.us.i
    i16 22, label %.lr.ph.split.split.us.i
  ]

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %.lr.ph.split.i
  %3 = load ptr, ptr %i.gm, align 8, !tbaa !26    ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.val11.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %4 = icmp eq i32 %.val11.i, 1
  br i1 %4, label %Wlc_ObjHasArray.exit.thread.i.i.us16.i.epil.preheader, label %.lr.ph.split.split.us.i.new

.lr.ph.split.split.us.i.new:                      ; preds = %.lr.ph.split.split.us.i
  %unroll_iter = and i64 %wide.trip.count.i, 2
  br label %Wlc_ObjHasArray.exit.thread.i.i.us16.i

Wlc_ObjHasArray.exit.thread.i.i.us16.i:           ; preds = %Wlc_ObjHasArray.exit.thread.i.i.us16.i, %.lr.ph.split.split.us.i.new
  %indvars.iv.i1022 = phi i64 [ 0, %.lr.ph.split.split.us.i.new ], [ %indvars.iv.next.i1023.1, %Wlc_ObjHasArray.exit.thread.i.i.us16.i ] ; 3 uses
  %.013.us14.i = phi i32 [ 0, %.lr.ph.split.split.us.i.new ], [ %i.hs, %Wlc_ObjHasArray.exit.thread.i.i.us16.i ]
  %niter = phi i64 [ 0, %.lr.ph.split.split.us.i.new ], [ %niter.next.1, %Wlc_ObjHasArray.exit.thread.i.i.us16.i ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i1022
  %6 = load i32, ptr %5, align 4, !tbaa !27
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [24 x i8], ptr %.val.i1021, i64 %7 ; 2 uses
  %9 = getelementptr i8, ptr %8, i64 8
  %.val9.us18.i = load i32, ptr %9, align 8, !tbaa !30
  %10 = getelementptr i8, ptr %8, i64 12
  %.val10.us19.i = load i32, ptr %10, align 4, !tbaa !31
  %11 = sub nsw i32 %.val9.us18.i, %.val10.us19.i
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = add nuw nsw i32 %.013.us14.i, 1
  %14 = add nuw nsw i32 %13, %12
  %15 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i1022
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.hl = load i32, ptr %16, align 4, !tbaa !27
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [24 x i8], ptr %.val.i1021, i64 %i.hm ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 8
  %.val9.us18.i.1.a = load i32, ptr %i.ho, align 8, !tbaa !30
  %i.hp = getelementptr i8, ptr %i.hn, i64 12
  %.val10.us19.i.1.a = load i32, ptr %i.hp, align 4, !tbaa !31
  %i.hq = sub nsw i32 %.val9.us18.i.1.a, %.val10.us19.i.1.a
  %i.hr = call i32 @llvm.abs.i32(i32 %i.hq, i1 true)
  %17 = add nuw nsw i32 %14, 1
  %i.hs = add nuw nsw i32 %17, %i.hr              ; 3 uses
  %indvars.iv.next.i1023.1 = add nuw nsw i64 %indvars.iv.i1022, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Wlc_ObjFaninBitNum.exit.loopexit1403.unr-lcssa, label %Wlc_ObjHasArray.exit.thread.i.i.us16.i, !llvm.loop !1

Wlc_ObjFaninId.exit.i.a:                          ; preds = %.lr.ph.split.i
  %i.ht = load i32, ptr %i.gm, align 8, !tbaa !27
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [24 x i8], ptr %.val.i1021, i64 %i.hu ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 8
  %.val9.i.a = load i32, ptr %i.hw, align 8, !tbaa !30
  %i.hx = getelementptr i8, ptr %i.hv, i64 12
  %.val10.i.a = load i32, ptr %i.hx, align 4, !tbaa !31
  %i.hy = sub nsw i32 %.val9.i.a, %.val10.i.a
  %i.hz = call i32 @llvm.abs.i32(i32 %i.hy, i1 true) ; 2 uses
  %i.ia = add nuw nsw i32 %i.hz, 1
  %exitcond31.not.i = icmp eq i32 %.val11.i, 1
  br i1 %exitcond31.not.i, label %Wlc_ObjFaninBitNum.exit, label %Wlc_ObjFaninId.exit.i.1.a

Wlc_ObjFaninId.exit.i.1.a:                        ; preds = %Wlc_ObjFaninId.exit.i.a
  %18 = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %i.ib = load i32, ptr %18, align 4, !tbaa !27
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [24 x i8], ptr %.val.i1021, i64 %i.ic ; 2 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 8
  %.val9.i.1.a = load i32, ptr %i.ie, align 8, !tbaa !30
  %i.if = getelementptr i8, ptr %i.id, i64 12
  %.val10.i.1.a = load i32, ptr %i.if, align 4, !tbaa !31
  %i.ig = sub nsw i32 %.val9.i.1.a, %.val10.i.1.a
  %i.ih = call i32 @llvm.abs.i32(i32 %i.ig, i1 true)
  %i.ii = add nuw nsw i32 %i.hz, 2
  %19 = add nuw nsw i32 %i.ii, %i.ih
  br label %Wlc_ObjFaninBitNum.exit

Wlc_ObjFaninBitNum.exit.loopexit.unr-lcssa:       ; preds = %Wlc_ObjHasArray.exit.thread.i.i.us.i
  %lcmp.mod1411.not = icmp eq i64 %xtraiter1410, 0
  br i1 %lcmp.mod1411.not, label %Wlc_ObjFaninBitNum.exit, label %Wlc_ObjHasArray.exit.thread.i.i.us.i.epil.preheader.a

Wlc_ObjHasArray.exit.thread.i.i.us.i.epil.preheader.a: ; preds = %Wlc_ObjFaninBitNum.exit.loopexit.unr-lcssa
  %lcmp.mod1413 = trunc i32 %.val11.i to i1
  call void @llvm.assume(i1 %lcmp.mod1413)
  %20 = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next33.i.1
  %i.ij = load i32, ptr %20, align 4, !tbaa !27
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [24 x i8], ptr %.val.i1021, i64 %i.ik ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 8
  %.val9.us.i.epil.a = load i32, ptr %i.im, align 8, !tbaa !30
  %i.in = getelementptr i8, ptr %i.il, i64 12
  %.val10.us.i.epil.a = load i32, ptr %i.in, align 4, !tbaa !31
  %i.io = sub nsw i32 %.val9.us.i.epil.a, %.val10.us.i.epil.a
  %i.ip = call i32 @llvm.abs.i32(i32 %i.io, i1 true)
  %i.iq = add nuw nsw i32 %i.hi, 1
  %i.ir = add nuw nsw i32 %i.iq, %i.ip
  br label %Wlc_ObjFaninBitNum.exit

Wlc_ObjFaninBitNum.exit.loopexit1403.unr-lcssa:   ; preds = %Wlc_ObjHasArray.exit.thread.i.i.us16.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Wlc_ObjFaninBitNum.exit, label %Wlc_ObjHasArray.exit.thread.i.i.us16.i.epil.preheader

Wlc_ObjHasArray.exit.thread.i.i.us16.i.epil.preheader: ; preds = %Wlc_ObjFaninBitNum.exit.loopexit1403.unr-lcssa, %.lr.ph.split.split.us.i
  %indvars.iv.i1022.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.i ], [ %indvars.iv.next.i1023.1, %Wlc_ObjFaninBitNum.exit.loopexit1403.unr-lcssa ]
  %.013.us14.i.epil.init = phi i32 [ 0, %.lr.ph.split.split.us.i ], [ %i.hs, %Wlc_ObjFaninBitNum.exit.loopexit1403.unr-lcssa ]
  %lcmp.mod1409 = trunc i32 %.val11.i to i1
  call void @llvm.assume(i1 %lcmp.mod1409)
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i1022.epil.init
  %i.it = load i32, ptr %i.is, align 4, !tbaa !27
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [24 x i8], ptr %.val.i1021, i64 %i.iu ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 8
  %.val9.us18.i.epil = load i32, ptr %i.iw, align 8, !tbaa !30
  %i.ix = getelementptr i8, ptr %i.iv, i64 12
  %.val10.us19.i.epil = load i32, ptr %i.ix, align 4, !tbaa !31
  %i.iy = sub nsw i32 %.val9.us18.i.epil, %.val10.us19.i.epil
  %i.iz = call i32 @llvm.abs.i32(i32 %i.iy, i1 true)
  %i.ja = add nuw nsw i32 %.013.us14.i.epil.init, 1
  %i.jb = add nuw nsw i32 %i.ja, %i.iz
  br label %Wlc_ObjFaninBitNum.exit

Wlc_ObjFaninBitNum.exit:                          ; preds = %Wlc_ObjHasArray.exit.thread.i.i.us16.i.epil.preheader, %Wlc_ObjFaninBitNum.exit.loopexit1403.unr-lcssa, %Wlc_ObjFaninId.exit.i.a, %Wlc_ObjFaninId.exit.i.1.a, %Wlc_ObjHasArray.exit.thread.i.i.us.i.epil.preheader.a, %Wlc_ObjFaninBitNum.exit.loopexit.unr-lcssa, %bb.at
  %.0.lcssa.i = phi i32 [ 0, %bb.at ], [ %19, %Wlc_ObjFaninId.exit.i.1.a ], [ %i.ir, %Wlc_ObjHasArray.exit.thread.i.i.us.i.epil.preheader.a ], [ %i.hi, %Wlc_ObjFaninBitNum.exit.loopexit.unr-lcssa ], [ %i.ia, %Wlc_ObjFaninId.exit.i.a ], [ %i.hs, %Wlc_ObjFaninBitNum.exit.loopexit1403.unr-lcssa ], [ %i.jb, %Wlc_ObjHasArray.exit.thread.i.i.us16.i.epil.preheader ]
  call void @Extra_PrintHex(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %.0.lcssa.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %Abc_TtPrintHexArrayRev.exit

bb.au:                                            ; preds = %bb.ak
  %i.jc = trunc nuw nsw i64 %indvars.iv1342 to i32
  %i.jd = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.jc) #16
  %.val937 = load i32, ptr %i.ce, align 8, !tbaa !30
  %.val938 = load i32, ptr %i.cl, align 4, !tbaa !31
  %i.je = sub nsw i32 %.val937, %.val938
  %i.jf = call i32 @llvm.abs.i32(i32 %i.je, i1 true)
  %i.jg = add nuw nsw i32 %i.jf, 1
  %.val975 = load i16, ptr %i.cd, align 8
  %i.jh = and i16 %.val975, 64
  %.not868 = icmp eq i16 %i.jh, 0
  %i.ji = select i1 %.not868, ptr @.str.14, ptr @.str.37
  %i.jj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef %i.jd, i32 noundef %i.jg, ptr noundef nonnull %i.ji) #16 ; 0 uses
  %i.jk = load i16, ptr %i.cd, align 8            ; 2 uses
  %i.jl = and i16 %i.jk, 2048
  %.not869 = icmp eq i16 %i.jl, 0
  br i1 %.not869, label %bb.av, label %.preheader1194

.preheader1194:                                   ; preds = %bb.au, %.preheader1194
  %.17101242 = phi i32 [ %i.jm, %.preheader1194 ], [ 0, %bb.au ]
  %fputc871 = call i32 @fputc(i32 120, ptr %0)    ; 0 uses
  %i.jm = add nuw nsw i32 %.17101242, 1           ; 2 uses
  %.val935 = load i32, ptr %i.ce, align 8, !tbaa !30
  %.val936 = load i32, ptr %i.cl, align 4, !tbaa !31
  %i.jn = sub nsw i32 %.val935, %.val936
  %i.jo = call i32 @llvm.abs.i32(i32 %i.jn, i1 true)
  %i.jp = add nuw nsw i32 %i.jo, 4
  %i.jq = lshr i32 %i.jp, 2
  %i.jr = icmp samesign ult i32 %i.jm, %i.jq
  br i1 %i.jr, label %.preheader1194, label %Abc_TtPrintHexArrayRev.exit, !llvm.loop !49

bb.av:                                            ; preds = %bb.au
  %i.js = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !29
  %i.ju = icmp ugt i32 %i.jt, 2
  br i1 %i.ju, label %Wlc_ObjHasArray.exit.thread.i.i1025, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jv = and i16 %i.jk, 63
  switch i16 %i.jv, label %bb.ax [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1025
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1025
  ]

Wlc_ObjHasArray.exit.thread.i.i1025:              ; preds = %bb.aw, %bb.aw, %bb.av
  %i.jw = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !26
  br label %Wlc_ObjConstValue.exit

bb.ax:                                            ; preds = %bb.aw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  br label %Wlc_ObjConstValue.exit

Wlc_ObjConstValue.exit:                           ; preds = %Wlc_ObjHasArray.exit.thread.i.i1025, %bb.ax
  %i.jz = phi ptr [ %i.jx, %Wlc_ObjHasArray.exit.thread.i.i1025 ], [ %i.jy, %bb.ax ]
  %.val933 = load i32, ptr %i.ce, align 8, !tbaa !30
  %.val934 = load i32, ptr %i.cl, align 4, !tbaa !31
  %i.ka = sub nsw i32 %.val933, %.val934
  %i.kb = call i32 @llvm.abs.i32(i32 %i.ka, i1 true)
  %i.kc = add nuw nsw i32 %i.kb, 4
  %i.kd = lshr i32 %i.kc, 2
  br label %.lr.ph.i1026

.lr.ph.i1026:                                     ; preds = %Wlc_ObjConstValue.exit, %.lr.ph.i1026
  %.0.in5.i = phi i32 [ %.0.i, %.lr.ph.i1026 ], [ %i.kd, %Wlc_ObjConstValue.exit ] ; 2 uses
  %.0.i = add nsw i32 %.0.in5.i, -1               ; 3 uses
  %i.ke = lshr i32 %.0.i, 4
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kf
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !11
  %i.ki = shl nuw nsw i32 %.0.i, 2
  %i.kj = and i32 %i.ki, 60
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = lshr i64 %i.kh, %i.kk
  %i.km = trunc i64 %i.kl to i32
  %i.kn = and i32 %i.km, 15                       ; 3 uses
  %i.ko = icmp samesign ult i32 %i.kn, 10
  %i.kp = or disjoint i32 %i.kn, 48
  %i.kq = add nuw nsw i32 %i.kn, 87
  %.0.i.i = select i1 %i.ko, i32 %i.kp, i32 %i.kq
  %fputc.i = call i32 @fputc(i32 %.0.i.i, ptr %0) ; 0 uses
  %i.kr = icmp samesign ugt i32 %.0.in5.i, 1
  br i1 %i.kr, label %.lr.ph.i1026, label %Abc_TtPrintHexArrayRev.exit, !llvm.loop !50

bb.ay:                                            ; preds = %bb.ak, %bb.ak
  %i.ks = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 4 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !29
  %i.ku = icmp ugt i32 %i.kt, 2
  %i.kv = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  br i1 %i.ku, label %Wlc_ObjHasArray.exit.thread.i.i.i1027, label %Wlc_ObjFanin1.exit1030

Wlc_ObjHasArray.exit.thread.i.i.i1027:            ; preds = %bb.ay
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !26
  br label %Wlc_ObjFanin1.exit1030

Wlc_ObjFanin1.exit1030:                           ; preds = %bb.ay, %Wlc_ObjHasArray.exit.thread.i.i.i1027
  %i.kx = phi ptr [ %i.kw, %Wlc_ObjHasArray.exit.thread.i.i.i1027 ], [ %i.kv, %bb.ay ]
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !27
  %.val.i1029 = load ptr, ptr %i.bi, align 8, !tbaa !25
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [24 x i8], ptr %.val.i1029, i64 %i.la ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !29
  %i.le = icmp ugt i32 %i.ld, 2
  br i1 %i.le, label %Wlc_ObjHasArray.exit.thread.i.i1031, label %bb.az

bb.az:                                            ; preds = %Wlc_ObjFanin1.exit1030
  %i.lf = load i16, ptr %i.lb, align 8
  %i.lg = and i16 %i.lf, 63
  switch i16 %i.lg, label %bb.ba [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1031
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1031
  ]

Wlc_ObjHasArray.exit.thread.i.i1031:              ; preds = %bb.az, %bb.az, %Wlc_ObjFanin1.exit1030
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !26
  br label %Wlc_ObjConstValue.exit1032

bb.ba:                                            ; preds = %bb.az
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  br label %Wlc_ObjConstValue.exit1032

Wlc_ObjConstValue.exit1032:                       ; preds = %Wlc_ObjHasArray.exit.thread.i.i1031, %bb.ba
  %i.lk = phi ptr [ %i.li, %Wlc_ObjHasArray.exit.thread.i.i1031 ], [ %i.lj, %bb.ba ]
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !27 ; 3 uses
  %.val931 = load i32, ptr %i.ce, align 8, !tbaa !30
  %.val932 = load i32, ptr %i.cl, align 4, !tbaa !31
  %i.lm = sub nsw i32 %.val931, %.val932
  %i.ln = call i32 @llvm.abs.i32(i32 %i.lm, i1 true)
  %reass.sub = sub i32 %i.ln, %i.ll
  %i.lo = add i32 %reass.sub, 1                   ; 2 uses
  %i.lp = trunc nuw nsw i64 %indvars.iv1342 to i32
  %i.lq = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.lp) #16
  %i.lr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %i.lq) #16 ; 0 uses
  %i.ls = load i16, ptr %i.cd, align 8
  %i.lt = and i16 %i.ls, 63                       ; 2 uses
  %i.lu = icmp eq i16 %i.lt, 13
  %i.lv = load i32, ptr %i.ks, align 4, !tbaa !29
  %i.lw = icmp ugt i32 %i.lv, 2                   ; 2 uses
  br i1 %i.lu, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %Wlc_ObjConstValue.exit1032
  %i.lx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  br i1 %i.lw, label %Wlc_ObjHasArray.exit.thread.i.i1033, label %Wlc_ObjFaninId0.exit1034

Wlc_ObjHasArray.exit.thread.i.i1033:              ; preds = %bb.bb
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !26
  br label %Wlc_ObjFaninId0.exit1034

Wlc_ObjFaninId0.exit1034:                         ; preds = %bb.bb, %Wlc_ObjHasArray.exit.thread.i.i1033
  %i.lz = phi ptr [ %i.ly, %Wlc_ObjHasArray.exit.thread.i.i1033 ], [ %i.lx, %bb.bb ]
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !27
  %i.mb = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.ma) #16
  %i.mc = load i32, ptr %i.ks, align 4, !tbaa !29
  %i.md = icmp ugt i32 %i.mc, 2
  br i1 %i.md, label %Wlc_ObjHasArray.exit.thread.i.i1035, label %bb.bc

bb.bc:                                            ; preds = %Wlc_ObjFaninId0.exit1034
  %i.me = load i16, ptr %i.cd, align 8
  %i.mf = and i16 %i.me, 63
  switch i16 %i.mf, label %bb.bd [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1035
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1035
  ]

Wlc_ObjHasArray.exit.thread.i.i1035:              ; preds = %bb.bc, %bb.bc, %Wlc_ObjFaninId0.exit1034
  %i.mg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !26
  br label %Wlc_ObjFaninId0.exit1036

bb.bd:                                            ; preds = %bb.bc
  %i.mi = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  br label %Wlc_ObjFaninId0.exit1036

Wlc_ObjFaninId0.exit1036:                         ; preds = %Wlc_ObjHasArray.exit.thread.i.i1035, %bb.bd
  %i.mj = phi ptr [ %i.mh, %Wlc_ObjHasArray.exit.thread.i.i1035 ], [ %i.mi, %bb.bd ]
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !27
  %i.ml = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.mk) #16
  %i.mm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %i.mb, i32 noundef %i.ll, ptr noundef %i.ml, i32 noundef %i.lo) #16 ; 0 uses
  br label %Abc_TtPrintHexArrayRev.exit

bb.be:                                            ; preds = %Wlc_ObjConstValue.exit1032
  br i1 %i.lw, label %Wlc_ObjHasArray.exit.thread.i.i1037, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  switch i16 %i.lt, label %bb.bg [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1037
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1037
  ]

Wlc_ObjHasArray.exit.thread.i.i1037:              ; preds = %bb.bf, %bb.bf, %bb.be
  %i.mn = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !26
  br label %Wlc_ObjFaninId0.exit1038
end_hunk_0
