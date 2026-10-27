Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/shell?download=true
inline.NumInlined: 40
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@callback:bb.a
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.155, i64 5, i64 1, ptr %i.ge) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 1 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !19  ; 2 uses
  %.not.i = icmp eq i8 %i.gq, 0
  br i1 %.not.i, label %output_html_string.exit.loopexit, label %.preheader.i, !llvm.loop !78

output_html_string.exit.loopexit:                 ; preds = %bb.ay, %bb.av
  %.pre467 = load ptr, ptr %i.fz, align 8, !tbaa !23
  br label %output_html_string.exit

output_html_string.exit:                          ; preds = %output_html_string.exit.loopexit, %bb.ar
  %i.gr = phi ptr [ %.pre467, %output_html_string.exit.loopexit ], [ %i.ge, %bb.ar ]
  %fwrite288 = tail call i64 @fwrite(ptr nonnull @.str.150, i64 6, i64 1, ptr %i.gr) ; 0 uses
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 1 ; 2 uses
  %exitcond431.not = icmp eq i64 %indvars.iv.next428, %wide.trip.count430
  br i1 %exitcond431.not, label %._crit_edge372, label %bb.ar, !llvm.loop !79

._crit_edge372:                                   ; preds = %output_html_string.exit, %bb.aq
  %i.gs = load ptr, ptr %i.fz, align 8, !tbaa !23
  %fwrite285 = tail call i64 @fwrite(ptr nonnull @.str.148, i64 6, i64 1, ptr %i.gs) ; 0 uses
  br label %.loopexit

bb.az:                                            ; preds = %bb.a
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !35 ; 2 uses
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !35
  %i.gw = icmp eq i32 %i.gu, 0
  br i1 %i.gw, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !24
  %.not272 = icmp eq i32 %i.gy, 0
  br i1 %.not272, label %bb.bc, label %.preheader344

.preheader344:                                    ; preds = %bb.ba
  %i.gz = icmp sgt i32 %1, 0
  br i1 %i.gz, label %.lr.ph360, label %._crit_edge361

.lr.ph360:                                        ; preds = %.preheader344
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count415 = zext nneg i32 %1 to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph360, %bb.bb
  %indvars.iv412 = phi i64 [ 0, %.lr.ph360 ], [ %indvars.iv.next413, %bb.bb ] ; 2 uses
  %i.hc = load ptr, ptr %i.ha, align 8, !tbaa !23
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv412
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !13 ; 2 uses
  %.not279 = icmp eq ptr %i.he, null
  %spec.select310 = select i1 %.not279, ptr @.str.113, ptr %i.he
  tail call fastcc void @output_c_string(ptr noundef %i.hc, ptr noundef nonnull %spec.select310)
  %i.hf = load ptr, ptr %i.ha, align 8, !tbaa !23
  %fputs280 = tail call i32 @fputs(ptr nonnull %i.hb, ptr %i.hf) ; 0 uses
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1 ; 2 uses
  %exitcond416.not = icmp eq i64 %indvars.iv.next413, %wide.trip.count415
  br i1 %exitcond416.not, label %._crit_edge361, label %bb.bb, !llvm.loop !80

._crit_edge361:                                   ; preds = %bb.bb, %.preheader344
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !23
  %fputc274 = tail call i32 @fputc(i32 10, ptr %i.hh) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge361, %bb.ba, %bb.az
  %i.hi = icmp eq ptr %2, null
  br i1 %i.hi, label %.loopexit, label %.preheader343

.preheader343:                                    ; preds = %bb.bc
  %i.hj = icmp sgt i32 %1, 0
  br i1 %i.hj, label %.lr.ph363, label %._crit_edge364

.lr.ph363:                                        ; preds = %.preheader343
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count420 = zext nneg i32 %1 to i64
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph363, %bb.bd
  %indvars.iv417 = phi i64 [ 0, %.lr.ph363 ], [ %indvars.iv.next418, %bb.bd ] ; 2 uses
  %i.hn = load ptr, ptr %i.hk, align 8, !tbaa !23
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv417
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !13 ; 2 uses
  %.not277 = icmp eq ptr %i.hp, null
  %i.hq = select i1 %.not277, ptr %i.hl, ptr %i.hp
  tail call fastcc void @output_c_string(ptr noundef %i.hn, ptr noundef nonnull %i.hq)
  %i.hr = load ptr, ptr %i.hk, align 8, !tbaa !23
  %fputs278 = tail call i32 @fputs(ptr nonnull %i.hm, ptr %i.hr) ; 0 uses
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count420
  br i1 %exitcond421.not, label %._crit_edge364, label %bb.bd, !llvm.loop !81

