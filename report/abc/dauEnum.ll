Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauEnum?download=true
inline.NumInlined: 56
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Dau_EnumTest:Vec_PtrPush.exit256
  %i.ij = getelementptr i8, ptr %i.id, i64 4      ; 2 uses
  %i.ik = getelementptr i8, ptr %i.id, i64 8
  %i.il = icmp eq i64 %indvars.iv414, %indvars.iv416
  %i.im = load i32, ptr %i.ih, align 4, !tbaa !16 ; 3 uses
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.lr.ph370.split, label %.critedge4

.lr.ph370.split:                                  ; preds = %.lr.ph370, %.critedge6
  %.val225470 = phi i32 [ %.val225, %.critedge6 ], [ %.val225368, %.lr.ph370 ] ; 2 uses
  %.val224466 = phi i32 [ %.val224467, %.critedge6 ], [ %i.im, %.lr.ph370 ] ; 3 uses
  %.val224365 = phi i32 [ %.val224365463, %.critedge6 ], [ %i.im, %.lr.ph370 ] ; 3 uses
  %indvars.iv411 = phi i64 [ %indvars.iv.next412, %.critedge6 ], [ 0, %.lr.ph370 ] ; 2 uses
  %.val233 = load ptr, ptr %i.ig, align 8, !tbaa !18
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.val233, i64 %indvars.iv411
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !19 ; 7 uses
  %i.iq = icmp sgt i32 %.val224365, 0
  br i1 %i.iq, label %.lr.ph367, label %.critedge6

.lr.ph367:                                        ; preds = %.lr.ph370.split
  %i.ir = load i32, ptr %i.ij, align 4, !tbaa !16 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph367.split, label %.critedge6

.lr.ph367.split:                                  ; preds = %.lr.ph367, %.critedge8
  %.val224468 = phi i32 [ %.val224, %.critedge8 ], [ %.val224466, %.lr.ph367 ]
  %.val223362 = phi i32 [ %.val223362465, %.critedge8 ], [ %i.ir, %.lr.ph367 ] ; 2 uses
  %indvars.iv408 = phi i64 [ %indvars.iv.next409, %.critedge8 ], [ 0, %.lr.ph367 ] ; 3 uses
  %.val232 = load ptr, ptr %i.ii, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.val232, i64 %indvars.iv408
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !19 ; 9 uses
  %i.iv = icmp sgt i32 %.val223362, 0
  br i1 %i.iv, label %.lr.ph364, label %.critedge8

