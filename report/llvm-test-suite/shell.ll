Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/shell?download=true
inline.NumInlined: 40
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@callback:bb.a
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.155, i64 5, i64 1, ptr %i.fu) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !19  ; 2 uses
  %.not.i = icmp eq i8 %i.gg, 0
  br i1 %.not.i, label %output_html_string.exit.loopexit, label %.preheader.i, !llvm.loop !78

output_html_string.exit.loopexit:                 ; preds = %bb.ax, %bb.au
  %.pre467 = load ptr, ptr %i.fp, align 8, !tbaa !23
  br label %output_html_string.exit

output_html_string.exit:                          ; preds = %output_html_string.exit.loopexit, %bb.aq
  %i.gh = phi ptr [ %.pre467, %output_html_string.exit.loopexit ], [ %i.fu, %bb.aq ]
  %fwrite288 = tail call i64 @fwrite(ptr nonnull @.str.150, i64 6, i64 1, ptr %i.gh) ; 0 uses
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 1 ; 2 uses
  %exitcond431.not = icmp eq i64 %indvars.iv.next428, %wide.trip.count430
  br i1 %exitcond431.not, label %._crit_edge372, label %bb.aq, !llvm.loop !79

._crit_edge372:                                   ; preds = %output_html_string.exit, %bb.ap
  %i.gi = load ptr, ptr %i.fp, align 8, !tbaa !23
  %fwrite285 = tail call i64 @fwrite(ptr nonnull @.str.148, i64 6, i64 1, ptr %i.gi) ; 0 uses
  br label %.loopexit

bb.ay:                                            ; preds = %bb.a
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !35 ; 2 uses
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !35
  %i.gm = icmp eq i32 %i.gk, 0
  br i1 %i.gm, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !24
  %.not272 = icmp eq i32 %i.go, 0
  br i1 %.not272, label %bb.bb, label %.preheader344

.preheader344:                                    ; preds = %bb.az
  %i.gp = icmp sgt i32 %1, 0
  br i1 %i.gp, label %.lr.ph360, label %._crit_edge361

.lr.ph360:                                        ; preds = %.preheader344
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count415 = zext nneg i32 %1 to i64
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph360, %bb.ba
  %indvars.iv412 = phi i64 [ 0, %.lr.ph360 ], [ %indvars.iv.next413, %bb.ba ] ; 2 uses
  %i.gs = load ptr, ptr %i.gq, align 8, !tbaa !23
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv412
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !13 ; 2 uses
  %.not279 = icmp eq ptr %i.gu, null
  %spec.select310 = select i1 %.not279, ptr @.str.113, ptr %i.gu
  tail call fastcc void @output_c_string(ptr noundef %i.gs, ptr noundef nonnull %spec.select310)
  %i.gv = load ptr, ptr %i.gq, align 8, !tbaa !23
  %fputs280 = tail call i32 @fputs(ptr nonnull %i.gr, ptr %i.gv) ; 0 uses
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1 ; 2 uses
  %exitcond416.not = icmp eq i64 %indvars.iv.next413, %wide.trip.count415
  br i1 %exitcond416.not, label %._crit_edge361, label %bb.ba, !llvm.loop !80

._crit_edge361:                                   ; preds = %bb.ba, %.preheader344
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !23
  %fputc274 = tail call i32 @fputc(i32 10, ptr %i.gx) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge361, %bb.az, %bb.ay
  %i.gy = icmp eq ptr %2, null
  br i1 %i.gy, label %.loopexit, label %.preheader343

.preheader343:                                    ; preds = %bb.bb
  %i.gz = icmp sgt i32 %1, 0
  br i1 %i.gz, label %.lr.ph363, label %._crit_edge364