._crit_edge364:                                   ; preds = %bb.bd, %.preheader343
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !23
  %fputc276 = tail call i32 @fputc(i32 10, ptr %i.ht) ; 0 uses
  br label %.loopexit

bb.be:                                            ; preds = %bb.a
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !35 ; 2 uses
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !35
  %i.hx = icmp eq i32 %i.hv, 0
  br i1 %i.hx, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !24
  %.not267 = icmp eq i32 %i.hz, 0
  br i1 %.not267, label %bb.bh, label %.preheader346

.preheader346:                                    ; preds = %bb.bf
  %i.ia = icmp sgt i32 %1, 0
  br i1 %i.ia, label %.lr.ph354, label %._crit_edge355

.lr.ph354:                                        ; preds = %.preheader346
  %i.ib = add nsw i32 %1, -1
  %i.ic = zext nneg i32 %i.ib to i64
  %wide.trip.count405 = zext nneg i32 %1 to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph354, %bb.bg
  %indvars.iv402 = phi i64 [ 0, %.lr.ph354 ], [ %indvars.iv.next403, %bb.bg ] ; 3 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv402
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !13 ; 2 uses
  %.not271 = icmp eq ptr %i.ie, null
  %spec.select311 = select i1 %.not271, ptr @.str.113, ptr %i.ie
  %i.if = icmp samesign ult i64 %indvars.iv402, %i.ic
  %i.ig = zext i1 %i.if to i32
  tail call fastcc void @output_csv(ptr noundef nonnull %0, ptr noundef nonnull %spec.select311, i32 noundef %i.ig)
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %exitcond406.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count405
  br i1 %exitcond406.not, label %._crit_edge355, label %bb.bg, !llvm.loop !82

._crit_edge355:                                   ; preds = %bb.bg, %.preheader346
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !23
  %fputc = tail call i32 @fputc(i32 10, ptr %i.ii) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge355, %bb.bf, %bb.be
  %i.ij = icmp eq ptr %2, null
  br i1 %i.ij, label %.loopexit, label %.preheader345

.preheader345:                                    ; preds = %bb.bh
  %i.ik = icmp sgt i32 %1, 0
  br i1 %i.ik, label %.lr.ph357, label %._crit_edge358

.lr.ph357:                                        ; preds = %.preheader345
  %i.il = add nsw i32 %1, -1
  %i.im = zext nneg i32 %i.il to i64
  %wide.trip.count410 = zext nneg i32 %1 to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph357, %bb.bi
  %indvars.iv407 = phi i64 [ 0, %.lr.ph357 ], [ %indvars.iv.next408, %bb.bi ] ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv407
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !13
  %i.ip = icmp samesign ult i64 %indvars.iv407, %i.im
  %i.iq = zext i1 %i.ip to i32
  tail call fastcc void @output_csv(ptr noundef nonnull %0, ptr noundef %i.io, i32 noundef %i.iq)
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %exitcond411.not = icmp eq i64 %indvars.iv.next408, %wide.trip.count410
  br i1 %exitcond411.not, label %._crit_edge358, label %bb.bi, !llvm.loop !83

._crit_edge358:                                   ; preds = %bb.bi, %.preheader345
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !23
  %fputc270 = tail call i32 @fputc(i32 10, ptr %i.is) ; 0 uses
  br label %.loopexit

bb.bj:                                            ; preds = %bb.a
  %i.it = icmp eq ptr %2, null
  br i1 %i.it, label %.loopexit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !23
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !27
  %i.iy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iv, ptr noundef nonnull @.str.151, ptr noundef %i.ix) #22 ; 0 uses
  %i.iz = icmp sgt i32 %1, 0
  br i1 %i.iz, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bk
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %output_quoted_string.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %output_quoted_string.exit ] ; 3 uses
  %.not = icmp eq i64 %indvars.iv, 0
  %i.ja = select i1 %.not, ptr @.str.113, ptr @.str.9 ; 4 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !13 ; 6 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph
  %i.je = load ptr, ptr %i.iu, align 8, !tbaa !23
  %i.jf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.je, ptr noundef nonnull @.str.152, ptr noundef nonnull %i.ja) #22 ; 0 uses
  br label %output_quoted_string.exit