.lr.ph364:                                        ; preds = %.lr.ph367.split, %bb.bk
  %indvars.iv405 = phi i64 [ %indvars.iv.next406, %bb.bk ], [ 0, %.lr.ph367.split ] ; 3 uses
  %.val231 = load ptr, ptr %i.ik, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.val231, i64 %indvars.iv405
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !19 ; 9 uses
  %i.iy = load i8, ptr %i.iu, align 1, !tbaa !11
  %i.iz = icmp eq i8 %i.iy, 42
  br i1 %i.iz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph364
  %i.ja = load i8, ptr %i.ix, align 1, !tbaa !11
  %i.jb = icmp eq i8 %i.ja, 42
  %i.jc = zext i1 %i.jb to i32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph364
  %i.jd = phi i32 [ 0, %.lr.ph364 ], [ %i.jc, %bb.ba ] ; 6 uses
  tail call void @Dau_EnumCombineThree(ptr noundef nonnull %i.m, i32 noundef %i.jd, ptr noundef %i.ip, ptr noundef nonnull %i.iu, ptr noundef %i.ix, i32 noundef %i.hu, i32 noundef %i.hw, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %i.je = load i8, ptr %i.iu, align 1, !tbaa !11
  %.not208 = icmp eq i8 %i.je, 42
  br i1 %.not208, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @Dau_EnumCombineThree(ptr noundef nonnull %i.m, i32 noundef %i.jd, ptr noundef %i.ip, ptr noundef nonnull %i.iu, ptr noundef %i.ix, i32 noundef %i.hu, i32 noundef %i.hw, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jf = load i8, ptr %i.ix, align 1, !tbaa !11
  %.not209 = icmp eq i8 %i.jf, 42
  %i.jg = icmp eq i64 %indvars.iv408, %indvars.iv405
  %or.cond218 = and i1 %i.il, %i.jg               ; 2 uses
  %or.cond384 = or i1 %.not209, %or.cond218
  br i1 %or.cond384, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @Dau_EnumCombineThree(ptr noundef nonnull %i.m, i32 noundef %i.jd, ptr noundef %i.ip, ptr noundef nonnull %i.iu, ptr noundef nonnull %i.ix, i32 noundef %i.hu, i32 noundef %i.hw, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.jh = load i8, ptr %i.ip, align 1, !tbaa !11
  %.not210 = icmp eq i8 %i.jh, 42
  %or.cond385 = or i1 %.not210, %or.cond218
  br i1 %or.cond385, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @Dau_EnumCombineThree(ptr noundef nonnull %i.m, i32 noundef %i.jd, ptr noundef nonnull %i.ip, ptr noundef nonnull %i.iu, ptr noundef nonnull %i.ix, i32 noundef %i.hu, i32 noundef %i.hw, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %i.ji = load i8, ptr %i.iu, align 1, !tbaa !11
  %.not211 = icmp eq i8 %i.ji, 42
  br i1 %.not211, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @Dau_EnumCombineThree(ptr noundef nonnull %i.m, i32 noundef %i.jd, ptr noundef nonnull %i.ip, ptr noundef nonnull %i.iu, ptr noundef nonnull %i.ix, i32 noundef %i.hu, i32 noundef %i.hw, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.jj = load i8, ptr %i.ix, align 1, !tbaa !11
  %.not212 = icmp eq i8 %i.jj, 42
  br i1 %.not212, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @Dau_EnumCombineThree(ptr noundef nonnull %i.m, i32 noundef %i.jd, ptr noundef nonnull %i.ip, ptr noundef nonnull %i.iu, ptr noundef nonnull %i.ix, i32 noundef %i.hu, i32 noundef %i.hw, i32 noundef 1, i32 noundef 0, i32 noundef 1)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bf
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %.val223 = load i32, ptr %i.ij, align 4, !tbaa !16 ; 2 uses
  %i.jk = sext i32 %.val223 to i64
  %i.jl = icmp slt i64 %indvars.iv.next406, %i.jk
  br i1 %i.jl, label %.lr.ph364, label %.critedge8.loopexit, !llvm.loop !25

.critedge8.loopexit:                              ; preds = %bb.bk
  %.val224.pre = load i32, ptr %i.ih, align 4, !tbaa !16
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit, %.lr.ph367.split
  %.val224 = phi i32 [ %.val224.pre, %.critedge8.loopexit ], [ %.val224468, %.lr.ph367.split ] ; 4 uses
  %.val223362465 = phi i32 [ %.val223, %.critedge8.loopexit ], [ %.val223362, %.lr.ph367.split ]
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %i.jm = sext i32 %.val224 to i64
  %i.jn = icmp slt i64 %indvars.iv.next409, %i.jm
  br i1 %i.jn, label %.lr.ph367.split, label %.critedge6.loopexit, !llvm.loop !26

.critedge6.loopexit:                              ; preds = %.critedge8
  %.val225.pre = load i32, ptr %i.ia, align 4, !tbaa !16
  br label %.critedge6

.critedge6:                                       ; preds = %.lr.ph367, %.critedge6.loopexit, %.lr.ph370.split
  %.val225 = phi i32 [ %.val225470, %.lr.ph370.split ], [ %.val225.pre, %.critedge6.loopexit ], [ %.val225470, %.lr.ph367 ] ; 2 uses
  %.val224467 = phi i32 [ %.val224466, %.lr.ph370.split ], [ %.val224, %.critedge6.loopexit ], [ %.val224466, %.lr.ph367 ]
  %.val224365463 = phi i32 [ %.val224365, %.lr.ph370.split ], [ %.val224, %.critedge6.loopexit ], [ %.val224365, %.lr.ph367 ]
  %indvars.iv.next412 = add nuw nsw i64 %indvars.iv411, 1 ; 2 uses
  %i.jo = sext i32 %.val225 to i64
  %i.jp = icmp slt i64 %indvars.iv.next412, %i.jo
  br i1 %i.jp, label %.lr.ph370.split, label %.critedge4, !llvm.loop !27

.critedge4:                                       ; preds = %.critedge6, %.lr.ph370, %bb.az, %bb.ay
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 1 ; 2 uses
  %exitcond420.not = icmp eq i64 %indvars.iv.next417, %indvars.iv429
  br i1 %exitcond420.not, label %bb.bl, label %bb.ay, !llvm.loop !28

bb.bl:                                            ; preds = %.critedge4
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %exitcond423.not = icmp eq i64 %indvars.iv.next415, %indvars.iv429
  br i1 %exitcond423.not, label %bb.bm, label %.preheader, !llvm.loop !29

bb.bm:                                            ; preds = %bb.bl
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1 ; 2 uses
  %exitcond428.not = icmp eq i64 %indvars.iv.next425, %indvars.iv429
  br i1 %exitcond428.not, label %bb.bn, label %.preheader348, !llvm.loop !30

bb.bn:                                            ; preds = %bb.bm
  %i.jq = icmp eq i32 %i.l, %i.k
  br i1 %i.jq, label %bb.bo, label %.Vec_PtrPush.exit336_crit_edge

.Vec_PtrPush.exit336_crit_edge:                   ; preds = %bb.bn
  %.pre472 = load ptr, ptr %i.d, align 8, !tbaa !18
  br label %Vec_PtrPush.exit336

bb.bo:                                            ; preds = %bb.bn
  %i.jr = icmp slt i32 %i.k, 16
  br i1 %i.jr, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.js = load ptr, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %.not9.i.i334 = icmp eq ptr %i.js, null
  br i1 %.not9.i.i334, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jt = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.js, i64 noundef 128) #15
  br label %Vec_PtrGrow.exit12.sink.split.i332

bb.br:                                            ; preds = %bb.bp
  %i.ju = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14
  br label %Vec_PtrGrow.exit12.sink.split.i332

bb.bs:                                            ; preds = %bb.bo
  %i.jv = icmp samesign ult i32 %i.k, 1073741823
  %i.jw = shl nuw nsw i32 %i.k, 1
  %spec.select.i329 = select i1 %i.jv, i32 %i.jw, i32 2147483647 ; 4 uses
  %.not.i10.i330 = icmp samesign ult i32 %i.k, %spec.select.i329
  %.pre473 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 3 uses
  br i1 %.not.i10.i330, label %bb.bt, label %Vec_PtrPush.exit336

bb.bt:                                            ; preds = %bb.bs
  %.not9.i11.i331 = icmp eq ptr %.pre473, null
  %i.jx = zext nneg i32 %spec.select.i329 to i64
  %i.jy = shl nuw nsw i64 %i.jx, 3                ; 2 uses
  br i1 %.not9.i11.i331, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jz = tail call ptr @realloc(ptr noundef nonnull %.pre473, i64 noundef %i.jy) #15
  br label %Vec_PtrGrow.exit12.sink.split.i332

bb.bv:                                            ; preds = %bb.bt
  %i.ka = tail call noalias ptr @malloc(i64 noundef %i.jy) #14
  br label %Vec_PtrGrow.exit12.sink.split.i332

Vec_PtrGrow.exit12.sink.split.i332:               ; preds = %bb.bu, %bb.bv, %bb.bq, %bb.br
  %storemerge = phi ptr [ %i.ju, %bb.br ], [ %i.jt, %bb.bq ], [ %i.jz, %bb.bu ], [ %i.ka, %bb.bv ] ; 2 uses
  %spec.select.sink.i333 = phi i32 [ 16, %bb.br ], [ 16, %bb.bq ], [ %spec.select.i329, %bb.bu ], [ %spec.select.i329, %bb.bv ] ; 2 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !18
  store i32 %spec.select.sink.i333, ptr %i.a, align 8, !tbaa !17
  br label %Vec_PtrPush.exit336

Vec_PtrPush.exit336:                              ; preds = %.Vec_PtrPush.exit336_crit_edge, %bb.bs, %Vec_PtrGrow.exit12.sink.split.i332
  %i.kb = phi ptr [ %.pre472, %.Vec_PtrPush.exit336_crit_edge ], [ %.pre473, %bb.bs ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i332 ]
  %i.kc = phi i32 [ %i.k, %.Vec_PtrPush.exit336_crit_edge ], [ %i.k, %bb.bs ], [ %spec.select.sink.i333, %Vec_PtrGrow.exit12.sink.split.i332 ]
  %i.kd = add nuw nsw i32 %i.l, 1                 ; 6 uses
  store i32 %i.kd, ptr %i.b, align 4, !tbaa !16
  %i.ke = zext nneg i32 %i.l to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.ke
  store ptr %i.m, ptr %i.kf, align 8, !tbaa !19
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next430, 11
  br i1 %exitcond432.not, label %bb.bw, label %bb.a, !llvm.loop !31

bb.bw:                                            ; preds = %Vec_PtrPush.exit336
  %i.kg = tail call noalias ptr @fopen(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5) ; 24 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %.lr.ph379, label %.lr.ph27.i.preheader

.lr.ph27.i.preheader:                             ; preds = %bb.bw
  %.val22.i = load ptr, ptr %i.d, align 8, !tbaa !18 ; 11 uses
  %i.ki = load ptr, ptr %.val22.i, align 8, !tbaa !19 ; 2 uses
  %i.kj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.6, i32 noundef 0) #12 ; 0 uses
  %i.kk = getelementptr i8, ptr %i.ki, i64 4      ; 2 uses
  %.val23.i = load i32, ptr %i.kk, align 4, !tbaa !16
  %i.kl = icmp sgt i32 %.val23.i, 0
  br i1 %i.kl, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %.lr.ph27.i.preheader
  %i.km = getelementptr i8, ptr %i.ki, i64 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bx ] ; 2 uses
  %.val21.i = load ptr, ptr %i.km, align 8, !tbaa !18
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.val21.i, i64 %indvars.iv.i
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !19
  %i.kp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.7, ptr noundef %i.ko) #12 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.kk, align 4, !tbaa !16
  %i.kq = sext i32 %.val.i to i64
  %i.kr = icmp slt i64 %indvars.iv.next.i, %i.kq
  br i1 %i.kr, label %bb.bx, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %bb.bx, %.lr.ph27.i.preheader
  %i.ks = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !19 ; 2 uses
  %i.ku = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.6, i32 noundef 1) #12 ; 0 uses
  %i.kv = getelementptr i8, ptr %i.kt, i64 4      ; 2 uses
  %.val23.i.1 = load i32, ptr %i.kv, align 4, !tbaa !16
  %i.kw = icmp sgt i32 %.val23.i.1, 0
  br i1 %i.kw, label %.lr.ph.i.1, label %.critedge2.i.1