.lr.ph363:                                        ; preds = %.preheader343
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count420 = zext nneg i32 %1 to i64
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph363, %bb.bc
  %indvars.iv417 = phi i64 [ 0, %.lr.ph363 ], [ %indvars.iv.next418, %bb.bc ] ; 2 uses
  %i.hd = load ptr, ptr %i.ha, align 8, !tbaa !23
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv417
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !13 ; 2 uses
  %.not277 = icmp eq ptr %i.hf, null
  %i.hg = select i1 %.not277, ptr %i.hb, ptr %i.hf
  tail call fastcc void @output_c_string(ptr noundef %i.hd, ptr noundef nonnull %i.hg)
  %i.hh = load ptr, ptr %i.ha, align 8, !tbaa !23
  %fputs278 = tail call i32 @fputs(ptr nonnull %i.hc, ptr %i.hh) ; 0 uses
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count420
  br i1 %exitcond421.not, label %._crit_edge364, label %bb.bc, !llvm.loop !81

._crit_edge364:                                   ; preds = %bb.bc, %.preheader343
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !23
  %fputc276 = tail call i32 @fputc(i32 10, ptr %i.hj) ; 0 uses
  br label %.loopexit

bb.bd:                                            ; preds = %bb.a
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !35 ; 2 uses
  %i.hm = add nsw i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !35
  %i.hn = icmp eq i32 %i.hl, 0
  br i1 %i.hn, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !24
  %.not267 = icmp eq i32 %i.hp, 0
  br i1 %.not267, label %bb.bg, label %.preheader346

.preheader346:                                    ; preds = %bb.be
  %i.hq = icmp sgt i32 %1, 0
  br i1 %i.hq, label %.lr.ph354, label %._crit_edge355

.lr.ph354:                                        ; preds = %.preheader346
  %i.hr = add nsw i32 %1, -1
  %i.hs = zext nneg i32 %i.hr to i64
  %wide.trip.count405 = zext nneg i32 %1 to i64
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph354, %bb.bf
  %indvars.iv402 = phi i64 [ 0, %.lr.ph354 ], [ %indvars.iv.next403, %bb.bf ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv402
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !13 ; 2 uses
  %.not271 = icmp eq ptr %i.hu, null
  %spec.select311 = select i1 %.not271, ptr @.str.113, ptr %i.hu
  %i.hv = icmp samesign ult i64 %indvars.iv402, %i.hs
  %i.hw = zext i1 %i.hv to i32
  tail call fastcc void @output_csv(ptr noundef nonnull %0, ptr noundef nonnull %spec.select311, i32 noundef %i.hw)
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %exitcond406.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count405
  br i1 %exitcond406.not, label %._crit_edge355, label %bb.bf, !llvm.loop !82

._crit_edge355:                                   ; preds = %bb.bf, %.preheader346
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !23
  %fputc = tail call i32 @fputc(i32 10, ptr %i.hy) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge355, %bb.be, %bb.bd
  %i.hz = icmp eq ptr %2, null
  br i1 %i.hz, label %.loopexit, label %.preheader345

.preheader345:                                    ; preds = %bb.bg
  %i.ia = icmp sgt i32 %1, 0
  br i1 %i.ia, label %.lr.ph357, label %._crit_edge358

.lr.ph357:                                        ; preds = %.preheader345
  %i.ib = add nsw i32 %1, -1
  %i.ic = zext nneg i32 %i.ib to i64
  %wide.trip.count410 = zext nneg i32 %1 to i64
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph357, %bb.bh
  %indvars.iv407 = phi i64 [ 0, %.lr.ph357 ], [ %indvars.iv.next408, %bb.bh ] ; 3 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv407
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !13
  %i.if = icmp samesign ult i64 %indvars.iv407, %i.ic
  %i.ig = zext i1 %i.if to i32
  tail call fastcc void @output_csv(ptr noundef nonnull %0, ptr noundef %i.ie, i32 noundef %i.ig)
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %exitcond411.not = icmp eq i64 %indvars.iv.next408, %wide.trip.count410
  br i1 %exitcond411.not, label %._crit_edge358, label %bb.bh, !llvm.loop !83

._crit_edge358:                                   ; preds = %bb.bh, %.preheader345
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !23
  %fputc270 = tail call i32 @fputc(i32 10, ptr %i.ii) ; 0 uses
  br label %.loopexit

bb.bi:                                            ; preds = %bb.a
  %i.ij = icmp eq ptr %2, null
  br i1 %i.ij, label %.loopexit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !23
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !27
  %i.io = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.il, ptr noundef nonnull @.str.151, ptr noundef %i.in) #22 ; 0 uses
  %i.ip = icmp sgt i32 %1, 0
  br i1 %i.ip, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bj
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %output_quoted_string.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %output_quoted_string.exit ] ; 3 uses
  %.not = icmp eq i64 %indvars.iv, 0              ; 2 uses
  %i.iq = select i1 %.not, ptr @.str.113, ptr @.str.9 ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !13 ; 6 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph
  %i.iu = load ptr, ptr %i.ik, align 8, !tbaa !23
  %i.iv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iu, ptr noundef nonnull @.str.152, ptr noundef nonnull %i.iq) #22 ; 0 uses
  br label %output_quoted_string.exit