bb.bm:                                            ; preds = %.lr.ph
  %i.jg = load i8, ptr %i.jc, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.jg, label %bb.bo [
    i8 45, label %bb.bn
    i8 43, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm, %bb.bm
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 1 ; 2 uses
  %.pre.i312 = load i8, ptr %i.jh, align 1, !tbaa !19
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ji = phi i8 [ %.pre.i312, %bb.bn ], [ %i.jg, %bb.bm ]
  %.028.i = phi ptr [ %i.jh, %bb.bn ], [ %i.jc, %bb.bm ]
  %i.jj = tail call ptr @__ctype_b_loc() #29
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !30 ; 6 uses
  %i.jl = sext i8 %i.ji to i64
  %i.jm = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.jl
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !32
  %i.jo = and i16 %i.jn, 2048
  %.not.i313 = icmp eq i16 %i.jo, 0
  br i1 %.not.i313, label %isNumber.exit.thread, label %.preheader3.i

.preheader3.i:                                    ; preds = %bb.bo, %.preheader3.i
  %.028.pn.i = phi ptr [ %.1.i, %.preheader3.i ], [ %.028.i, %bb.bo ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.028.pn.i, i64 1 ; 3 uses
  %i.jp = load i8, ptr %.1.i, align 1, !tbaa !19  ; 3 uses
  %i.jq = sext i8 %i.jp to i64
  %i.jr = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !32
  %i.jt = and i16 %i.js, 2048
  %.not35.i = icmp eq i16 %i.jt, 0
  br i1 %.not35.i, label %bb.bp, label %.preheader3.i, !llvm.loop !84

bb.bp:                                            ; preds = %.preheader3.i
  %i.ju = icmp eq i8 %i.jp, 46
  br i1 %i.ju, label %bb.bq, label %.loopexit2.i

bb.bq:                                            ; preds = %bb.bp
  %i.jv = getelementptr inbounds nuw i8, ptr %.028.pn.i, i64 2 ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !19
  %i.jx = sext i8 %i.jw to i64
  %i.jy = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.jx
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !32
  %i.ka = and i16 %i.jz, 2048
  %.not36.i = icmp eq i16 %i.ka, 0
  br i1 %.not36.i, label %isNumber.exit.thread, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.bq, %.preheader1.i
  %.2.i = phi ptr [ %i.kg, %.preheader1.i ], [ %i.jv, %bb.bq ] ; 3 uses
  %i.kb = load i8, ptr %.2.i, align 1, !tbaa !19  ; 2 uses
  %i.kc = sext i8 %i.kb to i64
  %i.kd = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.kc
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !32
  %i.kf = and i16 %i.ke, 2048
  %.not37.i = icmp eq i16 %i.kf, 0
  %i.kg = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  br i1 %.not37.i, label %.loopexit2.i, label %.preheader1.i, !llvm.loop !85

.loopexit2.i:                                     ; preds = %.preheader1.i, %bb.bp
  %i.kh = phi i8 [ %i.jp, %bb.bp ], [ %i.kb, %.preheader1.i ] ; 2 uses
  %.3.i = phi ptr [ %.1.i, %bb.bp ], [ %.2.i, %.preheader1.i ] ; 2 uses
  switch i8 %i.kh, label %isNumber.exit [
    i8 101, label %bb.br
    i8 69, label %bb.br
  ]

bb.br:                                            ; preds = %.loopexit2.i, %.loopexit2.i
  %i.ki = getelementptr inbounds nuw i8, ptr %.3.i, i64 1 ; 2 uses
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.kj, label %bb.bt [
    i8 43, label %bb.bs
    i8 45, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br
  %i.kk = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 2 uses
  %.pre4.i = load i8, ptr %i.kk, align 1, !tbaa !19
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.kl = phi i8 [ %.pre4.i, %bb.bs ], [ %i.kj, %bb.br ]
  %.4.i = phi ptr [ %i.kk, %bb.bs ], [ %i.ki, %bb.br ]
  %i.km = sext i8 %i.kl to i64
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !32
  %i.kp = and i16 %i.ko, 2048
  %.not38.i = icmp eq i16 %i.kp, 0
  br i1 %.not38.i, label %isNumber.exit.thread, label %.preheader.i314

.preheader.i314:                                  ; preds = %bb.bt, %.preheader.i314
  %.5.i = phi ptr [ %i.kv, %.preheader.i314 ], [ %.4.i, %bb.bt ] ; 2 uses
  %i.kq = load i8, ptr %.5.i, align 1, !tbaa !19  ; 2 uses
  %i.kr = sext i8 %i.kq to i64
  %i.ks = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.kr
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !32
  %i.ku = and i16 %i.kt, 2048
  %.not39.i = icmp eq i16 %i.ku, 0
  %i.kv = getelementptr inbounds nuw i8, ptr %.5.i, i64 1
  br i1 %.not39.i, label %isNumber.exit, label %.preheader.i314, !llvm.loop !86

isNumber.exit:                                    ; preds = %.preheader.i314, %.loopexit2.i
  %i.kw = phi i8 [ %i.kh, %.loopexit2.i ], [ %i.kq, %.preheader.i314 ]
  %.not332 = icmp eq i8 %i.kw, 0
  br i1 %.not332, label %bb.bu, label %isNumber.exit.thread

bb.bu:                                            ; preds = %isNumber.exit
  %i.kx = load ptr, ptr %i.iu, align 8, !tbaa !23
  %i.ky = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kx, ptr noundef nonnull @.str.144, ptr noundef nonnull %i.ja, ptr noundef nonnull %i.jc) #22 ; 0 uses
  br label %output_quoted_string.exit

isNumber.exit.thread:                             ; preds = %bb.bt, %bb.bo, %bb.bq, %isNumber.exit
  %4 = load i8, ptr %i.ja, align 1, !tbaa !19
  %.not266 = icmp eq i8 %4, 0
  br i1 %.not266, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %isNumber.exit.thread
  %i.kz = load ptr, ptr %i.iu, align 8, !tbaa !23
  %fputs = tail call i32 @fputs(ptr nonnull %i.ja, ptr %i.kz) ; 0 uses
  %.pre = load ptr, ptr %i.jb, align 8, !tbaa !13
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %isNumber.exit.thread
  %i.la = phi ptr [ %.pre, %bb.bv ], [ %i.jc, %isNumber.exit.thread ] ; 4 uses
  %i.lb = load ptr, ptr %i.iu, align 8, !tbaa !23 ; 6 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %bb.bw
  %indvars.iv.i315 = phi i64 [ %indvars.iv.next.i318, %bb.bz ], [ 0, %bb.bw ] ; 2 uses
  %.0.i316 = phi i32 [ %.1.i317, %bb.bz ], [ 0, %bb.bw ] ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 %indvars.iv.i315
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !19
  switch i8 %i.ld, label %bb.bz [
    i8 0, label %bb.ca
    i8 39, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx
  %i.le = add nsw i32 %.0.i316, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.1.i317 = phi i32 [ %i.le, %bb.by ], [ %.0.i316, %bb.bx ]
  %indvars.iv.next.i318 = add nuw nsw i64 %indvars.iv.i315, 1
  br label %bb.bx, !llvm.loop !87

bb.ca:                                            ; preds = %bb.bx
  %i.lf = icmp eq i32 %.0.i316, 0
  br i1 %i.lf, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.lg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lb, ptr noundef nonnull @.str.156, ptr noundef nonnull %i.la) #22 ; 0 uses
  br label %output_quoted_string.exit

bb.cc:                                            ; preds = %bb.ca
  %fputc.i = tail call i32 @fputc(i32 39, ptr %i.lb) ; 0 uses
  %i.lh = load i8, ptr %i.la, align 1, !tbaa !19  ; 2 uses
  %.not3441.i = icmp eq i8 %i.lh, 0
  br i1 %.not3441.i, label %.loopexit.i321, label %.preheader.i319

.preheader.i319:                                  ; preds = %bb.cc, %bb.cj
  %i.li = phi i8 [ %i.lp, %bb.cj ], [ %i.lh, %bb.cc ]
  %.03042.i = phi ptr [ %.131.i, %bb.cj ], [ %i.la, %bb.cc ] ; 5 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ce, %.preheader.i319
  %i.lj = phi i8 [ %i.li, %.preheader.i319 ], [ %.pre.i324, %bb.ce ] ; 2 uses
  %indvars.iv46.i = phi i64 [ 0, %.preheader.i319 ], [ %indvars.iv.next47.i, %bb.ce ] ; 4 uses
  switch i8 %i.lj, label %bb.ce [
    i8 0, label %.critedge.i320
    i8 39, label %.critedge.i320
  ]

bb.ce:                                            ; preds = %bb.cd
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %.phi.trans.insert.i323 = getelementptr inbounds nuw i8, ptr %.03042.i, i64 %indvars.iv.next47.i
  %.pre.i324 = load i8, ptr %.phi.trans.insert.i323, align 1, !tbaa !19
  br label %bb.cd, !llvm.loop !88

.critedge.i320:                                   ; preds = %bb.cd, %bb.cd
  %i.lk = getelementptr inbounds nuw i8, ptr %.03042.i, i64 %indvars.iv46.i
  %i.ll = trunc nuw nsw i64 %indvars.iv46.i to i32
  %i.lm = icmp eq i64 %indvars.iv46.i, 0
  br i1 %i.lm, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.critedge.i320
  %fwrite.i322 = tail call i64 @fwrite(ptr nonnull @.str.158, i64 2, i64 1, ptr %i.lb) ; 0 uses
  br label %bb.cj

bb.cg:                                            ; preds = %.critedge.i320
  %i.ln = icmp eq i8 %i.lj, 39
  br i1 %i.ln, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.lo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lb, ptr noundef nonnull @.str.159, i32 noundef %i.ll, ptr noundef nonnull %.03042.i) #22 ; 0 uses
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %fputs.i = tail call i32 @fputs(ptr nonnull %.03042.i, ptr %i.lb) ; 0 uses
  br label %.loopexit.i321

bb.cj:                                            ; preds = %bb.ch, %bb.cf
  %.030.pn.i = phi ptr [ %.03042.i, %bb.cf ], [ %i.lk, %bb.ch ]
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.pn.i, i64 1 ; 2 uses
  %i.lp = load i8, ptr %.131.i, align 1, !tbaa !19 ; 2 uses
  %.not34.i = icmp eq i8 %i.lp, 0
  br i1 %.not34.i, label %.loopexit.i321, label %.preheader.i319, !llvm.loop !89

.loopexit.i321:                                   ; preds = %bb.cj, %bb.ci, %bb.cc
  %fputc37.i = tail call i32 @fputc(i32 39, ptr %i.lb) ; 0 uses
  br label %output_quoted_string.exit

output_quoted_string.exit:                        ; preds = %.loopexit.i321, %bb.cb, %bb.bu, %bb.bl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %output_quoted_string.exit, %bb.bk
  %i.lq = load ptr, ptr %i.iu, align 8, !tbaa !23
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.153, i64 3, i64 1, ptr %i.lq) ; 0 uses
  br label %.loopexit