.lr.ph.i.1:                                       ; preds = %.critedge2.i
  %i.kx = getelementptr i8, ptr %i.kt, i64 8
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %.lr.ph.i.1
  %indvars.iv.i.1 = phi i64 [ 0, %.lr.ph.i.1 ], [ %indvars.iv.next.i.1, %bb.by ] ; 2 uses
  %.val21.i.1 = load ptr, ptr %i.kx, align 8, !tbaa !18
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %.val21.i.1, i64 %indvars.iv.i.1
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !19
  %i.la = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.7, ptr noundef %i.kz) #12 ; 0 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %.val.i.1 = load i32, ptr %i.kv, align 4, !tbaa !16
  %i.lb = sext i32 %.val.i.1 to i64
  %i.lc = icmp slt i64 %indvars.iv.next.i.1, %i.lb
  br i1 %i.lc, label %bb.by, label %.critedge2.i.1, !llvm.loop !2

.critedge2.i.1:                                   ; preds = %bb.by, %.critedge2.i
  %i.ld = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !19 ; 2 uses
  %i.lf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.6, i32 noundef 2) #12 ; 0 uses
  %i.lg = getelementptr i8, ptr %i.le, i64 4      ; 2 uses
  %.val23.i.2 = load i32, ptr %i.lg, align 4, !tbaa !16
  %i.lh = icmp sgt i32 %.val23.i.2, 0
  br i1 %i.lh, label %.lr.ph.i.2, label %.critedge2.i.2