bb.bl:                                            ; preds = %.lr.ph
  %i.iw = load i8, ptr %i.is, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.iw, label %bb.bn [
    i8 45, label %bb.bm
    i8 43, label %bb.bm
  ]

bb.bm:                                            ; preds = %bb.bl, %bb.bl
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 1 ; 2 uses
  %.pre.i312 = load i8, ptr %i.ix, align 1, !tbaa !19
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.iy = phi i8 [ %.pre.i312, %bb.bm ], [ %i.iw, %bb.bl ]
  %.028.i = phi ptr [ %i.ix, %bb.bm ], [ %i.is, %bb.bl ]
  %i.iz = tail call ptr @__ctype_b_loc() #29
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !30 ; 6 uses
  %i.jb = sext i8 %i.iy to i64
  %i.jc = getelementptr inbounds [2 x i8], ptr %i.ja, i64 %i.jb
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !32
  %i.je = and i16 %i.jd, 2048
  %.not.i313 = icmp eq i16 %i.je, 0
  br i1 %.not.i313, label %isNumber.exit.thread, label %.preheader3.i

.preheader3.i:                                    ; preds = %bb.bn, %.preheader3.i
  %.028.pn.i = phi ptr [ %.1.i, %.preheader3.i ], [ %.028.i, %bb.bn ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.028.pn.i, i64 1 ; 3 uses
  %i.jf = load i8, ptr %.1.i, align 1, !tbaa !19  ; 3 uses
  %i.jg = sext i8 %i.jf to i64
  %i.jh = getelementptr inbounds [2 x i8], ptr %i.ja, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !32
  %i.jj = and i16 %i.ji, 2048
  %.not35.i = icmp eq i16 %i.jj, 0
  br i1 %.not35.i, label %bb.bo, label %.preheader3.i, !llvm.loop !84

bb.bo:                                            ; preds = %.preheader3.i
  %i.jk = icmp eq i8 %i.jf, 46
  br i1 %i.jk, label %bb.bp, label %.loopexit2.i

bb.bp:                                            ; preds = %bb.bo
  %i.jl = getelementptr inbounds nuw i8, ptr %.028.pn.i, i64 2 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !19
  %i.jn = sext i8 %i.jm to i64
  %i.jo = getelementptr inbounds [2 x i8], ptr %i.ja, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !32
  %i.jq = and i16 %i.jp, 2048
  %.not36.i = icmp eq i16 %i.jq, 0
  br i1 %.not36.i, label %isNumber.exit.thread, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.bp, %.preheader1.i
  %.2.i = phi ptr [ %i.jw, %.preheader1.i ], [ %i.jl, %bb.bp ] ; 3 uses
  %i.jr = load i8, ptr %.2.i, align 1, !tbaa !19  ; 2 uses
  %i.js = sext i8 %i.jr to i64
  %i.jt = getelementptr inbounds [2 x i8], ptr %i.ja, i64 %i.js
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !32
  %i.jv = and i16 %i.ju, 2048
  %.not37.i = icmp eq i16 %i.jv, 0
  %i.jw = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  br i1 %.not37.i, label %.loopexit2.i, label %.preheader1.i, !llvm.loop !85

.loopexit2.i:                                     ; preds = %.preheader1.i, %bb.bo
  %i.jx = phi i8 [ %i.jf, %bb.bo ], [ %i.jr, %.preheader1.i ] ; 2 uses
  %.3.i = phi ptr [ %.1.i, %bb.bo ], [ %.2.i, %.preheader1.i ] ; 2 uses
  switch i8 %i.jx, label %isNumber.exit [
    i8 101, label %bb.bq
    i8 69, label %bb.bq
  ]

bb.bq:                                            ; preds = %.loopexit2.i, %.loopexit2.i
  %i.jy = getelementptr inbounds nuw i8, ptr %.3.i, i64 1 ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.jz, label %bb.bs [
    i8 43, label %bb.br
    i8 45, label %bb.br
  ]

bb.br:                                            ; preds = %bb.bq, %bb.bq
  %i.ka = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 2 uses
  %.pre4.i = load i8, ptr %i.ka, align 1, !tbaa !19
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.kb = phi i8 [ %.pre4.i, %bb.br ], [ %i.jz, %bb.bq ]
  %.4.i = phi ptr [ %i.ka, %bb.br ], [ %i.jy, %bb.bq ]
  %i.kc = sext i8 %i.kb to i64
  %i.kd = getelementptr inbounds [2 x i8], ptr %i.ja, i64 %i.kc
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !32
  %i.kf = and i16 %i.ke, 2048
  %.not38.i = icmp eq i16 %i.kf, 0
  br i1 %.not38.i, label %isNumber.exit.thread, label %.preheader.i314

.preheader.i314:                                  ; preds = %bb.bs, %.preheader.i314
  %.5.i = phi ptr [ %i.kl, %.preheader.i314 ], [ %.4.i, %bb.bs ] ; 2 uses
  %i.kg = load i8, ptr %.5.i, align 1, !tbaa !19  ; 2 uses
  %i.kh = sext i8 %i.kg to i64
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.ja, i64 %i.kh
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !32
  %i.kk = and i16 %i.kj, 2048
  %.not39.i = icmp eq i16 %i.kk, 0
  %i.kl = getelementptr inbounds nuw i8, ptr %.5.i, i64 1
  br i1 %.not39.i, label %isNumber.exit, label %.preheader.i314, !llvm.loop !86

isNumber.exit:                                    ; preds = %.preheader.i314, %.loopexit2.i
  %i.km = phi i8 [ %i.jx, %.loopexit2.i ], [ %i.kg, %.preheader.i314 ]
  %.not332 = icmp eq i8 %i.km, 0
  br i1 %.not332, label %bb.bt, label %isNumber.exit.thread

bb.bt:                                            ; preds = %isNumber.exit
  %i.kn = load ptr, ptr %i.ik, align 8, !tbaa !23
  %i.ko = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kn, ptr noundef nonnull @.str.144, ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is) #22 ; 0 uses
  br label %output_quoted_string.exit