.loopexit.loopexit505.peel.begin:                 ; preds = %.lr.ph383, %._crit_edge468
  %i.lr = phi i64 [ 0, %.lr.ph383 ], [ %indvars.iv.next453, %._crit_edge468 ] ; 4 uses
  %i.ls = icmp samesign ult i64 %i.lr, 100
  br i1 %i.ls, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.loopexit.loopexit505.peel.begin
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.lr
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !10
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.loopexit.loopexit505.peel.begin
  %.0222.peel = phi i32 [ %i.lu, %bb.ck ], [ 10, %.loopexit.loopexit505.peel.begin ] ; 3 uses
  %i.lv = load i32, ptr %i.a, align 8, !tbaa !18
  %i.lw = icmp eq i32 %i.lv, 9
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.lr
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !13 ; 4 uses
  br i1 %i.lw, label %bb.cm, label %._crit_edge468.peel

bb.cm:                                            ; preds = %bb.cl
  %.not296.peel = icmp eq ptr %i.ly, null
  br i1 %.not296.peel, label %._crit_edge468.peel, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lz = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ly) #23
  %i.ma = sext i32 %.0222.peel to i64
  %spec.select308333.peel = tail call i64 @llvm.umax.i64(i64 %i.lz, i64 %i.ma)
  %spec.select308.peel = trunc i64 %spec.select308333.peel to i32
  br label %._crit_edge468.peel