.lr.ph.i.2:                                       ; preds = %.critedge2.i.1
  %i.li = getelementptr i8, ptr %i.le, i64 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.lr.ph.i.2
  %indvars.iv.i.2 = phi i64 [ 0, %.lr.ph.i.2 ], [ %indvars.iv.next.i.2, %bb.bz ] ; 2 uses
  %.val21.i.2 = load ptr, ptr %i.li, align 8, !tbaa !18
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.val21.i.2, i64 %indvars.iv.i.2
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !19
  %i.ll = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.7, ptr noundef %i.lk) #12 ; 0 uses
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %.val.i.2 = load i32, ptr %i.lg, align 4, !tbaa !16
  %i.lm = sext i32 %.val.i.2 to i64
  %i.ln = icmp slt i64 %indvars.iv.next.i.2, %i.lm
  br i1 %i.ln, label %bb.bz, label %.critedge2.i.2, !llvm.loop !2

.critedge2.i.2:                                   ; preds = %bb.bz, %.critedge2.i.1
  %i.lo = getelementptr inbounds nuw i8, ptr %.val22.i, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !19 ; 2 uses
  %i.lq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.6, i32 noundef 3) #12 ; 0 uses
  %i.lr = getelementptr i8, ptr %i.lp, i64 4      ; 2 uses
  %.val23.i.3 = load i32, ptr %i.lr, align 4, !tbaa !16
  %i.ls = icmp sgt i32 %.val23.i.3, 0
  br i1 %i.ls, label %.lr.ph.i.3, label %.critedge2.i.3

.lr.ph.i.3:                                       ; preds = %.critedge2.i.2
  %i.lt = getelementptr i8, ptr %i.lp, i64 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.lr.ph.i.3
  %indvars.iv.i.3 = phi i64 [ 0, %.lr.ph.i.3 ], [ %indvars.iv.next.i.3, %bb.ca ] ; 2 uses
  %.val21.i.3 = load ptr, ptr %i.lt, align 8, !tbaa !18
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.val21.i.3, i64 %indvars.iv.i.3
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !19
  %i.lw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.7, ptr noundef %i.lv) #12 ; 0 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %.val.i.3 = load i32, ptr %i.lr, align 4, !tbaa !16
  %i.lx = sext i32 %.val.i.3 to i64
  %i.ly = icmp slt i64 %indvars.iv.next.i.3, %i.lx
  br i1 %i.ly, label %bb.ca, label %.critedge2.i.3, !llvm.loop !2

.critedge2.i.3:                                   ; preds = %bb.ca, %.critedge2.i.2
  %i.lz = getelementptr inbounds nuw i8, ptr %.val22.i, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !19 ; 2 uses
  %i.mb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.6, i32 noundef 4) #12 ; 0 uses
  %i.mc = getelementptr i8, ptr %i.ma, i64 4      ; 2 uses
  %.val23.i.4 = load i32, ptr %i.mc, align 4, !tbaa !16
  %i.md = icmp sgt i32 %.val23.i.4, 0
  br i1 %i.md, label %.lr.ph.i.4, label %.critedge2.i.4

.lr.ph.i.4:                                       ; preds = %.critedge2.i.3
  %i.me = getelementptr i8, ptr %i.ma, i64 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.lr.ph.i.4
  %indvars.iv.i.4 = phi i64 [ 0, %.lr.ph.i.4 ], [ %indvars.iv.next.i.4, %bb.cb ] ; 2 uses
  %.val21.i.4 = load ptr, ptr %i.me, align 8, !tbaa !18
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.val21.i.4, i64 %indvars.iv.i.4
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !19
  %i.mh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.7, ptr noundef %i.mg) #12 ; 0 uses
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i.4, 1 ; 2 uses
  %.val.i.4 = load i32, ptr %i.mc, align 4, !tbaa !16
  %i.mi = sext i32 %.val.i.4 to i64
  %i.mj = icmp slt i64 %indvars.iv.next.i.4, %i.mi
  br i1 %i.mj, label %bb.cb, label %.critedge2.i.4, !llvm.loop !2

.critedge2.i.4:                                   ; preds = %bb.cb, %.critedge2.i.3
  %i.mk = getelementptr inbounds nuw i8, ptr %.val22.i, i64 40
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !19 ; 2 uses
  %i.mm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.6, i32 noundef 5) #12 ; 0 uses
  %i.mn = getelementptr i8, ptr %i.ml, i64 4      ; 2 uses
  %.val23.i.5 = load i32, ptr %i.mn, align 4, !tbaa !16
  %i.mo = icmp sgt i32 %.val23.i.5, 0
  br i1 %i.mo, label %.lr.ph.i.5, label %.critedge2.i.5