isNumber.exit.thread:                             ; preds = %bb.bs, %bb.bn, %bb.bp, %isNumber.exit
  br i1 %.not, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %isNumber.exit.thread
  %i.kp = load ptr, ptr %i.ik, align 8, !tbaa !23
  %fputs = tail call i32 @fputc(i32 44, ptr %i.kp) ; 0 uses
  %.pre = load ptr, ptr %i.ir, align 8, !tbaa !13
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %isNumber.exit.thread
  %i.kq = phi ptr [ %.pre, %bb.bu ], [ %i.is, %isNumber.exit.thread ] ; 4 uses
  %i.kr = load ptr, ptr %i.ik, align 8, !tbaa !23 ; 6 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.by, %bb.bv
  %indvars.iv.i315 = phi i64 [ %indvars.iv.next.i318, %bb.by ], [ 0, %bb.bv ] ; 2 uses
  %.0.i316 = phi i32 [ %.1.i317, %bb.by ], [ 0, %bb.bv ] ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 %indvars.iv.i315
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !19
  switch i8 %i.kt, label %bb.by [
    i8 0, label %bb.bz
    i8 39, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.ku = add nsw i32 %.0.i316, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.1.i317 = phi i32 [ %i.ku, %bb.bx ], [ %.0.i316, %bb.bw ]
  %indvars.iv.next.i318 = add nuw nsw i64 %indvars.iv.i315, 1
  br label %bb.bw, !llvm.loop !87

bb.bz:                                            ; preds = %bb.bw
  %i.kv = icmp eq i32 %.0.i316, 0
  br i1 %i.kv, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.kw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kr, ptr noundef nonnull @.str.156, ptr noundef nonnull %i.kq) #22 ; 0 uses
  br label %output_quoted_string.exit