._crit_edge468.peel:                              ; preds = %bb.cn, %bb.cm, %bb.cl
  %i.mb = phi ptr [ null, %bb.cm ], [ %i.ly, %bb.cn ], [ %i.ly, %bb.cl ] ; 2 uses
  %.1.peel = phi i32 [ %.0222.peel, %bb.cm ], [ %spec.select308.peel, %bb.cn ], [ %.0222.peel, %bb.cl ] ; 2 uses
  %i.mc = load ptr, ptr %i.db, align 8, !tbaa !23
  %.not297.peel = icmp eq ptr %i.mb, null
  %i.md = select i1 %.not297.peel, ptr %i.dc, ptr %i.mb
  %i.me = icmp eq i64 %i.lr, %i.de
  %i.mf = select i1 %i.me, ptr @.str.107, ptr @.str.114
  %i.mg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mc, ptr noundef nonnull @.str.142, i32 noundef %.1.peel, i32 noundef %.1.peel, ptr noundef nonnull %i.md, ptr noundef nonnull %i.mf) #22 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %bb.e, %._crit_edge468.peel, %.preheader338, %bb.d, %bb.b, %bb.bj, %bb.bh, %bb.bc, %bb.ap, %.loopexit342, %.loopexit337, %._crit_edge, %._crit_edge358, %._crit_edge364, %._crit_edge372, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @process_input(ptr noundef nonnull %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rusage, align 8             ; 4 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [100 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = icmp eq ptr %1, null                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %.outer