.lr.ph.i.5:                                       ; preds = %.critedge2.i.4
  %i.mp = getelementptr i8, ptr %i.ml, i64 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.lr.ph.i.5
  %indvars.iv.i.5 = phi i64 [ 0, %.lr.ph.i.5 ], [ %indvars.iv.next.i.5, %bb.cc ] ; 2 uses
  %.val21.i.5 = load ptr, ptr %i.mp, align 8, !tbaa !18
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %.val21.i.5, i64 %indvars.iv.i.5
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !19
  %i.ms = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.7, ptr noundef %i.mr) #12 ; 0 uses
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i.5, 1 ; 2 uses
  %.val.i.5 = load i32, ptr %i.mn, align 4, !tbaa !16
  %i.mt = sext i32 %.val.i.5 to i64
  %i.mu = icmp slt i64 %indvars.iv.next.i.5, %i.mt
  br i1 %i.mu, label %bb.cc, label %.critedge2.i.5, !llvm.loop !2

.critedge2.i.5:                                   ; preds = %bb.cc, %.critedge2.i.4
  %i.mv = getelementptr inbounds nuw i8, ptr %.val22.i, i64 48
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !19 ; 2 uses
  %i.mx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.6, i32 noundef 6) #12 ; 0 uses
  %i.my = getelementptr i8, ptr %i.mw, i64 4      ; 2 uses
  %.val23.i.6 = load i32, ptr %i.my, align 4, !tbaa !16
  %i.mz = icmp sgt i32 %.val23.i.6, 0
  br i1 %i.mz, label %.lr.ph.i.6, label %.critedge2.i.6

.lr.ph.i.6:                                       ; preds = %.critedge2.i.5
  %i.na = getelementptr i8, ptr %i.mw, i64 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.lr.ph.i.6
  %indvars.iv.i.6 = phi i64 [ 0, %.lr.ph.i.6 ], [ %indvars.iv.next.i.6, %bb.cd ] ; 2 uses
  %.val21.i.6 = load ptr, ptr %i.na, align 8, !tbaa !18
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %.val21.i.6, i64 %indvars.iv.i.6
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !19
  %i.nd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.7, ptr noundef %i.nc) #12 ; 0 uses
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i.6, 1 ; 2 uses
  %.val.i.6 = load i32, ptr %i.my, align 4, !tbaa !16
  %i.ne = sext i32 %.val.i.6 to i64
  %i.nf = icmp slt i64 %indvars.iv.next.i.6, %i.ne
  br i1 %i.nf, label %bb.cd, label %.critedge2.i.6, !llvm.loop !2

.critedge2.i.6:                                   ; preds = %bb.cd, %.critedge2.i.5
  %i.ng = getelementptr inbounds nuw i8, ptr %.val22.i, i64 56
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !19 ; 2 uses
  %i.ni = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.6, i32 noundef 7) #12 ; 0 uses
  %i.nj = getelementptr i8, ptr %i.nh, i64 4      ; 2 uses
  %.val23.i.7 = load i32, ptr %i.nj, align 4, !tbaa !16
  %i.nk = icmp sgt i32 %.val23.i.7, 0
  br i1 %i.nk, label %.lr.ph.i.7, label %.critedge2.i.7

.lr.ph.i.7:                                       ; preds = %.critedge2.i.6
  %i.nl = getelementptr i8, ptr %i.nh, i64 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.lr.ph.i.7
  %indvars.iv.i.7 = phi i64 [ 0, %.lr.ph.i.7 ], [ %indvars.iv.next.i.7, %bb.ce ] ; 2 uses
  %.val21.i.7 = load ptr, ptr %i.nl, align 8, !tbaa !18
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %.val21.i.7, i64 %indvars.iv.i.7
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !19
  %i.no = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.7, ptr noundef %i.nn) #12 ; 0 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i.7, 1 ; 2 uses
  %.val.i.7 = load i32, ptr %i.nj, align 4, !tbaa !16
  %i.np = sext i32 %.val.i.7 to i64
  %i.nq = icmp slt i64 %indvars.iv.next.i.7, %i.np
  br i1 %i.nq, label %bb.ce, label %.critedge2.i.7, !llvm.loop !2

.critedge2.i.7:                                   ; preds = %bb.ce, %.critedge2.i.6
  %i.nr = getelementptr inbounds nuw i8, ptr %.val22.i, i64 64
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !19 ; 2 uses
  %i.nt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.6, i32 noundef 8) #12 ; 0 uses
  %i.nu = getelementptr i8, ptr %i.ns, i64 4      ; 2 uses
  %.val23.i.8 = load i32, ptr %i.nu, align 4, !tbaa !16
  %i.nv = icmp sgt i32 %.val23.i.8, 0
  br i1 %i.nv, label %.lr.ph.i.8, label %.critedge2.i.8

.lr.ph.i.8:                                       ; preds = %.critedge2.i.7
  %i.nw = getelementptr i8, ptr %i.ns, i64 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %.lr.ph.i.8
  %indvars.iv.i.8 = phi i64 [ 0, %.lr.ph.i.8 ], [ %indvars.iv.next.i.8, %bb.cf ] ; 2 uses
  %.val21.i.8 = load ptr, ptr %i.nw, align 8, !tbaa !18
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %.val21.i.8, i64 %indvars.iv.i.8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !19
  %i.nz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.7, ptr noundef %i.ny) #12 ; 0 uses
  %indvars.iv.next.i.8 = add nuw nsw i64 %indvars.iv.i.8, 1 ; 2 uses
  %.val.i.8 = load i32, ptr %i.nu, align 4, !tbaa !16
  %i.oa = sext i32 %.val.i.8 to i64
  %i.ob = icmp slt i64 %indvars.iv.next.i.8, %i.oa
  br i1 %i.ob, label %bb.cf, label %.critedge2.i.8, !llvm.loop !2