bb.cb:                                            ; preds = %bb.bz
  %fputc.i = tail call i32 @fputc(i32 39, ptr %i.kr) ; 0 uses
  %i.kx = load i8, ptr %i.kq, align 1, !tbaa !19  ; 2 uses
  %.not3441.i = icmp eq i8 %i.kx, 0
  br i1 %.not3441.i, label %.loopexit.i321, label %.preheader.i319

.preheader.i319:                                  ; preds = %bb.cb, %bb.ci
  %i.ky = phi i8 [ %i.lf, %bb.ci ], [ %i.kx, %bb.cb ]
  %.03042.i = phi ptr [ %.131.i, %bb.ci ], [ %i.kq, %bb.cb ] ; 5 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %.preheader.i319
  %i.kz = phi i8 [ %i.ky, %.preheader.i319 ], [ %.pre.i324, %bb.cd ] ; 2 uses
  %indvars.iv46.i = phi i64 [ 0, %.preheader.i319 ], [ %indvars.iv.next47.i, %bb.cd ] ; 4 uses
  switch i8 %i.kz, label %bb.cd [
    i8 0, label %.critedge.i320
    i8 39, label %.critedge.i320
  ]

bb.cd:                                            ; preds = %bb.cc
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %.phi.trans.insert.i323 = getelementptr inbounds nuw i8, ptr %.03042.i, i64 %indvars.iv.next47.i
  %.pre.i324 = load i8, ptr %.phi.trans.insert.i323, align 1, !tbaa !19
  br label %bb.cc, !llvm.loop !88

.critedge.i320:                                   ; preds = %bb.cc, %bb.cc
  %i.la = getelementptr inbounds nuw i8, ptr %.03042.i, i64 %indvars.iv46.i
  %i.lb = trunc nuw nsw i64 %indvars.iv46.i to i32
  %i.lc = icmp eq i64 %indvars.iv46.i, 0
  br i1 %i.lc, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.critedge.i320
  %fwrite.i322 = tail call i64 @fwrite(ptr nonnull @.str.158, i64 2, i64 1, ptr %i.kr) ; 0 uses
  br label %bb.ci

bb.cf:                                            ; preds = %.critedge.i320
  %i.ld = icmp eq i8 %i.kz, 39
  br i1 %i.ld, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.le = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kr, ptr noundef nonnull @.str.159, i32 noundef %i.lb, ptr noundef nonnull %.03042.i) #22 ; 0 uses
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %fputs.i = tail call i32 @fputs(ptr nonnull %.03042.i, ptr %i.kr) ; 0 uses
  br label %.loopexit.i321