.outer:                                           ; preds = %_contains_semicolon.exit.thread, %bb.a
  %.097.ph = phi ptr [ %.07.i, %_contains_semicolon.exit.thread ], [ null, %bb.a ]
  %.093.ph = phi ptr [ %.396, %_contains_semicolon.exit.thread ], [ null, %bb.a ] ; 8 uses
  %.089.ph = phi i32 [ %.392, %_contains_semicolon.exit.thread ], [ 0, %bb.a ]
  %.086.ph = phi i32 [ %.3, %_contains_semicolon.exit.thread ], [ 0, %bb.a ]
  %.085.ph = phi i32 [ %i.u, %_contains_semicolon.exit.thread ], [ 0, %bb.a ]
  %.084.ph = phi i32 [ %.2152, %_contains_semicolon.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %.not10.i = icmp eq ptr %.093.ph, null          ; 5 uses
  br label %.outer171.outer

.outer171.outer:                                  ; preds = %bb.ay, %.outer
  %.097.ph172.ph = phi ptr [ %.07.i, %bb.ay ], [ %.097.ph, %.outer ]
  %.089.ph173.ph = phi i32 [ 0, %bb.ay ], [ %.089.ph, %.outer ]
  %.086.ph174.ph = phi i32 [ %i.dq, %bb.ay ], [ %.086.ph, %.outer ] ; 10 uses
  %.085.ph175.ph = phi i32 [ %i.u, %bb.ay ], [ %.085.ph, %.outer ]
  %i.g = icmp ne i32 %.086.ph174.ph, 0
  br label %.outer171

.outer171:                                        ; preds = %.outer171.outer, %bb.ax
  %.097.ph172 = phi ptr [ %.07.i, %bb.ax ], [ %.097.ph172.ph, %.outer171.outer ]
  %.089.ph173 = phi i32 [ %i.dp, %bb.ax ], [ %.089.ph173.ph, %.outer171.outer ] ; 8 uses
  %.085.ph175 = phi i32 [ %i.u, %bb.ax ], [ %.085.ph175.ph, %.outer171.outer ]
  br label %bb.b

bb.b:                                             ; preds = %.outer171, %_all_whitespace.exit
  %.097 = phi ptr [ %.07.i, %_all_whitespace.exit ], [ %.097.ph172, %.outer171 ] ; 2 uses
  %.085 = phi i32 [ %i.u, %_all_whitespace.exit ], [ %.085.ph175, %.outer171 ]
  %i.h = load i32, ptr @bail_on_error, align 4
  %i.i = icmp ne i32 %i.h, 0
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @stdin_is_interactive, align 4
end_hunk_0