.critedge2.i.8:                                   ; preds = %bb.cf, %.critedge2.i.7
  %i.oc = getelementptr inbounds nuw i8, ptr %.val22.i, i64 72
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !19 ; 2 uses
  %i.oe = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.6, i32 noundef 9) #12 ; 0 uses
  %i.of = getelementptr i8, ptr %i.od, i64 4      ; 2 uses
  %.val23.i.9 = load i32, ptr %i.of, align 4, !tbaa !16
  %i.og = icmp sgt i32 %.val23.i.9, 0
  br i1 %i.og, label %.lr.ph.i.9, label %.critedge2.i.9

.lr.ph.i.9:                                       ; preds = %.critedge2.i.8
  %i.oh = getelementptr i8, ptr %i.od, i64 8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %.lr.ph.i.9
  %indvars.iv.i.9 = phi i64 [ 0, %.lr.ph.i.9 ], [ %indvars.iv.next.i.9, %bb.cg ] ; 2 uses
  %.val21.i.9 = load ptr, ptr %i.oh, align 8, !tbaa !18
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %.val21.i.9, i64 %indvars.iv.i.9
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !19
  %i.ok = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.7, ptr noundef %i.oj) #12 ; 0 uses
  %indvars.iv.next.i.9 = add nuw nsw i64 %indvars.iv.i.9, 1 ; 2 uses
  %.val.i.9 = load i32, ptr %i.of, align 4, !tbaa !16
  %i.ol = sext i32 %.val.i.9 to i64
  %i.om = icmp slt i64 %indvars.iv.next.i.9, %i.ol
  br i1 %i.om, label %bb.cg, label %.critedge2.i.9, !llvm.loop !2

.critedge2.i.9:                                   ; preds = %bb.cg, %.critedge2.i.8
  %i.on = getelementptr inbounds nuw i8, ptr %.val22.i, i64 80
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !19 ; 2 uses
  %i.op = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.6, i32 noundef 10) #12 ; 0 uses
  %i.oq = getelementptr i8, ptr %i.oo, i64 4      ; 2 uses
  %.val23.i.10 = load i32, ptr %i.oq, align 4, !tbaa !16
  %i.or = icmp sgt i32 %.val23.i.10, 0
  br i1 %i.or, label %.lr.ph.i.10, label %.critedge2.i.10

.lr.ph.i.10:                                      ; preds = %.critedge2.i.9
  %i.os = getelementptr i8, ptr %i.oo, i64 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.lr.ph.i.10
  %indvars.iv.i.10 = phi i64 [ 0, %.lr.ph.i.10 ], [ %indvars.iv.next.i.10, %bb.ch ] ; 2 uses
  %.val21.i.10 = load ptr, ptr %i.os, align 8, !tbaa !18
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %.val21.i.10, i64 %indvars.iv.i.10
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !19
  %i.ov = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.7, ptr noundef %i.ou) #12 ; 0 uses
  %indvars.iv.next.i.10 = add nuw nsw i64 %indvars.iv.i.10, 1 ; 2 uses
  %.val.i.10 = load i32, ptr %i.oq, align 4, !tbaa !16
  %i.ow = sext i32 %.val.i.10 to i64
  %i.ox = icmp slt i64 %indvars.iv.next.i.10, %i.ow
  br i1 %i.ox, label %bb.ch, label %.critedge2.i.10, !llvm.loop !2

.critedge2.i.10:                                  ; preds = %bb.ch, %.critedge2.i.9
  %i.oy = tail call i32 @fclose(ptr noundef nonnull %i.kg) ; 0 uses
  br label %.lr.ph379

.lr.ph379:                                        ; preds = %.critedge2.i.10, %bb.bw
  %.val230 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 5 uses
  %i.oz = load ptr, ptr %.val230, align 8, !tbaa !19 ; 2 uses
  %i.pa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 0) ; 0 uses
  %i.pb = getelementptr i8, ptr %i.oz, i64 4      ; 2 uses
  %.val221375 = load i32, ptr %i.pb, align 4, !tbaa !16
  %i.pc = icmp sgt i32 %.val221375, 0
  br i1 %i.pc, label %.lr.ph377, label %.critedge12.loopexit

.critedge12.loopexit:                             ; preds = %bb.cp, %.lr.ph379
  %i.pd = getelementptr inbounds nuw i8, ptr %.val230, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !19 ; 2 uses
  %i.pf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 1) ; 0 uses
  %i.pg = getelementptr i8, ptr %i.pe, i64 4      ; 2 uses
  %.val221375.1 = load i32, ptr %i.pg, align 4, !tbaa !16
  %i.ph = icmp sgt i32 %.val221375.1, 0
  br i1 %i.ph, label %.lr.ph377.1, label %.critedge12.1

.lr.ph377.1:                                      ; preds = %.critedge12.loopexit
  %i.pi = getelementptr i8, ptr %i.pe, i64 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.lr.ph377.1
  %indvars.iv434.1 = phi i64 [ 0, %.lr.ph377.1 ], [ %indvars.iv.next435.1, %bb.ci ] ; 2 uses
  %.val229.1 = load ptr, ptr %i.pi, align 8, !tbaa !18
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %.val229.1, i64 %indvars.iv434.1
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !19
  %puts.1 = tail call i32 @puts(ptr nonnull dereferenceable(1) %i.pk) ; 0 uses
  %indvars.iv.next435.1 = add nuw nsw i64 %indvars.iv434.1, 1 ; 2 uses
  %.val221.1 = load i32, ptr %i.pg, align 4, !tbaa !16
  %i.pl = sext i32 %.val221.1 to i64
  %i.pm = icmp slt i64 %indvars.iv.next435.1, %i.pl
  br i1 %i.pm, label %bb.ci, label %.critedge12.1, !llvm.loop !32