bb.ci:                                            ; preds = %bb.cg, %bb.ce
  %.030.pn.i = phi ptr [ %.03042.i, %bb.ce ], [ %i.la, %bb.cg ]
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.pn.i, i64 1 ; 2 uses
  %i.lf = load i8, ptr %.131.i, align 1, !tbaa !19 ; 2 uses
  %.not34.i = icmp eq i8 %i.lf, 0
  br i1 %.not34.i, label %.loopexit.i321, label %.preheader.i319, !llvm.loop !89

.loopexit.i321:                                   ; preds = %bb.ci, %bb.ch, %bb.cb
  %fputc37.i = tail call i32 @fputc(i32 39, ptr %i.kr) ; 0 uses
  br label %output_quoted_string.exit

output_quoted_string.exit:                        ; preds = %.loopexit.i321, %bb.ca, %bb.bt, %bb.bk
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %output_quoted_string.exit, %bb.bj
  %i.lg = load ptr, ptr %i.ik, align 8, !tbaa !23
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.153, i64 3, i64 1, ptr %i.lg) ; 0 uses
  br label %.loopexit

.loopexit.loopexit505.peel.begin:                 ; preds = %.lr.ph383, %._crit_edge468
  %i.lh = phi i64 [ 0, %.lr.ph383 ], [ %indvars.iv.next453, %._crit_edge468 ] ; 4 uses
  %i.li = icmp samesign ult i64 %i.lh, 100
  br i1 %i.li, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.loopexit.loopexit505.peel.begin
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.lh
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !10
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.loopexit.loopexit505.peel.begin
  %.0222.peel = phi i32 [ %i.lk, %bb.cj ], [ 10, %.loopexit.loopexit505.peel.begin ] ; 3 uses
  %i.ll = load i32, ptr %i.a, align 8, !tbaa !18
  %i.lm = icmp eq i32 %i.ll, 9
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.lh
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !13 ; 4 uses
  br i1 %i.lm, label %bb.cl, label %._crit_edge468.peel

bb.cl:                                            ; preds = %bb.ck
  %.not296.peel = icmp eq ptr %i.lo, null
  br i1 %.not296.peel, label %._crit_edge468.peel, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lo) #23
  %i.lq = sext i32 %.0222.peel to i64
  %spec.select308333.peel = tail call i64 @llvm.umax.i64(i64 %i.lp, i64 %i.lq)
  %spec.select308.peel = trunc i64 %spec.select308333.peel to i32
  br label %._crit_edge468.peel

._crit_edge468.peel:                              ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.lr = phi ptr [ null, %bb.cl ], [ %i.lo, %bb.cm ], [ %i.lo, %bb.ck ] ; 2 uses
  %.1.peel = phi i32 [ %.0222.peel, %bb.cl ], [ %spec.select308.peel, %bb.cm ], [ %.0222.peel, %bb.ck ] ; 2 uses
  %i.ls = load ptr, ptr %i.cr, align 8, !tbaa !23
  %.not297.peel = icmp eq ptr %i.lr, null
  %i.lt = select i1 %.not297.peel, ptr %i.cs, ptr %i.lr
  %i.lu = icmp eq i64 %i.lh, %i.cu
  %i.lv = select i1 %i.lu, ptr @.str.107, ptr @.str.114
  %i.lw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ls, ptr noundef nonnull @.str.142, i32 noundef %.1.peel, i32 noundef %.1.peel, ptr noundef nonnull %i.lt, ptr noundef nonnull %i.lv) #22 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ak, %bb.e, %._crit_edge468.peel, %.preheader338, %bb.d, %bb.b, %bb.bi, %bb.bg, %bb.bb, %bb.ao, %.loopexit342, %.loopexit337, %._crit_edge, %._crit_edge358, %._crit_edge364, %._crit_edge372, %bb.a
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