.critedge12.1:                                    ; preds = %bb.ci, %.critedge12.loopexit
  %exitcond440.1.not = icmp eq i32 %i.kd, 2
  br i1 %exitcond440.1.not, label %.lr.ph382, label %bb.cj

bb.cj:                                            ; preds = %.critedge12.1
  %i.pn = getelementptr inbounds nuw i8, ptr %.val230, i64 16
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !19 ; 2 uses
  %i.pp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 2) ; 0 uses
  %i.pq = getelementptr i8, ptr %i.po, i64 4      ; 2 uses
  %.val221375.2 = load i32, ptr %i.pq, align 4, !tbaa !16
  %i.pr = icmp sgt i32 %.val221375.2, 0
  br i1 %i.pr, label %.lr.ph377.2, label %.critedge12.2

.lr.ph377.2:                                      ; preds = %bb.cj
  %i.ps = getelementptr i8, ptr %i.po, i64 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.lr.ph377.2
  %indvars.iv434.2 = phi i64 [ 0, %.lr.ph377.2 ], [ %indvars.iv.next435.2, %bb.ck ] ; 2 uses
  %.val229.2 = load ptr, ptr %i.ps, align 8, !tbaa !18
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %.val229.2, i64 %indvars.iv434.2
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !19
  %puts.2 = tail call i32 @puts(ptr nonnull dereferenceable(1) %i.pu) ; 0 uses
  %indvars.iv.next435.2 = add nuw nsw i64 %indvars.iv434.2, 1 ; 2 uses
  %.val221.2 = load i32, ptr %i.pq, align 4, !tbaa !16
  %i.pv = sext i32 %.val221.2 to i64
  %i.pw = icmp slt i64 %indvars.iv.next435.2, %i.pv
  br i1 %i.pw, label %bb.ck, label %.critedge12.2, !llvm.loop !32

.critedge12.2:                                    ; preds = %bb.ck, %bb.cj
  %exitcond440.2.not = icmp eq i32 %i.kd, 3
  br i1 %exitcond440.2.not, label %.lr.ph382, label %bb.cl

bb.cl:                                            ; preds = %.critedge12.2
  %i.px = getelementptr inbounds nuw i8, ptr %.val230, i64 24
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !19 ; 2 uses
  %i.pz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 3) ; 0 uses
  %i.qa = getelementptr i8, ptr %i.py, i64 4      ; 2 uses
  %.val221375.3 = load i32, ptr %i.qa, align 4, !tbaa !16
  %i.qb = icmp sgt i32 %.val221375.3, 0
  br i1 %i.qb, label %.lr.ph377.3, label %.critedge12.3

.lr.ph377.3:                                      ; preds = %bb.cl
  %i.qc = getelementptr i8, ptr %i.py, i64 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.lr.ph377.3
  %indvars.iv434.3 = phi i64 [ 0, %.lr.ph377.3 ], [ %indvars.iv.next435.3, %bb.cm ] ; 2 uses
  %.val229.3 = load ptr, ptr %i.qc, align 8, !tbaa !18
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %.val229.3, i64 %indvars.iv434.3
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !19
  %puts.3 = tail call i32 @puts(ptr nonnull dereferenceable(1) %i.qe) ; 0 uses
  %indvars.iv.next435.3 = add nuw nsw i64 %indvars.iv434.3, 1 ; 2 uses
  %.val221.3 = load i32, ptr %i.qa, align 4, !tbaa !16
  %i.qf = sext i32 %.val221.3 to i64
  %i.qg = icmp slt i64 %indvars.iv.next435.3, %i.qf
  br i1 %i.qg, label %bb.cm, label %.critedge12.3, !llvm.loop !32

.critedge12.3:                                    ; preds = %bb.cm, %bb.cl
  %exitcond440.3.not = icmp eq i32 %i.kd, 4
  br i1 %exitcond440.3.not, label %.lr.ph382, label %bb.cn

bb.cn:                                            ; preds = %.critedge12.3
  %i.qh = getelementptr inbounds nuw i8, ptr %.val230, i64 32
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !19 ; 2 uses
  %i.qj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 4) ; 0 uses
  %i.qk = getelementptr i8, ptr %i.qi, i64 4      ; 2 uses
  %.val221375.4 = load i32, ptr %i.qk, align 4, !tbaa !16
  %i.ql = icmp sgt i32 %.val221375.4, 0
  br i1 %i.ql, label %.lr.ph377.4, label %.lr.ph382

.lr.ph377.4:                                      ; preds = %bb.cn
  %i.qm = getelementptr i8, ptr %i.qi, i64 8
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.lr.ph377.4
  %indvars.iv434.4 = phi i64 [ 0, %.lr.ph377.4 ], [ %indvars.iv.next435.4, %bb.co ] ; 2 uses
  %.val229.4 = load ptr, ptr %i.qm, align 8, !tbaa !18
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %.val229.4, i64 %indvars.iv434.4
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !19
  %puts.4 = tail call i32 @puts(ptr nonnull dereferenceable(1) %i.qo) ; 0 uses
  %indvars.iv.next435.4 = add nuw nsw i64 %indvars.iv434.4, 1 ; 2 uses
  %.val221.4 = load i32, ptr %i.qk, align 4, !tbaa !16
  %i.qp = sext i32 %.val221.4 to i64
  %i.qq = icmp slt i64 %indvars.iv.next435.4, %i.qp
  br i1 %i.qq, label %bb.co, label %.lr.ph382, !llvm.loop !32

.lr.ph377:                                        ; preds = %.lr.ph379
  %i.qr = getelementptr i8, ptr %i.oz, i64 8
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph377, %bb.cp
  %indvars.iv434 = phi i64 [ 0, %.lr.ph377 ], [ %indvars.iv.next435, %bb.cp ] ; 2 uses
  %.val229 = load ptr, ptr %i.qr, align 8, !tbaa !18
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %.val229, i64 %indvars.iv434
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !19
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %i.qt) ; 0 uses
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %.val221 = load i32, ptr %i.pb, align 4, !tbaa !16
  %i.qu = sext i32 %.val221 to i64
  %i.qv = icmp slt i64 %indvars.iv.next435, %i.qu
  br i1 %i.qv, label %bb.cp, label %.critedge12.loopexit, !llvm.loop !32

.lr.ph382:                                        ; preds = %bb.co, %bb.cn, %.critedge12.3, %.critedge12.2, %.critedge12.1
  %.val228 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 3 uses
  %wide.trip.count444 = zext nneg i32 %i.kd to i64
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph382, %Vec_PtrFreeFree.exit
  %indvars.iv441 = phi i64 [ 0, %.lr.ph382 ], [ %indvars.iv.next442, %Vec_PtrFreeFree.exit ] ; 3 uses
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %.val228, i64 %indvars.iv441
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !19 ; 4 uses
  %i.qy = getelementptr i8, ptr %i.qx, i64 4      ; 3 uses
  %.val = load i32, ptr %i.qy, align 4, !tbaa !16
  %i.qz = trunc nuw nsw i64 %indvars.iv441 to i32
  %i.ra = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.qz, i32 noundef %.val) ; 0 uses
  %.val15.i.i = load i32, ptr %i.qy, align 4, !tbaa !16 ; 2 uses
  %i.rb = icmp sgt i32 %.val15.i.i, 0
  br i1 %i.rb, label %.lr.ph.i.i338, label %Vec_PtrFreeData.exit.i

.lr.ph.i.i338:                                    ; preds = %bb.cq
  %i.rc = getelementptr i8, ptr %i.qx, i64 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.ct, %.lr.ph.i.i338
  %.val18.i.i = phi i32 [ %.val15.i.i, %.lr.ph.i.i338 ], [ %.val.i.i, %bb.ct ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i338 ], [ %indvars.iv.next.i.i, %bb.ct ] ; 2 uses
  %.val14.i.i = load ptr, ptr %i.rc, align 8, !tbaa !18
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i, i64 %indvars.iv.i.i
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !19 ; 2 uses
  %i.rf = icmp ult ptr %i.re, inttoptr (i64 3 to ptr)
  br i1 %i.rf, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @free(ptr noundef %i.re) #12
  %.val.pre.i.i = load i32, ptr %i.qy, align 4, !tbaa !16
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.val.i.i = phi i32 [ %.val18.i.i, %bb.cr ], [ %.val.pre.i.i, %bb.cs ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.rg = sext i32 %.val.i.i to i64
  %i.rh = icmp slt i64 %indvars.iv.next.i.i, %i.rg
  br i1 %i.rh, label %bb.cr, label %Vec_PtrFreeData.exit.i, !llvm.loop !33

Vec_PtrFreeData.exit.i:                           ; preds = %bb.ct, %bb.cq
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !18 ; 2 uses
  %.not.i.i337 = icmp eq ptr %i.rj, null
  br i1 %.not.i.i337, label %Vec_PtrFreeFree.exit, label %bb.cu

bb.cu:                                            ; preds = %Vec_PtrFreeData.exit.i
  tail call void @free(ptr noundef nonnull %i.rj) #12
  br label %Vec_PtrFreeFree.exit

Vec_PtrFreeFree.exit:                             ; preds = %Vec_PtrFreeData.exit.i, %bb.cu
  tail call void @free(ptr noundef nonnull %i.qx) #12
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 2 uses
  %exitcond445.not = icmp eq i64 %indvars.iv.next442, %wide.trip.count444
  br i1 %exitcond445.not, label %.critedge14, label %bb.cq, !llvm.loop !34

.critedge14:                                      ; preds = %Vec_PtrFreeFree.exit
  %.not.i339 = icmp eq ptr %.val228, null
  br i1 %.not.i339, label %Vec_PtrFree.exit, label %bb.cv

bb.cv:                                            ; preds = %.critedge14
  tail call void @free(ptr noundef nonnull %.val228) #12
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge14, %bb.cv
  tail call void @free(ptr noundef nonnull %i.a) #12
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(1) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = distinct !{!2, !12}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"any p2 pointer", !13, i64 0}
!15 = !{!"Vec_Ptr_t_", !8, i64 0, !8, i64 4, !14, i64 8}
!16 = !{!15, !8, i64 4}
!17 = !{!15, !8, i64 0}
!18 = !{!15, !14, i64 8}
!19 = !{!13, !13, i64 0}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12, !35}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12, !35}
!27 = distinct !{!27, !12, !35}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
